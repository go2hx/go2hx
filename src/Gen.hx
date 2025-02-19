import haxe.macro.Type.FieldKind;
import Typer.Module;
import haxe.macro.Expr.TypeDefKind;
import haxe.macro.Expr.TypeDefinition;
import haxe.macro.Expr;
import haxe.macro.Type.ClassKind;
import sys.FileSystem;
import sys.io.File;

var clName = "";
var splitFiles:Array<String> = [];

function cutPrefix(paths:Array<String>):Array<String> {
	return paths.length >= 2 ? paths.slice(2) : paths;
}

function create(outputPath:String, module:Module, root:String) {
	var actualPath = StringTools.replace(module.path, ".", "/");
	final paths = actualPath.split("/");
		// get rid of github.com/org/repo prefix
	var isStdgo = false;
	var actualPathExtern = paths.join("/");
	var externDefBool = !module.isMain;
	final cut = actualPath.substring(actualPath.length - 5);
	final _testStr = "_test";
	if (cut == _testStr) {
		//actualPath = actualPath.substring(0, actualPath.length - _testStr.length);
		externDefBool = false;
	}
	final stdFormatPath = actualPath;
	if (paths.length > 0) {
		if (actualPath == "") {
			actualPath = "_internal";
		}else{
			actualPath = "_internal/" + actualPath;
		}
	}
	// if stdgo
	if (Typer.stdgoList.contains(Typer.toGoPath(stdFormatPath))) {
		isStdgo = true;
		root = "stdgo";
		actualPath = "stdgo/" + actualPath;
		if (actualPathExtern.length > 0) {
			actualPathExtern = "stdgo/" + actualPathExtern;
		}else{
			actualPathExtern = "stdgo";
		}
	}
	if (!isStdgo)
		actualPathExtern = cutPrefix(actualPathExtern.split("/")).join("/");
	if (root.length > 0)
		root += ".";
	var pkgPath = 'package ${actualPath.split("/").join(".")};\n';
	var pkgPathExtern = 'package ${actualPathExtern.split("/").join(".")};\n';
	var content:Array<TypeDefinition> = [];
	var contentImports:String = "";
	var externContent:Array<TypeDefinition> = [];
	var externMacroContent:Array<TypeDefinition> = [];
	var macroContent:Array<TypeDefinition> = [];
	var count = module.files.length;
	var hasMacroDef = false;
	for (file in module.files) {
		/*content = pkgPath;
		macroContent = pkgPath;
		externContent = pkgPathExtern;
		externMacroContent = pkgPathExtern;*/
		contentImports = "";
		for (imp in file.imports) {
			if (imp == null)
				continue;
			contentImports += "import " + imp.path.join(".");
			if (imp.alias != "" && imp.alias != null)
				contentImports += " as " + imp.alias;
			contentImports += ";\n";
		}
		var macroFields:Array<haxe.macro.Expr.Field> = [];
		final cl = macro class C {};
		final clMacro = macro class C {};
		splitFiles = [];
		clName = @:privateAccess Typer.importClassName(paths.pop());
		cl.name = clName;
		//cl.meta = [{name: ":doxName", params: [macro ${src.Util.makeExpr("⭐ " + clName,)}], pos: null}];
		clMacro.name = clName;
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
								for (td in externGen(def, actualPath, clMacro)) 
									externMacroContent.push(td);
								macroContent.push(stripComments(def));
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
					for (td in externGen(def, actualPath, cl))
						externMacroContent.push(td);
				}
				macroContent.push(stripComments(td));
			}
			if (externDefBool) {
				for (td in externGen(def, actualPath, cl)) {
					externContent.push(td);
				}
			}
			content.push(stripComments(def));
		}
		if (externDefBool) {
			externContent.push(cl);
			save(outputPath + actualPathExtern + "/", file.name, externContent, pkgPathExtern, "", false);
		}
		save(outputPath + actualPath + "/", file.name, content, pkgPath + contentImports);
		if (hasMacroDef) {
			if (externDefBool) {
				externMacroContent.push(clMacro);
				save(outputPath + actualPathExtern + "/", file.name, externMacroContent, pkgPath, ".macro", false);
			}
			save(outputPath + actualPath + "/", file.name, macroContent, pkgPath, ".macro");
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

private function save(dir:String, name:String, content:Array<TypeDefinition>, prefix:String, extension:String = "", splitDepsContent:Bool=true) {
	if (content.length == 0)
		return;
	if (splitDepsContent)
		content = splitDeps(dir, name, prefix, extension, content); // clears out content and saves elsewhere
	final contentString = prefix + content.map(f -> Typer.printer.printTypeDefinition(f, false)).join("");
	// used to create the main file and/or hold the init func
	saveRaw(dir,name,contentString, prefix, extension, splitDepsContent);
}

function splitDeps(dir:String, name:String, prefix:String, extension:String, content:Array<TypeDefinition>):Array<TypeDefinition> {
	final newContent = [];
	for (td in content) {
		switch td.kind {
			case TDAbstract(tthis, flags, from, to):
			case TDClass(_, _, _, _, _):
			case TDAlias(_):
			case TDField(kind, access):
				switch kind {
					case FFun(_):
						if (td.name == "main") {
							newContent.push(td);
							continue;
						}
					case FVar(_, _):
						if (StringTools.startsWith(td.name,"__init_go2hx__")) {
							newContent.push(td);
							continue;
						}
					default:
				}
			default:
		}
		// raw save file
		final fullPath = dir + "," + name + "_" + td.name.toLowerCase();
		var contentString = Typer.printer.printTypeDefinition(td,false);
		if (splitFiles.indexOf(fullPath) != -1) {
			appendRaw(dir,name + "_" + td.name.toLowerCase(),contentString, prefix, extension);
		}else{
			contentString = prefix + contentString;
			saveRaw(dir,name + "_" + td.name.toLowerCase(),contentString, prefix, extension);
			splitFiles.push(fullPath);
		}
	}
	return newContent;
}

var sizeMap:Map<String,Int> = [];

private function saveRaw(dir:String, name:String, contentString, prefix:String, extension:String, splitFileBool:Bool=true) {
	if (!FileSystem.exists(dir))
		FileSystem.createDirectory(dir);
	final path = dir + name + extension + ".hx";
	var didWrite = Cache.checkHashAndWrite(path, contentString);
	if (splitFileBool) {
		var sizePath = haxe.io.Path.directory(path);
		if (!didWrite)
			sizePath = "skipped";
		sizeMap[sizePath] = (sizeMap[sizePath] ?? 0) + src.Util.kbCount(contentString);
	}else{
		if (!didWrite) {
			Sys.println("Skipped: " + dir + name + extension + ".hx");
			return;
		}
		Sys.println("Generated:\nMAIN " + dir + name + extension + ".hx - " + src.Util.kbCount(contentString) + "kb");
	}
}

private function appendRaw(dir:String, name:String, contentString, prefix:String, extension:String) {
	if (!FileSystem.exists(dir))
		FileSystem.createDirectory(dir);
	final path = dir + name + extension + ".hx";
	var didWrite = Cache.checkHashAndWrite(path, File.getContent(path) + contentString);

	if (!didWrite) {
		Sys.println("Skipped: " + dir + name + extension + ".hx");
		return;
	}

	Sys.println("Appended: " + dir + name + extension + ".hx - " + src.Util.kbCount(contentString) + "kb");
}

function staticExtensionName(name:String,cl:TypeDefinition):String {
	return name;//name.indexOf(cl.name) == 0 ? cl.name + "_" + name.substr(cl.name.length) : name;
}

function externStaticExtension(td:TypeDefinition, path:String, cl:TypeDefinition):TypeDefinition {
	final fields = [];
	for (field in td.fields) {
		switch field.kind {
			case FFun(f):
				fields.push(copyField(field, FFun(externGenFun(field.name, f, path, td.name))));
			default:
		}
	}
	final meta:Array<MetadataEntry> = [];
	if (StringTools.startsWith(td.name, "T_"))
		meta.push({name: ":dox", params: [macro hide], pos: null});
	return {
		name: staticExtensionName(td.name, cl),
		pos: td.pos,
		pack: td.pack,
		params: td.params,
		fields: fields,
		kind: td.kind,
		meta: meta,
	};
}


function externGen(td:TypeDefinition,path:String, cl:TypeDefinition):Array<TypeDefinition> {
	switch td.kind {
		case TDClass(_, _, isInterface, _, isAbstract):
			//if (td.name.substring(0,2) == "T_")
			//	return null;
			if (StringTools.endsWith(td.name, "_static_extension")) {
				return [externStaticExtension(td, path, cl)];
			}
			if (StringTools.endsWith(td.name, "_asInterface"))
				return []; // TODO
			if (isInterface)
				return [externGenInterface(td, path, cl)];
			if (isAbstract)
				return [externGenAbstract(td, cl)];
			return [externGenClass(td, path,cl)];
		case TDField(kind, access):
			if (td.name == "__go2hxdoc__package") {
				cl.doc = td.doc;
				return [];
			}
			if (td.name.charAt(0) == "_")
				return [];
			return switch kind {
				case FVar(_, _):
					externGenVar(td, path);
				case FFun(f):
					final access = access.copy();
					/*if (access.indexOf(AInline) == -1)
						access.push(AInline);*/
					// at static level
					cl.fields.push({
						name: td.name,
						pos: td.pos,
						doc: td.doc,
						access: [AStatic, APublic, AInline],
						kind: FFun(externGenFun(td.name, f, path)),
					});
					[];
				case FProp(_, _, _, _):
					throw "FProp not supported";
			}
		case TDAlias(_):
			var isInterface = false;
			if (td.meta != null) {
				for (meta in td.meta) {
					if (meta.name == ":interface") {
						isInterface = true;
						break;
					}
				}
			}
			if (isInterface)
				return [externGenInterface(td, path, cl)];
			return [externGenAlias(td,path)];
		default:
	}
	trace("No extern change made for " + td.kind);
	return [td];
}

function externGenInterface(td:TypeDefinition, path:String, cl:TypeDefinition):TypeDefinition {
	final params:Array<TypeParam> = [];
	final pack = path.split("/");
	pack.push(Typer.title(pack[pack.length - 1]) + "_" + td.name.toLowerCase());
	final p:TypePath = {pack: pack, name: td.name, params: params};
	final ct = TPath(p);
	var fields = [];
	switch td.kind {
		case TDAlias(TIntersection(tl)):
			switch tl[1] {
				case TExtend(p, fields2):
					fields = fields.concat(fields2);
				default:
			}
		default:
	}
	final isNameUsed = td.name == clName;
	var meta:Metadata = [{name: ":interface", pos: null}];
	if (StringTools.startsWith(td.name, "T_"))
		meta.push({name: ":dox", params: [macro hide], pos: null});
	meta.push({name: ":forward", params: [], pos: null});
	final toCT = convertComplexType(ct, path);
	fields.map(f -> {
		f.access = [];
		f.doc = null;
		f;
	});
	final anonFields = externGenFields(fields, path, false);
	anonFields.map(f -> {
		switch f.kind {
			case FFun(f):
				f.expr = null;
			default:
		}
		f;
	});
	final fromCT = TAnonymous(anonFields);
	final objFields:Array<ObjectField> = [];
	for (field in fields) {
		final fieldName = field.name;
		var e = macro x.$fieldName;
		switch field.kind {
			case FFun(f):
				e = convertCast(e, TFunction(f.args.map(arg -> arg.type), f.ret), path);
				objFields.push({
					field: fieldName,
					expr: e,
				});
			default:
		}
	}
	objFields.push({
		field: "__underlying__",
		expr: macro () -> __f__(),
	});
	final objDecl = EObjectDecl(objFields);
	final convertExpr = macro {
		var __f__:Void->stdgo.AnyInterface = null; 
		final y:$toCT = ${toExpr(objDecl)};
		__f__ = () -> stdgo.Go.toInterface(y);
		return y;
	};
	final td:TypeDefinition = {
		name: isNameUsed ? td.name + "_" : td.name,
		pack: td.pack,
		pos: null,
		fields: [{
			name: "fromHaxeInterface",
			pos: null,
			meta: [{name: ":from", pos: null}],
			kind: FFun({
				args: [{name: "x", type: fromCT}],
				ret: toCT,
				expr: convertExpr,
			}),
			access: [AStatic],
		}],
		meta: meta,
		kind: TDAbstract(ct, null, [ct], [ct]),
	};
	return td;
}

function externGenAbstract(td:TypeDefinition, cl:TypeDefinition):TypeDefinition {
	trace("unknown abstract: " + td.name, td.pack);
	return externInvalid(td);
}

function copyField(field:Field, kind:FieldType):Field {
	return {
		name: field.name,
		pos: field.pos,
		access: field.access,
		kind: kind,
	};
}


function externGenClass(td:TypeDefinition, path:String, cl:TypeDefinition):TypeDefinition {
	final params:Array<TypeParam> = [];
	final pack = path.split("/");
	pack.push(Typer.title(pack[pack.length - 1]) + "_" + td.name.toLowerCase());
	final p:TypePath = {pack: pack, name: td.name, params: params};
	final ct = TPath(p);
	var fields = [];
	for (field in td.fields) {
		if (field.access == null || field.access.indexOf(APublic) == -1)
			continue; 
		// special fields
		switch field.kind {
			case FVar(type, _):
				final name = macro $i{"this." + field.name};
				fields = fields.concat([{
					name: field.name,
					pos: field.pos,
					access: field.access,
					kind: FProp("get", "set", convertComplexType(type, path)),
				},{
					name: "get_" + field.name,
					pos: field.pos,
					kind: FFun({
						args: [],
						ret: convertComplexType(type, path),
						expr: macro return ${convertCast(name, type, path) ?? name},
						params: [],
					}),
				},{
					name: "set_" + field.name,
					pos: field.pos,
					kind: FFun({
						args: [{name: "v", type: convertComplexType(type, path)}],
						ret: convertComplexType(type, path),
						expr: macro {
							$name = ${reverseConvertCast(macro v, type) ?? macro v};
							return v;
						},
						params: [],
					})
				}]);
			case FFun(f):
				// special funcs
				switch field.name {
					case "new":
						final exprArgs = f.args.map(arg -> {
							final e = macro $i{arg.name};
							reverseConvertCast(e, arg.type) ?? e;
						});
						final args = f.args.map(arg -> ({
							name: arg.name,
							meta: arg.meta,
							opt: arg.opt,
							type: convertComplexType(arg.type, path),
							value: arg.value,
						} : FunctionArg));
						fields.push(copyField(field, FFun({
							args: args,
							ret: f.ret,
							params: f.params,
							expr: macro this = new $p($a{exprArgs}),
						})));
					case "__underlying__":
						fields.push(field);
					case "__copy__":
						fields.push(copyField(field, FFun({
							args: f.args,
							ret: f.ret,
							params: f.params,
							expr: macro return this.__copy__(),
						})));
					default:
						
				}
			default:
				field;
		}
	}
	final meta = td.meta.copy();
	for (i in 0...meta.length) {
		if (meta[i].name == ":using") {
			var usingPath = Typer.printer.printExpr(meta[i].params[0]).split(".");
			final endUsing = staticExtensionName(usingPath.pop(), cl);
			var last = usingPath.pop();
			// remove splitdeps path from extern static extension
			last = last.substr(0, last.length - endUsing.length - 1);
			usingPath.push(last);
			usingPath.push(endUsing);
			usingPath.remove("_internal");
			if (usingPath.length > 1 && usingPath[0] != "stdgo")
				usingPath = cutPrefix(usingPath);
			// remove unneeded pack reference
			meta[i] = {
				name: meta[i].name,
				pos: null,
				params: [macro $p{usingPath}]
			};
			break;
		}
	}
	final isNameUsed = td.name == clName;
	if (StringTools.startsWith(td.name, "T_"))
		meta.push({name: ":dox", params: [macro hide], pos: null});
	final td = {
		name: isNameUsed ? td.name + "_" : td.name,
		pack: td.pack,
		pos: null,
		fields: fields,
		meta: meta,
		kind: TDAbstract(ct, null, [ct], [ct]),
	};
	return td;
}

function externGenAlias(td:TypeDefinition, path:String):TypeDefinition {
	return switch td.kind {
		case TDAlias(_):
			final pack = path.split("/");
			final isNameUsed = td.name == clName;
			final meta:Array<MetadataEntry> = [];
			if (StringTools.startsWith(td.name, "T_"))
				meta.push({name: ":dox", params: [macro hide], pos: null});
			{
				name: isNameUsed ? td.name + "_" : td.name,
				pos: td.pos,
				pack: td.pack,
				fields: td.fields,
				meta: meta,
				kind: TDAlias(TPath({sub: td.name, name: Typer.title(pack[pack.length - 1]) + "_" + td.name.toLowerCase(), pack: pack, params: td.params?.map(f -> TPType(TPath({name: f.name, pack: []})))})),
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
			final access = access.copy();
			final pack = path.split("/");
			pack.push(Typer.title(pack[pack.length - 1]) + "_" + td.name.toLowerCase());
			final name = macro $p{pack.concat([td.name])};
			if (access.indexOf(AFinal) != -1) {
				return [{
					name: td.name,
					pos: td.pos,
					pack: td.pack,
					fields: td.fields,
					kind: TDField(FVar(convertComplexType(type, path), name), access.copy()),
				}];
			}
			access.push(APrivate);
			access.remove(APublic);
			return [{
				name: td.name,
				pos: td.pos,
				pack: td.pack,
				fields: td.fields,
				kind: TDField(FProp("get", "set", convertComplexType(type, path))),
			},{
				name: "get_" + td.name,
				pos: td.pos,
				pack: td.pack,
				fields: td.fields,
				kind: TDField(FFun({
					args: [],
					ret: convertComplexType(type, path),
					expr: macro return ${convertCast(name, type, path) ?? name},
					params: [],
				}), access),
			},{
				name: "set_" + td.name,
				pos: td.pos,
				pack: td.pack,
				fields: td.fields,
				kind: TDField(FFun({
					args: [{name: "v", type: convertComplexType(type, path)}],
					ret: convertComplexType(type, path),
					expr: macro {
						$name = ${reverseConvertCast(macro v, type) ?? macro v};
						return v;
					},
					params: [],
				}), access),
			}];
		default:
			throw "FVar expected";
	};
}

function removeUnderline(name:String):String {
	if (name.charAt(0) == "_" && name.charCodeAt(1) < '0'.code && name.charCodeAt(1) > '9'.code ) {
		name = name.substring(1);
		if (Typer.reserved.indexOf(name) != -1)
			name = "_" + name;
	}
	return name;
}

function externGenFun(name:String, f:Function, path:String, staticExtensionName:String=""):Function {
	final args = f.args.copy();
	final args = [for (arg in args) {
		name: removeUnderline(arg.name),
		type: convertComplexType(arg.type, path),
	}];
	final exprArgs = args.map(arg -> macro $i{arg.name});
	if (args.length > 0) {
		switch args[args.length - 1].type {
			case TPath({name: "Rest", pack: ["haxe"], params: [TPType(t)]}):
				exprArgs[exprArgs.length - 1] = macro ...[for (i in ${exprArgs[exprArgs.length -1]}) ${convertCast(macro i, t, path) ?? macro i}];
			default:
		}
	}
	
	final pathArray = path.split("/");
	var last = Typer.title(pathArray[pathArray.length - 1]);
	if (staticExtensionName != "") {
		pathArray.push(last + "_" + staticExtensionName.toLowerCase());
		pathArray.push(staticExtensionName);
	}else{
		pathArray.push(last + "_" + name.toLowerCase());
	}
	pathArray.push(name);
	var expr = macro $p{pathArray}($a{exprArgs});
	expr = convertCast(expr, f.ret, path) ?? expr;
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
		ret: convertComplexType(f.ret, path),
		expr: macro $b{block},
		params: f.params,
	};
}

function externGenFields(fields:Array<haxe.macro.Expr.Field>, path:String, insideAbstract:Bool=true):Array<haxe.macro.Expr.Field> {
	return [for (field in fields) {
		switch field.kind {
			case FFun(f):
				final access = field.access.copy();
				// inside abstracts
				if (insideAbstract) {
					if (access.indexOf(AInline) == -1)
					access.push(AInline);
				}
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

function convertTypeParams(params:Array<haxe.macro.Expr.TypeParam>, path:String):Array<haxe.macro.Expr.TypeParam> {
	return [for (param in params) {
		switch param {
			case TPType(ct):
				TPType(convertComplexType(ct, path));
			default:
				param;
		}
	}];
}

private function toExpr(e:ExprDef):Expr {
	return {expr: e, pos: null};
}

function reverseConvertCast(e:Expr, ct:ComplexType):Expr {
	if (ct == null)
		return null;
	switch ct {
		case TAnonymous(fields):
			final expr = toExpr(EObjectDecl([for (field in fields) {
				switch field.kind {
					case FVar(type, e):
						final fieldName = field.name;
						{
							field: field.name,
							expr: reverseConvertCast(macro obj.$fieldName, type) ?? macro obj.$fieldName,
						}
					default:
						throw "Field kind not supported: " + field.kind;
				}
			}]));
			return macro {
				final obj = $e;
				$expr;
			}
		case TPath({name: "Bool", pack: [], params: _}):

		case TPath({name: "GoMap", pack: ["stdgo"], params: params}):
			final key = switch params[0] {
				case TPType(t):
					reverseConvertCast(macro key, t) ?? macro key;
				default:
					throw "not TPType";
			}
			final value = switch params[1] {
				case TPType(t):
					reverseConvertCast(macro value, t) ?? macro value;
				default:
					throw "not TPType";
			}
			final p:TypePath = {name: "GoMap", pack: ["stdgo"], params: params};
			return macro {
				final __obj__ = new $p();
				for (key => value in $e) {
					__obj__[$key] = $value;
				}
				__obj__;
			};
		case TPath({name: "Slice", pack: ["stdgo"], params: [TPType(param)]}):
			final i = reverseConvertCast(macro i, param) ?? macro i;
			if (i != null)
				return macro ([for (i in $e) $i] : $ct);
		case TPath({name: "GoArray", pack: ["stdgo"], params: [TPType(param)]}):
			final i = reverseConvertCast(macro i, param) ?? macro i;
			if (i != null)
				return macro ([for (i in $e) $i] : $ct);
		case TPath({name: "Pointer", pack: ["stdgo"], params: [TPType(param)]}):
		case TPath({name: name, pack: ["stdgo"], params: _}):
			return macro ($e : $ct);
			case TFunction(args, ret):
				final ret = ret;
				final callArgs = [for (i in 0...args.length) "_" + i];
				final exprArgs = [for (i in 0...args.length)
					reverseConvertCast(macro $i{callArgs[i]}, args[i]) ?? macro $i{"_" + i}
				];
				final expr = macro $e($a{exprArgs});
				return toExpr(
					EFunction(FArrow, {
						args: callArgs.map(arg -> ({
							name: arg,
						} : FunctionArg)),
						expr: expr,
						//ret: ret,
					}),
				);
		default:
			// trace("unknown reverse convert cast: " + new haxe.macro.Printer().printComplexType(ct));
	}
	return null;
}
/**
 * Return can be null, to protect against it do: convertCast(x,ct,path) ?? x
 * @param e 
 * @param ct 
 * @param path 
 * @return Expr
 */
function convertCast(e:Expr, ct:ComplexType, path:String):Expr {
	if (ct == null)
		return null;
	switch ct {
		case TAnonymous(fields):
			final expr = toExpr(EObjectDecl([for (field in fields) {
				switch field.kind {
					case FVar(type, e):
						final fieldName = field.name;
						{
							field: field.name,
							expr: convertCast(macro obj.$fieldName, type, path) ?? macro obj.$fieldName,
						}
					default:
						throw "Field kind not supported: " + field.kind;
				}
			}]));
			return macro {
				final obj = $e;
				$expr;
			}
		case TPath({name: "Bool", pack: [], params: _}):
			return e;
		case TPath({name: "Slice", pack: ["stdgo"], params: [TPType(param)]}):
			final i = convertCast(macro i, param, path) ?? macro i;
			return macro [for (i in $e) $i];
		case TPath({name: "GoArray", pack: ["stdgo"], params: [TPType(param)]}):
				final i = convertCast(macro i, param, path) ?? macro i;
				return macro haxe.ds.Vector.fromArrayCopy([for (i in $e) $i]);
		case TPath({name: "GoMap", pack: ["stdgo"], params: params}):
			final ct = convertComplexType(ct, path);
			final key = switch params[0] {
				case TPType(t):
					convertCast(macro key, t, path) ?? macro key;
				default:
					throw "not TPType";
			}
			final value = switch params[1] {
				case TPType(t):
					convertCast(macro value, t, path) ?? macro value;
				default:
					throw "not TPType";
			}
			return macro {
				final __obj__:$ct = [];
				for (key => value in $e) {
					__obj__[$key] = $value;
				}
				__obj__;
			};
		case TPath({name: "Pointer", pack: ["stdgo"], params: [TPType(param)]}):
			return convertCast(e, param, path) ?? e;
		case TPath({name: name, pack: ["stdgo"], params: _}):
			
		case TPath({name: "Void", pack: []}):
		case TFunction(args, ret):
			final ret = convertComplexType(ret, path);
			final callArgs = [for (i in 0...args.length) "_" + i];
			final exprArgs = [for (i in 0...args.length)
				convertCast(macro $i{callArgs[i]}, args[i], path) ?? macro $i{"_" + i}
			];
			final expr = macro $e($a{exprArgs});
			return toExpr(
				EFunction(FArrow, {
					args: callArgs.map(arg -> ({
						name: arg,
					} : FunctionArg)),
					expr: expr,
					//ret: ret,
				}),
			);
		case TNamed(_, t):
			return convertCast(e, t, path);
		default:
			// trace("unknown convert cast: " + new haxe.macro.Printer().printComplexType(ct));
	}
	return null;
}

function stdgoType(name:String) {
	switch name {
		case "GoInt", "GoInt32", "GoInt16", "GoInt8", "GoByte", "GoRune":
		case "GoUInt", "GoUInt32", "GoUInt16", "GoUInt8":
		case "GoFloat", "GoFloat32", "GoFloat64":
		case "GoComplex64", "GoComplex128":
		case "Error":
		case "GoString":
		case "GoInt64":
		case "StructType":
		case "GoUInt64":
		case "Slice":
		case "GoUIntptr":
		case "GoArray":
		case "Ref":
		case "AnyInterface":
		case "Pointer":
		default:
			return false;
	}
	return true;
}

function convertComplexType(ct:ComplexType, path:String):ComplexType {
	if (ct == null)
		return null;
	// To extern version
	switch ct {
		case TNamed(n, t):
			return TNamed(n, convertComplexType(t, path));
		case TFunction(args, ret):
			return TFunction(args.map(arg -> convertComplexType(arg, path)), convertComplexType(ret, path));
		case TPath(p):
			final b = (p.pack.slice(0, p.pack.length - 1).join("/")) == path;
			if (b) {
				ct = TPath({name: p.name, pack: [], sub: p.sub, params: p.params});
			}else{
				if (p.pack.length > 1 && p.pack[0] == "_internal") {
					final pack = p.pack.copy();
					pack.shift();
					// regexp2,syntax,Syntax_code
					pack.pop();
					final lastPack = pack.pop();
					pack.push(lastPack);
					pack.push(Typer.title(lastPack));
					ct = TPath({name: p.name, pack: pack, sub: p.sub, params: p.params});
				}else{
					ct = TPath({name: p.name, pack: p.pack, sub: p.sub, params: p.params});
				}
			}
		default:
	}
	// Other cases
	switch ct {
		case TAnonymous(fields):
			// tuple
			if (fields.length <= 6) {
				var isTuple = true;
				for (i in 0...fields.length) {
					if (fields[i].name != "_" + i) {
						isTuple = false;
						break;
					}
				}
				if (isTuple) {
					final types = [];
					for (field in fields) {
						switch field.kind {
							case FVar(type, _):
								types.push(TPType(convertComplexType(type, path)));
							default:
								throw "Field kind not supported: " + field.kind;
						}
					}
					final is2 = fields.length == 2;
					final name = "Tuple";
					final sub = is2 ? null : "Tuple" + fields.length;
					return TPath({name: name, sub: sub, pack: ["stdgo"], params: types});
				}
			}
			return TAnonymous([for (field in fields) {
				switch field.kind {
					case FVar(type, _):
						{
							pos: null,
							name: field.name,
							kind: FVar(convertComplexType(type, path), null),
						}
					default:
						throw "Field kind not supported: " + field.kind;
				}
			}]);
		case TPath({name: "Bool", pack: [], params: _}):
			return ct;
		case TPath(p) if (p.pack != null && p.pack.length > 0 && p.pack[0] == "stdgo"):
			switch p.name {
				case "GoInt", "GoInt32", "GoInt16", "GoInt8", "GoByte", "GoRune":
					return TPath({name: "StdTypes", sub: "Int", pack: []});
				case "GoUInt", "GoUInt32", "GoUInt16", "GoUInt8":
					return TPath({name: "UInt", pack: ["std"]});
				case "GoFloat", "GoFloat32", "GoFloat64":
					return TPath({name: "StdTypes", sub: "Float", pack: []});
				case "GoString":
					return TPath({name: "String", pack: []});
				case "GoInt64":
					return TPath({name: "Int64", pack: ["haxe"]});
				case "GoUInt64":
					return TPath({name: "UInt64", pack: ["haxe"]});
				case "Slice":
					return TPath({name: "Array", pack: [], params: convertTypeParams(p.params, path)});
				case "GoArray":
					return TPath({name: "Vector", pack: ["haxe","ds"], params: convertTypeParams(p.params, path)});
				case "GoMap":
					return TPath({name: "Map", pack: [], params: convertTypeParams(p.params, path)});
				case "Pointer":
					return TPath({name: "Pointer", pack: ["stdgo"], params: convertTypeParams(p.params, path)});
				case "Ref":
					if (p.params != null && p.params.length > 0)
						switch p.params[0] {
							case TPType(ct):
								return convertComplexType(ct, path);
							default:
						}
			}
		case TPath({name: name, pack: pack, params: params}):
			return TPath({name: name == clName ? name + "_" : name , pack: pack, params: params == null ? null : params.map(param -> switch param {
				case TPType(t):
					TPType(convertComplexType(t, path));
				default:
					throw "unreachable";
			})});
		case TIntersection(tl):
			// skip over stdgo.StructType
			return TIntersection([convertComplexType(tl[1],path)]);
		case TExtend(p, fields):
			return TExtend(p.map(p -> {
				final ct = convertComplexType(TPath(p), path);
				switch ct {
					case TPath(p):
						p;
					default:
						throw "unknown ct: " + ct;
				}
			}), fields); 
		default:
			throw "unknown: " + ct;
	}
	return ct;
	//return TPath({name: "Dynamic", pack: [], params: [TPType(ct)]});
}