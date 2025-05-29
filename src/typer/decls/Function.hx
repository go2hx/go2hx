package typer.decls;

import haxe.macro.Expr.Metadata;

typedef IntermediateFunctionType = {
	name:String,
	returnTypes:Array<GoType>,
	params:GoAst.FieldList,
	returnNamed:Bool,
	returnNames:Array<String>,
	patchName:String,
	// recv
	varName:String,
	varType:GoType,
	varCT:ComplexType,
	typeParams:GoAst.FieldList,
	results:GoAst.FieldList,
	body:GoAst.BlockStmt,
	doc:String,
	source:String,
	recvName:String,
	info:Info,
	declName:String,
	patchRecvName:String,
	patchPack:String,
	pkg:typer.Package.IntermediatePackageType,
}

function typeFunction(decl:GoAst.FuncDecl, data:Info, restricted:Array<String> = null, isNamed:Bool = false, sel:String = "",
		pkg:typer.Package.IntermediatePackageType, defName:String = ""):TypeDefinition {
	final func = typeFunctionAnalyze(decl, data, restricted, isNamed, sel, defName, pkg);
	return typeFunctionEmit(func);
}

function typeFunctionEmit(func:IntermediateFunctionType):TypeDefinition {
	final info = func.info;
	var args = getArgs(func, info);
	var meta:Metadata = [];
	var params:Array<TypeParamDecl> = null;
	var recvArg = null;
	final access = [];
	// recv != null
	if (func.varType != null) {
		meta.push({name: ":keep", pos: null});
		if (isPointer(func.varType)) {
			meta.push({name: ":pointer", pos: null});
		}
		recvArg = {
			name: func.varName,
			type: func.varCT,
			vt: func.varType,
			meta: isPointer(func.varType) ? [{name: ":pointer", pos: null}] : []
		};
		args.unshift(recvArg);
		if (codegen.Patch.funcInline.indexOf(func.patchName) != -1 && access.indexOf(AInline) == -1)
			access.push(AInline);
	}
	final genericNames = params == null ? [] : [for (i in 0...params.length) params[i].name];
	final identifierNames = genericNames;
	final previousRenameClasses = info.global.renameClasses.copy();
	for (name in identifierNames) {
		info.global.renameClasses[name] = name;
	}

	var ret = getRet(func, info);
	var block:MacroExpr = getBlock(info, func, args, recvArg);
	if (block == null)
		return null;

	info.global.renameClasses = previousRenameClasses;
	info.restricted = [];

	var doc = func.doc;
	var source = func.source;
	var preamble = "* #go2hx ";
	var index = doc.indexOf(preamble);
	var finalDoc = doc + source;
	if (index != -1) {
		var path = doc.substr(index + preamble.length);
		var params:Array<Expr> = [
			for (arg in args)
				macro $i{arg.name}
		];
		if (args.length > 0 && HaxeAst.isRestType(args[args.length - 1].type))
			params.push(macro...$e{params.pop()});
		var e = macro $i{path}($a{params});
		block = macro return $e;
	}

	if (func.typeParams != null) {
		// block = macro throw "generic function is not supported";
		final genericTypes = getGenericTypes(func, info);
		if (genericTypes.length > 0) {
			final combos = getGenericCombos(func, info, genericTypes);
			final defs:Array<TypeDefinition> = [];
			// access
			access.push(AOverload);
			if (access.indexOf(AInline) == -1)
				access.push(AInline);
			access.push(AExtern);
			// go over combination
			for (combo in combos) {
				info.typeParamMap = [];
				for (i in 0...combo.length) {
					final t = combo[i];
					final genericTypeName = genericTypes[i].name;
					info.typeParamMap[genericTypeName] = t;
					// trace(genericTypeName);
				}
				args = getArgs(func, info);
				ret = getRet(func, info);
				block = getBlock(info, func, args, recvArg);
				if (!HaxeAst.isVoid(ret)) {
					block = macro {
						function __a__()
							$block;
						return __a__();
					};
				}
				defs.push({
					name: func.name,
					pos: null,
					pack: [],
					fields: [],
					doc: info.global.noCommentsBool ? "" : finalDoc,
					meta: meta,
					kind: TDField(FFun({
						ret: ret,
						expr: block,
						params: params,
						args: args,
					}), access)
				});
			}
			info.data.defs = info.data.defs.concat(defs.slice(1));
			return defs.shift();
		}
	}

	final def:TypeDefinition = {
		name: func.name,
		pos: null,
		pack: [],
		fields: [],
		doc: info.global.noCommentsBool ? "" : finalDoc,
		meta: meta,
		kind: TDField(FFun({
			ret: ret,
			expr: block,
			params: params,
			args: args,
		}), access)
	};

	// local specs
	final specs = info.global.localSpecs[func.declName];
	if (specs != null) {
		for (spec in specs) {
			// trace("add", decl.name.name, spec.name.name);
			final spec = typer.specs.Spec.typeSpec(spec, info, true);
			for (i in 0...info.data.defs.length) {
				if (info.data.defs[i].name == spec.name) {
					info.data.defs[i] = spec;
					break;
				}
			}
		}
		info.global.localSpecs.remove(func.declName);
	}

	return def;
}

function getGenericTypes(func:IntermediateFunctionType, info):Array<GenericType> {
	final genericTypes:Array<GenericType> = [];
	for (param in func.typeParams.list) {
		final name = param.names[0].name;
		final t = typeof(param.type, info, false);
		final t = getUnderlying(t);
		switch t {
			case typeParam(_, types):
				// TODO
				final duplicateTypes:Array<GoType> = [];
				types = [for (type in types) replaceNumber(type)];
				for (i in 0...types.length) {
					for (j in 0...types.length) {
						if (duplicateTypes.contains(types[i]) || duplicateTypes.contains(types[j]))
							continue;
						if (i == j)
							continue;
						if (goTypesEqual(types[i], types[j], 10))
							duplicateTypes.push(types[i]);
					}
				}
				for (type in duplicateTypes)
					types.remove(type);
				genericTypes.push({
					name: name,
					types: types,
				});
			default:
		}
	}
	return genericTypes;
}

function getGenericCombos(func:IntermediateFunctionType, info, genericTypes:Array<GenericType>) {
	final combos:Array<Array<GoType>> = [];
	function recurse(index:Int, add:Array<GoType>) {
		for (type in genericTypes[index].types) {
			if (index == 0)
				add = [];
			final add = add.copy();
			add.push(type);
			if (index + 1 < genericTypes.length) {
				recurse(index + 1, add);
			} else {
				// trace(add.map(t -> printer.printComplexType(t)));
				combos.push(add);
			}
		}
	}
	if (genericTypes.length > 0)
		recurse(0, []);
	return combos;
}

function typeFunctionAnalyze(decl:GoAst.FuncDecl, data:Info, restricted:Array<String>, isNamed:Bool, sel:String, recvName:String,
		pkg:typer.Package.IntermediatePackageType):IntermediateFunctionType {
	final info = new Info();
	info.blankCounter = data.blankCounter;
	info.data = data.data;
	info.renameClasses = [];
	info.classNames = data.classNames.copy();
	info.renameIdents = data.renameIdents.copy();
	info.localIdents = data.localIdents.copy();
	// global set
	info.global = data.global;
	// global vars reset
	info.global.deferBool = false;
	info.locals = data.locals;
	info.localUnderlyingNames = data.localUnderlyingNames.copy();
	final name = formatHaxeFieldName(decl.name.name, info);
	final irFunc:IntermediateFunctionType = {
		name: name,
		doc: codegen.Doc.getDocComment(decl),
		source: codegen.Doc.getSource(decl, info),
		params: decl.type.params,
		patchName: recvName != "" ? '${info.global.module.path}.$recvName:$name' : info.global.module.path + ":" + name,
		patchRecvName: recvName,
		patchPack: info.global.module.path,
		varType: null,
		varName: "",
		varCT: null,
		returnNames: [],
		returnNamed: false,
		returnTypes: null,
		typeParams: decl.type.typeParams,
		results: decl.type.results,
		body: decl.body,
		recvName: "",
		info: info,
		declName: decl.name.name,
		pkg: pkg,
	};

	if (decl.recv != null) {
		var varName = decl.recv.list[0].names.length > 0 ? decl.recv.list[0].names[0].name : "";
		var varType = typeof(decl.recv.list[0].type, info, false);
		final ct = toComplexType(varType, info);
		switch ct {
			case TPath(p):
				var f = null;
				f = (p:TypePath) -> {
					if (p.pack.length == 1 && p.pack[0] == "stdgo" && (p.name == "Pointer" || p.name == "Ref")) {
						switch p.params[0] {
							case TPType(TPath(p)):
								return f(p);
							default:
						}
					}
					return p;
				}
				p = f(p);
			default:
		}
		if (varName != "") {
			varName = typer.exprs.Ident.nameIdent(varName, false, true, info);
		} else {
			varName = "_";
		}
		irFunc.recvName = getRecvName(decl.recv.list[0].type, info);
		irFunc.varName = varName;
		irFunc.varType = varType;
		irFunc.varCT = ct;
	}
	info.funcName = irFunc.name;
	info.restricted = restricted;
	return irFunc;
}

function typeFieldListReturn(fieldList:GoAst.FieldList, info:Info, retValuesBool:Bool):ComplexType { // A single type or Anonymous struct type
	// reset
	var returnComplexTypes:Array<ComplexType> = [];
	var returnNamed:Bool = false;
	var returnNames:Array<String> = [];
	var returnTypes:Array<GoType> = [];
	if (fieldList == null) {
		final t = TPath({
			name: "Void",
			pack: [],
		});
		if (retValuesBool) {
			info.returnNamed = returnNamed;
			info.returnNames = returnNames;
			info.returnTypes = returnTypes;
			info.returnType = t;
			info.returnComplexTypes = returnComplexTypes;
		}
		return t;
	}

	for (group in fieldList.list) {
		final ct = typeExprType(group.type, info);
		var t = typeof(group.type, info, false);
		// trace(printer.printComplexType(ct), group.type.id);
		if (group.names.length == 0) {
			returnTypes.push(t);
			returnNames.push("_" + returnNames.length);
			returnComplexTypes.push(ct);
			continue;
		} else {
			returnNamed = true;
		}
		for (name in group.names) {
			if (name.name == "_") {
				returnNames.push("_" + returnNames.length);
			} else {
				returnNames.push(typer.exprs.Ident.nameIdent(name.name, false, true, info));
			}
			returnTypes.push(t);
			returnComplexTypes.push(ct);
		}
	}

	var type = if (returnComplexTypes.length > 1) {
		TAnonymous([
			for (i in 0...returnComplexTypes.length)
				{
					name: "_" + i,
					pos: null,
					kind: FVar(returnComplexTypes[i])
				}
		]);
	} else {
		if (returnComplexTypes.length == 0) {
			TPath({
				name: "Void",
				pack: [],
			});
		} else {
			returnComplexTypes[0];
		}
	}

	if (retValuesBool) {
		info.returnNamed = returnNamed;
		info.returnNames = returnNames;
		info.returnTypes = returnTypes;
		info.returnType = type;
		info.returnComplexTypes = returnComplexTypes;
	}
	return type;
}

function typeFieldListArgs(list:GoAst.FieldList, info:Info):Array<FunctionArg> { // Array of FunctionArgs
	var args:Array<FunctionArg> = [];
	var counter = 0;
	if (list == null)
		return [];
	for (field in list.list) {
		var type = typeExprType(field.type, info); // null can be assumed as interface{}
		if (field.names.length == 0) {
			args.push({
				name: "_" + counter++,
				type: type,
			});
			continue;
		}
		for (name in field.names) {
			final argName = typer.exprs.Ident.nameIdent(name.name, false, true, info);
			args.push({
				name: argName,
				type: type,
			});
		}
	}
	return args;
}

function argsTranslate(args:Array<FunctionArg>, block:Expr, argsFields:GoAst.FieldList, info:Info, recvArg):MacroExpr {
	switch block.expr {
		case EBlock(exprs):
			if (recvArg != null && !isPointer(recvArg.vt)) {
				final name = recvArg.name;
				info.localIdents.push(name);
				final expr = HaxeAst.passByCopy(recvArg.vt, macro $i{name}, info);
				final ct = recvArg.type;
				exprs.unshift(macro @:recv var $name:$ct = $expr);
			}
			for (arg in args) {
				switch arg.type {
					case TPath(p):
						if (p.name == "Rest" && p.pack.length == 1 && p.pack[0] == "haxe" && p.params != null && p.params.length == 1) {
							final name = arg.name;
							switch p.params[0] {
								case TPType(ct):
									// new stdgo.Slice<$ct>($i{name}.length, 0, ...$i{name}));
									exprs.unshift(macro var $name = new stdgo.Slice<$ct>($i{name}.length, 0, ...$i{name}));
								// exprs.unshift(macro var $name:stdgo.Slice<$ct> = $i{name}.toArray());
								default:
							}
						}
					default:
				}
			}
			block.expr = EBlock(exprs);
		default:
	}
	return block;
}

function funcReset(info:Info) {
	info.global.deferBool = false;
}

function getRecvName(recv:GoAst.Expr, info:Info):String {
	if (recv.id == "StarExpr" || recv.id == "IndexExpr" || recv.id == "IndexListExpr") {
		return getRecvName(recv.x, info);
	}
	final t = typeof(recv, info, false);
	// return className(recv.name, info);
	switch t {
		case named(path, _, _, _, _):
			path = Path.withoutDirectory(path);
			path = Path.extension(path);
			final index = path.indexOf("[");
			if (index != -1)
				path = path.substr(0, index);
			return className(path, info);
		default:
			throw info.panic() + "invalid recv type: " + t;
	}
}

private inline function getArgs(func, info):Array<FunctionArg> {
	return typeFieldListArgs(func.params, info);
}

private inline function getRet(func, info) {
	return typeFieldListReturn(func.results, info, true);
}

private function getBlock(info, func, args, recvArg) {
	var block:MacroExpr = if (info.global.externBool && !StringTools.endsWith(info.global.module.path, "_test")) {
		info.returnNamed = false;
		macro throw ${HaxeAst.makeString(func.recvName + ":" + info.global.path + "." + func.name + " is not yet implemented")};
	} else {
		var block = typer.stmts.Block.typeBlockStmt(func.body, info, true);
		if (func.name == "_init" && func.varType == null) {
			switch block.expr {
				case EBlock(exprs):
					info.global.initBlock = info.global.initBlock.concat(exprs);
				default:
			}
			return null;
		}
		final cond = codegen.Patch.skipTests[func.patchName];
		if (cond != null) {
			block = getSkipTestBlock(cond, block, func, info);
		}
		macro $block;
	}
	var patch:MacroExpr = null;
	#if !macro
	patch = codegen.Patch2.getFunction(func.patchPack, func.name, func.patchRecvName, func.pkg);
	#end

	if (patch != null) {
		block = patch;
	}

	return argsTranslate(args, block, func.params, info, recvArg);
}

function getSkipTestBlock(cond, block, func:IntermediateFunctionType, info) {
	switch block.expr {
		case EBlock(exprs):
			final deferBool = info.global.deferBool;
			info.global.deferBool = false;
			final e = typer.stmts.Return.typeReturnStmt({results: [], returnPos: 0}, info);
			info.global.deferBool = deferBool;
			if (cond.length == 0) {
				return macro {
					stdgo.Go.println('-- SKIP: ' + $e{makeExpr(func.name)});
					$e;
				};
			} else {
				final targets = HaxeAst.makeString("(" + cond.join(" || ") + ")");
				return macro @:define($targets) {
					stdgo.Go.println('-- SKIP: ' + $e{makeExpr(func.name)});
					stdgo.Go.println(" skip targets: " + $e{HaxeAst.makeString(cond.join(", "))});
					$e;
				};
			}
		default:
			throw "not a block expr";
	}
}

@:structInit
private class GenericType {
	public var name:String = "";
	public var types:Array<GoType> = [];

	public function new(name, types) {
		this.name = name;
		this.types = types;
	}
}
