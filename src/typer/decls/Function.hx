package typer.decls;

/*function typeFunctionAnalyze(f ast.FunctionLit) {
	var newFormat

	analyzeBody(f.body)
	analyze

	typeFunctionEmit(newFormat)
	}

	function typeFunctionEmit(go2hx.Function) {
	   // body (without defer stmt)
	   // deferBool = true
	   // deferPos = 1010
	   // deferBody = 
}*/
function typeFunction(decl:GoAst.FuncDecl, data:Info, restricted:Array<String> = null, isNamed:Bool = false, sel:String = "",
		defName:String = ""):TypeDefinition {
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
	info.global.gotoSystem = false;
	info.global.deferBool = false;
	info.locals = data.locals.copy();
	info.localUnderlyingNames = data.localUnderlyingNames.copy();
	var name = formatHaxeFieldName(decl.name.name, info);
	if (decl.name.name == "init" && (decl.recv == null || decl.recv.list == null)) {
		switch typer.stmts.Block.typeBlockStmt(decl.body, info, true) {
			case EBlock(exprs):
				info.global.initBlock = info.global.initBlock.concat(exprs);
			default:
		}
		return null;
	}
	info.funcName = name;
	var args = typeFieldListArgs(decl.type.params, info);
	var meta:Metadata = [];
	var recvGeneric = false;
	var params:Array<TypeParamDecl> = null;
	var recvArg = null;
	if (decl.recv != null) {
		// trace(decl.recv.list);
		// params = decl.recv.list[0].type
		meta.push({name: ":keep", pos: null});
		var varName = decl.recv.list[0].names.length > 0 ? decl.recv.list[0].names[0].name : "";
		var varType = typeof(decl.recv.list[0].type, info, false);
		final ct = toComplexType(varType, info); // typeExprType(decl.recv.list[0].type, info);
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
				recvGeneric = p.params != null && p.params.length > 0;
				if (recvGeneric) {
					params = p.params.map(param -> switch param {
						case TPType(TPath(p)):
							({name: p.name} : TypeParamDecl);
						default:
							throw info.panic() + "unknown param: " + param;
					});
				}
			default:
		}
		if (varName != "") {
			varName = typer.exprs.Ident.nameIdent(varName, false, true, info);
			if (isPointer(varType)) {
				meta.push({name: ":pointer", pos: null});
			}
		} else {
			varName = "_";
		}
		recvArg = {
			name: varName,
			type: ct,
			vt: varType,
			meta: isPointer(varType) ? [{name: ":pointer", pos: null}] : []
		};
		args.unshift(recvArg);
	}
	info.restricted = restricted;
	final patchName = defName != "" ? info.global.module.path + "." + defName + ":" + name : info.global.module.path + ":" + name;
	var identifierNames:Array<String> = [];
	if (!recvGeneric) {
		/*params = getParams(decl.type.typeParams, info);
			for (param in params) {
				identifierNames.push(param.name);
		}*/
	}
	final genericNames = params == null ? [] : [for (i in 0...params.length) params[i].name];
	identifierNames = identifierNames.concat(genericNames);
	final previousRenameClasses = info.global.renameClasses.copy();
	for (name in identifierNames) {
		info.global.renameClasses[name] = name;
	}
	var ret = typeFieldListReturn(decl.type.results, info, true);
	var block:Expr = if (info.global.externBool && !StringTools.endsWith(info.global.module.path, "_test")) {
		info.returnNamed = false;

		final recvName = (decl.recv == null || decl.recv.list == null) ? "" : getRecvName(decl.recv.list[0].type, info);
		macro throw ${HaxeAst.makeString(recvName + ":" + info.global.path + "." + name + " is not yet implemented")};
	} else {
		var block = toExpr(typer.stmts.Block.typeBlockStmt(decl.body, info, true));
		final cond = codegen.Patch.skipTests[patchName];
		if (cond != null) {
			switch block.expr {
				case EBlock(exprs):
					final deferBool = info.global.deferBool;
					info.global.deferBool = false;
					final e = toExpr(typer.stmts.Return.typeReturnStmt({results: [], returnPos: 0}, info));
					info.global.deferBool = deferBool;
					if (cond.length == 0) {
						block = macro {
							stdgo.Go.println('-- SKIP: ' + $e{makeExpr(name)});
							$e;
						};
					} else {
						final targets = HaxeAst.makeString("(" + cond.join(" || ") + ")");
						block = macro @:define($targets) {
							stdgo.Go.println('-- SKIP: ' + $e{makeExpr(name)});
							stdgo.Go.println(" skip targets: " + $e{HaxeAst.makeString(cond.join(", "))});
							$e;
						};
					}
				default:
					throw "not a block expr";
			}
		}
		macro $block;
	}
	info.global.renameClasses = previousRenameClasses;
	final patch = codegen.Patch.list[patchName];
	if (patch != null) {
		// codegen.Patch.list.remove(patchName);
		block = patch;
	}

	block = argsTranslate(args, block, decl.type.params, info, recvArg);

	info.restricted = [];
	var doc = codegen.Doc.getDocComment(decl);
	var preamble = "* #go2hx ";
	var index = doc.indexOf(preamble);
	var finalDoc = doc + codegen.Doc.getSource(decl, info);
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
	var access = [];
	if (decl.recv == null) {
		if (codegen.Patch.funcInline.indexOf(patchName) != -1 && access.indexOf(AInline) == -1)
			access.push(AInline);
	}
	var identifierNames:Array<String> = [];
	var nonGenericParams:Array<TypeParamDecl> = []; // params
	if (nonGenericParams.length > 0) {
		params = params.concat(nonGenericParams);
	}
	if ((decl.type.typeParams != null || recvGeneric)) {
		// TODO: generic funcs
		/*for (param in decl.type.typeParams.list) {
			trace(param.names.map(name -> name.name));
			trace(param.type, Reflect.fields(param));
		}*/
		params = null;
		if (patch == null) {
			block = macro throw "generic function is not supported";
		}
	} else {
		// non macro function
		if (info.global.stackBool)
			if (block != null) {
				block = macro stdgo._internal.internal.Macro.stack($block);
			}
	}
	/*if (name == "main" && info.data.isMain) {
		switch block.expr {
			case EBlock(exprs):
				block = macro {
					try
						$block
					catch (__exception__) {
						if (!(__exception__.native is AnyInterfaceData))
							throw __exception__;
						throw Go.string(__exception__.native);
					}
					Sys.exit(0);
				};
			default:
		}
	}*/
	final def:TypeDefinition = {
		name: name,
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
	final specs = info.global.localSpecs[decl.name.name];
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
		info.global.localSpecs.remove(decl.name.name);
	}
	return def;
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

function argsTranslate(args:Array<FunctionArg>, block:Expr, argsFields:GoAst.FieldList, info:Info, recvArg):Expr {
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
	info.global.recoverBool = false;
	info.global.gotoSystem = false;
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
