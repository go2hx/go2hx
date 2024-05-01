import Typer.Module;
import haxe.macro.Expr.TypeDefKind;
import haxe.macro.Expr.TypeDefinition;
import haxe.macro.Expr;
import haxe.macro.Type.ClassKind;
import sys.FileSystem;
import sys.io.File;

function create(outputPath:String, module:Module, root:String) {
	var actualPath = StringTools.replace(module.path, ".", "/");
	final paths = actualPath.split("/");
	var actualPathExtern = paths.slice(0, paths.length > 0 ? paths.length - 1 : 0).join("/");
	var externDefBool = !module.isMain;
	var testPath = actualPath;
	if (paths.length > 0) {
		if (actualPath == "") {
			actualPath = "_internal";
		}else{
			actualPath = "_internal/" + actualPath;
		}
	}
	if (testPath.substring(testPath.length - 5) == "_test") {
		testPath = testPath.substring(0, testPath.length - 5);
		externDefBool = false;
	}
	// if stdgo
	if (Typer.stdgoList.contains(testPath)) {
		root = "stdgo";
		actualPath = "stdgo/" + actualPath;
		if (actualPathExtern.length > 0) {
			actualPathExtern = "stdgo/" + actualPathExtern;
		}else{
			actualPathExtern = "stdgo";
		}
	}
	if (root.length > 0)
		root += ".";
	var pkgPath = 'package ${actualPath.split("/").join(".")};\n';
	var pkgPathExtern = 'package ${actualPathExtern.split("/").join(".")};\n';
	var content = "";
	var externContent = "";
	var externMacroContent = "";
	var macroContent = "";
	var count = module.files.length;
	var hasMacroDef = false;
	for (file in module.files) {
		content = pkgPath;
		macroContent = pkgPath;
		externContent = pkgPathExtern;
		externMacroContent = pkgPathExtern;
		for (imp in file.imports) {
			if (imp == null)
				continue;
			content += "import " + imp.path.join(".");
			if (imp.alias != "" && imp.alias != null)
				content += " as " + imp.alias;
			content += ";\n";
		}
		var macroFields:Array<haxe.macro.Expr.Field> = [];
		for (def in file.defs) {
			macroFields = [];
			switch def.kind {
				case TDField(kind, access):
					if (access != null && access.indexOf(AMacro) != -1) {
						switch kind {
							case FFun(f):
								final isExtern = def.isExtern;
								def.isExtern = true;
								hasMacroDef = true;
								for (td in externGen(def, actualPath)) 
									externMacroContent += Typer.printer.printTypeDefinition(td, false);
								macroContent += Typer.printer.printTypeDefinition(stripComments(def), false);
								def.isExtern = isExtern;
								f.expr = null;
							default:
						}
					}
				default:
			}
			for (field in def.fields) {
				if (field.access != null && field.access.indexOf(AMacro) != -1) {
					switch field.kind {
						case FFun(f):
							macroFields.push({
								name: field.name,
								access: field.access,
								pos: field.pos,
								kind: FFun({
									args: f.args,
									ret: f.ret,
									expr: f.expr,
									params: f.params
								}),
							});
							f.expr = null;
							field.kind = FFun(f);
						default:
					}
				}
			}
			if (macroFields.length > 0) {
				hasMacroDef = true;
				final td = {
					name: def.name,
					pos: def.pos,
					pack: def.pack,
					fields: macroFields,
					kind: def.kind,
					isExtern: true,
				};
				if (externDefBool) {
					for (td in externGen(def, actualPath))
						externMacroContent += Typer.printer.printTypeDefinition(td, false);
				}
				macroContent += Typer.printer.printTypeDefinition(stripComments(td), false);
			}
			if (externDefBool) {
				for (td in externGen(def, actualPath)) {
					externContent += Typer.printer.printTypeDefinition(td, false);
				}
			}
			content += Typer.printer.printTypeDefinition(stripComments(def), false);
		}
		if (externDefBool) {
			save(outputPath + actualPathExtern + "/", file.name, externContent);
		}
		save(outputPath + actualPath + "/", file.name, content);
		if (hasMacroDef) {
			if (externDefBool)
				save(outputPath + actualPathExtern + "/", file.name, externMacroContent, ".macro");
			save(outputPath + actualPath + "/", file.name, macroContent, ".macro");
		}
	}
}

private function runCmd(cmd:String) {
	#if (target.threaded)
	final process = new sys.io.Process(cmd);
	final code = process.exitCode();
	process.close();
	return code;
	#else
	return try {
		js.node.ChildProcess.execSync(cmd, null);
		0;
	} catch (_) {
		1;
	}
	#end
}

private function save(dir:String, name:String, content:String, extension:String = "") {
	if (!FileSystem.exists(dir))
		FileSystem.createDirectory(dir);
	final path = dir + name + extension + ".hx";
	File.saveContent(path, content);
	Sys.println("Generated: " + dir + name + extension + ".hx - " + src.Util.kbCount(content) + "kb");
}


function externGen(td:TypeDefinition,path:String):Array<TypeDefinition> {
	switch td.kind {
		case TDClass(_, _, isInterface, _, isAbstract):
			//if (td.name.substring(0,2) == "T_")
			//	return null;
			if (isInterface)
				return [externGenInterface(td, path)];
			if (isAbstract)
				return [externGenAbstract(td)];
			return [externGenClass(td, path)];
		case TDField(kind, access):
			if (td.name == "__go2hxdoc__package")
				return [td];
			if (td.name.charAt(0) == "_")
				return [];
			return switch kind {
				case FVar(_, _):
					externGenVar(td, path);
				case FFun(f):
					final access = access.copy();
					if (access.indexOf(AInline) == -1)
						access.push(AInline);
					[{
						name: td.name,
						pos: td.pos,
						pack: td.pack,
						doc: td.doc,
						fields: td.fields,
						kind: TDField(FFun(externGenFun(td.name, f, path)), access),
					}];
				case FProp(_, _, _, _):
					throw "FProp not supported";
			}
		case TDAlias(_):
			return [externGenAlias(td,path)];
		default:
	}
	trace("No extern change made for " + td.kind);
	return [td];
}

function externGenInterface(td:TypeDefinition, path:String):TypeDefinition {
	td.fields = externGenFields(td.fields, path);
	return externInvalid(td);
}

function externGenAbstract(td:TypeDefinition):TypeDefinition {
	return externInvalid(td);
}

function externGenClass(td:TypeDefinition, path:String):TypeDefinition {
	final params:Array<TypeParam> = [];
	final pack = path.split("/");
	pack.push(Typer.title(pack[pack.length - 1]));
	final ct = TPath({pack: pack, name: td.name, params: params});
	return {
		name: td.name,
		pack: td.pack,
		pos: null,
		meta: [
			{name: ":forward", pos: null},
			{name: ":forward.new", pos: null},
		],
		fields: [],
		kind: TDAbstract(ct, null, [ct], [ct]),
	}
}

function externGenAlias(td:TypeDefinition, path:String):TypeDefinition {
	return switch td.kind {
		case TDAlias(_):
			final pack = path.split("/");
			{
				name: td.name,
				pos: td.pos,
				pack: td.pack,
				fields: td.fields,
				kind: TDAlias(TPath({sub: td.name, name: Typer.title(pack[pack.length - 1]), pack: pack, params: td.params?.map(f -> TPType(TPath({name: f.name, pack: []})))})),
				isExtern: td.isExtern,
			};
		default:
			throw "TDAlias expected";
	}
}

function externInvalid(td:TypeDefinition):TypeDefinition {
	trace("invalid: " + td.kind);
	return {
		name: td.name,
		pos: td.pos,
		pack: td.pack,
		fields: [],
		meta: [{name: ":invalidType", params: [], pos: null}],
		kind: TDAlias(TPath({name: "Dynamic", pack: []})),
	};
}

function externInvalidVar(td:TypeDefinition):TypeDefinition {
	trace("invalid var: " + td.kind);
	return {
		name: td.name,
		pos: td.pos,
		pack: td.pack,
		fields: [],
		meta: [{name: ":invalidVar", params: [], pos: null}],
		kind: TDField(FVar(TPath({name: "Dynamic", pack: []}), null), null),
	};
}

function externGenStruct(td:TypeDefinition):TypeDefinition {
	return externInvalid(td);
}

function externGenVar(td:TypeDefinition, path:String):Array<TypeDefinition> {
	switch td.kind {
		case TDField(FVar(type, e), access):
			final pack = path.split("/");
			pack.push(Typer.title(pack[pack.length - 1]));
			final name = macro $p{pack.concat([td.name])};
			if (access.indexOf(AFinal) != -1) {
				return [{
					name: td.name,
					pos: td.pos,
					pack: td.pack,
					fields: td.fields,
					kind: TDField(FVar(convertComplexType(type), name), access.copy()),
				}];
			}
			access.push(APrivate);
			access.remove(APublic);
			return [{
				name: td.name,
				pos: td.pos,
				pack: td.pack,
				fields: td.fields,
				kind: TDField(FProp("get", "set", convertComplexType(type))),
			},{
				name: "get_" + td.name,
				pos: td.pos,
				pack: td.pack,
				fields: td.fields,
				kind: TDField(FFun({
					args: [],
					ret: convertComplexType(type),
					expr: macro return $name,
					params: [],
				}), access),
			},{
				name: "set_" + td.name,
				pos: td.pos,
				pack: td.pack,
				fields: td.fields,
				kind: TDField(FFun({
					args: [{name: "v", type: convertComplexType(type)}],
					ret: convertComplexType(type),
					expr: macro return $name = v,
					params: [],
				}), access),
			}];
		default:
			throw "FVar expected";
	};
}

function removeUnderline(name:String):String {
	if (name.charAt(0) == "_") {
		name = name.substring(1);
		if (Typer.reserved.indexOf(name) != -1)
			name = "_" + name;
	}
	return name;
}

function externGenFun(name:String, f:Function, path:String):Function {
	final args = f.args.copy();
	final args = [for (arg in args) {
		name: removeUnderline(arg.name),
		type: convertComplexType(arg.type),
	}];
	final exprArgs = args.map(arg -> macro $i{arg.name});
	if (args.length > 0) {
		switch args[args.length - 1].type {
			case TPath({name: "Rest", pack: ["haxe"]}):
				exprArgs[exprArgs.length - 1] = macro ...${exprArgs[exprArgs.length -1]};
			default:
		}
	}
	final path = path.split("/");
	path.push(Typer.title(path[path.length - 1]));
	path.push(name);
	var expr = macro $p{path}($a{exprArgs});
	expr = convertCast(expr,f.ret) ?? expr;
	if (!Typer.isVoid(f.ret))
		expr = macro return $expr;
	final block:Array<Expr> = [];
	for (i in 0...args.length) {
		final name = args[i].name;
		final e = reverseConvertCast(macro $i{name}, f.args[i].type);
		if (e != null)
			block.push(macro final $name = $e);
	}
	block.push(expr);
	return  {
		args: args,
		ret: convertComplexType(f.ret),
		expr: macro $b{block},
		params: f.params,
	};
}

function externGenFields(fields:Array<haxe.macro.Expr.Field>, path:String):Array<haxe.macro.Expr.Field> {
	return [for (field in fields) {
		switch field.kind {
			case FFun(f):
				final access = field.access.copy();
				if (access.indexOf(AInline) == -1)
					access.push(AInline);
				{
					name: field.name,
					access: access,
					pos: field.pos,
					doc: field.doc,
					kind: FFun(externGenFun(field.name, f, path)),
				};
			default:
				throw "Field kind not supported: " + field.kind;
		}
	}];
}

function stripComments(td:TypeDefinition):TypeDefinition {
	td.doc = null;
	td.fields = td.fields.map(function(field) {
		field.doc = null;
		return field;
	});
	return td;
}

function convertTypeParams(params:Array<haxe.macro.Expr.TypeParam>):Array<haxe.macro.Expr.TypeParam> {
	return [for (param in params) {
		switch param {
			case TPType(ct):
				TPType(convertComplexType(ct));
			default:
				param;
		}
	}];
}

function reverseConvertCast(e:Expr, ct:ComplexType):Expr {
	switch ct {
		case TAnonymous(fields):
			final expr = {expr: EObjectDecl([for (field in fields) {
				switch field.kind {
					case FVar(type, e):
						final fieldName = field.name;
						{
							field: field.name,
							expr: reverseConvertCast(macro obj.$fieldName, type),
						}
					default:
						throw "Field kind not supported: " + field.kind;
				}
			}]), pos: null};
			return macro {
				final obj = $e;
				$expr;
			}
		case TPath({name: "Bool", pack: [], params: _}):
		case TPath({name: "Slice", pack: ["stdgo"], params: [TPType(param)]}):
			final i = reverseConvertCast(macro i, param) ?? macro i;
			if (i != null)
				return macro ([for (i in $e) $i] : $ct);
		case TPath({name: "Pointer", pack: ["stdgo"], params: [TPType(param)]}):
		case TPath({name: name, pack: ["stdgo"], params: _}):
			switch name {
				case "GoInt", "GoInt32", "GoInt16", "GoInt8", "GoByte", "GoRune":
				case "GoUInt", "GoUInt32", "GoUInt16", "GoUInt8":
				case "GoFloat", "GoFloat32", "GoFloat64":
				case "GoString":
				case "GoInt64":
				case "GoUInt64":
				case "Slice":
				case "GoArray":
				case "Ref":
			}
		case TFunction(_, _):
			return e;
		default:
			trace("unknown reverse convert cast: " + new haxe.macro.Printer().printComplexType(ct));
	}
	return null;
}

function convertCast(e:Expr, ct:ComplexType):Expr {
	switch ct {
		case TAnonymous(fields):
			final expr = {expr: EObjectDecl([for (field in fields) {
				switch field.kind {
					case FVar(type, e):
						final fieldName = field.name;
						{
							field: field.name,
							expr: convertCast(macro obj.$fieldName, type) ?? macro obj.$fieldName,
						}
					default:
						throw "Field kind not supported: " + field.kind;
				}
			}]), pos: null};
			return macro {
				final obj = $e;
				$expr;
			}
		case TPath({name: "Bool", pack: [], params: _}):
			return e;
		case TPath({name: "Slice", pack: ["stdgo"], params: [TPType(param)]}):
			final i = convertCast(macro i, param) ?? macro i;
			return macro [for (i in $e) $i];
		case TPath({name: "Pointer", pack: ["stdgo"], params: [TPType(param)]}):
			return convertCast(e, param) ?? e;
		case TPath({name: name, pack: ["stdgo"], params: _}):
			switch name {
				case "GoInt", "GoInt32", "GoInt16", "GoInt8", "GoByte", "GoRune":
				case "GoUInt", "GoUInt32", "GoUInt16", "GoUInt8":
				case "GoFloat", "GoFloat32", "GoFloat64":
				case "GoString":
				case "GoInt64":
				case "GoUInt64":
				case "Slice":
				case "GoArray":
				case "Ref":
			}
		case TFunction(_, _):
			return e;
		default:
			trace("unknown convert cast: " + new haxe.macro.Printer().printComplexType(ct));
	}
	return null;
}

function convertComplexType(ct:ComplexType):ComplexType {
	if (ct == null)
		return null;
	switch ct {
		case TAnonymous(fields):
			// tuple
			if (fields.length <= 6) {
				final types = [];
				for (field in fields) {
					switch field.kind {
						case FVar(type, _):
							types.push(TPType(convertComplexType(type)));
						default:
							throw "Field kind not supported: " + field.kind;
					}
				}
				final is2 = fields.length == 2;
				final name = "Tuple";
				final sub = is2 ? null : "Tuple" + fields.length;
				return TPath({name: name, sub: sub, pack: ["stdgo"], params: types});
			}else{
				return TAnonymous([for (field in fields) {
					switch field.kind {
						case FVar(type, _):
							{
								pos: null,
								name: field.name,
								kind: FVar(convertComplexType(type), null),
							}
						default:
							throw "Field kind not supported: " + field.kind;
					}
				}]);
			}
		case TPath({name: "Bool", pack: [], params: _}):
			return ct;
		case TPath(p) if (p.pack != null && p.pack.length > 0 && p.pack[0] == "stdgo"):
			switch p.name {
				case "GoInt", "GoInt32", "GoInt16", "GoInt8", "GoByte", "GoRune":
					return TPath({name: "Int", pack: []});
				case "GoUInt", "GoUInt32", "GoUInt16", "GoUInt8":
					return TPath({name: "UInt", pack: []});
				case "GoFloat", "GoFloat32", "GoFloat64":
					return TPath({name: "Float", pack: []});
				case "GoString":
					return TPath({name: "String", pack: []});
				case "GoInt64":
					return TPath({name: "Int64", pack: ["haxe"]});
				case "GoUInt64":
					return TPath({name: "UInt64", pack: ["haxe"]});
				case "Slice":
					return TPath({name: "Array", pack: [], params: convertTypeParams(p.params)});
				case "GoArray":
					return TPath({name: "Vector", pack: ["haxe","ds"], params: convertTypeParams(p.params)});
				case "Pointer":
					return TPath({name: "Pointer", pack: ["stdgo"], params: convertTypeParams(p.params)});
				case "Ref":
					switch p.params[0] {
						case TPType(ct):
							return convertComplexType(ct);
						default:
					}
			}
		case TPath({name: name, pack: pack, params: params}) if (params != null):
			return TPath({name: name, pack: pack, params: params.map(param -> switch param {
				case TPType(t):
					TPType(convertComplexType(t));
				default:
					throw "unreachable";
			})});
		default:
	}
	return ct;
	//return TPath({name: "Dynamic", pack: [], params: [TPType(ct)]});
}