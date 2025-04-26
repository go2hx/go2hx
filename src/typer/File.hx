package typer;

import haxe.macro.Expr;
import haxe.io.Path;
import typer.Typer;
import typer.Package;
import shared.Util;

function typeFile(file:GoAst.FileType, module:HaxeAst.Module, recvFunctions:Array<RecvFunction>, pkg:typer.Package.IntermediatePackageType,
		info:Info):HaxeAst.HaxeFileType {
	file.location = Path.normalize(file.location);
	var data:HaxeAst.HaxeFileType = {
		name: file.path,
		imports: [],
		defs: [],
		location: file.location,
		isMain: module.isMain,
	};
	// info = new Info(info.global);
	info.locals.clear();
	info.localUnderlyingNames.clear();
	info.data = data;
	final pkgDoc = codegen.Doc.getDocComment(file);
	var declFuncs:Array<GoAst.FuncDecl> = [];
	var declGens:Array<GoAst.GenDecl> = [];
	for (decl in file.decls) {
		switch decl.id {
			case "GenDecl":
				declGens.push(decl);
			case "FuncDecl":
				var decl:GoAst.FuncDecl = decl;
				if (decl.name.name != "_")
					declFuncs.push(decl);
			default:
		}
	}
	for (gen in declGens) {
		for (spec in gen.specs) {
			if (spec == null)
				continue;
			switch spec.id {
				case "ImportSpec":
					typer.specs.ImportSpec.typeImport(spec, info);
				case "TypeSpec":
					final spec:GoAst.TypeSpec = spec;
					if (spec.type.id == "InterfaceType") { // priority
						if (spec.name.name != "_")
							info.data.defs.push(typer.specs.Spec.typeSpec(spec, info, gen.tok == FUNC));
					}
			}
		}
	}
	for (gen in declGens) {
		for (spec in gen.specs) {
			if (spec == null)
				continue;
			switch spec.id {
				case "TypeSpec":
					final spec:GoAst.TypeSpec = spec;
					if (spec.type.id == "StructType") { // priority
						if (spec.name.name != "_") {
							// trace(spec.name.name);
							if (spec.name.name.indexOf(":") != -1) {
								final index = spec.name.name.indexOf(":");
								final key = spec.name.name.substr(0, index);
								// trace(key);
								spec.name.name = spec.name.name.substr(index + 1);
								// need to push the type in order to do a replace later at the decleration within a function body
								info.data.defs.push(typer.specs.Spec.typeSpec(spec, info, gen.tok == FUNC));
								if (!info.global.localSpecs.exists(key)) {
									info.global.localSpecs[key] = [];
								}
								// trace(key, spec.name.name);
								info.global.localSpecs[key].push(spec);
								gen.specs.remove(spec);
							} else {
								info.data.defs.push(typer.specs.Spec.typeSpec(spec, info, gen.tok == FUNC));
							}
						}
					}
			}
		}
	}
	var typeSpecNames:Array<String> = [];
	for (gen in declGens) {
		for (spec in gen.specs) { // 2nd pass
			if (spec == null)
				continue;
			if (spec.id == "TypeSpec" && spec.type.id != "InterfaceType" && spec.type.id != "StructType") { // all other specs
				if (spec.name.name != "_" && typeSpecNames.indexOf(spec.name.name) == -1) {
					typeSpecNames.push(spec.name.name);
					info.data.defs.push(typer.specs.Spec.typeSpec(spec, info, gen.tok == FUNC));
				}
			}
		}
	}
	var values = [];
	// trace(declGens.length);
	for (gen in declGens) {
		// variables after so that all types can be referenced by a value and have it exist.
		info.lastValue = null;
		info.lastType = null;
		final constant = gen.tok == CONST;
		for (spec in gen.specs) {
			if (spec == null)
				continue;
			switch spec.id {
				case "ValueSpec":
					final spec:GoAst.ValueSpec = spec;
					values = values.concat(typer.specs.Value.typeValue(spec, info, pkg, constant));
				default:
			}
		}
	}

	var valuesSorted = [];
	for (name in pkg.varOrder) {
		for (value in values) {
			if (value.name == name) {
				if (value.pos != null) {
					for (value2 in values.copy()) {
						if (value2.pos != null && (value2.pos : Dynamic).min == (value.pos : Dynamic).min) {
							values.remove(value2);
							valuesSorted.push(value2);
						}
					}
				}
				values.remove(value);
				if (!valuesSorted.contains(value))
					valuesSorted.push(value);
				break;
			}
		}
	}
	if (pkg.varOrder.length > 0) {
		final vars:Array<Var> = [];
		for (i in 0...pkg.varOrder.length) {
			final o = pkg.varOrder[i];
			vars.push({name: "__tmp__" + i, expr: macro $i{splitDepFullPathName(o, info)}});
		}

		info.global.initBlock.push(toExpr(EVars(vars)));
	}
	if (values.length > 0) {
		// trace("unsorted values left: " + values.length);
		valuesSorted = values.concat(valuesSorted);
	}
	data.defs = valuesSorted.concat(data.defs);

	for (key => specs in info.global.localSpecs) {
		for (spec in specs) {
			final spec = typer.specs.Spec.typeSpec(spec, info, true);
			for (i in 0...info.data.defs.length) {
				if (info.data.defs[i].name == spec.name) {
					info.data.defs[i] = spec;
					break;
				}
			}
		}
	}

	for (decl in declFuncs) { // parse function bodies last
		if (decl.recv != null && decl.recv.list.length > 0) {
			recvFunctions.push({decl: decl, path: file.path});
			continue;
		}
		var func = typer.decls.Function.typeFunction(decl, info);
		if (func != null)
			data.defs.push(func);
	}

	// patch system to add functions
	for (key => expr in codegen.Patch.addFuncs) {
		final index = key.indexOf(":");
		final path = key.substr(0, index);
		if (path == info.global.module.path) {
			final funcName = key.substr(index + 1);
			if (funcName == "_init") {
				switch expr.expr {
					case EBlock(exprs):
						info.global.initBlock = info.global.initBlock.concat(exprs);
					default:
						info.global.initBlock.push(expr);
				}
				continue;
			}
			data.defs.push({
				name: funcName,
				pos: null,
				fields: [],
				pack: [],
				kind: TDField(FFun({args: [], expr: expr}), []),
			});
			codegen.Patch.addFuncs.remove(key);
		}
	}
	for (key => def in codegen.Patch.addTypeDefs) {
		final index = key.indexOf(":");
		final path = key.substr(0, index);
		if (path == info.global.module.path) {
			final defName = key.substr(index + 1);
			data.defs.push(def);
			codegen.Patch.addTypeDefs.remove(key);
		}
	}

	// init system
	if (info.global.initBlock.length > 0) {
		// info.global.initBlock.unshift(macro trace(stdgo._internal.internal.type.Type.names));
		var block = toExpr(EBlock(info.global.initBlock));
		final pathString = HaxeAst.makeString(info.global.path);
		if (info.global.varTraceBool) {
			block = macro {
				trace("start init func: " + $pathString);
				$block;
				trace("end init func: " + $pathString);
			}
		}
		block = HaxeAst.mapReturnToThrow(block);
		// trace(module.path,module.name);
		data.defs.push({
			name: "__init_go2hx__",
			pos: null,
			pack: [],
			fields: [],
			meta: [{name: ":keep", pos: null}],
			kind: TDField(FVar(null, macro {
				try
					$block
				catch (__exception__)
					if (__exception__.message != "__return__")
						throw __exception__;
				true;
			})),
		});
	}

	if (pkgDoc != "")
		data.defs.unshift({
			name: "__go2hxdoc__package",
			pack: [],
			pos: null,
			fields: [],
			doc: pkgDoc,
			kind: TDField(FVar(TPath({name: "Bool", pack: []})), [APrivate]),
		});
	pass2(data, info, recvFunctions);
	return data;
}

function pass2(data:HaxeAst.HaxeFileType, info:typer.Typer.Info, recvFunctions:Array<RecvFunction>) {
	final defs = data.defs.copy();
	for (def in defs) {
		if (def.name == "__go2hxdoc__package")
			continue;
		if (StringTools.endsWith(def.name, "_asinterface")
			|| StringTools.endsWith(def.name, "_asInterface")
			|| StringTools.endsWith(def.name, "_static_extension"))
			continue;
		var local:Array<{func:GoAst.FuncDecl, sel:String, recvName:String}> = [];
		final names:Array<{name:String, sel:String, recvName:String}> = [{name: def.name, sel: "", recvName: ""}];
		final methods:Array<Field> = [];
		for (recv in recvFunctions) {
			if (data.isMain && data.name != recv.path)
				continue;
			final recvName = typer.decls.Function.getRecvName(recv.decl.recv.list[0].type, info);
			if (recvName != def.name)
				continue;
			local.push({func: recv.decl, sel: "", recvName: recvName});
		}
		var restrictedNames = [
			for (func in local)
				typer.exprs.Ident.nameIdent(func.func.name.name, false, false, info)
		]; // restrict function names
		var isNamed = false;
		if (def != null && def.meta != null && def.meta[0] != null && def.meta[0].name == ":named")
			isNamed = true;
		// remove duplicated names
		for (i in 0...local.length) {
			if (local[i] == null || local[i].func.recv != null)
				continue;
			for (j in 0...local.length) {
				if (i == j)
					continue;
				if (local[j] == null || local[j].func.recv != null)
					continue;
				final name = local[i].func.name.name;
				final name2 = local[j].func.name.name;
				if (name == name2) {
					local.remove(local[i]);
					break;
				}
			}
		}

		switch def.kind {
			case TDField(_, _):
				continue; // skip if var or function for wrapper
			default:
		}
		final ct:ComplexType = TPath({
			name: splitDepFullPathName(def.name + "Pointer", info),
			pack: [],
			params: def.params?.map(param -> TPType(TPath({name: param.name, pack: []}))),
		});
		// trace(new haxe.macro.Printer().printComplexType(ct));
		var embedded = false;
		for (field in def.fields) {
			if (field.meta != null) {
				for (meta in field.meta) {
					if (meta.name == ":embedded") {
						embedded = true;
						break;
					}
				}
				if (embedded)
					break;
			}
		}
		var isInterface = false;
		if (def.meta != null) {
			for (meta in def.meta) {
				if (meta.name == ":interface")
					isInterface = true;
			}
		}
		if (isInterface)
			continue;
		final staticExtensionName = def.name + "_static_extension";
		final wrapperName = def.name + "_asInterface";
		final fieldWrapper = [info.global.filePath, wrapperName];
		final globalPath = getGlobalPath(info);
		if (globalPath != "")
			fieldWrapper.unshift(globalPath);
		final staticExtension:TypeDefinition = {
			name: staticExtensionName,
			pos: null,
			pack: [],
			kind: TDClass(),
			fields: [],
			isExtern: true,
			meta: [
				{name: ":keep", pos: null},
				{name: ":allow", pos: null, params: [toExpr(EConst(CIdent(fieldWrapper.join("."))))]}
			],
		};
		// asInterface
		final wrapper = HaxeAst.createWrapper(wrapperName, ct);
		wrapper.isExtern = true;
		wrapper.params = def.params;
		if (!HaxeAst.alreadyExistsTypeDef(wrapper, info))
			data.defs.push(wrapper);
		// type alias pointer
		final aliasPointerName = def.name + "Pointer";
		final aliasPointer:TypeDefinition = {
			name: aliasPointerName,
			pos: null,
			pack: [],
			kind: TDAlias(TPath({
				name: "Pointer",
				pack: ["stdgo"],
				params: [
					TPType(TPath({
						pack: [],
						name: splitDepFullPathName(def.name, info),
						params: def.params?.map(param -> TPType(TPath({name: param.name, pack: []})))
					}))
				]
			})),
			params: def.params,
			fields: [],
			isExtern: true,
			meta: [{name: ":keep", pos: null}, {name: ":follow", pos: null},],
		};
		if (!HaxeAst.alreadyExistsTypeDef(aliasPointer, info))
			info.data.defs.push(aliasPointer);
		// files check against all TypeSpecs
		if (def.meta != null) { // prevents adding @:using or other metadata to codegen.Patch.replace types
			def.meta.push({name: ":using", params: [macro $i{splitDepFullPathName(staticExtensionName, info)}], pos: null});
		}
		aliasPointer.meta.push({name: ":using", params: [macro $i{splitDepFullPathName(staticExtensionName, info)}], pos: null});
		if (!HaxeAst.alreadyExistsTypeDef(staticExtension, info))
			data.defs.push(staticExtension);
		var embedded = false;
		for (field in def.fields) { // embedded
			if (field.meta != null) {
				embedded = false;
				for (meta in field.meta) {
					if (meta.name == ":embedded") {
						embedded = true;
						break;
					}
				}
				if (embedded) { // embedded method already exists create it for staticExtension
					switch field.kind {
						case FProp(_, _, TFunction(args, ret), _):
							throw "use this prop";
							final t = TPath({name: splitDepFullPathName(def.name, info), pack: []});
							final fun:haxe.macro.Expr.Function = {args: []};
							fun.args = [
								for (i in 0...args.length)
									({
										name:'_$i', type:args[i]
									} : haxe.macro.Expr.FunctionArg)
							];
							fun.args.unshift({
								name: "__self__",
								type: t,
								meta: [],
							});
							fun.ret = ret;
							// final expr = {expr: fun.expr.expr, pos: null};
							final fieldName = field.name;
							final args = fun.args.slice(1).map(a -> macro $i{a.name});
							switch fun.args[fun.args.length - 1].type {
								case TPath(p):
									if (p.name == "Rest" && p.pack.length == 1 && p.pack[0] == "haxe") args[args.length - 1] = macro...[
										for (i in $e{
											args[args.length - 1]
										})
											i
									];
								default:
							}
							fun.expr = macro @:_5 __self__.$fieldName($a{args});
							if (!HaxeAst.isVoid(ret))
								fun.expr = macro return ${fun.expr};
							if (field.meta == null)
								field.meta = [];
							field.meta.push({name: ":embeddeddeffieldsfprop", pos: null});
							// embedded named
							HaxeAst.addLocalMethod(fieldName, field.pos, field.meta, field.doc, field.access, fun, staticExtension, wrapper,
								true, def.params != null
								&& def.params.length > 0);
						// fun.args = fun.args.slice(1);
						// fun.expr = expr;
						case FFun(fun):
							final t = TPath({name: splitDepFullPathName(def.name, info), pack: []});
							if (field.meta == null)
								field.meta = [];
							field.meta.push({name: ":embeddededffieldsffun", pos: null});
							final expr = {expr: fun.expr.expr, pos: null};
							final fieldName = field.name.substr("_get".length);
							final fun:haxe.macro.Expr.Function = {
								ret: fun.ret,
								args: fun.args,
								params: fun.params,
								expr: fun.expr,
							}
							switch fun.ret {
								case TFunction(args, ret):
									fun.args = [
										for (i in 0...args.length)
											({
												name:'_$i', type:args[i]
											} : haxe.macro.Expr.FunctionArg)
									];
									fun.ret = ret;
								default:
									throw "fun.ret must be TFunction: " + fun.ret;
							}
							fun.args.unshift({
								name: "__self__",
								type: t,
								meta: [],
							});
							final args = fun.args.slice(1).map(a -> macro $i{a.name});
							switch fun.args[fun.args.length - 1].type {
								case TPath(p):
									if (p.name == "Rest" && p.pack.length == 1 && p.pack[0] == "haxe") args[args.length - 1] = macro...[
										for (i in $e{
											args[args.length - 1]
										})
											i
									];
								default:
							}
							fun.expr = macro @:_5 __self__.$fieldName($a{args});
							switch expr.expr {
								case EReturn(_):
									fun.expr = macro return ${fun.expr};
								default:
							}
							// embedded named
							HaxeAst.addLocalMethod(fieldName, field.pos, field.meta, field.doc, field.access, fun, staticExtension, wrapper,
								true, def.params != null
								&& def.params.length > 0);
							fun.args = fun.args.slice(1);
							fun.expr = expr;
						default:
					}
				}
			}
		}
		final funcs = [
			for (decl in local) {
				var func = typer.decls.Function.typeFunction(decl.func, info, restrictedNames, isNamed, decl.sel, decl.recvName);
				func;
			}
		];
		for (func in funcs) {
			switch func.kind {
				case TDField(kind, access):
					switch kind {
						case FFun(fun):
							final patchName = info.global.module.path + "." + def.name + ":" + func.name;
							/*final patch = codegen.Patch.list[patchName];
								if (patch != null) {
									fun.expr = patch;
									codegen.Patch.list.remove(patchName);
							}*/
							func.meta.push({name: ":tdfield", pos: null});
							if (codegen.Patch.funcInline.indexOf(patchName) != -1 && access.indexOf(AInline) == -1)
								access.push(AInline);
							// recv func named
							HaxeAst.addLocalMethod(func.name, func.pos, func.meta, func.doc, access, fun, staticExtension, wrapper,
								true, def.params != null && def.params.length > 0);
						default:
					}
				default:
			}
		}
	}
}
