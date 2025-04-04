import haxe.DynamicAccess;
import haxe.io.Path;
import haxe.macro.Expr;
import src.Util;
import sys.io.File;
import Types;
import Ast.BasicKind;

final stdgoList:Array<String> = normalizeCLRF(File.getContent("data/stdgo.list")).split("\n");
final excludesList:Array<String> = haxe.Json.parse(File.getContent("data/excludes.json"));
final exports:Array<String> = haxe.Json.parse(File.getContent("data/stdgoExports.json"));
final externs:Array<String> = haxe.Json.parse(File.getContent("data/stdgoExterns.json"));

final reserved = [
	"iterator", "keyValueIterator", "switch", "case", "break", "continue", "default", "is", "abstract", "cast", "catch", "class", "do", "function", "dynamic",
	"else", "enum", "extends", "extern", "final", "for", "function", "if", "interface", "implements", "import", "in", "inline", "macro", "new", "operator",
	"overload", "override", "package", "private", "public", "return", "static", "this", "throw", "try", "typedef", "untyped", "using", "var", "while",
	"construct", "null", "in", "wait", "length", "capacity", "bool", "float", "int", "struct", "offsetof", "alignof", "atomic", "map", "comparable", "environ", "trace", "haxe", "std", "_new",
];

final reservedClassNames = [
	"_Atomic",
	"Atomic",
	"Environ",
	"Class",
	"TClass",
	"Single", // Single is a 32bit float
	"Array",
	"Any",
	"Int",
	"Float",
	"String",
	"Int64",
	"AnyInterface",
	"Dynamic",
	"InvalidType",
	"Null",
	"Bool",
	// "Reflect",
	"Date",
	"ArrayAccess",
	"DateTools",
	"EReg",
	"Enum",
	"EnumValue",
	"IntIterator",
	"Iterable",
	"Iterator",
	"KeyValueIterable",
	"KeyValueIterator",
	"Lambda",
	// "List",
	"Map",
	// "Math",
	"Std",
	"Sys",
	// "StringBuf",
	"StringTools",
	"SysError",
	"Type",
	"T",
	// "UnicodeString",
	"ValueType",
	"Void",
	"XmlType",
	"GoArray",
	"GoMath",
	"Go",
	"Slice",
	"Pointer",
];

final basicTypes = [
	"uint", "uint8", "uint16", "uint32", "uint64", "int", "int8", "int16", "int32", "int64", "float32", "float64", "complex64", "complex128", "string",
	"byte", // alias for uint8
	"rune", // alias for int32
	"uintptr",
	"comparable",
];

var printer = new Printer();

function main(data:DataType, instance:Main.InstanceData):Array<Module> {
	final imports:Array<String> = [];
	final noCommentsBool = instance.noComments;
	var list:Array<Module> = [];
	var defaultImports:Array<ImportType> = [];
	// trace(data.pkgs.map(pkg -> pkg.path + " " + pkg.name));
	final hashMap:Map<UInt, Dynamic> = [];
	for (obj in data.typeList) {
		hashMap[obj.hash] = obj;
	}
	var info:Info = null;
	// module system
	for (pkg in data.pkgs) {
		if (pkg.files == null)
			continue;
		instance.externBool = false;
		if (stdgoList.indexOf(pkg.path) != -1) {
			if (externs.indexOf(pkg.path) != -1)
				instance.externBool = true;
		}
		pkg.path = normalizePath(pkg.path);
		pkg.path = toHaxePath(pkg.path);
		var module:Module = {
			path: pkg.path,
			files: [],
			isMain: pkg.name == "main",
			name: pkg.name
		};
		if (StringTools.endsWith(module.path, "_test")) {
			// test file configure here
		}
		var initBlock = [];
		if (pkg.name == "main" && info != null) {
			initBlock = info.global.initBlock;
		}
		info = new Info();
		info.global.initBlock = initBlock;
		info.printGoCode = instance.printGoCode;
		info.global.path = pkg.path;
		info.global.externBool = instance.externBool;
		info.global.debugBool = instance.debugBool;
		info.global.varTraceBool = instance.varTraceBool;
		info.global.funcTraceBool = instance.stackBool;
		info.global.stackBool = instance.stackBool;
		info.global.noCommentsBool = instance.noCommentsBool;
		info.global.module = module;
		info.global.root = instance.root;

		info.global.hashMap = hashMap;

		if (pkg.order != null) {
			final pkgOrder = pkg.order.copy();
			pkg.order = [];
			for (s in pkgOrder) {
				if (s == "_")
					continue;
				pkg.order.push(formatHaxeFieldName(s,info));
			}
		} else {
			pkg.order = [];
		}

		info.global.order = pkg.order;

		for (file in pkg.files) {
			if (file.decls == null)
				continue;
			if (module.isMain) {
				if (StringTools.endsWith(file.path, ".go"))
					file.path = file.path.substr(0, file.path.length - 3);
				file.path = importClassName(normalizePath(file.path)); // file naming
			}else{
				file.path = importClassName(normalizePath(pkg.path.substr(pkg.path.lastIndexOf(".") + 1)));
			}

			info.global.filePath = file.path;

			var declFuncs:Array<Ast.FuncDecl> = [];
			var declGens:Array<Ast.GenDecl> = [];
			for (decl in file.decls) {
				switch decl.id {
					case "GenDecl":
						declGens.push(decl);
					case "FuncDecl":
						var decl:Ast.FuncDecl = decl;
						declFuncs.push(decl);
					default:
				}
			}
			for (decl in declFuncs) {
				if (decl.recv == null || decl.recv.list == null || decl.recv.list.length == 0) {
					final name = nameIdent(decl.name.name, false, true, info); // overwrite name
					info.localIdents.remove(name);
				}
			}
		}
		var recvFunctions:Array<{decl:Ast.FuncDecl, path:String}> = [];

		// 2nd pass main typing
		for (file in pkg.files) {
			if (file.decls == null)
				continue;
			file.location = Path.normalize(file.location);
			var data:FileType = {
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
			final pkgDoc = getDocComment(file);
			var declFuncs:Array<Ast.FuncDecl> = [];
			var declGens:Array<Ast.GenDecl> = [];
			for (decl in file.decls) {
				switch decl.id {
					case "GenDecl":
						declGens.push(decl);
					case "FuncDecl":
						var decl:Ast.FuncDecl = decl;
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
							typeImport(spec, info);
						case "TypeSpec":
							final spec:Ast.TypeSpec = spec;
							if (spec.type.id == "InterfaceType") { // priority
								if (spec.name.name != "_")
									info.data.defs.push(typeSpec(spec, info, gen.tok == FUNC));
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
							final spec:Ast.TypeSpec = spec;
							if (spec.type.id == "StructType") { // priority
								if (spec.name.name != "_") {
									//trace(spec.name.name);
									if (spec.name.name.indexOf(":") != -1) {
										final index = spec.name.name.indexOf(":");
										final key = spec.name.name.substr(0,index);
										//trace(key);
										spec.name.name = spec.name.name.substr(index + 1);
										// need to push the type in order to do a replace later at the decleration within a function body
										info.data.defs.push(typeSpec(spec, info, gen.tok == FUNC));
										if (!info.global.localSpecs.exists(key)) {
											info.global.localSpecs[key] = [];
										}
										//trace(key, spec.name.name);
										info.global.localSpecs[key].push(spec);
										gen.specs.remove(spec);
									}else{
										info.data.defs.push(typeSpec(spec, info, gen.tok == FUNC));
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
							info.data.defs.push(typeSpec(spec, info, gen.tok == FUNC));
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
							final spec:Ast.ValueSpec = spec;
							values = values.concat(typeValue(spec, info, constant));
						default:
					}
				}
			}

			var valuesSorted = [];
			for (name in pkg.order) {
				for (value in values) {
					if (value.name == name) {
						if (value.pos != null) {
							for (value2 in values.copy()) {
								if (value2.pos != null && value2.pos.min == value.pos.min) {
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
			if (info.global.order.length > 0) {
				final vars:Array<Var> = [];
				for (i in 0...info.global.order.length) {
					final o = info.global.order[i];
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
					final spec = typeSpec(spec, info, true);
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
				var func = typeFunction(decl, info);
				if (func != null)
					data.defs.push(func);
			}

			// patch system to add functions
			for (key => expr in Patch.addFuncs) {
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
					Patch.addFuncs.remove(key);
				}
			}
			for (key => def in Patch.addTypeDefs) {
				final index = key.indexOf(":");
				final path = key.substr(0, index);
				if (path == info.global.module.path) {
					final defName = key.substr(index + 1);
					data.defs.push(def);
					Patch.addTypeDefs.remove(key);
				}
			}

			// init system
			if (info.global.initBlock.length > 0) {
				// info.global.initBlock.unshift(macro trace(stdgo._internal.internal.type.Type.names));
				var block = toExpr(EBlock(info.global.initBlock));
				final pathString = makeString(info.global.path);
				if (info.global.varTraceBool) {
					block = macro {
						trace("start init func: " + $pathString);
						$block;
						trace("end init func: " + $pathString);
					}
				}
				block = mapReturnToThrow(block);
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
			data.imports = data.imports.concat(defaultImports);

			if (pkgDoc != "")
				data.defs.unshift({
					name: "__go2hxdoc__package",
					pack: [],
					pos: null,
					fields: [],
					doc: pkgDoc,
					kind: TDField(FVar(TPath({name: "Bool", pack: []})), [APrivate]),
				});
			// add file to module
			module.files.push(data);
		}
		// process recv functions check against all TypeSpecs
		for (file in module.files) {
			final defs = file.defs.copy();
			for (def in defs) {
				if (def.name == "__go2hxdoc__package")
					continue;
				if (StringTools.endsWith(def.name, "_asinterface") || StringTools.endsWith(def.name, "_asInterface") || StringTools.endsWith(def.name, "_static_extension"))
					continue;
				var local:Array<{func:Ast.FuncDecl, sel:String, recvName:String}> = [];
				final names:Array<{name:String, sel:String, recvName:String}> = [{name: def.name, sel: "", recvName: ""}];
				final methods:Array<Field> = [];
				for (recv in recvFunctions) {
					if (file.isMain && file.name != recv.path)
						continue;
					final recvName = getRecvName(recv.decl.recv.list[0].type, info);
					// trace(recvName, names);
					for (name in names) {
						if (recvName == name.name) {
							local.push({func: recv.decl, sel: name.sel, recvName: recvName});
						}
					}
				}
				var restrictedNames = [for (func in local) nameIdent(func.func.name.name, false, false, info)]; // restrict function names
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
				final wrapper = createWrapper(wrapperName, ct);
				wrapper.isExtern = true;
				wrapper.params = def.params;
				if (!alreadyExistsTypeDef(wrapper,info))
					file.defs.push(wrapper);
				// type alias pointer
				final aliasPointerName = def.name + "Pointer";
				final aliasPointer:TypeDefinition = {
					name: aliasPointerName,
					pos: null,
					pack: [],
					kind: TDAlias(TPath({
						name: "Pointer",
						pack: ["stdgo"],
						params: [TPType(TPath({
							pack: [],
							name: splitDepFullPathName(def.name, info),
							params: def.params?.map(param -> TPType(TPath({name: param.name, pack: []})))}))
						]
					})),
					params: def.params,
					fields: [],
					isExtern: true,
					meta: [
						{name: ":keep", pos: null},
						{name: ":follow", pos: null},
					],
				};
				if (!alreadyExistsTypeDef(aliasPointer,info))
					info.data.defs.push(aliasPointer);
				// files check against all TypeSpecs
				if (def.meta != null) { // prevents adding @:using or other metadata to Patch.replace types
					def.meta.push({name: ":using", params: [macro $i{splitDepFullPathName(staticExtensionName, info)}], pos: null});
				}
				aliasPointer.meta.push({name: ":using", params: [macro $i{splitDepFullPathName(staticExtensionName, info)}], pos: null});
				if (!alreadyExistsTypeDef(staticExtension,info))
					file.defs.push(staticExtension);
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
									fun.args = [for (i in 0...args.length) ({name: '_$i', type: args[i]} : haxe.macro.Expr.FunctionArg)];
									fun.args.unshift({
										name: "__self__",
										type: t,
										meta: [],
									});
									fun.ret = ret;
									//final expr = {expr: fun.expr.expr, pos: null};
									final fieldName = field.name;
									final args = fun.args.slice(1).map(a -> macro $i{a.name});
									switch fun.args[fun.args.length - 1].type {
										case TPath(p):
											if (p.name == "Rest" && p.pack.length == 1 && p.pack[0] == "haxe") args[args.length - 1] = macro...[for (i in $e{args[args.length - 1]}) i];
										default:
									}
									fun.expr = macro @:_5 __self__.$fieldName($a{args});
									if (!isVoid(ret))
										fun.expr = macro return ${fun.expr};
									if (field.meta == null)
										field.meta = [];
									field.meta.push({name: ":embeddeddeffieldsfprop", pos: null});
									// embedded named
									addLocalMethod(fieldName, field.pos, field.meta, field.doc, field.access, fun, staticExtension, wrapper,
										true, def.params != null
										&& def.params.length > 0);
									//fun.args = fun.args.slice(1);
									//fun.expr = expr;
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
											fun.args = [for (i in 0...args.length) ({name: '_$i', type: args[i]} : haxe.macro.Expr.FunctionArg)];
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
											if (p.name == "Rest" && p.pack.length == 1 && p.pack[0] == "haxe") args[args.length - 1] = macro...[for (i in $e{args[args.length - 1]}) i];
										default:
									}
									fun.expr = macro @:_5 __self__.$fieldName($a{args});
									switch expr.expr {
										case EReturn(_):
											fun.expr = macro return ${fun.expr};
										default:
									}
									// embedded named
									addLocalMethod(fieldName, field.pos, field.meta, field.doc, field.access, fun, staticExtension, wrapper,
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
						var func = typeFunction(decl.func, info, restrictedNames, isNamed, decl.sel, decl.recvName);
						func;
					}
				];
				for (func in funcs) {
					switch func.kind {
						case TDField(kind, access):
							switch kind {
								case FFun(fun):
									final patchName = info.global.module.path + "." + def.name + ":" + func.name;
									/*final patch = Patch.list[patchName];
									if (patch != null) {
										fun.expr = patch;
										Patch.list.remove(patchName);
									}*/
									func.meta.push({name: ":tdfield", pos: null});
									if (Patch.funcInline.indexOf(patchName) != -1 && access.indexOf(AInline) == -1)
										access.push(AInline);
									// recv func named
									addLocalMethod(func.name, func.pos, func.meta, func.doc, access, fun, staticExtension, wrapper,
										true, def.params != null && def.params.length > 0);
								default:
							}
						default:
					}
				}
				// trace(printer.printTypeDefinition(staticExtension));
				// trace(printer.printTypeDefinition(wrapper));
			}
		}
		/*if (instance.externBool) {
			module.path = "stdgo." + module.path;
		}*/
		// for (file in module.files)
		//	trace(file.defs.map(def -> def.name));
		list.push(module);
	}

	return list;
}

private function createWrapper(wrapperName:String, ct:ComplexType) {
	return macro class $wrapperName {
		public function new(__self__, __type__) {
			this.__self__ = __self__;
			this.__type__ = __type__;
		}

		public function __underlying__()
			return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer
				&& !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
				__type__);

		var __self__:$ct;
		var __type__:stdgo._internal.internal.reflect.Reflect._Type;
	};
}

private function addLocalMethod(name:String, pos, meta:Metadata, doc, access:Array<Access>, fun:Function, staticExtension:TypeDefinition,
		wrapper:TypeDefinition, embedded:Bool, hasParams:Bool) {
	var isPointerArg = false;
	if (fun.args.length > 0 && meta != null && fun.args[0].meta != null) {
		for (meta in fun.args[0].meta) {
			if (meta.name == ":pointer") {
				fun.args[0].meta.remove(meta);
				isPointerArg = true;
				break;
			}
		}
	}
	final funcName = name;
	final staticArgs = fun.args.copy();
	if (isPointerArg) {
		/*final t = exprOfType(staticArgs[0].type);
		switch t {
			case TPath(p):
				switch p.params[0] { // Pointer<T>
					case TPType(t):
						final f:FunctionArg = {
							name: "____",
							type: access.indexOf(AMacro) == -1 ? t : TPath({
								name: "Expr",
								sub: "ExprOf",
								pack: ["haxe", "macro"],
								params: [TPType(t)]
							}),
						};
						//staticArgs.unshift(f);
					default:
				}
			default:
		}*/
	}
	final funcName = name;
	var staticFieldExpr:Expr = {expr: fun.expr.expr, pos: null};
	final staticFieldAccess = access.copy();
	staticFieldAccess.push(AStatic);
	if (staticFieldAccess.indexOf(APublic) == -1) {
		staticFieldAccess.remove(APrivate);
		staticFieldAccess.push(APublic);
	}
	// trace(staticArgs.map(arg -> printer.printFunctionArg(arg)));
	final staticField:Field = {
		name: funcName,
		pos: pos,
		meta: meta == null ? null : meta.copy(),
		doc: doc,
		access: staticFieldAccess,
		kind: FFun({
			args: staticArgs,
			ret: fun.ret,
			params: fun.params,
			expr: staticFieldExpr,
		})
	};
	// trace(printer.printField(staticField));
	final fieldRet = exprOfType(fun.ret);
	var fieldArgs = staticArgs.slice(1);
	//if (isPointerArg)
	//	fieldArgs.shift();
	for (i in 0...fieldArgs.length)
		fieldArgs[i] = {name: fieldArgs[i].name, type: exprOfType(fieldArgs[i].type)};

	final fieldCallArgs = fieldArgs.map(arg -> macro $i{arg.name});
	var e = macro @:_0 __self__;
	/*if (isPointerArg) {
		fieldCallArgs.unshift(macro @:_1 __self__);
	}*/
	if (fieldArgs.length > 0 && isRestType(fieldArgs[fieldArgs.length - 1].type)) {
		fieldCallArgs[fieldCallArgs.length - 1] = macro...$e{fieldCallArgs[fieldCallArgs.length - 1]};
	}
	var e = if (isPointerArg) {
		macro $e.$funcName($a{fieldCallArgs});
	}else{
		macro $e.value.$funcName($a{fieldCallArgs});
	}
	if (!isVoid(fieldRet))
		e = macro return $e;
	var paramIndex = 0;
	final fieldArgs = fieldArgs.copy();
	for (arg in fieldArgs) {
		if (arg.name.indexOf("__generic__") == 0)
			fieldArgs.remove(arg);
	}
	final field:Field = {
		name: funcName,
		access: hasParams ? [APublic] : [APublic, ADynamic],
		meta: meta == null ? null : meta.copy(),
		pos: pos,
		doc: doc,
		kind: hasParams ? FVar(TFunction(fieldArgs.map(arg -> TNamed(arg.name, arg.type)), fieldRet)) : FFun({
			args: fieldArgs,
			ret: fieldRet,
			expr: e,
		})
	};
	wrapper.fields.unshift(field);
	staticExtension.fields.unshift(staticField);
}

private function exprOfType(t:ComplexType):ComplexType {
	if (t == null)
		return TPath({name: "Void", pack: []});
	switch t {
		case TPath(p):
			if (p.name == "Expr" && p.sub == "ExprOf" && p.params != null && p.params.length == 1 && p.pack.length == 2 && p.pack[0] == "haxe"
				&& p.pack[1] == "macro") {
				switch p.params[0] {
					case TPType(t):
						return t;
					default:
				}
			}
		default:
	}
	return t;
}

private function mapReturnToThrow(expr:Expr):Expr {
	var f = null;
	f = expr -> {
		if (expr == null)
			return expr;
		return switch expr.expr {
			case EFunction(_,_):
				return expr;
			case EReturn(_):
				macro throw "__return__";
			default:
				haxe.macro.ExprTools.map(expr, f);
		}
	}
	return f(expr);
}

private function compareComplexType(a:ComplexType, b:ComplexType):Bool {
	if (a == null || b == null)
		return false;
	switch a {
		case TPath(p):
			switch b {
				case TPath(p2):
					if (p.name != p2.name)
						return false;
					if (p.pack.length != p2.pack.length)
						return false;
					for (i in 0...p.pack.length) {
						if (p.pack[i] != p2.pack[i])
							return false;
					}
					return true;
				default:
					return false;
			}
		case TAnonymous(fields):
			switch b {
				case TAnonymous(fields2):
					if (fields.length != fields2.length)
						return false;
					for (i in 0...fields.length) {
						if (fields[i].name != fields2[i].name)
							return false;
						switch fields[i].kind {
							case FVar(t, e):
								switch fields2[i].kind {
									case FVar(t2, e):
										if (!compareComplexType(t, t2)) return false;
									default:
										return false;
								}
							default:
								return false;
						}
					}
					return true;
				default:
					return false;
			}
		default:
			trace("unknown compare complex type: " + a);
			return false;
	}
}

private function typeStmt(stmt:Dynamic, info:Info):Expr {
	if (stmt == null)
		return null;
	var def = switch stmt.id {
		case "ReturnStmt": typeReturnStmt(stmt, info);
		case "IfStmt": typeIfStmt(stmt, info);
		case "ExprStmt": typeExprStmt(stmt, info);
		case "AssignStmt": typeAssignStmt(stmt, info);
		case "ForStmt": typeForStmt(stmt, info);
		case "SwitchStmt": typeSwitchStmt(stmt, info);
		case "TypeSwitchStmt": typeTypeSwitchStmt(stmt, info);
		case "DeclStmt": typeDeclStmt(stmt, info);
		case "RangeStmt": typeRangeStmt(stmt, info);
		case "DeferStmt": typeDeferStmt(stmt, info);
		case "IncDecStmt": typeIncDecStmt(stmt, info);
		case "LabeledStmt": typeLabeledStmt(stmt, info);
		case "BlockStmt": typeBlockStmt(stmt, info, false);
		case "BadStmt": throw info.panic() + "BAD STATEMENT TYPED";
		case "GoStmt": typeGoStmt(stmt, info);
		case "BranchStmt": typeBranchStmt(stmt, info);
		case "SelectStmt": typeSelectStmt(stmt, info);
		case "SendStmt": typeSendStmt(stmt, info);
		case "EmptyStmt": typeEmptyStmt(stmt, info);
		default: throw info.panic() + "unknown stmt id: " + stmt.id;
	}
	if (def == null)
		throw info.panic() + "stmt null: " + stmt.id;
	return toExpr(def);
}

private function typeEmptyStmt(stmt:Ast.EmptyStmt, info:Info):ExprDef {
	return (macro {}).expr;
}

private function typeSendStmt(stmt:Ast.SendStmt, info:Info):ExprDef {
	var chan = typeExpr(stmt.chan, info);
	var t = typeof(stmt.chan, info, false);
	var value = typeExpr(stmt.value, info);
	final valueType = typeof(stmt.value, info, false);
	value = assignTranslate(valueType, getElem(t), value, info);
	return (macro $chan.__send__($value)).expr;
}

private function typeSelectStmt(stmt:Ast.SelectStmt, info:Info):ExprDef {
	var defaultBlock:Expr = null;
	var list:Array<Expr> = [];
	if (stmt.body.list == null)
		return (macro @:null_select {}).expr;
	var needsReturn = true;
	final resets:Array<Expr> = [];
	final defines:Array<Expr> = [];
	var defineCount = 0;
	function ifs(i:Int):Expr {
		final obj:Ast.CommClause = stmt.body.list[i];
		var varName = "";
		if (obj != null && obj.comm != null && obj.comm.id == "AssignStmt" && obj.comm.lhs[0].name != "_") {
			varName = nameIdent(obj.comm.lhs[0].name, false, true, info);
		}
		var block = (obj == null || obj.body == null) ? macro {} : toExpr(typeStmtList(obj.body, info, false));
		var cond:Expr = null;
		if (needsReturn && !exprWillReturn(block))
			needsReturn = false;
		if (obj == null || obj.comm == null) { // default true
			defaultBlock = block;
		} else {
			var comm:Dynamic = obj.comm;
			if (comm.id == "AssignStmt") {
				if (comm.lhs.length > 1) { // smart get
					var ok = typeExpr(comm.lhs[1], info);
					list.push(macro {
						${typeStmt(comm, info)};
						if ($ok) {
							$block;
							return;
						}
					});
					return ifs(i + 1);
				}
				comm = comm.rhs[0];
			} else if (comm.id == "ExprStmt") {
				comm = comm.x;
			}
			if (comm.id == "UnaryExpr") { // get
				var expr:Ast.UnaryExpr = comm;
				var e = typeExpr(expr.x, info);
				final chanName = "__c__" + defineCount++;
				defines.push(macro var $chanName = null);
				cond = macro {
					if ($i{chanName} == null) {
						$i{chanName} = $e;
					}
					$i{chanName} != null && $i{chanName}.__isGet__(true);
				};
				resets.push(macro $i{chanName}.__reset__());
				e = macro $i{chanName}.__get__();
				if (varName != "") {
					if (obj.comm.tok == Ast.Token.DEFINE) {
						e = macro var $varName = $e;
					}else{
						// varName = ""
						e = assignTranslate(typeof(obj.comm.rhs[0], info, false), typeof(obj.comm.lhs[0], info, false), e, info, false);
						if (obj.comm.tok == Ast.Token.ASSIGN && varName != "")
							e = macro $i{varName} = $e;
					}
				}
				block = macro $b{[e, block]};
			} else { // send
				var stmt:Ast.SendStmt = comm;
				final value = typeExpr(stmt.value, info);
				var e = typeExpr(stmt.chan, info);
				final chanName = "__c__" + defineCount++;
				defines.push(macro var $chanName = $e);
				cond = macro $e != null && $i{chanName}.__isSend__(true);
				resets.push(macro $i{chanName}.__reset__());
				e = macro $i{chanName}.__send__($value);
				block = macro $b{[e, block]};
			}
		}
		if (cond == null)
			defaultBlock = block;
		block = macro $b{[macro __select__ = false, block]};
		if (i + 1 >= stmt.body.list.length) {
			if (cond == null)
				return block;
			return if (defaultBlock == null) {
					macro if ($cond) $block;
				}else{
					defaultBlock = macro $b{[macro __select__ = false, defaultBlock]};
					macro if ($cond) $block else $defaultBlock;
			}
		}
		final next = ifs(i + 1);
		if (cond == null)
			return next;
		return macro if ($cond)
			$block
		else
			$next;
	}
	var e = ifs(0);
	e = macro {
		var __select__ = true;
		@:mergeBlock $b{defines};
		while(__select__) {
			$e;
			@:define("(sys || hxnodejs)") Sys.sleep(0.01);
			stdgo._internal.internal.Async.tick();
		}
		@:mergeBlock $b{resets};
	};
	if (needsReturn) {
		e = macro $b{[e, toExpr(typeReturnStmt({results: [], returnPos: 0}, info))]};
	}
	return e.expr;
}

private function typeGoto(label:Expr):Expr {
	return macro @:goto $label;

}
private function typeBranchStmt(stmt:Ast.BranchStmt, info:Info):ExprDef {
	return switch stmt.tok {
		case CONTINUE:
			if (stmt.label != null) {
				final label = makeExpr(stmt.label.name);
				(macro @:jump($label) continue).expr;
			} else {
				EContinue;
			}
		case BREAK:
			if (stmt.label != null) {
				final label = makeExpr(stmt.label.name);
				(macro @:jump($label) break).expr;
			} else {
				EBreak;
			}
		case GOTO:
			final name = makeString(stmt.label.name);
			return typeGoto(name).expr;
		case FALLTHROUGH:
			final e = info.switchTag;
			final index = makeExpr(info.switchIndex + 1);
			(macro @:fallthrough {
				__switchIndex__ = $index;
				__run__ = true;
				continue;
			}).expr;
		default:
			(macro @:unknown_branch_stmt break).expr;
	}
}

private function typeGoStmt(stmt:Ast.GoStmt, info:Info):ExprDef {
	var call = typeExpr(stmt.call, info);
	return (macro stdgo.Go.routine(() -> $call)).expr;
}

private function typeBlockStmt(stmt:Ast.BlockStmt, info:Info, isFunc:Bool):ExprDef {
	if (stmt.list == null) {
		if (isFunc && info.returnTypes.length > 0) {
			final s = makeString("not implemented: " + info.funcName);
			return (macro {
				trace("funclit");
				throw $s;
			}).expr;
		}
		return (macro {}).expr;
	}
	return typeStmtList(stmt.list, info, isFunc);
}

private function typeStmtList(list:Array<Ast.Stmt>, info:Info, isFunc:Bool):ExprDef {
	if (isFunc) {
		info.localIdents = info.localIdents.copy(); 
		info.renameIdents = info.renameIdents.copy();
		info.classNames = info.classNames.copy();
	}else{
		info = info.copy();
	}
	var exprs:Array<Expr> = [];
	// add named return values
	if (isFunc) {
		if (info.returnNamed) {
			var vars:Array<Var> = [];
			for (i in 0...info.returnNames.length) {
				vars.push({
					name: info.returnNames[i],
					//type: info.returnComplexTypes[i],
					expr: defaultValue(info.returnTypes[i], info),
				});
			}
			exprs.unshift(toExpr(EVars(vars)));
		}
	}
	if (list != null) {
		exprs = exprs.concat([for (stmt in list) typeStmt(stmt, info)]);
	}
	if (list != null && info.global.gotoSystem && isFunc) {
		exprs = [macro stdgo._internal.internal.Macro.controlFlow($b{exprs})];
		if (false) {
			// experimental
			//return EBlock(exprs);
			final data = new ControlFlowData();
			data.global.cases.push(data.global.lastCase);
			var expr = controlFlowLabels(data, macro $b{exprs});
			expr = controlFlowJumps(data, expr);
			final ret = toExpr(typeReturnStmt({returnPos: 0, results: []}, info));
			data.global.cases[data.global.cases.length - 1].push(ret);
			final cases:Array<haxe.macro.Expr.Case> = [];
			for (i in 0...data.global.cases.length) {
				cases[i] = {
					values: [macro ${makeExpr(i)}],
					expr: macro $b{data.global.cases[i]},
				}
			}
			final switchExpr = toExpr(ESwitch(macro __case__, cases, macro {throw "control flow failed: " + __case__;}));
			exprs = [macro var __case__ = 0];
			exprs.push(macro while (true) $switchExpr);
			trace(printer.printExprs(exprs, " "));
		}
	}
	//trace(list != null, info.global.deferBool, isFunc);
	if (list != null && info.global.deferBool && isFunc) { // defer system
		final ret = toExpr(typeReturnStmt({returnPos: 0, results: []}, info));
		final e = ret;
		var catchBlock:Array<Expr> = [macro var exe:Dynamic = __exception__.native];
		catchBlock.push(macro if ((exe is haxe.ValueException))
			exe = exe.value);
		catchBlock.push(macro if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
			if (__exception__.message == "__return__")
				throw "__return__";
			exe = stdgo.Go.toInterface(__exception__.message);
		});
		catchBlock.push(macro stdgo.Go.recover_exception = exe);
		switch e.expr {
			case EBlock(exprs):
				final last = exprs.pop();
				//trace(printer.printExpr(macro $b{exprs}));
				catchBlock.push(macro {
					function f() {
						try {
							$b{exprs.copy()};
						}catch(__exception__2) {
							var exe:Dynamic = __exception__2.native;
							if ((exe is haxe.ValueException)) exe = exe.value;
							if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
								if (__exception__.message == "__return__") throw "__return__";
								exe = stdgo.Go.toInterface(__exception__.message);
							};
							stdgo.Go.recover_exception = exe;
							f();
						}
					}
					f();
				});
				exprs.push(macro if (stdgo.Go.recover_exception != null) {
					final e = stdgo.Go.recover_exception;
					stdgo.Go.recover_exception = null;
					throw e;
				});
				exprs.push(last);
				catchBlock.push(macro if (stdgo.Go.recover_exception != null) {
					final e = stdgo.Go.recover_exception;
					stdgo.Go.recover_exception = null;
					throw e;
				});
				catchBlock.push(last);
				//catchBlock = catchBlock.concat(exprs);
			default:
				catchBlock = catchBlock.concat([macro stdgo.Go.recover_exception != null ? {
					final e = stdgo.Go.recover_exception;
					stdgo.Go.recover_exception = null;
					throw e;
				}: $e]);
		}
		exprs.unshift(macro var __deferstack__:Array<{ran:Bool, f:Void->Void}> = []);
		//exprs.push(typeDeferReturn(info, true));
		exprs.push(ret);
		// recover
		final tryBool = true;
		if (tryBool) {
			final pos = 1 + (info.returnNamed ? 1 : 0);
			final trydef = macro try
					$b{exprs.slice(pos)} 
				catch (__exception__) {
					$b{catchBlock};
				};
			// don't include recover and defer stack
			exprs = exprs.slice(0, pos);
			exprs.push(trydef);
		}
	}
	return EBlock(exprs);
}

class ControlFlowCase {
	public var parent:ControlFlowCase;
	public var exprs:Array<Expr> = [];

	public function new(exprs:Array<Expr>, parent) {
		this.exprs = exprs;
		this.parent = parent;
	}
}

class GlobalControlFlowData {
	public var cases:Array<Array<Expr>> = [];
	public var caseMap:Map<String,Int> = [];
	public var lastCase:Array<Expr> = [];
	public function new() {}
}

class ControlFlowData {
	public var global = new GlobalControlFlowData();
	public var scopeIndex:Int = -1;
	public function new() {}
	public function copy() {
		final data = new ControlFlowData();
		data.global = global;
		data.scopeIndex = scopeIndex + 1;
		return data;
	}
}

function createCaseIndex(scopeIndex:Int, count:Int):String {
	return '$scopeIndex.$count';
}

private function controlFlowLabels(data:ControlFlowData, e:Expr):Expr {
	return switch e.expr {
		case EBlock(exprs):
			for (i in 0...exprs.length) {
				switch exprs[i].expr {
					case EFor(it, expr):
						
					case EWhile(econd, e, true):
					default:
				}
				if (isLabel(exprs[i])) {
					data.global.lastCase = [exprs[i]];
					final labelName = getLabelName(exprs[i]);
					data.global.caseMap[labelName] = data.global.cases.push(data.global.lastCase) - 1;
					continue;
				}
				data.global.lastCase.push(exprs[i]);
			}
			return macro null;
		default:
			return mapExprWithData(e, data, controlFlowLabels);
	}
}

private function controlFlowJumps(data:ControlFlowData, e:Expr):Expr {
	return switch e.expr {
		default:
			return mapExprWithData(e, data, controlFlowJumps);
	}
}

private function controlFlow(data:ControlFlowData, e:Expr):Expr {
	return switch e.expr {
		case EBlock(exprs):
			macro $b{[for (expr in exprs) mapExprWithData(expr, data, controlFlow)]};
		case EMeta(s, e):
			switch s.name {
				case ":jump": // special goto for continue and break
					// labels are found out later
					//data.caseMap[exprToStringValue(s.params[0])];
				case ":goto": // jump to label
			}
			e;
		default:
			return mapExprWithData(e, data, controlFlow);
	}
}

function isLabel(e:Expr):Bool {
	return switch e.expr {
		case EMeta(s, _):
			return s.name == ":label";
		default:
			false;
	}
}

function getLabelName(e:Expr):String {
	return switch e.expr {
		case EMeta(s, e):
			if (s.name == ":label") {
				switch e.expr {
					case EConst(CString(s)):
						s;
					default:
						"";
				}
			}else{
				"";
			}
		default:
			"";
	}
}
/*
func = function(expr:haxe.macro.Expr, inLoop:Bool, scopeIndex:Int,label:Expr,initLabelSet:Bool,previousLabel:Expr):Expr {
			return switch (expr.expr) {
				case EMeta(s, e):
					switch s.name {
						case ":recv":
							expr;
						case ":label":
							{
								expr: EMeta(s, func(e, inLoop, scopeIndex,s.params[0],true,label)),
								pos: Context.currentPos(),
							};
						case ":jump":
							final name:Expr= s.params[0];
							final noJump = label == null ? false : exprToString(name) == exprToString(label);
							switch e.expr {
								case EContinue:
									if (noJump) {
										macro continue;
									}else{
										macro {
											$i{selectName} = $name;
											$i{innerName} = true;
											$i{breakName} = false;
											break;
										}
									}
								case EBreak:
									if (noJump) {
										macro break;
									}else{
										macro {
											$i{selectName} = $name;
											$i{innerName} = true;
											$i{breakName} = true;
											break;
										}
									}
								default:
									throw "invalid jump expr: " + new haxe.macro.Printer().printExpr(e);
							}
						case ":goto":
							macro {
								$i{selectName} = $e;
								${inLoop ? macro {$i{exitName} = true; break;} : macro continue};
							};
						default:
							{
								expr: EMeta(s, func(e, inLoop, scopeIndex,label,initLabelSet,previousLabel)),
								pos: Context.currentPos(),
							};
					}
				case EWhile(econd, e, normalWhile):
					expr.expr = EWhile(econd, func(e,true,scopeIndex, initLabelSet ? label : null,false,null), normalWhile);
					expr = loop(expr, inLoop,initLabelSet ? previousLabel : label);
					expr;
				case EFor(it, e):
					expr.expr = EFor(it, func(e,true,scopeIndex, initLabelSet ? label : null,false,null));
					expr = loop(expr, inLoop,initLabelSet ? previousLabel : label);
					expr;
				case EBlock(exprs):
					scopeIndex++;
					for (i in 0...exprs.length)
						exprs[i] = func(exprs[i], inLoop, scopeIndex,label,initLabelSet,previousLabel);
					expr.expr = EBlock(exprs);
					expr;
				case EIf(econd, eif, eelse):
					expr.expr = EIf(econd, func(eif, inLoop, scopeIndex,label,initLabelSet,previousLabel), eelse == null ? null : func(eelse, inLoop, scopeIndex,label,initLabelSet,previousLabel));
					expr;
				case EVars(v):
					if (scopeIndex == 0) {
						for (obj in v)
							obj.isFinal = false; // all vars need to be able to be reassigned
						vars = vars.concat(v);
						if (v.length == 1) {
							macro $i{v[0].name} = ${v[0].expr};

						} else {
							{
								expr: EBlock([for (v in vars) macro $i{v.name} = ${v.expr}]),
								pos: Context.currentPos(),
							};
						}
					} else {
						expr;
					}
				case ECall(e, params):
					var printer = new haxe.macro.Printer();
					final str = printer.printExpr(e);
					if (str == "stdgo.Go.cfor" || str == "Go.cfor") {
						var block = params.pop();
						block = func(block,true,scopeIndex,initLabelSet ? label : null,false,null);
						params.push(block);
						expr.expr = ECall(e, params);
						expr = loop(expr, inLoop,initLabelSet ? previousLabel : label);
						expr;
					}
					expr;
					default:
						expr;
				}
			}
			body = func(body, false, -1, macro "",false,null);
			switch body.expr {
				case EBlock(exprs):
					for (i in 0...exprs.length) {
						switch exprs[i].expr {
							case EMeta(s, e):
								switch s.name {
									case ":label":
										if (cases.length == 0) {
											// first case
											cases.push({values: [macro ""], expr: {expr: EBlock(exprs.slice(0, i)), pos: Context.currentPos()}});
										}
										cases.push({values: [s.params[0]], expr: {expr: EBlock(exprs.slice(i)), pos: Context.currentPos()}});
	
										switch e.expr { // takes out labled Vars statement from scoped block
											case EBlock(exprs2):
												if (exprs2.length == 1) {
													switch exprs2[0].expr {
														case EVars(_):
															exprs[i].expr = exprs2[0].expr;
														default:
													}
												}
											default:
										}
								}
							default:
						}
					}
					body.expr = EBlock(exprs);
				default:
			}
			if (cases.length == 0) {
				cases.push({values: [macro ""], expr: body});
			}
			for (i in 0...cases.length) {
				switch cases[i].expr.expr {
					case EBlock(exprs):
						final name = i == cases.length - 1 ? macro "" : cases[i + 1].values[0];
						exprs.push(macro $i{selectName} = $name);
						cases[i].expr.expr = EBlock(exprs);
					default:
				}
			}
			var switchStmt:Expr = {expr: ESwitch(macro $i{selectName}, cases, null), pos: Context.currentPos()};
			final v:Expr = {expr: EVars(vars), pos: Context.currentPos()};
			final e = macro {
				var $selectName = "";
				var $exitName = false;
				var $breakName = false;
				var $innerName = false;
				$v;
				@:pos(Context.currentPos()) do {
					$i{exitName} = false;
					$switchStmt;
				} while ($i{selectName} != "");
			};
			e.pos = Context.currentPos();
			if (ret != null) {
				switch e.expr {
					case EBlock(exprs):
						exprs.push(ret);
						e.expr = EBlock(exprs);
					default:
				}
			}
*/ 

private function exprToStringValue(e:Expr):String {
	switch e.expr {
		case EConst(CString(s)):
			return s;
		default:
			throw "invalid expr for exprToString: " + e.expr;
	}
}

private function typeLabeledStmt(stmt:Ast.LabeledStmt, info:Info):ExprDef {
	final name = makeString(stmt.label.name);
	var stmtExpr = typeStmt(stmt.stmt, info);
	info.global.gotoSystem = true;
	return (macro @:label($name) $stmtExpr).expr;
}

private function typeIncDecStmt(stmt:Ast.IncDecStmt, info:Info):ExprDef {
	var x = typeExpr(stmt.x, info);
	x = escapeParens(x);
	var t = typeof(stmt.x, info, false);
	function setTok(x:Expr) {
		return switch stmt.tok {
			case INC: return (macro $x++);
			case DEC: return (macro $x--);
			default:
				throw info.panic() + "unknown IncDec token: " + stmt.tok;
				null;
		}
	}
	switch escapeParens(x).expr {
		case ETernary(econd, eif, _):
			x = macro if ($econd)
				$eif;
		case EBinop(OpNullCoal, e1, e2):
			return (macro (@:typeIncDecStmt_escapeParens ${e1} != null ? ${setTok(e1)} : ${e2})).expr;
		default:
	}
	return setTok(x).expr;
}

private function escapeParensRaw(expr:Ast.Expr):Ast.Expr {
	return switch expr.id {
		case "ParenExpr":
			escapeParensRaw(expr.x);
		default:
			expr;
	}
}

private function escapeParens(expr:Expr):Expr {
	return switch expr.expr {
		case EParenthesis(e):
			escapeParens(e);
		default:
			expr;
	}
}

private function typeDeferStmt(stmt:Ast.DeferStmt, info:Info):ExprDef {
	info.global.deferBool = true;
	var exprs:Array<Expr> = [];
	final localIdents = [];
	for (i in 0...stmt.call.args.length) {
		var arg = typeExpr(stmt.call.args[i], info);
		var name = "_a" + i;
		localIdents.push(name);
		exprs.push(macro var $name = $arg);
		stmt.call.args[i] = {id: "Ident", name: 'a$i', type: stmt.call.args[i].type}; // switch out call arguments
	}
	info.localIdents = info.localIdents.concat(localIdents);
	// otherwise its Ident, Selector etc
	var call = toExpr(typeCallExpr(stmt.call, info));
	switch call.expr {
		case ECall(e, params):
			exprs.push(macro final __f__ = $e);
			call = macro __f__($a{params});
		default:
	}

	info.localIdents = info.localIdents.slice(0, info.localIdents.length - localIdents.length);
	var e = macro __deferstack__.unshift({ran: false, f: () -> $call});
	return EBlock(exprs.concat([e]));
}

private function typeRangeStmt(stmt:Ast.RangeStmt, info:Info):ExprDef { // for stmt
	var x = typeExpr(stmt.x, info);
	var xType = typeof(stmt.x, info, false);
	var isChan = false;
	switch getUnderlying(xType) {
		case chanType(_, _):
			isChan = true;
		default:
	}
	x = destructureExpr(x, xType).x;
	final assign = stmt.tok == ASSIGN;
	var key = null;
	var value = null;
	if (!assign) {
		if (stmt.key != null && stmt.key.id == "Ident") {
			key = macro $i{nameIdent(stmt.key.name, false, true, info)};
		}
		if (stmt.value != null && stmt.value.id == "Ident") {
			value = macro $i{nameIdent(stmt.value.name, false, true, info)};
		}
	}

	if (key == null)
		key = stmt.key == null ? macro _ : typeExpr(stmt.key, info); // iterator int
	if (value == null)
		value = stmt.value == null ? macro _ : typeExpr(stmt.value, info); // value of x[key]
	var body = {expr: typeBlockStmt(stmt.body, info, false), pos: null};
	// both key and value
	if (assign) { // non var
		switch body.expr {
			case EBlock(exprs):
				if (stmt.value != null && (stmt.value.id != "Ident" || stmt.value.name != "_")) {
					value = removeCoalAndCheckType(value);
					exprs.unshift(macro $value = __value__);
				}
				if (stmt.key != null && (stmt.key.id != "Ident" || stmt.key.name != "_")) {
					key = removeCoalAndCheckType(key);
					exprs.unshift(macro $key = __key__);
				}
			default:
		}
	}
	x = toGoType(x);
	if (assign) {
		key = macro __key__;
		value = macro __value__;
	}
	if (isChan) {
		return (macro for ($key in $x) $body).expr;
	}
	return (macro for ($key => $value in $x) $body).expr;
}

private function removeCoalAndCheckType(assign:Expr):Expr {
	assign = escapeParens(assign);
	switch assign.expr {
		case ECheckType(e, _):
			assign = removeCoalAndCheckType(e);
		case EBinop(OpNullCoal, e, _):
			assign = e;
		default:
	}
	return assign;
}

private function importClassName(name:String):String {
	name = nameAscii(name);
	final bool = isTitle(name);
	name = title(name);
	if (bool || isInvalidTitle(name)) {
		name = "T_" + name;
	}
	if (reservedClassNames.indexOf(name) != -1)
		name += "_";
	return name;
}

private function className(name:String, info:Info):String {
	name = nameAscii(name);
	if (info.renameClasses.exists(name))
		return info.renameClasses[name];
	if (info.global.renameClasses.exists(name))
		return info.global.renameClasses[name];

	if (name == "bool")
		return "Bool";

	if (!isTitle(name) || isInvalidTitle(name))
		name = "T_" + name;

	if (reservedClassNames.indexOf(name) != -1)
		name += "_";
	return name;
}

private function isInvalidTitle(name:String):Bool {
	final c = name.charAt(0);
	if ([for (i in 0...10 + 1) '$i'].indexOf(c) != -1)
		return true;
	if (c == "_")
		return true;
	return false;
}

private function isInvalidComplexType(ct:ComplexType):Bool {
	if (ct == null)
		return true;
	return switch ct {
		case TPath(p):
			if (p.params != null) {
				for (param in p.params) {
					switch param {
						case TPType(t):
							if (isInvalidComplexType(t))
								return true;
						default:
					}
				}
			}
			false;
		default:
			false;
	}
}


private function typeDeclStmt(stmt:Ast.DeclStmt, info:Info):ExprDef {
	if (stmt.decl.decls == null)
		return (macro {}).expr; // blank
	var decls:Array<Ast.GenDecl> = stmt.decl.decls;
	var vars:Array<Var> = [];
	var vars2:Array<Var> = [];
	for (decl in decls) {
		info.lastValue = null;
		info.lastType = null;
		if (decl.tok == CONST) {
			continue;
		}
		for (spec in decl.specs) {
			switch spec.id {
				case "TypeSpec":
					var spec:Ast.TypeSpec = spec;
					final name = spec.name.name;
					final pos = spec.pos;
					spec.name.name = "T_" + info.funcName + "___localname___" + name + "_" + pos;
					info.renameClasses[name] = className(spec.name.name, info);
					info.data.defs.push(typeSpec(spec, info));
				case "ValueSpec": // typeValue
					var spec:Ast.ValueSpec = spec;
					var type = spec.type.id != null ? typeExprType(spec.type, info) : null;
					var value = macro @:default_null null;
					var args:Array<Expr> = [];
					if (spec.names.length > spec.values.length && spec.values.length > 0) {
						// destructure
						var tmp = "__tmp__";
						var func = typeExpr(spec.values[0], info);
						var data = castTranslate(spec.values[0], func, info);
						func = data.expr;
						vars2.push({
							name: tmp,
							expr: func
						});
						var type = typeof(spec.values[0], info, false);
						switch type {
							case tuple(_,_):
							default:
								return (macro @:destructure_non_tuple {}).expr; 
						}
						var tuples = getReturnTupleType(type);

						for (i in 0...spec.names.length) {
							final fieldName = "_" + i;
							final type = toComplexType(tuples[i], info);
							final name = nameIdent(spec.names[i].name, false, true, info);
							vars2.push({
								name: name,
								expr: macro __tmp__.$fieldName,
								type: type,
							});
						}
					} else {
						var specType = typeof(spec.type, info, false);
						if (specType == null || specType == invalidType) {
							specType = typeof(spec.names[0], info, false);
						}
						// concat because this is in a for loop
						for (i in 0...spec.names.length) {
							var expr:Expr = null;
							if (spec.values[i] == null) {
								if (type != null) {
									expr = defaultValue(specType, info);
								} else {
									expr = typeExpr(info.lastValue, info);
									type = toComplexType(info.lastType, info);
									expr = assignTranslate(typeof(info.lastValue, info, false), info.lastType, expr, info);
								}
							} else {
								info.lastValue = spec.values[i];
								info.lastType = specType; 
								expr = typeExpr(spec.values[i], info);
								expr = assignTranslate(typeof(info.lastValue, info, false), info.lastType, expr, info);
							}
							var nameStr = spec.names[i]?.name;
							if (nameStr == null)
								nameStr = '_$i';
							var name = nameIdent(nameStr, false, true, info);
							var t = typeof(spec.type, info, false);
							var exprType = type;
							switch exprType {
								case TPath({pack: [], name: "NullType"}):
									final specType = typeof(spec.names[i], info, false);
									if (specType != null)
										exprType = toComplexType(specType, info);
								default:
							}
							if (isInvalidComplexType(exprType))
								exprType = null;
							vars.push({
								name: name,
								type: exprType,
								expr: expr,
							});
						}
					}
				default:
					throw info.panic() + "unknown id: " + spec.id;
			}
		}
	}
	if (vars.length > 0) {
		//final e = createTempVars(vars, false);
		final e = toExpr(EVars(vars));
		if (vars2.length > 0) {
			final e2:Expr = {expr: EVars(vars2), pos: null};
			return (macro @:mergeBlock {
				${e2};
				${e};
			}).expr;
		}else{
			return e.expr;
		}
	} else if (vars2.length > 0) {
		return EVars(vars2);
	}
	return (macro {}).expr; // blank expr def
} // ($expr : $type);

private function createTempVars(vars:Array<Var>, short:Bool):Expr {
	final vars2:Array<Var> = [];
	if (vars.length <= 1)
		return {expr: EVars(vars), pos: null};
	final names:Map<String,String> = [];
	function createTempName(i:Int):String
		return "__" + i;
	for (i in 0...vars.length) {
		final tempName = createTempName(i);
		final name = vars[i].name;
		names[tempName] = name;
		vars2.unshift({
			name: name,
			//type: v.type,
			expr: macro $i{tempName},
		});
		if (!short) {
		vars[i].expr = replaceIdent(names, vars[i].expr);
		names[vars[i].name] = tempName;
		}
		vars[i].name = tempName;
	}
	final e:Expr = {expr: EVars(vars), pos: null};
	final e2:Expr = {expr: EVars(vars2), pos: null};
	return macro @:mergeBlock {
		$e;
		${e2};
	}
	//return vars2;
}

function replaceIdent(names:Map<String, String>, e:Expr):Expr {
	return switch e.expr {
		case EConst(CIdent(s)):
			if (names.exists(s)) {
				macro $i{names[s]};
			}else{
				e;
			}
		default:
			mapExprWithData(e, names, replaceIdent);
	}
}

private function translateStruct(e:Expr, fromType:GoType, toType:GoType, info:Info):Expr {
	switch toType {
		case refType(_.get() => elem):
			toType = elem;
		default:
	}
	switch toType {
		case named(_, _, _, _):
			final underlying = getUnderlying(toType);
			switch underlying {
				case structType(fields):
					final expr = createNamedObjectDecl(fields, (field, _) -> macro e.$field, info);
					final toComplexType = toComplexType(toType, info);
					return macro (({
						final e = $e;
						($expr : $toComplexType);
					}));
				case refType(_.get() => elem):
					return translateStruct(e, fromType, elem, info);
				default:
					//return macro @:not_struct null;
					throw info.panic() + "not a struct: " + underlying;
			}
		case structType([]):
			return e;
		default:
			throw info.panic() + "struct is unnamed: " + toType;
	}
}

private function createNamedObjectDecl(fields:Array<FieldType>, f:(field:String, type:GoType) -> Expr, info:Info):Expr {
	final objectFields:Array<ObjectField> = [];
	for (i in 0...fields.length) {
		final field = fields[i].name;
		if (fields[i].optional)
			continue;
		objectFields.push({
			field: field,
			expr: f(field, fields[i].type.get()),
		});
	}
	return toExpr(EObjectDecl(objectFields));
}
// This is for implicit conversion
// explicit conversion: assignTranslate
private function checkType(e:Expr, ct:ComplexType, fromType:GoType, toType:GoType, info:Info):Expr {
	// trace(fromType, toType);
	if (e != null) {
		switch e.expr {
			case EBinop(_, _, _):
				e = macro($e);
			case EConst(c):
				switch c {
					case CIdent(i):
						if (i == "null") {
							var value = defaultValue(toType, info);
							if (ct != null) {
								return macro($value : $ct);
							}
						}
					default:
				}
			default:
		}
	}
	if (isInterface(pointerUnwrap(fromType)) && !isInterface(pointerUnwrap(toType))) {
		if (isPointer(fromType) && !isPointer(toType)) {
			switch ct {
				case TPath(p):
					if (p.params != null) { // not an unsafe pointer
						switch p.params[0] {
							case TPType(t):
								ct = t;
							default:
						}
					}
				default:
			}
		}
		return macro(($e.__underlying__().value : Dynamic) : $ct);
	}
	if (isStruct(fromType) && isStruct(toType)) {
		return translateStruct(e, fromType, toType, info);
	}

	if (isPointerStruct(fromType) && isPointerStruct(toType)) {
		final ct = toComplexType(toType, info);
		final fromElem = getElem(fromType);
		final toElem = getElem(toType);
		switch ct {
			case TPath(p):
				final get = checkType(macro $e.value, toComplexType(fromElem, info), fromElem, toElem, info);
				final set = checkType(macro v, toComplexType(fromElem, info), toElem, fromElem, info);
				final child = checkType(macro p.ref, toComplexType(fromElem, info), toElem, fromElem, info);
				return macro {
					var p = new $p(() -> $get, null, false, $e);
					p.convert = v -> $set;
					p;
				};
			default:
				throw info.panic() + "struct type not tpath: " + ct;
		}
	}

	if (isPointer(fromType) && isPointer(toType)) {
		final ct = toComplexType(toType, info);
		final fromElem = getElem(fromType);
		final toElem = getElem(toType);
		switch ct {
			case TPath(p):
				var e = macro $e.value;
				final get = checkType(e, toComplexType(toElem, info), fromElem, toElem, info);
				final v = checkType(macro v, toComplexType(fromElem, info), toElem, fromElem, info);
				final set = checkType(macro $e = $v, toComplexType(toElem, info), fromElem, toElem, info);
				return macro new $p(() -> $get, v -> $set);
			default:
				throw info.panic() + "pointer not tpath: " + ct;
		}
	}
	if (isAnyInterface(toType))
		return e;
	// trace(fromType, toType, isNamed(fromType), isInterface(toType));
	if (isNamed(fromType) && !isInterface(fromType) && isInterface(toType) && !isAnyInterface(toType)) {
		return wrapperExpr(fromType, e, info);
	}
// trace(fromType, toType);
	if ((isRef(fromType) || isPointer(fromType))
		&& !isAnyInterface(fromType)
		&& !isInterface(fromType)
		&& !isAnyInterface(toType)
		&& isInterface(toType)) {
		e = wrapperExpr(fromType, e, info);
	}
	switch getUnderlying(toType) {
		case basic(unsafepointer_kind):
			if (fromType != toType) {
				e = toAnyInterface(e, toType, info);
			}
		case basic(uintptr_kind):
			if (fromType != toType) {
				e = macro (new stdgo.GoUIntptr($e) : $ct);
			}
		default:
			switch fromType {
				case basic(unsafepointer_kind):
					if (fromType != toType) {
						final rt = toReflectType(toType, info, [], false);
						e = macro $e.__convert__($rt);
					}
				default:
			}
	}

	return macro($e : $ct);
}


/**
 * switch x.(type) {}
 * @param stmt 
 * @param info 
 * @return ExprDef
 */
private function typeTypeSwitchStmt(stmt:Ast.TypeSwitchStmt, info:Info):ExprDef { // a switch statement of a type
	var init:Expr = stmt.init == null ? null : typeStmt(stmt.init, info);
	var assign:Expr = null;
	var assignType:GoType = null;
	var setVar:String = "";
	switch stmt.assign.id {
		case "ExprStmt":
			var stmt:Ast.ExprStmt = stmt.assign;
			switch stmt.x.id {
				case "TypeAssertExpr":
					final stmt:Ast.TypeAssertExpr = stmt.x;
					assignType = typeof(stmt.x, info, false);
					assign = typeExpr(stmt.x, info);
				default:
					trace("unknown assign expr: " + stmt.x.id);
			}
		case "AssignStmt":
			var stmt:Ast.AssignStmt = stmt.assign;
			var rhs = stmt.rhs[0];
			switch rhs.id {
				case "TypeAssertExpr":
					final rhs:Ast.TypeAssertExpr = rhs;
					assign = typeExpr(rhs.x, info);
					assignType = typeof(rhs.x, info, false);
				default:
					trace("unknown assign rhs type switch expr: " + rhs.id);
			}
			final lhs = stmt.lhs[0];
			switch lhs.id {
				case "Ident":
					final lhs:Ast.Ident = lhs;
					setVar = nameIdent(lhs.name, false, true, info);
				default:
					trace("unknown assign lhs type switch expr: " + rhs.id);
			}
		default:
			trace("unknown assign: " + stmt.assign.id);
	}
	var types:Array<GoType> = [];
	function condition(obj:Ast.CaseClause, i:Int = 0) {
		if (obj.list.length == 0)
			return null;
		final value = if (obj.list[i].name == "nil") {
			types.push(interfaceType(true, []));
			macro __type__ == null;
		} else {
			final type = typeExprType(obj.list[i], info);
			types.push(typeof(obj.list[i], info, false));
			macro stdgo.Go.typeEquals((__type__ : $type));
		}
		if (i + 1 >= obj.list.length)
			return value;
		final next = condition(obj, i + 1);
		return toExpr(EBinop(OpBoolOr, value, next));
	}
	var defaultBlock:Expr = null;
	function ifs(i:Int = 0) {
		final obj:Ast.CaseClause = stmt.body.list[i];
		types = [];
		final cond = condition(obj);
		final block = toExpr(typeStmtList(obj.body, info, false));
		if (setVar != "") {
			switch block.expr {
				case EBlock(exprs):
					var type:ComplexType = toComplexType(assignType, info);
					var defValue = defaultValue(assignType, info, false);

					var set = macro __type__?.__underlying__();
					if (types.length == 1) {
						type = toComplexType(types[0], info);
						defValue = defaultValue(types[0], info, false);
						set = macro __type__ == null ? $defValue : __type__.__underlying__();
						// trace(assignType);
						// trace(types[0]);
						if (!isAnyInterface(assignType) && isInterface(types[0]) && isInterface(assignType)) {
							// hard cast if interface to interface (typedef anon)
							set = macro __type__ == null ? $defValue : cast __type__;
						} else if (!isAnyInterface(types[0])) {
							if (isInterface(types[0])) {
								set = macro $set == null ? $defValue : $set.value;
							}else{
								set = macro $set == null ? $defValue : stdgo.Go.fromAsInterfaceToValue($set.value);
							}
						}
					} else {
						// to AnyInterface
						if (!isAnyInterface(assignType))
							set = macro __type__ == null ? $defValue : cast __type__;
					}
					exprs.unshift(macro var $setVar:$type = $set);
					block.expr = EBlock(exprs);
				default:
			}
		}
		if (cond == null)
			defaultBlock = block;
		if (i + 1 >= stmt.body.list.length) {
			if (cond == null)
				return block;
			return defaultBlock == null ? macro if ($cond)
				$block : macro if ($cond)
					$block
				else
					$defaultBlock;
		}
		final next = ifs(i + 1);
		if (cond == null)
			return next;
		return macro if ($cond)
			$block
		else
			$next;
	}
	if (stmt.body == null || stmt.body.list == null)
		return (macro {}).expr;
	var expr = ifs();
	final hasBreakBool = hasBreak(expr);
	if (hasBreakBool) { // no fallthrough stmt for TypeSwitch
		final continueBool = continueInsideSwitch(expr);
		if (continueBool) {
			expr = macro {
				var __continue__ = false;
				var __bool__ = true;
				while (__bool__) {
					__bool__ = false;
					$expr;
					break;
				}
				if (__continue__)
					continue;
			}
		} else {
			expr = macro {
				var __bool__ = true;
				while (__bool__) {
					__bool__ = false;
					$expr;
					break;
				}
			}
		}
	}
	final t = macro final __type__ = $assign;
	if (init != null) {
		return (switch expr.expr {
			case EBlock(exprs):
				exprs.unshift(init);
				exprs.unshift(t);
				macro $b{exprs};
			default:
				macro {
					$init;
					$t;
					$expr;
				}
		}).expr;
	}
	return (macro {
		$t;
		$expr;
	}).expr;
}

// make Go equality exprs work in Haxe
private function translateEquals(x:Expr, y:Expr, typeX:GoType, typeY:GoType, op:Binop, info:Info):Expr {
	if (typeX == null || typeY == null)
		return toExpr(EBinop(op, x, y));
	switch typeX {
		case named(path, _, _, _):
			if (path == "reflect.Type") {
				var e = macro($x.string() : String) == ($y.string() : String);
				switch op {
					case OpNotEq:
						e = macro !($e);
					default:
				}
				return e;
			}
		default:
	}
	var nilExpr:Expr = null;
	var nilType:GoType = null;
	switch x.expr {
		case EConst(c):
			switch c {
				case CIdent(s):
					if (s == "null") {
						nilExpr = y;
						nilType = typeY;
					}
				default:
					final ct = toComplexType(typeX, info);
					if (ct != null) x = macro($x : $ct);
			}
		default:
	}
	switch y.expr {
		case EConst(c):
			switch c {
				case CIdent(s):
					if (s == "null") {
						nilExpr = x;
						nilType = typeX;
					}
				default:
					final ct = toComplexType(typeY, info);
					if (ct != null) y = macro($y : $ct);
			}
		default:
	}
	var value = nilExpr;
	if (value != null) {
		if (isNamed(nilType))
			nilType = getUnderlying(nilType);
		switch nilType {
			case refType(_):
				switch op {
					case OpEq:
						return macro ({
							final value = $value;
							(value == null || (value : Dynamic).__nil__);
						});
					default:
						return macro ({
							final value = $value;
							(value != null && ((value : Dynamic).__nil__ == null || (!(value : Dynamic).__nil__)));
						});
				}
			default:
		}
		if (isInterface(typeX) || isInterface(typeY)) {
			return toExpr(EBinop(op, x, y));
		}
		switch op {
			case OpEq:
				return macro $value == null;
			default:
				return macro $value != null;
		}
	}
	if (isInterface(typeX) || isInterface(typeY)) {
		if (isPointer(typeX))
			x = macro $x.value;
		if (isPointer(typeY))
			y = macro $y.value;
		if (!isAnyInterface(getElem(typeX)))
			x = toAnyInterface(x, typeX, info);
		if (!isAnyInterface(getElem(typeY)))
			y = toAnyInterface(y, typeY, info);
	}
	var t = getUnderlying(typeX);
	switch t {
		case structType(_), arrayType(_, _):
			return toExpr(EBinop(op, toAnyInterface(x, typeX, info, false), toAnyInterface(y, typeY, info, false)));
		case sliceType(_), refType(_):
			var run = true;
			if (isRef(t)) {
				switch getElem(t) {
					case sliceType(_):
					// pointer slice is redunant as slice acts already like a pointer
					default:
						run = false;
				}
			}
			if (run) {
				var e = macro($x == $y);
				switch op {
					case OpNotEq:
						return (macro !$e);
					default:
				}
			}
		default:
	}
	switch t {
		case arrayType(_, _):
			switch getUnderlying(typeY) {
				case arrayType(_, _):
					// set x and y to AnyInterface
					x = toAnyInterface(x, typeX, info, false);
					y = toAnyInterface(y, typeY, info, false);
					return toExpr(EBinop(op, x, y));
				default:
			}
		default:
	}
	return toExpr(EBinop(op, x, toExpr(EParenthesis(y))));
}

private function typeSwitchStmt(stmt:Ast.SwitchStmt, info:Info):ExprDef { // always an if else chain to deal with int64s and complex numbers

	final init = stmt.init == null ? null : typeStmt(stmt.init, info);
	if (stmt.body == null || stmt.body.list == null)
		return (macro {}).expr;
	// this is an if else chain
	var tag:Expr = null;
	var tagType:GoType = null;
	if (stmt.tag != null) {
		tagType = typeof(stmt.tag, info, false);
		tag = typeExpr(stmt.tag, info);
	}
	var hasFallThrough = false;
	for (i in 0...stmt.body.list.length) {
		var obj:Ast.CaseClause = stmt.body.list[i];
		if (obj.body != null) {
			for (i in 0...obj.body.length) {
				if (obj.body[i].id == "BranchStmt") {
					final stmt:Ast.BranchStmt = obj.body[i];
					switch stmt.tok {
						case FALLTHROUGH:
							hasFallThrough = true;
						default:
					}
				}
			}
		}
	}
	if (hasFallThrough) {
		for (i in 0...stmt.body.list.length) {
			var obj:Ast.CaseClause = stmt.body.list[i];
			var localFallThrough = false;
			if (obj.body != null) {
				for (i in 0...obj.body.length) {
					if (obj.body[i].id == "BranchStmt") {
						final branch:Ast.BranchStmt = obj.body[i];
						switch branch.tok {
							case FALLTHROUGH:
								localFallThrough = true;
							default:
						}
					}
				}

				if (!localFallThrough) {
					var breakStmt = {
						id: "BranchStmt",
						tokPos: 0,
						label: null,
						tok: Ast.Token.BREAK
					};
					obj.body.push(breakStmt);
				}
			}
		}
		info.switchTag = tag;
		info.switchTagType = tagType;
	}
	function condition(obj:Ast.CaseClause, i:Int = 0) {
		if (obj.list.length == 0)
			return null;
		var value = typeExpr(obj.list[i], info);
		if (tag != null) {
			value = translateEquals(macro __value__, value, tagType, typeof(obj.list[i], info, false), OpEq, info);
		}
		if (i + 1 >= obj.list.length)
			return value;
		var next = condition(obj, i + 1);
		return toExpr(EBinop(OpBoolOr, value, next));
	}
	var defaultBlock:Expr = null;
	function ifs(i:Int = 0) {
		var obj:Ast.CaseClause = stmt.body.list[i];
		var cond = condition(obj);
		// info.switchNextTag = stmt.body.list.length <= i + 1 ? null : stmt.body.list[i + 1].list[0];
		if (hasFallThrough) {
			final index:Expr = makeExpr(i);
			if (cond != null)
				cond = macro __switchIndex__ == $index || (__switchIndex__ == -1 && ($cond));
			info.switchIndex = i;
		}
		var block = toExpr(typeStmtList(obj.body, info, false));
		if (cond == null)
			defaultBlock = block;
		if (i + 1 >= stmt.body.list.length) {
			if (cond == null)
				return block;
			return defaultBlock == null ? macro if ($cond)
				$block : macro if ($cond)
					$block
				else
					$defaultBlock;
		}
		var next = ifs(i + 1);
		if (cond == null)
			return next;
		return macro if ($cond)
			$block
		else
			$next;
	}
	var expr = ifs();
	final hasBreakBool = hasBreak(expr);
	if (tag != null) {
		expr = macro {
			final __value__ = $tag;
			$expr;
		};
	}
	if (hasFallThrough || hasBreakBool) {
		if (hasBreakBool) {
			function func(expr:Expr):Expr {
				return switch expr.expr {
					case EBlock(exprs):
						toExpr(EBlock([for (i in 0...exprs.length) func(exprs[i])]));
					case EIf(econd, eif, eelse):
						switch eif.expr {
							case EBlock(exprs):
								exprs.push(macro break);
								eif.expr = EBlock(exprs);
							default:
						}
						if (eelse != null) {
							switch eelse.expr {
								case EBlock(exprs):
								// exprs.push(macro break);
								// eelse.expr = EBlock(exprs);
								default:
									func(eelse);
							}
						}
						expr.expr = EIf(econd, eif, eelse);
						expr;
					default:
						expr;
				}
			}
			expr = func(expr);
		}
		var needsReturn = exprWillReturn(expr);
		final continueBool = continueInsideSwitch(expr);
		if (continueBool) {
			expr = macro {
				var __continue__ = false;
				var __switchIndex__ = -1;
				var __run__ = true;
				while (__run__) {
					__run__ = false;
					$expr;
					break;
				}
				if (__continue__)
					continue;
			};
		} else {
			expr = macro {
				var __switchIndex__ = -1;
				var __run__ = true;
				while (__run__) {
					__run__ = false;
					$expr;
					break;
				}
			};
		}
		if (needsReturn) {
			switch expr.expr {
				case EBlock(exprs):
					exprs.push(toExpr(typeReturnStmt({results: [], returnPos: 0}, info)));
					expr.expr = EBlock(exprs);
				default:
			}
		}
	}
	if (init != null) {
		return (macro {
			$init;
			$expr;
		}).expr;
	}
	return expr.expr;
}

private function hasBreak(expr:Expr):Bool {
	var f = null;
	var hasBreakBool = false;
	f = expr -> {
		if (expr == null || expr.expr == null)
			return;
		switch expr.expr {
			case EBreak:
				hasBreakBool = true;
				return;
			default:
				haxe.macro.ExprTools.iter(expr, f);
		}
	}
	f(expr);
	return hasBreakBool;
}

private function continueInsideSwitch(expr:Expr):Bool {
	var hasContinue = false;
	var f = null;
	f = expr -> {
		if (expr == null)
			return null;
		return switch expr.expr {
			case EMeta(s, _):
				if (s.name == ":fallthrough" || s.name == ":jump") {
					expr;
				} else {
					haxe.macro.ExprTools.map(expr, f);
				}
			case EWhile(_, _, _), EFor(_, _):
				// new scope
				expr;
			case EContinue:
				hasContinue = true;
				macro {
					__continue__ = true;
					break;
				};
			default:
				haxe.macro.ExprTools.map(expr, f);
		}
	}
	expr.expr = f(expr).expr;
	return hasContinue;
}

private function typeForStmt(stmt:Ast.ForStmt, info:Info):ExprDef {
	final init = stmt.init == null ? null : typeStmt(stmt.init, info);
	var cond = stmt.cond == null ? toExpr(EConst(CIdent("true"))) : typeExpr(stmt.cond, info);
	var body = toExpr(typeBlockStmt(stmt.body, info, false));
	if (body.expr == null)
		body = macro {};
	if (cond.expr == null || body.expr == null) {
		trace("for stmt error: " + cond.expr + " body: " + body.expr);
		return null;
	}
	var def:Expr = null;
	if (stmt.post != null) {
		var post = typeStmt(stmt.post, info);
		if (post == null) {
			trace("for stmt error post: " + stmt.post);
			return null;
		}
		body = cforPostContinue(post, body);
		def = macro while($cond){
			@:mergeBlock $body;
			$post;
		};
	} else {
		def = macro while ($cond) $body;
	}
	if (init != null) {
		def = macro {
			$init;
			$def;
		};
	}
	return def.expr;
}

function cforPostContinue(post:Expr, e:Expr):Expr {
	return switch e.expr {
		case EMeta({pos: _, name: ":fallthrough", params: null}, _):
			return e;
		case EFor(_, _), EWhile(_, _, _):
			return e;
		case EContinue:
			macro {
				$post;
				$e;
			};
		default:
			mapExprWithData(e, post, cforPostContinue);
	}
	return e;
}

private function castTranslate(obj:Ast.Expr, e:Expr, info:Info):{expr:Expr, ok:Bool} {
	return switch obj.id {
		case "TypeAssertExpr":
			var obj:Ast.TypeAssertExpr = obj;
			final t = typeof(obj.type, info, false);
			var value = defaultValue(t, info);
			{
				ok: true,
				expr: macro try {
					{_0: $e, _1: true};
				} catch (_) {
					{_0: $value, _1: false};
				}
			};
		case "UnaryExpr":
			var obj:Ast.UnaryExpr = obj;
			var x = typeExpr(obj.x, info);
			{expr: macro $x.__smartGet__(), ok: true};
		case "IndexExpr":
			var obj:Ast.IndexExpr = obj;
			var index = typeExpr(obj.index, info);
			var x = typeExpr(obj.x, info);
			final ut = getUnderlying(typeof(obj.x,info, false));
			switch ut {
				case mapType(_.get() => var keyType, _):
					// something strange is not working here try assign translate instead
					index = assignTranslate(typeof(obj.index, info, false), keyType, index, info);
					//index = checkType(index, toComplexType(keyType, info), typeof(obj.index, info, false), keyType, info);
				default:
			}
			final t = getUnderlying(typeof(obj, info, false));
			final value = switch t {
				case tuple(_, _.get() => vars):
					defaultValue(vars[0], info);
				default:
					macro null;
			}
			{
				ok: true,
				expr: macro($x != null && $x.__exists__($index) ? {_0: $x[$index], _1: true} : {_0: $value, _1: false}),
			};
		default:
			{expr: e, ok: false};
	}
}

private function cleanType(type:GoType):GoType {
	if (type == null)
		return type;
	return switch type {
		case _var(_, _.get() => type):
			cleanType(type);
		default:
			type;
	}
}

private function argsTranslate(args:Array<FunctionArg>, block:Expr, argsFields:Ast.FieldList, info:Info, recvArg):Expr {
	switch block.expr {
		case EBlock(exprs):
			if (recvArg != null && !isPointer(recvArg.vt)) {
				final name = recvArg.name;
				info.localIdents.push(name);
				final expr = passByCopy(recvArg.vt, macro $i{name}, info);
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
									//new stdgo.Slice<$ct>($i{name}.length, 0, ...$i{name}));
									exprs.unshift(macro var $name = new stdgo.Slice<$ct>($i{name}.length, 0, ...$i{name}));
									//exprs.unshift(macro var $name:stdgo.Slice<$ct> = $i{name}.toArray());
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

private function escapeCheckType(e:Expr):Expr {
	return switch e.expr {
		case ECheckType(e, _), EParenthesis(e):
			escapeCheckType(e);
		default:
			e;
	}
}

private function passByCopy(fromType:GoType, y:Expr, info:Info):Expr {
	if (y == null)
		return y;
	switch escapeCheckType(y).expr {
		case EBlock(_), ENew(_), EObjectDecl(_):
			return y;
		case EUnop(OpSpread, _, _):
			return y;
		default:
	}
	if (!isPointer(fromType) && !isRef(fromType)) {
		var isNamed = isNamed(fromType);
		if (fromType == null) {
			trace(info.panic(), "fromType is null");
		}
		switch fromType {
			case typeParam(_):
			case basic(basicKind):
				switch basicKind {
					case string_kind:
						function f(x) {
							return switch escapeParens(x).expr {
								case ECheckType(e, _):
									f(e);
								case EConst(c):
									switch c {
										case CIdent(_):
											macro $y?.__copy__();
										default:
											macro $y;
									}
								default:
									macro $y?.__copy__();
							}
						}
						return f(y);
					default:
				}
			case signature(_, _, _, _):
			case interfaceType(_, _):
			case sliceType(_), mapType(_, _), chanType(_, _): // pass by ref
			case arrayType(_, _): // pass by copy
				y = macro $y?.__copy__();
			case structType(fields):
				final decl = createNamedObjectDecl(fields, (field, type) -> passByCopy(type, macro x.$field, info), info);
				y = macro {
					final x = $y;
					$decl;
				};
			case named(path, _, type, _, _):
				switch getUnderlying(type) {
					case pointerType(_), basic(_), signature(_, _, _, _), sliceType(_), mapType(_), chanType(_):
						return y;
					case structType(fields) if (path.indexOf("_struct_") != -1):
						final decl = createNamedObjectDecl(fields, (field, type) -> passByCopy(type, macro x.$field, info), info);
						final ct = toComplexType(fromType, info);
						return macro {
							final x = $y;
							($decl : $ct);
						};
					case invalidType:
						return y;
					default:
				}
				// trace(printer.printExpr(y), type);
				if (!isInterface(type) && !isAnyInterface(type) && !isPointer(type) && !isRef(type)) {
					switch y.expr {
						case EArray(_):
						default:
							y = macro $y?.__copy__();
					}
				}
			case invalidType, pointerType(_), previouslyNamed(_), refType(_), tuple(_, _):

			case _var(_, _):
		}
	}
	return y;
}

private function isRestType(t:ComplexType):Bool {
	return switch t {
		case TPath(p): p.name == "Rest" && p.pack != null && p.pack.length == 1 && p.pack[0] == "haxe";
		default:
			false;
	}
}

private function isRestExpr(expr:Expr):Bool {
	if (expr == null)
		return false;
	return switch expr.expr {
		case EUnop(op, _, _):
			op == OpSpread;
		default:
			false;
	}
}

function getReturnTupleType(type:GoType):Array<GoType> {
	return switch type {
		case tuple(_, _.get() => vars):
			var index = 0;
			[
				for (i in 0...vars.length) {
					switch vars[i] {
						case _var(name, _.get() => type):
							type;
						default:
							vars[i];
					}
				}
			];
		default:
			throw "type is not a tuple: " + type;
	}
}

function getReturnTupleNames(type:GoType):Array<String> {
	return switch type {
		case tuple(_, _.get() => vars):
			[
				for (i in 0...vars.length)
					"_" + i
			];
		default:
			throw "type is not a tuple: " + type;
	}
}

private function goTypesEqual(a:GoType, b:GoType, depth:Int) {
	if (depth > 20)
		return true;
	if (a == null || b == null)
		return true;
	return switch a {
		case structType(fields):
			switch b {
				case structType(fields2):
					if (fields.length != fields.length) {
						false;
					} else {
						var bool = true;
						for (i in 0...fields.length) {
							if (fields[i].name != fields2[i].name || !goTypesEqual(fields[i].type.get(), fields2[i].type.get(), depth + 1)) {
								bool = false;
								break;
							}
						}
						bool;
					}
				default:
					false;
			}
		case typeParam(_, params):
			switch b {
				case typeParam(_, params2):
					if (params.length != params2.length) {
						false;
					} else {
						var bool = true;
						for (i in 0...params.length) {
							if (!goTypesEqual(params[i], params2[i], depth + 1)) {
								bool = false;
								break;
							}
						}
						bool;
					}

				default:
					false;
			}
		case signature(variadic, _.get() => params, _.get() => results, _):
			switch b {
				case signature(variadic2, _.get() => params2, _.get() => results2, _):
					if (variadic != variadic2 || params.length != params2.length || results.length != results2.length) {
						false;
					} else {
						var bool = true;
						for (i in 0...params.length) {
							if (!goTypesEqual(params[i], params2[i], depth + 1)) {
								bool = false;
								break;
							}
						}
						if (bool) {
							for (i in 0...results.length) {
								if (!goTypesEqual(results[i], results[i], depth +  1)) {
									bool = false;
									break;
								}
							}
							bool;
						} else {
							false;
						}
					}
				default:
					false;
			}
		case _var(_, _.get() => t):
			switch b {
				case _var(_, _.get() => t2):
					goTypesEqual(t, t2, depth + 1);
				default:
					goTypesEqual(t, b, depth + 1);
			}
		case tuple(len, _.get() => vars):
			switch b {
				case tuple(len2, _.get() => vars2):
					if (len != len2 || vars.length != vars2.length) {
						false;
					} else {
						var bool = true;
						for (i in 0...vars.length) {
							if (!goTypesEqual(vars[i], vars2[i], depth + 1)) {
								bool = false;
								break;
							}
						}
						bool;
					}
				default:
					false;
			}
		case basic(kind):
			switch b {
				case basic(kind2):
					kind == kind2;
				default:
					false;
			}
		case arrayType(_.get() => elem, len), chanType(len, _.get() => elem):
			switch b {
				case arrayType(_.get() => elem2, len2), chanType(len2, _.get() => elem2): a.getIndex() == b.getIndex() && len == len2 && goTypesEqual(elem,
						elem2, depth + 1);
				default:
					false;
			}
		case mapType(_.get() => key, _.get() => value):
			switch b {
				case mapType(_.get() => key2, _.get() => value2): goTypesEqual(key, key2, depth + 1) && goTypesEqual(value, value2, depth + 1);
				default:
					false;
			}
		case refType(_.get() => elem), pointerType(_.get() => elem), sliceType(_.get() => elem):
			switch b {
				case refType(_.get() => elem2), pointerType(_.get() => elem2), sliceType(_.get() => elem2): a.getIndex() == b.getIndex() && goTypesEqual(elem,
						elem2, depth + 1);
				default:
					false;
			}
		case named(path, _, _, _), previouslyNamed(path):
			switch b {
				case named(path2, _, _, _), previouslyNamed(path2):
					path == path2;
				default:
					false;
			}
		case invalidType:
			a == b;
		case interfaceType(empty, methods):
			switch b {
				case interfaceType(empty2, methods2):
					if (empty && empty2) {
						true;
					} else {
						if (methods.length != methods2.length) {
							false;
						} else {
							var bool = true;
							for (i in 0...methods.length) {
								if (methods[i].name != methods2[i].name
									|| !goTypesEqual(methods[i].type.get(), methods2[i].type.get(), depth + 1)
									|| !goTypesEqual(methods[i].recv.get(), methods2[i].recv.get(), depth + 1)) {
									bool = false;
									break;
								}
							}
							bool;
						}
					}
				default:
					false;
			}
	}
}
// This is for explicit conversion
// implicit conversion: checkType
private function assignTranslate(fromType:GoType, toType:GoType, expr:Expr, info:Info, passCopy:Bool = true):Expr {
	if (goTypesEqual(fromType, toType, 0)) {
		if (passCopy) {
			return passByCopy(toType, expr, info);
		}
		return expr;
	}
	fromType = cleanType(fromType);
	toType = cleanType(toType);
	var y = expr;

	if (fromType == null)
		return expr;

	switch fromType {
		case basic(kind):
			switch kind {
				case untyped_nil_kind:
					if (!isNamed(toType)) {
						return defaultValue(toType, info);
					} else {
						return macro null;
					}
				default:
			}
		default:
	}

	if (passCopy && toType != null)
		y = passByCopy(toType, y, info);

	if (isAnyInterface(toType) && !isRestExpr(expr)) {
		y = toAnyInterface(y, fromType, info);
	}
	//trace(fromType, toType);
	if (isAnyInterface(fromType) && !isInvalid(toType) && !isInterface(toType)) {
		switch expr.expr {
			case EBinop(_, _, _):
			default:
				final ct = toComplexType(toType, info);
				if (ct != null) {
					y = macro($y.value : $ct);
				}
		}
	}
	if (isStruct(fromType) && isStruct(toType)) {
		var equal = false;
		var fromType = fromType;
		var toType = toType;
		switch fromType {
			case refType(_.get() => elem):
				fromType = elem;
			default:
		}
		switch toType {
			case refType(_.get() => elem):
				toType = elem;
			default:
		}
		switch fromType {
			case named(path, _, _):
				switch toType {
					case named(path2, _, _):
						equal = path == path2;
					default:
				}
			default:
		}
		if (!equal)
			return translateStruct(expr, fromType, toType, info);
	}
	//trace(toType);
	//trace(getUnderlying(getUnderlying(fromType)));
	//trace(fromType);
	//trace(isNamed(fromType), !isInterface(fromType), isInterface(toType), !isAnyInterface(toType));
	if (isNamed(fromType) && !isInterface(fromType) && isInterface(toType) && !isAnyInterface(toType)) {
		y = wrapperExpr(fromType, y, info);
		return y;
	}
	if ((isRef(fromType) || isPointer(fromType))
		&& !isAnyInterface(fromType)
		&& !isInterface(fromType)
		&& !isAnyInterface(toType)
		&& isInterface(toType)) {
		y = wrapperExpr(fromType, y, info);
		return y;
	}
	switch fromType {
		case tuple(_, _.get() => vars):
			switch toType {
				case tuple(_, _.get() => vars2):
					final fields:Array<ObjectField> = [
						for (i in 0...vars.length) {
							final fieldName = "_" + i;
							{field: fieldName, expr: assignTranslate(vars[i], vars2[i], macro __tmp__.$fieldName, info, false)};
						}
					];
					final obj = toExpr(EObjectDecl(fields));
					return macro ({
						@:assignTranslate final __tmp__ = $y;
						$obj;
					});
				default:
			}
		default:
	}
	return y;
}

private function wrapperExpr(t:GoType, y:Expr, info:Info):Expr {
	var self = y;
	var selfPointer = false;
	if (isPointer(t)) {
		selfPointer = true;
		t = getElem(t);
		self = macro $y.value;
	} else if (isRef(t)) {
		t = getElem(t);
	}
	switch t {
		case named(name, methods, type, alias, params):
			if (!alias && methods.length == 0 && !isStruct(type))
				return y;
			if (type == invalidType)
				return y;
			if (isInterface(type)) {
				return selfPointer ? self : y;
			}
			return macro stdgo.Go.asInterface($y);
		default:
	}
	return y;
}

private function replaceInvalidType(t:GoType, replace:GoType):GoType {
	return switch t {
		case _var(name, _.get() => type):
			final type = replaceInvalidType(type, replace);
			_var(name, {get: () -> type});
		case pointerType(_.get() => elem):
			final elem = replaceInvalidType(elem, replace);
			pointerType({get: () -> elem});
		case refType(_.get() => elem):
			switch elem {
				case invalidType, named(_, _, invalidType, _, _):
					if (isRefValue(replace)) {
						refType({get: () -> elem});
					} else {
						pointerType({get: () -> elem});
					}
				default:
					final elem = replaceInvalidType(elem, replace);
					refType({get: () -> elem});
			}
		case named(path, methods, type, alias, params):
			type = replaceInvalidType(type, replace);
			named(path, methods, type, alias, params);
		case invalidType:
			replace;
		default:
			t;
	}
}

private function isTypeParam(t:GoType):Bool {
	return switch t {
		case _var(_, _.get() => t):
			isTypeParam(t);
		case typeParam(_, _):
			true;
		default:
			false;
	}
}

private function nonAssignToken(tok:Ast.Token):Ast.Token {
	return switch tok {
		case ADD_ASSIGN: ADD;
		case SUB_ASSIGN: SUB;
		case MUL_ASSIGN: MUL;
		case QUO_ASSIGN: QUO;
		case REM_ASSIGN: REM;
		case SHL_ASSIGN: SHL;
		case SHR_ASSIGN: SHR;
		case XOR_ASSIGN: XOR;
		case AND_ASSIGN: AND;
		case AND_NOT_ASSIGN: AND_NOT;
		case OR_ASSIGN: OR;
		default: throw "non assign token: " + tok;
	}
}

private function typeAssignStmt(stmt:Ast.AssignStmt, info:Info):ExprDef {
	switch stmt.tok {
		case ADD_ASSIGN, SUB_ASSIGN, MUL_ASSIGN, QUO_ASSIGN, REM_ASSIGN, SHL_ASSIGN, SHR_ASSIGN, XOR_ASSIGN, AND_ASSIGN, AND_NOT_ASSIGN, OR_ASSIGN:
			// remove checkType from x in x = y

			var assign = removeCoalAndCheckType(typeExpr(stmt.lhs[0], info));
			var assignName = "";
			var assignExpr = null;
			switch assign.expr {
				case EField(e, field):
					switch e.expr {
						case ECall(_,_):
							assignExpr = e;
							assignName = "__t__";
							info.localIdents.push(assignName);
							stmt.lhs[0] = {id: "Ident", name: '_t__.$field'};
							assign = removeCoalAndCheckType(typeExpr(stmt.lhs[0], info));
						default:
					}
				case EConst(_):
				default:
			}
			final expr = toExpr(typeBinaryExpr({
				x: stmt.lhs[0],
				y: {id: "ParenExpr", x: stmt.rhs[0]},
				op: nonAssignToken(stmt.tok),
				opPos: 0,
				type: stmt.lhs[0],
			}, info));
			if (assignName != "")
				info.localIdents.remove(assignName);
			if (stmt.lhs[0].id == "IndexExpr" || stmt.lhs[0].id == "StarExpr" && stmt.lhs[0].x.id == "IndexExpr") { // prevent invalid assign to null
				switch escapeParens(assign).expr {
					case ETernary(econd, eif, _):
						return (macro if ($econd)
							$expr).expr;
					default:
				}
			}
			if (assignName != "") {
				return (macro {
					final __t__ = $assignExpr;
					$assign = $expr;
				}).expr;
			}
			return (macro $assign = $expr).expr;
		case ASSIGN: // x = y
			var blankBool:Bool = true;
			for (lhs in stmt.lhs) {
				if (lhs.id != "Ident" || lhs.name != "_") {
					blankBool = false;
					break;
				}
			}
			if (blankBool) {
				var exprs:Array<Expr> = [];
				for (rhs in stmt.rhs) {
					final e = typeExpr(rhs, info);
					exprs.push(e);
				}
				if (exprs.length == 1)
					return exprs[0].expr;
				return (macro $b{exprs}).expr;
			}

			if (stmt.lhs.length == stmt.rhs.length) { // w,x = y,z
				var op = typeOp(stmt.tok);
				var exprs:Array<Expr> = [];
				var destructExprs:Array<Expr> = [];
				for (i in 0...stmt.lhs.length) {
					var x = typeExpr(stmt.lhs[i], info);
					var y = typeExpr(stmt.rhs[i], info);
					// check if empty
					if (stmt.lhs[i].id == "Ident" && stmt.lhs[i].name == "_") {
						exprs.unshift(y);
						continue;
					}
					var toType = typeof(stmt.lhs[i], info, false);
					if (op == OpAssign) {
						// __append__ -> __append__
						var callExpr:Expr = {expr: y.expr, pos: y.pos};
						switch callExpr.expr {
							case EParenthesis(e):
								callExpr = e;
							default:
						}
						// remove Haxe compiler error: "Assigning a value to itself"
						if (isSelfAssignValue(x,y))
							continue;
					}
					var fromType = typeof(stmt.rhs[i], info, false);
					y = assignTranslate(fromType, toType, y, info);
					if (stmt.lhs[i].id == "IndexExpr") { // prevent invalid assign to null
						switch escapeParens(x).expr {
							case ETernary(econd, eif, _):
								exprs.push(macro if ($econd)
									$eif = $y);
								continue;
							default:
						}
					}
					if (stmt.lhs[i].id == "StarExpr" && !isPointer(toType)) {
						// set underlying not the ref
						//trace(toType);
						final underlyingType = getUnderlying(toType);
						switch underlyingType {
							case interfaceType(empty, methods):
								if (empty) {
									return (macro $x.__setData__($y)).expr;
								} else {
									final exprs:Array<Expr> = [
										for (field in methods) {
											final field = field.name;
											macro x.$field = __tmp__.$field;
										}
									];
									exprs.unshift(@:assign1 macro var x = $x);
									exprs.unshift(macro var __tmp__ = $y);
									return (macro $b{exprs}).expr;
								}
							case sliceType(_), mapType(_, _), arrayType(_, _):
								exprs.push(macro $x.__setData__($y));
								continue;
							case structType(fields):
								final exprs:Array<Expr> = [
									for (field in fields) {
										final field = field.name;
										macro x.$field = __tmp__?.$field;
									}
								];
								exprs.unshift(@:assign2 macro var x = $x);
								exprs.unshift(macro var __tmp__ = $y);
								return (macro $b{exprs}).expr;
							default:
						}
					}
					if (x == null || y == null)
						return null;
					// remove checkType from x in x = y
					x = removeCoalAndCheckType(x);
					var expr = toExpr(EBinop(op, x, y));
					if (x.expr.match(EConst(CIdent("_")))) // blank means no assign/define just the rhs expr
						expr = y;
					if (op == null) {
						switch stmt.tok {
							case AND_NOT_ASSIGN: // &^=
								expr = toExpr(EBinop(OpAssignOp(OpAnd), x, macro - 1 ^ ($y)));
							default:
								throw info.panic() + "op is null";
						}
					}
					destructExprs.push(expr);
					exprs.push(expr);
				}
				if (exprs.length == 1)
					return exprs[0].expr;
				var tmpIndex = 0;
				var inits:Array<Expr> = [];
				for (expr in destructExprs) {
					switch expr.expr { // in case it's an array/slice/map get and has a null if check
						case EIf(_, e, _):
							expr = e;
						default:
					}
					switch expr.expr {
						case EBinop(op, e1, e2):
							var tmpName = "__tmp__" + tmpIndex;
							tmpIndex++;
							inits.push(macro final $tmpName = ${e2});
							expr.expr = EBinop(op, e1, macro @:binopAssign $i{tmpName});
						default:
							inits.push(expr);
					}
				}
				exprs = orderOperations(inits, exprs);
				return EBlock(exprs);
			} else if (stmt.lhs.length > stmt.rhs.length && stmt.rhs.length == 1) { // x,y = z
				// assign, destructure system
				var func = typeExpr(stmt.rhs[0], info);
				var t = typeof(stmt.rhs[0], info, false);
				var names:Array<String> = [];
				var types:Array<GoType> = [];
				var data = castTranslate(stmt.rhs[0], func, info);
				func = data.expr;
				switch t {
					case tuple(_, _.get() => vars):
						for (i in 0...vars.length) {
							final v = vars[i];
							switch v {
								case _var(_, _.get() => type):
									names.push('_$i');
									types.push(type);
								default:
									names.push('_$i');
									types.push(v);
							}
						}
					default:
						types.push(t);
				}
				var assigns:Array<Expr> = [];
				for (i in 0...stmt.lhs.length) {
					if (stmt.lhs[i].id == "Ident" && stmt.lhs[i].name == "_")
						continue;
					var e = removeCoalAndCheckType(typeExpr(stmt.lhs[i], info));
					var fieldName = names[i];
					if (fieldName == null)
						fieldName = '_$i';
					var e2 = macro @:tmpset0 __tmp__.$fieldName;
					e2 = assignTranslate(types[i], typeof(stmt.lhs[i], info, false), e2, info);
					if (stmt.lhs[i].id == "IndexExpr") { // prevent invalid assign to null
						switch escapeParens(e).expr {
							case ETernary(econd, eif, _):
								assigns.push(macro if ($econd)
									$eif = ${e2});
								continue;
							default:
						}
					}
					final toType = typeof(stmt.lhs[i], info, false);
					var normalAssign = true;
					if (stmt.lhs[i].id == "StarExpr" && !isPointer(toType)) {
						final x = e;
						final y = e2;
						normalAssign = false;
						// set underlying not the ref
						final underlyingType = getUnderlying(toType);
						switch underlyingType {
							case interfaceType(empty, methods):
								if (empty) {
									return (macro $x.__setData__($y)).expr;
								} else {
									final exprs:Array<Expr> = [
										for (field in methods) {
											final field = field.name;
											macro x.$field = $y?.$field;
										}
									];
									assigns.unshift(@:assign3 macro var x = $x);
									assigns = assigns.concat(exprs);
								}
							case sliceType(_), mapType(_, _):
								return (macro $x.__setData__($y)).expr;
							case structType(fields):
								final exprs:Array<Expr> = [
									for (field in fields) {
										final field = field.name;
										macro x.$field = $y?.$field;
									}
								];
								assigns.unshift(@:assign0 macro var x = $x);
								assigns = assigns.concat(exprs);
							default:
								normalAssign = true;
						}
					}
					if (normalAssign)
						assigns.push(macro $e = ${e2});
				}
				return EBlock([macro var __tmp__ = $func].concat(assigns));
			} else {
				throw info.panic() + "unknown type assign type: " + stmt;
			}
		case DEFINE: // x:= y
			if (stmt.lhs.length == stmt.rhs.length) {
				// normal vars
				final vars:Array<Var> = [];
				for (i in 0...stmt.lhs.length) {
					var expr = typeExpr(stmt.rhs[i], info);
					final name = nameIdent(stmt.lhs[i].name, false, true, info);
					final toType = typeof(stmt.lhs[i], info, false);
					final fromType = typeof(stmt.rhs[i], info, false);
					expr = assignTranslate(fromType, toType, expr, info);
					var ct = toComplexType(toType, info);
					function f(ct:ComplexType):Bool {
						if (ct == null)
							return true;
						switch ct {
							case TPath(p):
if (p.name == "InvalidType" && p.pack.length == 0 && name == "___f__") {
									return true;
								}
								if (p.params != null && p.params.length > 0) // p.params = p.params.map(_ -> TPType(TPath({name: "Unknown", pack: []})));
									return true;
							case TFunction(args, ret):
								for (arg in args)
									if (f(arg))
										return true;
								return f(ret);
							default:
						}
						return false;
					}
					if (f(ct))
						ct = null;
					if (ct != null)
						expr = macro ($expr : $ct);
					vars.push({
						name: name,
						//type: ct,
						expr: expr,
					});
				}
				return createTempVars(vars, true).expr;
			} else if (stmt.lhs.length > stmt.rhs.length && stmt.rhs.length == 1) {
				// define, destructure system
				var func = typeExpr(stmt.rhs[0], info);
				var t = typeof(stmt.rhs[0], info, false);
				var names:Array<String> = [];
				var types:Array<ComplexType> = [];
				var data = castTranslate(stmt.rhs[0], func, info);
				func = data.expr;
				switch t {
					case tuple(_, _.get() => vars):
						for (i in 0...vars.length) {
							var v = vars[i];
							switch v {
								case _var(_, _.get() => type):
									names.push('_$i');
									types.push(toComplexType(type, info));
								default:
									names.push('_$i');
									types.push(toComplexType(v, info));
							}
						}
					default:
				}
				var defines:Array<Var> = [];
				for (i in 0...stmt.lhs.length) {
					if (stmt.lhs[i].id != "Ident")
						throw info.panic() +  "define left side not an ident";
					var varName = nameIdent(stmt.lhs[i].name, false, true, info);
					var fieldName = names[i];
					if (fieldName == null)
						fieldName = '_$i';
					defines.push({name: varName, expr: macro __tmp__.$fieldName, type: types[i]});
				}
				return EVars([{name: "__tmp__", expr: func}].concat(defines));
			} else {
				throw info.panic() + "unknown type assign define type: " + stmt;
			}
		default:
			throw info.panic() + "type assign tok not found: " + stmt.tok;
	}
}

private function orderOperations(inits:Array<Expr>, exprs:Array<Expr>):Array<Expr> {
	var initsCount = inits.length;
	for (i in 0...exprs.length) {
		switch exprs[i].expr {
			case EBinop(OpAssign, {expr: EArray(v, index), pos: _}, e2):
				final tmpNameVar = "__tmp__" + initsCount++;
				final tmpNameIndex = "__tmp__" + initsCount++;
				inits.push(macro final $tmpNameVar = $v);
				inits.push(macro final $tmpNameIndex = $index);
				exprs[i] = macro $i{tmpNameVar}[$i{tmpNameIndex}] = ${e2};
			default:
		}
	}
	return inits.concat(exprs);
}

private function isSelfAssignValue(x:Expr,y:Expr):Bool {
	switch x.expr {
		case EConst(c):
			switch c {
				case CIdent(s):
					switch y.expr {
						case EConst(c):
							switch c {
								case CIdent(s2):
									if (s == s2) return true;
								default:
							}
						default:
					}
				default:
			}
		default:
	}
	return false;
}

private function removeStrParens(s:String):String {
	if (s.charAt(0) == "(")
		s = s.substr(1);
	if (s.charAt(s.length - 1) == ")")
		s = s.substr(0, s.length - 1);
	return s;
}

private function typeExprStmt(stmt:Ast.ExprStmt, info:Info):ExprDef {
	var expr = typeExpr(stmt.x, info);
	return expr != null ? expr.expr : null;
} // written by Eliott issue #17

private function typeIfStmt(stmt:Ast.IfStmt, info:Info):ExprDef {
	var obj:haxe.DynamicAccess<Dynamic> = cast stmt; // new - set-up DynamicAccess
	final init = stmt.init == null ? null : typeStmt(stmt.init, info);
	stmt.elseStmt = obj.get("else"); // new - dynamically access the JSON element with the reserved name
	var ifStmt:Expr = toExpr(EIf(typeExpr(stmt.cond, info), typeStmt(stmt.body, info), typeStmt(stmt.elseStmt, info)));
	if (init != null)
		return EBlock([init, ifStmt]);
	return ifStmt.expr;
}

private function typeReturnStmt(stmt:Ast.ReturnStmt, info:Info):ExprDef {
	function ret(e:ExprDef, blank:Bool=false) {
		if (info.global.deferBool) {
			final exprs:Array<Expr> = [];
			switch e {
				case EReturn(expr):
					if (expr == null || blank) {
						exprs.push(typeDeferReturn(info, false));
						exprs.push(toExpr(e));
					}else{
						switch expr.expr {
							case EConst(_):
								exprs.push(typeDeferReturn(info, false));
								exprs.push(toExpr(e));
							default:
								final ct = info.returnType;
								exprs.push(macro final __ret__:$ct = $expr);
								if (info.returnNames.length > 1 && info.returnNamed) {
									for (i in 0...info.returnNames.length) {
										final name = info.returnNames[i];
										final fieldName = "_" + i; 
										exprs.push(macro $i{name} = __ret__.$fieldName);
									}
								}
								exprs.push(typeDeferReturn(info, false));
								exprs.push(macro return __ret__);
						}
					}
				default:
					exprs.push(typeDeferReturn(info, false));
					exprs.push(toExpr(e));
			}
			return (macro $b{exprs}).expr;
		}
		return e;
	}
	// blank return
	if (stmt.results.length == 0) {
		if (info.returnTypes.length == 0)
			return ret(EReturn());
		if (info.returnTypes.length == 1) {
			if (info.returnNames.length == 1 && info.returnNamed)
				return ret(EReturn(macro $i{info.returnNames[0]}), true);
			return ret(EReturn(defaultValue(info.returnTypes[0], info)), true);
		}
		final fields:Array<ObjectField> = [
			for (i in 0...info.returnTypes.length)
				{field: "_" + i, expr: info.returnNamed ? macro $i{info.returnNames[i]} : defaultValue(info.returnTypes[i], info)}
		];
		return ret(EReturn(toExpr(EObjectDecl(fields))), true);
	}
	if (stmt.results.length == 1) {
		var e = typeExpr(stmt.results[0], info);
		var retType = info.returnTypes[0];
		if (info.returnTypes.length > 1) {
			retType = tuple(info.returnTypes.length, info.returnNamed ? {
				get: () -> [
					for (i in 0...info.returnTypes.length)
						_var(info.returnNames[i], {get: () -> info.returnTypes[i]})
				]
			} : {get: () -> info.returnTypes});
		}
		if (retType != null) {
			final t = typeof(stmt.results[0], info, false);
			e = assignTranslate(t, retType, e, info);
		}
		if (info.returnNamed) {
			if (info.returnNames.length == 1) {
				final x = macro $i{info.returnNames[0]};
				if (!isSelfAssignValue(x,e))
					e = macro $x = $e;
			}else{
				/*// x,y = z
				// destructure
				final assigns:Array<Expr> = [];
				for (i in 0...info.returnNames.length) {
					final name = info.returnNames[i];
					final fieldName = "_" + i;
					var retType = info.returnTypes[i];
					var e = macro __tmp__.$fieldName;
					if (retType != null) {
						final t = typeof(stmt.results[0], info, false);
						switch t {
							case tuple(_, _.get() => types):
								e = assignTranslate(types[i], retType, e, info);
							default:
								throw "stmt result not a tuple type";
						}
					}
					assigns.push(macro $i{name} = $e);
				}
				final fields:Array<ObjectField> = [
					for (i in 0...info.returnTypes.length) {
						final e = macro $i{info.returnNames[i]};
						{field: "_" + i, expr: info.returnNamed ? e : defaultValue(info.returnTypes[i], info)};
				}
				];
				assigns.push(toExpr(EObjectDecl(fields)));
				final ct = info.returnType;
				e = macro $b{[macro @:typeReturnStmt final __tmp__ = $e].concat(assigns)};*/
			}
			
		}
		return ret(EReturn(e));
	}
	// multireturn
	var expr = toExpr(EObjectDecl([
		for (i in 0...stmt.results.length) {
			var e = typeExpr(stmt.results[i], info);
			final retType = info.returnTypes[i];
			if (retType != null) {
				final t = typeof(stmt.results[i], info, false);
				e = assignTranslate(t, retType, e, info);
			}
			{
				field: "_" + i,
				expr: e,
			};
		}
	]));
	if (info.returnNamed) {
		final ct = info.returnType;
		final decls:Array<Expr> = [macro @:typeReturnStmt2 final __tmp__:$ct = $expr];
		expr = macro $b{decls};
		for (i in 0...stmt.results.length) {
			final fieldName = "_" + i;
			final e = macro __tmp__.$fieldName;
			final x = macro $i{info.returnNames[i]};
			if (!isSelfAssignValue(x,e))
				decls.push(macro $x = $e);
		}
		decls.push(macro __tmp__);
	}
	return ret(EReturn(expr));
}

function resultsToReturnValue(results:Array<GoType>, info:Info):Expr {
	if (results.length == 0)
		return macro return;
	if (results.length == 1)
		return macro return ${defaultValue(results[0], info)};
	// multireturn
	final expr = toExpr(EObjectDecl([
		for (i in 0...results.length) {
			{
				field: "_" + i,
				expr: defaultValue(results[i], info),
			};
		}
	]));
	return expr;
}

private function typeExprType(expr:Dynamic, info:Info):ComplexType { // get the type of an expr
	// typeof -> toComplexType
	if (expr == null)
		return null;
	// prevent typeExprType from being used
	final t = typeof(expr, info, false);
	var ct = toComplexType(t, info);
	if (ct == null)
		return TPath({name: "NullType", pack: []});
	switch ct {
		case TPath(p):
			if (expr.id == "Ellipsis") {
				ct = TPath({
					name: "Rest",
					pack: ["haxe"],
					params: p.params,
				});
			}
		default:
	}
	return ct;

	var type = switch expr.id {
		case "UnaryExpr": unaryType(expr, info);
		case "MapType": mapTypeExpr(expr, info);
		case "ChanType": chanTypeExpr(expr, info);
		case "InterfaceType": interfaceTypeExpr(expr, info);
		case "StructType": structTypeExpr(expr, info);
		case "FuncType": funcType(expr, info);
		case "ArrayType": arrayTypeExpr(expr, info);
		case "StarExpr": starType(expr, info); // pointer
		case "Ident": identType(expr, info); // identifier type
		case "SelectorExpr": selectorType(expr, info); // path
		case "Ellipsis": ellipsisType(expr, info); // Rest arg
		case "ParenExpr": return typeExprType(expr.x, info);
		case "IndexExpr": return indexType(expr, info); // t type
		case "IndexListExpr": return indexListType(expr, info);
		case "BinaryExpr": return binaryType(expr, info); // Union type
		case "HashType": return typeExprType(hashTypeToExprType(expr, info), info);
		case "BasicLit": return toComplexType(typeof(expr.type, info, false, []), info);
		default:
			throw info.panic() + "Type expr unknown: " + expr.id;
			null;
	}
	// if (type == null)
	//	throw "Type expr is null: " + expr.id;
	return type;
} // TYPE EXPR

private function binaryType(expr:Ast.BinaryExpr, info:Info):ComplexType {
	function rec(e:Ast.Expr):Array<ComplexType> {
		switch e.id {
			case "BinaryExpr":
				return rec(e.x).concat(rec(e.y));
			default:
				return [typeExprType(e, info)];
		}
	}
	final params = rec(expr);
	return TFunction(params, TPath({name: "Void", pack: []}));
}

private function indexListType(expr:Ast.IndexListExpr, info:Info):ComplexType {
	final ct = typeExprType(expr.x, info);
	switch ct {
		case TPath(p):
			p.params = expr.indices.map(e -> TPType(typeExprType(e, info)));
		default:
	}
	return ct;
}

private function indexType(expr:Ast.IndexExpr, info:Info):ComplexType {
	final ct = typeExprType(expr.x, info);
	switch ct {
		case TPath(p):
			final index = typeExprType(expr.index, info);
			p.params = [TPType(index)];
		default:
	}
	return ct;
}

private function unaryType(expr:Ast.UnaryExpr, info:Info):ComplexType {
	return typeExprType(expr.x, info);
}

private function mapTypeExpr(expr:Ast.MapType, info:Info):ComplexType {
	var keyType = typeExprType(expr.key, info);
	var valueType = typeExprType(expr.value, info);
	if (keyType == null || valueType == null)
		return null;
	return TPath({
		name: "GoMap",
		pack: ["stdgo"],
		params: [TPType(keyType), TPType(valueType)],
	});
}

private function chanTypeExpr(expr:Ast.ChanType, info:Info):ComplexType {
	var type = typeExprType(expr.value, info);
	return TPath({
		name: "Chan",
		pack: ["stdgo"],
		params: [TPType(type)],
	});
}

private function interfaceTypeExpr(expr:Ast.InterfaceType, info:Info):ComplexType {
	if (expr.methods.list.length == 0) {
		// dynamic
		return anyInterfaceType();
	} else {
		// anonymous struct
		var fields = typeFieldListFields(expr.methods, info, [], false);
		return TAnonymous(fields);
	}
}

private function structTypeExpr(expr:Ast.StructType, info:Info):ComplexType {
	if (expr.fields == null || expr.fields.list == null) // || expr.fields.list.length == 0)
		return invalidComplexType();
	var fields = typeFieldListFields(expr.fields, info, [], false);
	return TAnonymous(fields);
}

private function funcType(expr:Ast.FuncType, info:Info):ComplexType {
	var ret = typeFieldListReturn(expr.results, info, false);
	var params = typeFieldListComplexTypes(expr.params, info);
	if (ret == null || params == null)
		return TFunction([], TPath({name: "Void", pack: []}));
	return TFunction(params, ret);
}

private function arrayTypeExpr(expr:Ast.ArrayType, info:Info):ComplexType {
	// array is pass by copy, slice is pass by ref except for its length
	var type = typeExprType(expr.elt, info);
	if (expr.len != null) {
		// array
		var len:Expr = null;
		switch expr.len.id {
			case "BasicLit":
				len = toExpr(EConst(CInt(expr.len.value)));
			case "Ellipsis":
				len = toExpr(EConst(CInt("0")));
			default:
				len = typeExpr(expr.len, info);
				len = macro($len : stdgo.GoInt).toBasic();
		}
		return TPath({
			pack: ["stdgo"],
			name: "GoArray",
			params: type != null ? [TPType(type), TPExpr(len)] : [],
		});
	}
	// slice
	return TPath({
		pack: ["stdgo"],
		name: "Slice",
		params: type != null ? [TPType(type)] : []
	});
}

private function starType(expr:Ast.StarExpr, info:Info):ComplexType { // pointer type
	var type = typeExprType(expr.x, info);
	var t = typeof(expr.x, info, false);
	if (isRefValue(t)) {
		return TPath({
			pack: ["stdgo"],
			name: "Ref",
			params: type != null ? [TPType(type)] : [],
		});
	}

	return TPath({
		pack: ["stdgo"],
		name: "Pointer",
		params: type != null ? [TPType(type)] : [],
	});
}

private function identType(expr:Ast.Ident, info:Info):ComplexType {
	var name = className(expr.name, info);
	if (!info.renameClasses.exists(expr.name) && !info.global.renameClasses.exists(name)) { 
		for (t in basicTypes) {
			if (name == "T_" + t) {
				name = "Go" + title(name.substr(2));
				if (name.substr(2, 2) == "Ui") {
					name = "GoUI" + name.substr(4);
				}
				if (name == "GoString") {
					return TPath({
						pack: ["stdgo"],
						name: "GoString",
					});
				}
				return TPath({
					pack: ["stdgo"],
					name: name,
				});
			}
		}
		final basicType = classToBuiltinTypePath(expr.name, info);
		if (basicType != null)
			return TPath(basicType);

	}
	if (StringTools.startsWith(name, "T__struct_") && expr.type != null) {
		final type = hashTypeToExprType(expr.type, info);
		if (type.underlying != null) {
			info.locals[type.underlying.hash] = typeof(type, info, false);
		}
	}
	return TPath({
		pack: [],
		name: name,
		sub: null,
	});
}

private function classToBuiltinTypePath(name:String, info:Info):TypePath {
	return switch name {
		case "error":
			{
				pack: ["stdgo"],
				name: "Error",
			};
		case "chan":
			{
				pack: ["stdgo"],
				name: "Chan",
			};
		case "any":
			{
				pack: ["stdgo"],
				name: "AnyInterface",
			};
		default:
			null;
	}
}

private function selectorType(expr:Ast.SelectorExpr, info:Info):ComplexType {
	final t = typeof(expr, info, false);
	final ct = toComplexType(t, info);
	return ct;
}

private function ellipsisType(expr:Ast.Ellipsis, info:Info):ComplexType {
	var t = typeExprType(expr.elt, info);
	return TPath({
		name: "Rest",
		pack: ["haxe"],
		params: [TPType(t)],
	});
}

private function typeExpr(expr:Dynamic, info:Info):Expr {
	if (expr == null)
		return null;
	var def = switch expr.id {
		case "Ident": typeIdent(expr, info, false);
		case "CallExpr": typeCallExpr(expr, info);
		case "BasicLit": typeBasicLit(expr, info);
		case "UnaryExpr": typeUnaryExpr(expr, info);
		case "SelectorExpr": typeSelectorExpr(expr, info);
		case "BinaryExpr": typeBinaryExpr(expr, info);
		case "FuncLit": typeFuncLit(expr, info);
		case "CompositeLit": typeCompositeLit(expr, info);
		case "SliceExpr": typeSliceExpr(expr, info);
		case "TypeAssertExpr": typeAssertExpr(expr, info);
		case "IndexExpr": typeIndexExpr(expr, info);
		case "StarExpr": typeStarExpr(expr, info);
		case "ParenExpr": typeParenExpr(expr, info);
		case "Ellipsis": typeEllipsis(expr, info);
		case "MapType": typeMapType(expr, info);
		case "BadExpr": throw info.panic() + "BAD EXPRESSION TYPED";
		case "InterfaceType": typeInterfaceType(expr, info);
		case "IndexListExpr": typeIndexListExpr(expr, info);
		default:
			trace("unknown expr id: " + expr.id);
			null;
			//(macro throw "unknown expr").expr;
	};
	if (def == null)
		throw info.panic() + "expr null: " + expr.id;
	return toExpr(def);
}

private function typeIndexListExpr(expr:Ast.IndexListExpr, info:Info):ExprDef {
	final x = typeExpr(expr.x, info);
	final t = typeof(expr.x, info, false);
	switch t {
		case signature(_, _.get() => params, _.get() => results, _, _.get() => typeParams):
			final objType = expr.x.objType;
			var args = [];
			if (objType != null) {
				switch typeof(objType, info, false, []) {
					case signature(_, _.get() => params, _.get() => results, _, _.get() => typeParams):
						args = genericIndices(expr.indices, params, typeParams, info);
					default:
				}
			}
			return typeFunctionLiteral(args, params, results, x, info).expr;
		default:
	}
	return (macro $x).expr;
}

private function typeIndexExpr(expr:Ast.IndexExpr, info:Info):ExprDef {
	var x = typeExpr(expr.x, info);
	switch x.expr {
		case EConst(c):
			switch c {
				case CString(_):
					x = macro($x : stdgo.GoString);
				default:
			}
		default:
	}
	var index = typeExpr(expr.index, info);
	var t = typeof(expr.x, info, false);
	final obj = destructureExpr(x, t);
	x = obj.x;
	t = obj.t;
	t = getUnderlyingRefNamed(t);
	switch t {
		case arrayType(_, _), sliceType(_), basic(untyped_string_kind), basic(string_kind):
			index = assignTranslate(typeof(expr.index, info, false), basic(int_kind), index, info, false);
			index = macro($index : stdgo.GoInt); // explicit casting needed for macro typeParam system otherwise compilation breaks
		case mapType(_.get() => indexType, _.get() => valueType):
			index = assignTranslate(typeof(expr.index, info, false), indexType, index, info, false);
			final value = defaultValue(valueType, info);
			final e = macro ($x[$index] ?? $value);
			return e.expr;
		case signature(_, _.get() => params, _.get() => results, _, _.get() => typeParams): // generic param
			final objType = expr.x.objType;
			var args = [];
			if (objType != null) {
				switch typeof(objType, info, false, []) {
					case signature(_, _.get() => params, _.get() => results, _, _.get() => typeParams):
						args = genericIndices([expr.index], params, typeParams, info);
					default:
				}
			}
			return typeFunctionLiteral(args, params, results, x, info).expr;
		case typeParam(_, _):
			// nothing
			index = macro @:param_index $index;
		case invalidType:
			index = macro @:invalid_index_invalid_type $index;
		case structType(_):
			index = macro @:invalid_index_struct $index;
		case interfaceType(_,_):
			index = macro @:invalid_index_interface $index;
		default:
			trace("invalid_index: " + t);
			trace(expr.x);
			trace(hashTypeToExprType(expr.x.type, info));
			trace(typeExprType(expr.x, info));
			throw info.panic() + "invalid index";
	}
	final e = macro $x[$index];
	return e.expr;
}

private function typeInterfaceType(expr:Ast.InterfaceType, info:Info):ExprDef {
	return (macro {}).expr;
}

private function typeMapType(expr:Ast.MapType, info:Info):ExprDef {
	return (macro @:invalid_map_type null).expr;
}

private function typeEllipsis(expr:Ast.Ellipsis, info:Info):ExprDef {
	var e = typeExpr(expr.elt, info);
	var t = typeof(expr.elt, info, false);
	var rest = typeRest(e, t, info);
	return rest != null ? rest.expr : null;
}

private function typeIdent(expr:Ast.Ident, info:Info, isSelect:Bool):ExprDef {
	var name = nameIdent(expr.name, true, false, info, isSelect, expr.objPath);
	return EConst(CIdent(name));
}

private function isFunction(expr:Ast.Expr, info:Info):Bool {
	expr = escapeParensRaw(expr);
	final ft = typeof(expr, info, false);
	final sig = isSignature(ft);
	var kind:Ast.ObjKind = expr.id == "SelectorExpr" ? expr.sel.kind : expr.kind;
	var notFunction = kind == Ast.ObjKind.typ || (!sig && !isInvalid(ft) && expr.id != "CallExpr");
	if (!notFunction && sig)
		notFunction = expr.id == "ParenExpr" && expr.x.id == "FuncType" || expr.id == "FuncType";
	return !notFunction;
}

private function isTuple(type:GoType):Bool {
	return switch type {
		case tuple(_, _):
			true;
		default:
			false;
	}
}

private function typeCallExpr(expr:Ast.CallExpr, info:Info):ExprDef {
	var args:Array<Expr> = [];
	var tupleArg:Expr = null;
	var debugBool = false;
	var forceType = false;
	function returnExpr(e:Expr):Expr {
		switch e.expr {
			case ECall({expr: expr, pos: _}, params):
				switch expr {
					case EMeta(s, e):
						if (s.name == ":define") {
							switch e.expr {
								case ECall(_, params): // Go.typeFunction(...)
									switch params[0].expr {
										case ECall(e3, _): // Go.typeFunction(...())
											expr = e3.expr;
										default: // Go.typeFunction(...)
											expr = params[0].expr;
									}
								default:
							}
						}
					default:
				}
				e.expr = ECall({expr: expr, pos: null}, params);
			default:
		}
		if (tupleArg != null) {
			var fvar = macro {};
			switch e.expr {
				case ECall(f,args):
					fvar = macro var __f__ = $f;
					e = macro __f__($a{args});
				default:
			}
			switch tupleArg.expr {
				case EBlock(exprs):
					exprs.unshift(fvar);
					exprs.unshift(macro var __tmp__ = $tupleArg);
				default:
					e = macro ({
						$fvar;
						var __tmp__ = $tupleArg;
						$e;
					});
			}
		}
		/*if (forceType) {
			final ct = toComplexType(typeof(expr, info, false), info);
			e = macro ($e : $ct);
		}*/
		return e;
	}
	function genArgs(translateType:Bool, pos:Int = 0, ?elem:GoType) {
		final exprArgs = expr.args.slice(pos);
		args = [for (arg in exprArgs) typeExpr(arg, info)];
		if (args.length == 1) {
			final t = typeof(exprArgs[0], info, false);
			if (t != null) {
				switch t {
					case tuple(len, _):
						if (len > 1) {
							tupleArg = args[0];
							final tuples = getReturnTupleType(t);
							for (i in 0...tuples.length) {
								final fieldName = "_" + i;
								final type = toComplexType(tuples[i], info);
								args[i] = macro(__tmp__.$fieldName:$type);
							}
						}
					default:
				}
			}
		}
		var type = typeof(expr.fun, info, false);
		// ellipsis
		if (expr.ellipsis == -1) {
			debugBool = true;
		}else if (expr.ellipsis != 0) {
			var last = args.pop();
			var t = typeof(exprArgs[exprArgs.length - 1], info, false);
			if (elem != null)
				t = GoType.sliceType({get: () -> elem});
			last = typeRest(last, t, info);
			args.push(last);
		}
		if (translateType && type != null) {
			if (isInvalid(type)) { // set standard library expected call arguments
				if (expr.fun.id == "SelectorExpr") {
					var fun:Ast.SelectorExpr = expr.fun;
					if (fun.x.id == "Ident") {
						switch fun.x.name {
							case "unsafe":
								args[0] = toAnyInterface(args[0], invalidType, info);
						}
					}
				}
				return;
			}
			//trace("ABC");
			//final t = typeof(expr.calle,info,false);
			var skip = 0;
			if (expr.typeArgs != null) {
				// TODO: generic funcs
				/*skip = expr.typeArgs.length;
				expr.typeArgs.reverse();
				for (typeArg in expr.typeArgs) {
					final typeOfTypeArg = typeof(typeArg, info, false);
					final value = defaultValue(typeOfTypeArg, info);
					args.unshift(value);
				}
				forceType = true;*/
			}
			var sig = getSignature(type);
			if (sig != null) {
				switch sig {
					case signature(variadic, _.get() => params, _, _, _):
						// params:Array<GoType>
						// args:Array<Expr>
						// exprArgs:Array<Ast.Expr>
						// args:Array<Expr>
						for (i in skip...args.length + (expr.ellipsis > 0 ? -1 : 0)) {
							final fromType = getVar(typeof(exprArgs[i - skip], info, false));
							var toType = getVar(params[i - skip]);
							if (variadic && params.length <= i + 1 - skip) {
								toType = getElem(params[params.length - 1]);
							}
							args[i] = assignTranslate(fromType, toType, args[i], info);
						}
					default:
				}
			}
		}
	}
	final isFunction = isFunction(expr.fun, info);
	if (!isFunction) {
		final ct = typeExprType(expr.fun, info);
		var e = typeExpr(expr.args[0], info);
		final fromType = typeof(expr.args[0], info, false);
		final toType = typeof(expr.fun, info, false);
		if (isAnyInterface(toType) && !isRestExpr(e)) {
			return toAnyInterface(e, fromType, info).expr;
		}
		return returnExpr(checkType(e, ct, fromType, toType, info)).expr;
	}
	switch expr.fun.id {
		case "IndexExpr", "IndexListExpr":
			var t = typeof(expr.fun.x, info, false);
			t = getUnderlyingRefNamed(t);
			switch t {
				case signature(_, _, _, _, _): // generic param
					final expr = typeExpr(expr.fun.x, info);
					genArgs(true);
					return (macro $expr($a{args})).expr;
				default:
			}
		case "ArrayType":
			return typeAssertExpr({
				type: expr.fun,
				x: expr.args[0],
				lparen: 0,
				rparen: 0,
			}, info);
		case "SelectorExpr":
			expr.fun.x = escapeParensRaw(expr.fun.x);
			final selKind = selectorKind(expr.fun);
			final selType = typeof(expr.fun, info, false);
			switch selType {
				case signature(_, _, _, _):
					final recv = typeof(expr.fun.recv, info, false);
					switch recv {
						case _var(_, _.get() => type):
							final xType = typeof(expr.fun.x, info, false);
							final xTypePointer = isPointer(xType);
							/*final b = isPointer(type);
							if (b) {
								final sel = nameIdent(expr.fun.sel.name, false, false, info, false, true);
								final selExpr = macro $i{sel};
								var e:Expr = null;
								if (selKind == 3) {
									e = typeExpr(expr.fun,info);
									genArgs(true);
									if (isPointer(xType)) {
										args.unshift(args[0]);
									}
									e = macro $e($a{args});
								}else{
									var x = typeExpr(expr.fun.x, info);
									genArgs(true);
									if (isPointer(xType)) {
										args.unshift(x);
									} else {
										args.unshift(macro stdgo.Go.pointer($x));
									}
									e = x;
									if (xTypePointer)
										e = macro $e.value;
									e = macro $e.$sel($a{args});
								}
								return returnExpr(e).expr;
							}*/
						default:
					}
				default:
			}
			switch expr.fun.sel.name {
				case "String":
					// expr.fun.sel.name = "ToString"; // titled in order to export
					if (typeof(expr.type, info, false).match(basic(string_kind))) {
						var e = typeExpr(expr.fun, info);
						genArgs(true);
						return returnExpr(macro($e($a{args}) : stdgo.GoString)).expr;
					}
				case "Exit":
					if (expr.fun.x.id == "Ident" && expr.fun.x.name == "os") {
						genArgs(true);
						return (macro @:define("(sys || hxnodejs)") Sys.exit($a{args})).expr;
					}
			}
		case "FuncLit":
			var expr = toExpr(typeFuncLit(expr.fun, info));
			genArgs(true);
			return returnExpr(macro ({
				var a = $expr;
				a($a{args});
			})).expr;
		case "Ident":
			if (!info.renameIdents.exists(expr.fun.name) && info.localIdents.indexOf(untitle(expr.fun.name)) == -1) {
				final funcName =  expr.fun.name;
				switch funcName {
					case "log.Println":
						genArgs(false);
						args = args.map(arg -> macro stdgo.Go.toInterface($arg));
						return (macro @:define("cdebug") stdgo.log.Log.println($a{args})).expr;
					case "__debug__":
						if (info.global.debugBool) {
							return (macro {
								final values = stdgo.os.Os.openFile("debug_" + stdgo.runtime.Runtime.compiler + ".log", 0, 0);
								var __f__ = values._0;
								final __e__ = values._1;
								if (__e__ != null) {
									stdgo.log.Log.fatal(stdgo.Go.toInterface(__e__));
								}
								__f__.truncate(0);
								stdgo.log.Log.setFlags(0);
								stdgo.log.Log.setOutput(stdgo.Go.asInterface(__f__));
								__f__;
							}).expr;
						}
					case "panic":
						genArgs(false);
						return returnExpr(macro throw ${toAnyInterface(args[0], typeof(expr.args[0], info, false), info)}).expr;
					case "recover":
						info.global.recoverBool = true;
						return returnExpr(macro({
							final r = stdgo.Go.recover_exception;
							stdgo.Go.recover_exception = null;
							r;
						})).expr;
					case "min", "max":
						genArgs(false);
						return (macro stdgo.Go.$funcName($a{args})).expr;
					case "append":
						final t = typeof(expr.args[0], info, false);
						var eType = t;
						eType = getElem(eType);
						genArgs(false, eType);
						var e = args.shift();
						if (args.length == 0)
							return returnExpr(e).expr;

						for (i in 0...args.length) {
							final aType = typeof(expr.args[i + 1], info, false);
							args[i] = assignTranslate(aType, eType, args[i], info);
						}
						var ct = toComplexType(typeof(expr, info, false), info);
						var e = macro $e.__append__($a{args});
						if (!isInvalidComplexType(ct))
							e = macro ($e : $ct);
						return returnExpr(e).expr;
					case "copy":
						genArgs(false);
						//return returnExpr(macro stdgo.Go.copySlice($a{args})).expr;
						return returnExpr(macro ${args[0]}.__copyTo__($a{args.slice(1)})).expr;
					case "delete":
						var e = typeExpr(expr.args[0], info);
						var key = typeExpr(expr.args[1], info);
						var t = typeof(expr.args[0], info, false);
						t = getUnderlying(t);
						switch removeTypeParam(t) {
							case mapType(_.get() => var keyType, _):
								key = assignTranslate(typeof(expr.args[1], info, false), keyType, key, info, false);
							case invalidType:
							case tuple(_, _.get() => vars):
								return (macro {
									final e = $e;
									e._0.__remove__(e._1);
								}).expr;
							default:
								throw info.panic() + "first arg of delete builtin function not of type map: " + t;
						}
						return returnExpr(macro if ($e != null)
							$e.__remove__($key)).expr;
					case "clear":
						genArgs(false);
						final t = getUnderlying(typeof(expr.args[0], info, false));
						final s = args[0];
						switch t {
							case sliceType(_.get() => elem):
								final value = defaultValue(elem, info, false);
								return (macro {
									for (i in 0...$s.length) {
										$s[i] = $value;
									}
								}).expr;
							default:
								return returnExpr(macro $s.__clear__()).expr;
						}
					case "print":
						genArgs(true, 0);
						if (args.length == 0)
							return returnExpr(macro stdgo.Go.print("")).expr;
						for (i in 0...args.length) {
							args[i] = exprToString(typeof(expr.args[i], info, false), basic(string_kind), args[i], info);
						}
						return returnExpr(macro stdgo.Go.print($a{args})).expr;
					case "println":
						genArgs(true, 0);
						if (args.length == 0)
							return returnExpr(macro stdgo.Go.println("")).expr;
						for (i in 0...args.length) {
							args[i] = exprToString(typeof(expr.args[i], info, false), basic(string_kind), args[i], info);
						}
						return returnExpr(macro stdgo.Go.println($a{args})).expr;
					case "complex":
						genArgs(false);
						return returnExpr(macro new stdgo.GoComplex128($a{args})).expr;
					case "real":
						var e = typeExpr(expr.args[0], info);
						var t = typeof(expr.args[0], info, false);
						final toType = GoType.basic(complex128_kind);
						final ct = toComplexType(toType, info);
						e = checkType(e, ct, t, toType, info);
						return returnExpr(macro $e.real).expr;
					case "imag":
						var e = typeExpr(expr.args[0], info);
						var t = typeof(expr.args[0], info, false);
						final toType = GoType.basic(complex128_kind);
						final ct = toComplexType(toType, info);
						e = checkType(e, ct, t, toType, info);
						return returnExpr(macro $e.imag).expr;
					case "close":
						var e = typeExpr(expr.args[0], info);
						var t = typeof(expr.args[0], info, false);
						return returnExpr(macro if ($e != null)
							$e.__close__()).expr;
					case "cap":
						var e = typeExpr(expr.args[0], info);
						var t = typeof(expr.args[0], info, false);
						return returnExpr(macro $e.capacity).expr;
					case "len":
						var e = typeExpr(expr.args[0], info);
						var t = typeof(expr.args[0], info, false);
						t = getUnderlying(t);
						return returnExpr(macro($e.length)).expr;
					case "new": // create default value put into pointer
						var t = typeExprType(expr.args[0], info);
						switch t {
							case TPath(_), TFunction(_, _), TAnonymous(_):
								var t = typeof(expr.args[0], info, false);
								var value = defaultValue(t, info);
								if (!isRefValue(t)) {
									value = macro stdgo.Go.pointer($value);
								} else {
									final ct = TPath({name: "Ref", pack: ["stdgo"], params: [TPType(toComplexType(t, info))]});
									value = macro(stdgo.Go.setRef($value) : $ct);
								}
								return returnExpr(value).expr;
							default:
						}
					case "make":
						var type = typeof(expr.args[0], info, false);
						genArgs(false, 1);
						var size = args[0];
						var cap = args[1];

						var setCap:Bool = cap != null;
						if (size != null) {
							size = assignTranslate(typeof(expr.args[1], info, false), basic(int_kind), size, info);
							size = macro($size : stdgo.GoInt).toBasic();
						}
						if (cap != null) {
							cap = assignTranslate(typeof(expr.args[2], info, false), basic(int_kind), cap, info);
						} else {
							cap = macro 0;
						}
						var p:TypePath = switch type {
							case named(path, _, _):
								namedTypePath(path, info);
							case typeParam(_, params):
								type = params[0];
								null;
							default:
								null;
						}
						final underlyingType = getUnderlying(type);
						var e = switch underlyingType {
							case sliceType(_.get() => elem):
								final param = toComplexType(elem, info);
								final p:TypePath = {name: "Slice", params: [TPType(param)], pack: ["stdgo"]};
								genSlice(p, elem, size, cap, returnExpr, info, null);
							case mapType(_.get() => key, _.get() => value):
								var keyType = toComplexType(key, info);
								var valueType = toComplexType(value, info);
								createMap(underlyingType, keyType, valueType, [], info, toComplexType(type, info));
							case chanType(dir, _.get() => elem):
								var value = defaultValue(elem, info);
								var param = toComplexType(elem, info);
								if (size == null)
									size = macro 0;
								if (p == null)
									p = {name: "Chan", pack: ["stdgo"], params: [TPType(param)]};
								macro new $p($size, () -> $value);
							case invalidType:
								macro @:invalid_make null;
							default:
								trace(expr.fun.name, !info.renameIdents.exists(expr.fun.name));
								//trace(info.renameIdents);
								//throw info.panic() + "unknown make type: " + type;
								macro @:invalid_make null;
						}
						final ct = toComplexType(type, info);
						return returnExpr(macro ($e : $ct)).expr;
				}
			}
	}
	var e = typeExpr(expr.fun, info);
	final type = typeof(expr.fun, info, false);
	if (args.length == 0) {
		genArgs(true, 0);
	}
	if (debugBool) {
		e = macro @:define("debug") trace(stdgo.fmt.Fmt.sprintln($a{args}));
	}else{
		e = macro $e($a{args});
	}
	return returnExpr(e).expr;
}

private function exprToString(fromType:GoType, toType:GoType, expr:Expr, info:Info):Expr {
	switch toType {
		case basic(string_kind):
			switch fromType {
				case basic(float32_kind), basic(float64_kind), basic(untyped_float_kind):
					return macro Std.string($expr);
				case basic(uint32_kind), basic(uint_kind), basic(untyped_int_kind):
					return macro Std.string((($expr: UInt) : Float));
				case  basic(uint64_kind):
					return macro @:privateAccess (($expr).toBasic() : haxe.UInt64).toString();
				case basic(int64_kind):
					return macro @:privateAccess (($expr).toBasic() : haxe.Int64).toString();
				case basic(int_kind), basic(int8_kind), basic(uint8_kind), basic(int16_kind), basic(uint16_kind), basic(int32_kind):
					return expr;
				case basic(bool_kind):
					return expr;
				case basic(complex64_kind), basic(complex128_kind):
					return expr;
				case basic(string_kind):
					return expr;
				default:
			}
		default:
	}
	return expr;
}

private function genSlice(p:TypePath, elem:GoType, size:Expr, cap:Expr, returnExpr:Expr->Expr, info:Info, sets:Array<Expr>):Expr {
	var param = toComplexType(elem, info);
	var value = defaultValue(elem, info);
	if (value == null)
		value = macro stdgo.Go.expectedValue();
	if (size == null)
		return returnExpr(macro new $p(0, 0));

	function createArgs(len:Expr,cap:Expr,sets:Array<Expr>):Array<Expr> {
		if (sets == null)
			return [len,cap];
		return [len,cap, macro ...$a{sets}];
	}
	switch getUnderlying(elem) {
		case structType(_), arrayType(_):
			if (sets == null) {
				sets = [macro for (i in 0...($size > $cap ? $size : $cap : stdgo.GoInt).toBasic()) $value];
			}else {
				return macro new $p($size,$cap, ...$a{sets}.concat([for (i in ${makeExpr(sets.length)}...($size > $cap ? $size : $cap : stdgo.GoInt).toBasic()) $value]));
			}
			return returnExpr(macro new $p($a{createArgs(size, cap, sets)}));
		case basic(kind):
			switch kind {
				case int8_kind, int16_kind, int32_kind, uint8_kind, uint16_kind, uint32_kind, float32_kind, float64_kind, untyped_float_kind,
					untyped_int_kind, int_kind, uint_kind:
					return returnExpr(macro new $p($a{createArgs(size, cap, sets)}).__setNumber32__());
				case int64_kind, uint64_kind:
					return returnExpr(macro new $p($a{createArgs(size, cap, sets)}).__setNumber64__());
				case string_kind:
					return returnExpr(macro new $p($a{createArgs(size, cap, sets)}).__setString__());
				default:
			}
		default:
	}
	return macro new $p($a{createArgs(size, cap, sets)});
}

private function genericIndices(indices:Array<Ast.Expr>, params:Array<GoType>, typeParams:Array<GoType>, info:Info):Array<Expr> {
	var genericExprs:Array<Ast.Expr> = indices; // genericTypes but exprs
	var removalGenericExprs:Array<Ast.Expr> = [];
	for (i in 0...typeParams.length) {
		switch typeParams[i] {
			case typeParam(_, _):

			default:
				if (genericExprs.length > i)
					removalGenericExprs.push(genericExprs[i]);
		}
	}
	for (expr in removalGenericExprs) {
		genericExprs.remove(expr);
	}
	final argTypes = params.map(p -> toComplexType(p, info)); // params are args
	for (i in 0...argTypes.length) {
		for (genericExpr in genericExprs) {
			final a = argTypes[i];
			final b = typeExprType(genericExpr, info);
			switch a {
				case TPath(p):
					if (isTypeParam(params[i])) {
						/*if (p.params == null) {
							genericExprs.remove(genericExpr);
							break;
						}*/
						/*var next = false;
						for (param in p.params) {
							switch param {
								case TPType(a):
									if (compareComplexType(a, b)) { // checking if arg already has type matching for macro to use
										genericExprs.remove(genericExpr);
										break;
									}
								default:
							}
						}
						if (next)
							break;*/
					}
				default:
			}
		}
	}
	final args:Array<Expr> = [];
	/*if (genericExprs.length > 0) {
		for (genericExpr in genericExprs) {
			final t = typeof(genericExpr, info, false);
			final defaultType = defaultValue(t, info);
			args.push(defaultType);
		}
	}*/
	return args;
}

function typeFunctionLiteral(args:Array<Expr>, params:Array<GoType>, results:Array<GoType>, x:Expr, info:Info):Expr {
	final funcArgs = params.map(param -> switch param {
		case _var(name, _.get() => type):
			({
				name: name,
				type: toComplexType(type, info),
			} : FunctionArg);
		default:
			throw info.panic() + "param not var: " + param;
	});
	final exprArgs = funcArgs.map(arg -> macro $i{arg.name});
	if (funcArgs.length > 0 && isRestType(funcArgs[funcArgs.length - 1].type)) {
		exprArgs[exprArgs.length - 1] = macro...$e{exprArgs[exprArgs.length - 1]};
	}
	final ret = getReturn(results, info);
	var expr = macro $x($a{args.concat(exprArgs)});
	if (!isVoid(ret))
		expr = macro return $expr;
	return toExpr(EFunction(FAnonymous, {
		ret: ret,
		args: funcArgs,
		expr: expr,
	}));
}

private function toAnyInterface(x:Expr, t:GoType, info:Info,needWrapping:Bool=true):Expr {
	if (isRef(t))
		t = getElem(t);
	switch t {
		case named(_, _, _, _):
			if (!isInterface(t) && !isAnyInterface(t) && needWrapping) {
				x = wrapperExpr(t, x, info);
			}
		case basic(kind):
			switch kind {
				case untyped_nil_kind:
					return macro(null : stdgo.AnyInterface);
				default:
			}
		default:
	}
	return macro stdgo.Go.toInterface($x);
}

private function toReflectType(t:GoType, info:Info, paths:Array<String>, equalityBool:Bool):Expr {
	return switch t {
		case typeParam(name, params):
			final name = makeString(name);
			final params = macro [];
			macro stdgo._internal.internal.reflect.Reflect.GoType.typeParam($name, {get: () -> params});
		case refType(_.get() => elem):
			final elem = toReflectType(elem, info, paths.copy(), equalityBool);
			macro stdgo._internal.internal.reflect.Reflect.GoType.refType({get: () -> $elem});
		case mapType(_.get() => key, _.get() => value):
			final key = toReflectType(key, info, paths.copy(), equalityBool);
			final value = toReflectType(value, info, paths.copy(), equalityBool);
			macro stdgo._internal.internal.reflect.Reflect.GoType.mapType({get: () -> $key}, {get: () -> $value});
		case pointerType(_.get() => elem):
			final elem = toReflectType(elem, info, paths.copy(), equalityBool);
			macro stdgo._internal.internal.reflect.Reflect.GoType.pointerType({get: () -> $elem});
		case arrayType(_.get() => elem, len):
			final elem = toReflectType(elem, info, paths.copy(), equalityBool);
			final len = toExpr(EConst(CInt('$len')));
			macro stdgo._internal.internal.reflect.Reflect.GoType.arrayType({get: () -> $elem}, $len);
		case sliceType(_.get() => elem):
			final elem = toReflectType(elem, info, paths.copy(), equalityBool);
			macro stdgo._internal.internal.reflect.Reflect.GoType.sliceType({get: () -> $elem});
		case basic(kind):
			final kind:String = kind;
			macro stdgo._internal.internal.reflect.Reflect.GoType.basic($i{kind});
		case _var(name, _.get() => type):
			toReflectType(type, info, paths.copy(), equalityBool);
		case chanType(dir, _.get() => elem):
			final dir = toExpr(EConst(CInt('$dir')));
			final elem = toReflectType(elem, info, paths.copy(), equalityBool);
			macro stdgo._internal.internal.reflect.Reflect.GoType.chanType($dir, {get: () -> $elem});
		case interfaceType(empty, methods):
			final empty = empty ? macro true : macro false;
			final methodExprs:Array<Expr> = [];
			/*for (method in methods) {
				final name = makeString(method.name);
				final t = toReflectType(method.type.get(), info, paths.copy(), equalityBool);
				final recv = macro stdgo._internal.internal.reflect.Reflect.GoType.invalidType; // toReflectType(method.recv.get(), info, paths.copy());
				methodExprs.push(macro new stdgo._internal.internal.reflect.Reflect.MethodType($name, {get: () -> $t}, {get: () -> $recv}));
			}*/
			final e = macro stdgo._internal.internal.reflect.Reflect.GoType.interfaceType($empty, ${macro $a{methodExprs}});
			e;
		case invalidType:
			macro stdgo._internal.internal.reflect.Reflect.GoType.invalidType;
		case named(path2, methods, type, _, _):
			final namedPath = namedTypePath(path2, info);
			namedPath.pack.push(namedPath.name);
			final path = makeString(namedPath.pack.join("."));
			final methodExprs:Array<Expr> = [];
			var t = macro stdgo._internal.internal.reflect.Reflect.GoType.invalidType;
			if (!paths.contains(path2)) {
				paths.push(path2);
				t = toReflectType(type, info, paths.copy(), equalityBool);
			}
			final e = macro stdgo._internal.internal.reflect.Reflect.GoType.named($path, ${macro $a{methodExprs}}, $t, false, {get: () -> null});
			e;
		case previouslyNamed(path):
			final path = makeString(path);
			macro stdgo._internal.internal.reflect.Reflect.GoType.previousNamed($path);
		case signature(variadic, params, results, _.get() => recv):
			if (equalityBool)
				return macro stdgo._internal.internal.reflect.Reflect.GoType.signature(false, {get: () -> null}, {get: () -> null}, {get: () -> null});
			final variadic = variadic ? macro true : macro false;
			final params = macro $a{params.get().map(param -> toReflectType(param, info, paths.copy(), equalityBool))};
			final results = macro $a{results.get().map(result -> toReflectType(result, info, paths.copy(), equalityBool))};
			final recv = macro stdgo._internal.internal.reflect.Reflect.GoType.invalidType; // toReflectType(recv, info, paths.copy());
			macro stdgo._internal.internal.reflect.Reflect.GoType.signature($variadic, {get: () -> $params}, {get: () -> $results}, {get: () -> $recv});
		case structType(fields):
			var exprs:Array<Expr> = [];
			for (field in fields) {
				final name = makeString(field.name);
				final embedded = field.embedded ? macro true : macro false;
				final tag = makeString(field.tag);
				final t = toReflectType(field.type.get(), info, paths.copy(), equalityBool);
				exprs.push(macro {
					name: $name,
					embedded: $embedded,
					tag: $tag,
					type: {get: () -> $t},
					optional: false,
				});
			}
			var expr = macro $a{exprs};
			macro stdgo._internal.internal.reflect.Reflect.GoType.structType($expr);
		case tuple(len, _.get() => vars):
			final len = toExpr(EConst(CInt('$len')));
			final vars = [for (v in vars) toReflectType(v, info, paths.copy(), equalityBool)];
			macro stdgo._internal.internal.reflect.Reflect.GoType.tuple($len, $a{vars});
	}
}

private function getLocalType(hash:UInt, underlying:GoType, info:Info):GoType {
	return info.locals.exists(hash) ? info.locals.get(hash) : underlying;
}

private function getTuple(vars:Array<Dynamic>, info:Info):Array<GoType> {
	var tuples:Array<GoType> = [];
	if (vars == null)
		return [];
	var index = 0;
	for (v in vars) {
		final t = typeof(v.type, info, false);
		if (v.names != null) {
			if (v.names.length == 0) {
				tuples.push(t);
				continue;
			}
			for (name in (v.names : Array<String>)) {
				tuples.push(_var(name, {get: () -> t}));
			}
		} else {
			if (t == invalidType)
				trace("v:", v.type.id, "\n", t);
			if (v.name == "_" || v.name == "") {
				tuples.push(_var("_" + index, {get: () -> t}));
				index++;
				continue;
			}
			tuples.push(_var(v.name, {get: () -> t}));
		}
	}
	return tuples;
}

private function hashTypeToExprType(e:Ast.Expr, info:Info):Ast.Expr {
	if (e == null)
		return null;
	return switch e.id {
		case "HashType":
			info.global.hashMap[e.hash];
		default:
			e;
	}
}

private function typeof(e:Ast.Expr, info:Info, isNamed:Bool, paths:Array<String> = null):GoType {
	if (e == null)
		return invalidType;
	if (paths == null)
		paths = [];
	var t = switch e.id {
		case "HashType":
			typeof(info.global.hashMap[e.hash], info, isNamed, paths.copy());
		case "TypeParam":
			var constraint = hashTypeToExprType(e.constraint, info);
			if (constraint != null && constraint.embeds == null) {
				constraint = hashTypeToExprType(constraint.underlying, info);
			}
			if (constraint == null || constraint.embeds == null || constraint.embeds.length == 0) {
				typeParam(e.name, [interfaceType(true, [])]);
			} else {
				final terms:Array<Dynamic> = hashTypeToExprType(constraint.embeds[0], info).terms;
				if (terms == null) {
					typeof(constraint.embeds[0], info, false, paths.copy());
				} else {
					typeParam(e.name, [
						for (term in terms) {
							typeof(term.type, info, false, paths.copy());
						}
					]);
				}
			}
		case "Signature":
			final params = {get: () -> getTuple(hashTypeToExprType(e.params, info) ?.vars, info)};
			final results = {get: () -> getTuple(hashTypeToExprType(e.results, info) ?.vars, info)};
			final recv = {get: () -> typeof(e.recv, info, false, paths.copy())};
			final sigTypeParams:Array<Dynamic> = e.typeParams;
			final typeParams = {
				get: () -> {
					final typeParams = [];
					if (sigTypeParams != null) {
						for (param in sigTypeParams) {
							typeParams.push(typeof(param, info, false, paths.copy()));
						}
					}
					typeParams;
				}
			};
			GoType.signature(e.variadic, params, results, recv, typeParams);
		case "Named":
			final path:String = e.path;
			if (path == null) {
				trace("null named path: " + e);
				throw info.panic() + path;
			}
			var underlying = invalidType;
			final methods:Array<MethodType> = [];
			final params:Array<GoType> = [];
			// trace(path);
			if (!paths.contains(path)) {
				paths.push(path);
				underlying = {
					if (e.hash == null) {
						invalidType;
					} else if (info.locals.exists(e.hash)) {
						getLocalType(e.hash, null, info);
					} else if (info.localUnderlyingNames.exists(path)) {
						info.localUnderlyingNames[path];
					} else {
						typeof(e.underlying, info, true, paths.copy());
					}
				};
				if (e.methods != null) {
					for (method in (e.methods : Array<Dynamic>)) {
						final recv = method.recv;
						final type = method.type;
						final name = formatHaxeFieldName(method.name, info);
						methods.push({
							name: name,
							type: {get: () -> typeof(type, info, false, paths.copy())},
							recv: {get: () -> typeof(recv, info, false, paths.copy())},
						});
					}
				}
				if (e.params != null && e.params.length > 0) {
					for (param in (e.params : Array<Dynamic>)) {
						final t = typeof(param, info, false, paths.copy());
						params.push(t);
					}
				}
			}
			named(path, methods, underlying, e.alias, {get: () -> params});
		case "Basic":
			if (e.kind == 0) {
				invalidType;
			} else {
				var kind:Ast.BasicKind = e.kind;
				switch kind {
					case untyped_int_kind:
						kind = uint64_kind;
					case untyped_float_kind:
						kind = float64_kind;
					case untyped_complex_kind:
						kind = complex128_kind;
					case untyped_bool_kind:
						kind = bool_kind;
					case untyped_string_kind:
						kind = string_kind;
					case untyped_rune_kind:
						kind = int32_kind;
					default:
				}
				basic(kind);
			}
		case "Tuple":
			if (e.len > 1) {
				final t = [for (v in (e.vars : Array<Dynamic>)) typeof(v, info, false, paths.copy())];
				tuple(e.len, {get: () -> t});
			} else {
				typeof(e.vars[0], info, false, paths.copy());
			}
		case "Var":
			if (e.name == "_" || e.name == "")
				return typeof(e.type, info, false, paths.copy());
			_var(e.name, {get: () -> typeof(e.type, info, false, paths.copy())});
		case "Interface":
			if (e.embeds.length == 1 && e.embeds[0].id == "Union") {
				typeof(e.embeds[0], info, false, paths.copy());
			} else {
				final methods:Array<MethodType> = [];
				if (e.methods != null) {
					for (method in (e.methods : Array<Dynamic>)) {
						methods.push({
							name: formatHaxeFieldName(method.name, info),
							type: {get: () -> typeof(method.type, info, false, paths.copy())},
							recv: {get: () -> typeof(method.recv, info, false, paths.copy())},
						});
					}
				}
				final underlying = interfaceType(e.empty, methods);
				final t = getLocalType(e.hash, underlying, info);
				t;
			}
		case "Slice":
			sliceType({get: () -> typeof(e.elem, info, false, paths.copy())});
		case "Array":
			arrayType({get: () -> typeof(e.elem, info, false, paths.copy())}, e.len);
		case "Pointer":
			pointerType({get: () -> typeof(e.elem, info, false, paths.copy())});
		case "Map":
			mapType({get: () -> typeof(e.key, info, false, paths.copy())}, {get: () -> typeof(e.elem, info, false, paths.copy())});
		case "Struct":
			var t:GoType = structType([
				for (field in (e.fields : Array<Dynamic>))
					{
						name: formatHaxeFieldName(field.name, info),
						type: {get: () -> typeof(field.type, info, false, paths.copy())},
						embedded: field.embedded,
						tag: field.tag == null ? "" : field.tag,
						optional: field.name == "_",
					}

			]);
			if (!isNamed) {
				t = getLocalType(e.hash, t, info);
			}
			t;
		case "Chan":
			chanType(e.dir, {get: () -> typeof(e.elem, info, false, paths.copy())});
		case null:
			return invalidType;
		case "CallExpr":
			final e:Ast.CallExpr = e;
			var type = typeof(e.type, info, false, paths.copy());
			switch type {
				case signature(_, _, _.get() => results, _):
					return results[0];
				default:
					return type;
			}
		case "BasicLit":
			typeof(e.type, info, false, paths.copy());
		case "Ident":
			final e:Ast.Ident = e;
			typeof(e.type, info, false, paths.copy());
		case "CompositeLit":
			final e:Ast.CompositeLit = e;
			final t = typeof(e.type, info, false, paths.copy());
			t;
		case "SelectorExpr":
			final e:Ast.SelectorExpr = e;
			var t = typeof(e.type, info, false, paths.copy());
			if (e.recv != null) {
				final recv = typeof(e.recv, info, false, paths.copy());
				switch t {
					case signature(variadic, params, results, _.get() => sigRecv, typeParams):
						if (sigRecv == invalidType) {
							t = signature(variadic, params, results, {get: () -> recv}, typeParams);
						}
					default:
				}
			}
			t;
		case "IndexExpr":
			final e:Ast.IndexExpr = e;
			typeof(e.type, info, false, paths.copy());
		case "IndexListExpr":
			final e:Ast.IndexListExpr = e;
			typeof(e.type, info, false, paths.copy());
		case "BinaryExpr":
			final e:Ast.BinaryExpr = e;
			typeof(e.type, info, false, paths.copy());
		case "StarExpr":
			final e:Ast.StarExpr = e;
			typeof(e.type, info, false, paths.copy());
		case "UnaryExpr":
			final e:Ast.UnaryExpr = e;
			switch e.op {
				case ARROW:
					getElem(typeof(e.x, info, false, paths.copy()));
				case AND:
					pointerType({get: () -> typeof(e.x, info, false, paths.copy())});
				default:
					typeof(e.x, info, false, paths.copy());
			}
		case "TypeAssertExpr":
			final e:Ast.TypeAssertExpr = e;
			typeof(e.type, info, false, paths.copy());
		case "FuncLit":
			var e:Ast.FuncLit = e;
			typeof(e.type.type, info, false, paths.copy());
		case "KeyValueExpr":
			final e:Ast.KeyValueExpr = e;
			mapType({get: () -> typeof(e.key, info, false, paths.copy())}, {get: () -> typeof(e.value, info, false, paths.copy())});
		case "SliceExpr":
			final e:Ast.SliceExpr = e;
			typeof(e.type, info, false, paths.copy());
		case "ParenExpr":
			final e:Ast.ParenExpr = e;
			typeof(e.x, info, false, paths.copy());
		case "InterfaceType":
			typeof(e.type, info, false, paths.copy());
		case "ArrayType":
			final e:Ast.ArrayType = e;
			final elem = typeof(e.elt, info, false, paths.copy());
			final v = hashTypeToExprType(e.type, info);
			final id = v.id;
			switch id {
				case "Array":
					final len = v.len;
					arrayType({get: () -> elem}, len);
				case "Slice":
					sliceType({get: () -> elem});
				case "Basic":
					invalidType;
				default:
					trace(v);
					throw info.panic() + "unknown Array id: " + id;
			}
		case "MapType":
			final e:Ast.MapType = e;
			final keyType = typeof(e.key, info, false, paths.copy());
			final valueType = typeof(e.value, info, false, paths.copy());
			mapType({get: () -> keyType}, {get: () -> valueType});
		case "ChanType":
			final e:Ast.ChanType = e;
			chanType(e.type.dir, {get: () -> typeof(e.value, info, false, paths.copy())});
		case "StructType":
			final e:Ast.StructType = e;
			structType(typeFieldListFieldTypes(e.fields, info));
		case "FuncType":
			final e:Ast.FuncType = e;
			final list = hashTypeToExprType(e.params.list, info);
			final params = {get: () -> getTuple(list, info)};
			final results = e.results == null ? {get: () -> []} : {get: () -> getTuple(hashTypeToExprType(e.results.list, info), info)};
			final recv = {get: () -> typeof(e.type.recv, info, false, paths.copy())};
			var variadic = false;
			if (e.params.list.length > 0) {
				if (list[(list.length : Int) - 1].type.id == "Ellipsis")
					variadic = true;
			}
			signature(variadic, params, results, recv, params);
		// typeof(e.type, info, false, paths.copy());
		case "Ellipsis":
			typeof(e.type, info, false, paths.copy());
		default:
			throw info.panic() + "unknown typeof expr: " + e.id;
	}
	if (t == null)
		return null;
	return switch t {
		case pointerType(_.get() => elem):
			isRefValue(elem) ? refType({get: () -> elem}) : t;
		default:
			t;
	}
}

private function getGlobalPath(info:Info):String {
	var globalPath = info.global.path;
	if (StringTools.endsWith(info.global.path, ".pkg")) {
		globalPath = globalPath.substr(0, globalPath.length - 4);
	}
	if (globalPath == "") {
		return "_internal";
	}
	final globalPathOld = globalPath;
	globalPath = "_internal." + globalPath;
	if (stdgoList.indexOf(toGoPath(globalPathOld)) != -1) { // haxe only type, otherwise the go code references Haxe
		globalPath = "stdgo." + globalPath;
	}
	return globalPath;
}

function toGoPath(path:String):String {
	return StringTools.replace(path, ".", "/");
}

private function toHaxePath(path:String):String {
	return StringTools.replace(path, "/", ".");
}

private function namedTypePath(path:String, info:Info):TypePath { // other parseTypePath
	path = StringTools.replace(path, "go-", "");
	//path = StringTools.replace(path, "_test.", ".");
	final startCommandLineArg = "command-line-arguments.";
	if (path.substr(0, startCommandLineArg.length) == startCommandLineArg) {
		path = path.substr(startCommandLineArg.length);
	}

	var index = path.indexOf("[");
	final params:Array<TypeParam> = [];
	if (index != -1) {
		path = path.substr(0, index); // remove type param from path name
	}
	var last = path.lastIndexOf("/") + 1;
	var part = path.substr(last);
	var split = part.lastIndexOf(".");
	var pkg = part.substr(0, split);
	final clName = part.substr(split + 1);
	var cl = className(clName, info);
	final basicType = classToBuiltinTypePath(clName, info);
	if (basicType != null)
		return basicType;
	path = path.substr(0, last) + pkg;
	if (path == "command-line-arguments")
		path = "";
	path = normalizePath(path);

	var pack = path.split("/");
	pack.unshift("_internal");
	final path = toGoPath(path);
	if (stdgoList.indexOf(path) != -1) { // haxe only type, otherwise the go code references Haxe
		pack.unshift("stdgo");
	}
	if (last == 0 && split == -1) {
		return {pack: [], name: splitDepFullPathName(cl, info)};
	}
	// for split deps
	pack.push(title(pkg));
	final last = pack.pop();
	pack.push(last + "_" + cl.toLowerCase());
	return {pack: pack, name: cl};
}

private function toComplexType(e:GoType, info:Info):ComplexType {
	if (e == null)
		return null;
		//return invalidComplexType();
	return switch e {
		case refType(_.get() => elem):
			final ct = toComplexType(elem, info);
			TPath({pack: ["stdgo"], name: "Ref", params: [TPType(ct)]});
		case basic(kind):
			switch kind {
				case int64_kind: TPath({pack: ["stdgo"], name: "GoInt64"});
				case int32_kind: TPath({pack: ["stdgo"], name: "GoInt32"});
				case int16_kind: TPath({pack: ["stdgo"], name: "GoInt16"});
				case int8_kind: TPath({pack:  ["stdgo"], name: "GoInt8"});

				case int_kind: TPath({pack: ["stdgo"], name: "GoInt"});
				case uint_kind: TPath({pack: ["stdgo"], name: "GoUInt"});

				case uint64_kind: TPath({pack: ["stdgo"], name: "GoUInt64"});
				case uint32_kind: TPath({pack: ["stdgo"], name: "GoUInt32"});
				case uint16_kind: TPath({pack: ["stdgo"], name: "GoUInt16"});
				case uint8_kind: TPath({pack: ["stdgo"], name: "GoUInt8"});

				case string_kind: TPath({pack: ["stdgo"], name: "GoString"});
				case complex64_kind: TPath({pack: ["stdgo"], name: "GoComplex64"});
				case complex128_kind: TPath({pack: ["stdgo"], name: "GoComplex128"});
				case float32_kind: TPath({pack: ["stdgo"], name: "GoFloat32"});
				case float64_kind: TPath({pack: ["stdgo"], name: "GoFloat64"});
				case bool_kind: TPath({pack: [], name: "Bool"});

				case uintptr_kind: TPath({pack: ["stdgo"], name: "GoUIntptr"});

				case untyped_int_kind, untyped_bool_kind, untyped_float_kind, untyped_rune_kind, untyped_complex_kind,
					untyped_string_kind: throw info.panic() + "untyped kind: "
						+ kind;
				case untyped_nil_kind: null;
				case unsafepointer_kind: TPath({pack: ["stdgo", "_internal", "unsafe", "Unsafe"], name: "UnsafePointer"});
				default:
					throw info.panic() + "unknown kind to complexType: " + kind;
			}
		case interfaceType(empty, methods):
			if (empty)
				return anyInterfaceType();
			//trace("methods: " + methods.length, methods.map(method -> method.name));
			//return TPath({pack: [], name: "FailType"});
			// only being triggered on extern packages (stdgoExterns.json) in limited circumstances so it's not important.
			return anyInterfaceType();
			//throw info.panic() + "non empty interface";
		case named(path, _, underlying, _, _.get() => params):
			//trace(path);
			//trace(info.renameClasses);
			if (path == "comparable")
				return null;
			if (path == null) {
				trace("underlying null path: " + printer.printComplexType(toComplexType(underlying, info)));
				throw info.panic() + path;
			}
			final p = namedTypePath(path, info);
			if (params != null)
				p.params = params.map(param -> TPType(toComplexType(param, info)));
			TPath(p);
		case sliceType(_.get() => elem):
			final ct = toComplexType(elem, info);
			var params = [TPType(ct)];
			if (isInvalidComplexType(ct))
				params = [TPType(TPath({name: "Dynamic", pack: []}))];
			TPath({pack: ["stdgo"], name: "Slice", params: params});
		case arrayType(_.get() => elem, len):
			final ct = toComplexType(elem, info);
			TPath({pack: ["stdgo"], name: "GoArray", params: [TPType(ct)]});
		case mapType(_.get() => key, _.get() => value):
			final ctKey = toComplexType(key, info);
			final ctValue = toComplexType(value, info);
			TPath({pack: ["stdgo"], name: "GoMap", params: [TPType(ctKey), TPType(ctValue)]});
		case invalidType:
			invalidComplexType();
		case pointerType(_.get() => elem):
			final ct = toComplexType(elem, info);
			TPath({pack: ["stdgo"], name: "Pointer", params: [TPType(ct)]});
		case chanType(dir, _.get() => elem):
			final ct = toComplexType(elem, info);
			TPath({pack: ["stdgo"], name: "Chan", params: [TPType(ct)]});
		case structType(fields):
			var fields = typeFields(fields, info, null, false);
			TAnonymous([
				for (field in fields)
					{
						name: field.name,
						pos: null,
						kind: field.kind,
					}
			]);
		case signature(variadic, _.get() => params, _.get() => results, _.get() => recv):
			var args:Array<ComplexType> = [];
			for (param in params) {
				args.push(toComplexType(param, info));
			}
			var ret:ComplexType = getReturn(results, info);
			if (variadic) {
				var last = args.pop();
				switch last {
					case TPath(p):
						p.name = "Rest";
						p.pack = ["haxe"];
						p.sub = null;
						last = TPath(p);
					default:
				}
				args.push(last);
			}
			TFunction(args, ret);
		case _var(_, _.get() => type):
			toComplexType(type, info);
		case typeParam(name, _):
			return TPath({pack: [], name: "Dynamic"});
		case tuple(len, _.get() => vars):
			var fields:Array<Field> = [];
			for (i in 0...vars.length) {
				final t = toComplexType(vars[i], info);
				fields.push({name: '_$i', pos: null, kind: FVar(t)});
			}
			TAnonymous(fields);
		default:
			throw info.panic() + "unknown goType to complexType: " + e;
	}
}

private function getReturn(results:Array<GoType>, info:Info):ComplexType {
	if (results.length == 0) {
		return TPath({name: "Void", pack: []});
	} else if (results.length == 1) {
		return toComplexType(results[0], info);
	} else {
		final fields:Array<Field> = [];
		for (i in 0...results.length) {
			switch results[i] {
				case _var(_, _.get() => type):
					fields.push({name: "_" + i, pos: null, kind: FVar(toComplexType(type, info))});
				default:
					fields.push({name: "_" + i, pos: null, kind: FVar(toComplexType(results[i], info))});
			}
		}
		return TAnonymous(fields);
	}
}

private function toGoType(expr:Expr):Expr {
	switch expr.expr {
		case EConst(c):
			switch c {
				case CString(_, _):
					return macro($expr : stdgo.GoString);
				case CInt(_):
					return macro($expr : stdgo.GoInt);
				case CFloat(_):
					return macro($expr : stdgo.GoFloat64);
				default:
			}
		default:
	}
	return expr;
}

private function typeRest(expr:Expr, t:GoType, info:Info):Expr {
	expr = toGoType(expr);
	t = getArrayElem(t);
	final ct = toComplexType(t, info);
	return macro...($expr : Array<$ct>);
}

private function typeBasicLit(expr:Ast.BasicLit, info:Info):ExprDef {
	if (expr.basic) {
		var e = switch expr.token {
			case CHAR:
				final const = makeString(getRune(expr.value));
				final ct = TPath({name: "GoRune", pack: []});
				macro($const.code : $ct);
			case STRING:
				if (!expr.raw) {
					makeStringLit(decodeEscapeSequences(expr.value));
				} else {
					makeString(rawEscapeSequences(expr.value));
				}
			case FLOAT:
				final e = toExpr(EConst(CFloat(expr.value, "f64")));
				macro($e : stdgo.GoFloat64);
			case IMAG:
				final index = expr.value.indexOf("i");
				var imagFloat = expr.value.substr(0, index);
				var realFloat = expr.value.substr(index + 1);
				final imag = toExpr(EConst(CFloat(imagFloat, "f64")));
				final real = toExpr(EConst(CFloat(realFloat, "f64")));
				macro new stdgo.GoComplex128($real, $imag);
			case INT:
				var e = toExpr(EConst(CInt(expr.value, "i32")));
				e;
			default:
				throw info.panic() + "unknown token: " + expr.token;
		}
		final t = typeof(expr.type, info, false);
		final ct = toComplexType(t, info);
		switch getUnderlying(t) {
			case basic(uintptr_kind): // uintptr
			e = macro (new stdgo.GoUIntptr($e) : $ct);
			case invalidType:
			default:
				e = macro($e : $ct);
		}
		return e.expr;
	}
	return if (expr.info & Ast.BasicInfo.isFloat != 0) {
		ECheckType(toExpr(EConst(CFloat(expr.value))), TPath({name: "GoFloat64", pack: ["stdgo"]}));
	} else if (expr.info & Ast.BasicInfo.isInteger != 0) {
		final t = typeof(expr.type, info, false);
		final underlyingType = getUnderlying(t);
		final kind = switch underlyingType {
			case basic(int64_kind):
				"i64";
			case basic(uint_kind), basic(uint32_kind), basic(uint8_kind), basic(uint16_kind):
				"u32";
			case basic(uint64_kind):
				"i64";
			default:
				"i32";
		}
		final e = toExpr(switch underlyingType {
			case basic(uint64_kind):
				final value = haxe.UInt64Helper.parseString(expr.value);
				final s = @:privateAccess (value : haxe.Int64).toString();
				EConst(CInt(s, "i64"));
			case basic(int64_kind):
				EConst(CInt(expr.value, "i64"));
			case basic(uint32_kind), basic(uint_kind):
				final value = haxe.Int64Helper.parseString(expr.value);
				EConst(CInt(Std.string(value.low), kind));
			default:
				EConst(CInt(expr.value));
		});
		final ct = toComplexType(t, info);
		final t = typeof(expr.type, info, false);
		switch getUnderlying(t) {
			case basic(uintptr_kind): // uintptr
				return (macro (new stdgo.GoUIntptr($e) : $ct)).expr;
			default:
		}
		// casting
		(macro($e : $ct)).expr;
	} else if (expr.info & Ast.BasicInfo.isComplex != 0) {
		final index = expr.value.indexOf("i");
		var imagFloat = expr.value.substr(0, index);
		var realFloat = expr.value.substr(index + 1);
		final imag = toExpr(EConst(CFloat(imagFloat, "f64")));
		final real = toExpr(EConst(CFloat(realFloat, "f64")));
		(macro new stdgo.GoComplex128($real, $imag)).expr;
	} else {
		trace(expr);
		(macro null).expr;
	}
}

private function rawEscapeSequences(value:String):String {
	var backslash = false;
	var i = 0;
	while (i < value.length) {
		if (backslash) {
			if (value.charCodeAt(i) != "\\".code) {
				value = value.substr(0, i) + "\\" + value.substr(i);
				i++;
			} else {
				value = value.substr(0, i) + "\\" + value.substr(i);
			}
			backslash = false;
			i++;
			continue;
		}
		if (value.charCodeAt(i) == "\\".code)
			backslash = true;
		i++;
	}
	if (backslash)
		value += "\\";
	return value;
}

private function getRune(value:String):String {
	var backslash = false;
	var i = 0;
	var buff = new StringBuf();
	while (i < value.length) {
		if (backslash) {
			final code = value.charCodeAt(i);
			switch code {
				case 'x'.code:
					return "\\u00" + value.substr(i + 1, 2);
				case '0'.code, '1'.code, '2'.code, '3'.code, '4'.code, '5'.code, '6'.code, '7'.code, '8'.code, '9'.code:
					var num = 0;
					for (j in 0...3) {
						final numCode = Std.parseInt(value.charAt(i + j));
						final expo = Std.int(Math.pow(8, 2 - j));
						num += numCode * expo;
					}
					var s:String = '$num';
					while (s.length < 3)
						s = '0$s';
					return '\\u0$s';
				case '"'.code:
					return '"';
				case 'a'.code:
					return "\\x07";
				case 'b'.code:
					return "\\u0008";
				case 'e'.code:
					return "\\x1B";
				case 'f'.code:
					return "\\x0C";
				case 'v'.code:
					return "\\x0B";
				case 'u'.code:
					return "\\u" + value.substr(i + 1, 4);
				case 'U'.code:
					return "\\u{" + value.substr(i + 1, 8) + "}";
				case 't'.code, 'r'.code, 'n'.code, "\\".code:
					return "\\" + String.fromCharCode(code);
				default:
					return value.substr(1);
			}
			backslash = false;
			i++;
			continue;
		}
		final code = value.charCodeAt(i);
		switch code {
			case "\\".code:
				backslash = true;
			//case "$".code:
			//	buff.add("$$");
			default:
				try {
					buff.addChar(code);
				} catch (_) {
					buff.addChar(97);
				}
		}
		i++;
	}

	if (backslash)
		return "\\";
	return value;
}

private function decodeEscapeSequences(value:String):Array<{?s:String, ?code:Int}> {
	var backslash = false;
	var i = 0;
	final values:Array<{?s:String, ?code:Int}> = [];
	var buff = new StringBuf();
	function escapeHex(value:Int) {
		if (buff.length > 0)
			values.push({s: buff.toString()});
		values.push({code: value});
		buff = new StringBuf();
	}
	while (i < value.length) {
		if (backslash) {
			final code = value.charCodeAt(i);
			switch code {
				case 'x'.code:
					// var hex = value.substr(i + 1, 2);
					var high = StringTools.fastCodeAt(value, i + 1);
					var low = StringTools.fastCodeAt(value, i + 2);
					high = (high & 0xF) + ((high & 0x40) >> 6) * 9;
					low = (low & 0xF) + ((low & 0x40) >> 6) * 9;
					final num = ((high << 4) | low) & 0xFF;
					escapeHex(num);
					i += 2;
				case '0'.code, '1'.code, '2'.code, '3'.code, '4'.code, '5'.code, '6'.code, '7'.code, '8'.code, '9'.code:
					var num = 0;
					for (j in 0...3) {
						final numCode = Std.parseInt(value.charAt(i + j));
						final expo = Std.int(Math.pow(8, 2 - j));
						num += numCode * expo;
					}
					escapeHex(num);
					i += 3;
				case '"'.code:
					buff.add('"');
				case 'a'.code:
					buff.add("\\x07");
				case 'b'.code:
					buff.add("\\x08");
				case 'e'.code:
					buff.add("\\x1B");
				case 'f'.code:
					buff.add("\\x0C");
				case 'v'.code:
					buff.add("\\x0B");
				case 'u'.code:
					buff.add("\\u" + value.substr(i + 1, 4));
					i += 4;
				case 'U'.code:
					buff.add("\\u{" + value.substr(i + 1, 8) + "}");
					i += 8;
				default:
					buff.add("\\" + String.fromCharCode(code));
			}
			backslash = false;
			i++;
			continue;
		}
		final code = value.charCodeAt(i);
		switch code {
			case "\\".code:
				backslash = true;
			//case "$".code:
			//	buff.add("$$");
			default:
				try {
					buff.addChar(code);
				} catch (_) {
					buff.addChar(97);
				}
		}
		i++;
	}
	if (backslash)
		buff.add("\\");
	if (buff.length > 0)
		values.push({s: buff.toString()});
	return values;
}

private function typeUnaryExpr(expr:Ast.UnaryExpr, info:Info):ExprDef {
	var x = typeExpr(expr.x, info);
	final t = typeof(expr, info, false); // use expr type potentially instead of expr.x?
	final isNamed = isNamed(t);
	if (expr.op == AND) {
		return switch t {
			case refType(_.get() => elem):
				if (elem == invalidType) {
					return (macro stdgo.Go.pointer($x)).expr;
				}else{
					final t = typeof(expr, info, false);
					final ct = toComplexType(t, info);
					return (macro(stdgo.Go.setRef($x) : $ct)).expr;
				}
			case pointerType(_):
				return (macro stdgo.Go.pointer($x)).expr;
			default:
				x.expr;
		}
	} else {
		final op = typeUnOp(expr.op);
		if (op == null)
			return switch expr.op {
				case XOR: (macro(-1 ^ $x)).expr;
				case ARROW: (macro $x.__get__()).expr; // $chan.get
				default: x.expr;
			}
		switch expr.op {
			case SUB:
				switch x.expr {
					case ECheckType(e, t):
						switch e.expr {
							case EConst(c):
								switch c {
									case CInt(v): return ECheckType(toExpr(EConst(CInt('-$v'))), t);
									case CFloat(f): return ECheckType(toExpr(EConst(CFloat('-$f'))), t);
									case CString(s, kind): return ECheckType(makeString('-$s'), t);
									default:
								}
							default:
						}
					default:
				}
			default:
		}
		var e = toExpr(EUnop(op, false, x));
		if (isNamed)
			e = assignTranslate(getUnderlying(t), t, e, info);
		return e.expr;
	}
}

/*
	For struct literals the following rules apply:

	A key must be a field name declared in the struct type.
	An element list that does not contain any keys must list an element for each struct field in the order in which the fields are declared.
	If any element has a key, every element must have a key.
	An element list that contains keys does not need to have an element for each struct field. Omitted fields get the zero value for that field.
	A literal may omit the element list; such a literal evaluates to the zero value for its type.
	It is an error to specify an element for a non-exported field of a struct belonging to a different package.
 */ /*
	For array and slice literals the following rules apply:

	Each element has an associated integer index marking its position in the array.
	An element with a key uses the key as its index. The key must be a non-negative constant representable by a value of type int; and if it is typed it must be of integer type.
	An element without a key uses the previous element's index plus one. If the first element has no key, its index is zero.
 */
private function hasKeyValueExpr(elts:Array<Ast.Expr>) {
	for (e in elts) {
		if (e.id == "KeyValueExpr")
			return true;
	}
	return false;
}

private function typeCompositeLit(expr:Ast.CompositeLit, info:Info):ExprDef {
	var setToSliceType = false;
	var sliceType:GoType = null;
	if (expr.type == null) {
		// catch #NULL_TYPE from goto
		//trace(expr.type,expr.exprType.id);
		if (expr.exprType.id == "ArrayType") {
			setToSliceType = true;
			switch expr.exprType.elt.name {
				case "rune":
					sliceType = GoType.basic(int32_kind);
				case "int":
					sliceType = GoType.basic(int_kind);
				case "string":
					sliceType = GoType.basic(string_kind);
				default:
					//throw "unknown expr.exprType.elt.name: " + expr.exprType.elt.name;
			}
		}else{
			return (macro @:invalid_compositelit_null null).expr;
		}
	}
	var type = typeof(expr.type, info, false);
	if (setToSliceType || type == null) {
		type = GoType.sliceType({get: () -> sliceType}); 
	}
	//var ct = typeExprType(expr.type, info);
	var ct = toComplexType(type, info);
	final e = compositeLit(type, ct, expr, info);
	// trace(printer.printExpr({expr: e, pos: null}));
	return e;
}

function getTypePath(ct:ComplexType, info:Info):TypePath {
	switch ct {
		case TPath(p):
			return p;
		default:
			return null;
	}
}

function title(name:String):String {
	final name = name.charAt(0).toUpperCase() + name.substring(1);
	if (name == "Atomic")
		return "Atomic_";
	if (name == "Environ")
		return "Environ_";
	return name;
}

function compositeLit(type:GoType, ct:ComplexType, expr:Ast.CompositeLit, info:Info):ExprDef {
	final keyValueBool:Bool = hasKeyValueExpr(expr.elts);
	final underlying = getUnderlying(type);
	if (isInvalid(underlying)) {
		return (macro @:invalid_compositelit null).expr;
	}
	switch removeTypeParam(underlying) {
		case interfaceType(_, _):
			//trace(underlying);
			//trace(type);
			return (macro @:compositeLit_interface null).expr;
		case refType(_.get() => elem):
			final e = toExpr(compositeLit(elem, complexTypeElem(ct), expr, info));
			return e.expr;
		case pointerType(_.get() => elem):
			final e = toExpr(compositeLit(elem, complexTypeElem(ct), expr, info));
			return (macro stdgo.Go.pointer($e)).expr;
		case structType(fields):
			var objectFields:Array<ObjectField> = [];
			var fields = fields.copy();
			var isAlias = false;
			switch type {
				case named(_, _, _, alias, _):
					if (alias) {
						isAlias = true;
					}
				case structType(_):
					isAlias = true;
				default:
			}
			if (!isAlias) {
				switch ct {
					case TPath(p):
						if (p.pack.length == 0 && StringTools.startsWith(p.name, "T__struct_")) isAlias = true;
					default:
				}
			}
			if (keyValueBool) {
				final fields = fields.copy();
				for (i in 0...expr.elts.length) {
					final elt:Ast.KeyValueExpr = expr.elts[i];
					final key = formatHaxeFieldName(elt.key.name, info);
					for (field in fields) {
						if (field.name == key) {
							final value = assignTranslate(typeof(elt.value, info, false), field.type.get(), typeExpr(elt.value, info), info);
							objectFields.push({
								field: field.name,
								expr: value,
							});
							if (isAlias)
								fields.remove(field);
							break;
						}
					}
				}
				if (isAlias) {
					for (field in fields) {
						objectFields.push({
							field: field.name,
							expr: defaultValue(field.type.get(), info, true),
						});
					}
				}
				var e = toExpr(EObjectDecl(objectFields));
				return (macro($e : $ct)).expr;
			} else {
				final args = [
					for (i in 0...expr.elts.length)
						assignTranslate(typeof(expr.elts[i], info, false), fields[i].type.get(), typeExpr(expr.elts[i], info), info)
				];
				if (isAlias && args.length < fields.length) {
					for (i in args.length...fields.length) {
						args.push(defaultValue(fields[i].type.get(), info, true));
					}
				}
				if (isAlias) {
					var objectFields:Array<ObjectField> = [];
					for (i in 0...fields.length) {
						objectFields.push({
							field: fields[i].name,
							expr: args[i],
						});
					}
					var e = toExpr(EObjectDecl(objectFields));
					return (macro($e : $ct)).expr;
				} else {
					final p = getTypePath(ct, info);
					// generic named type needs fields filled in
					switch type {
						case named(_, _, _, _, _.get() => params):
							// guard against extern package named types without params such as reflect.Value
							if (params != null && params.length > 0) {
								for (i in args.length...fields.length) {
									args.push(defaultValue(fields[i].type.get(), info, true));
								}
							}
						default:
					}
					final e = macro new $p($a{args});
					return (macro($e : $ct)).expr;
				}
			}
		case sliceType(_.get() => elem):
			return compositeLitList(elem, keyValueBool, -1, underlying, toComplexType(type, info), expr, info).expr;
		case arrayType(_.get() => elem, len):
			return compositeLitList(elem, keyValueBool, len, underlying, toComplexType(type, info), expr, info).expr;
		case mapType(_.get() => var keyType, _.get() => valueType):
			return compositeLitMapList(keyType, valueType, underlying, toComplexType(type, info), expr, info).expr;
		default:
			throw info.panic() + "not supported CompositeLit type: " + underlying;
	}
}

private function compositeLitMapList(keyType:GoType, valueType:GoType, underlying:GoType, ct:ComplexType, expr:Ast.CompositeLit, info:Info):Expr {
	var params:Array<Expr> = [];
	final keys:Array<Expr> = [];
	final values:Array<Expr> = [];
	function run(elt:Ast.Expr) {
		if (elt.id == "CompositeLit") {
			switch getUnderlying(valueType) {
				case interfaceType(empty, _):
					if (empty) {
						return typeExpr(elt, info);
					}
				case basic(_):
					return typeExpr(elt, info);
				default:
			}
			final t = typeof(elt, info, false);
			final ct = toComplexType(t, info);
			return toExpr(compositeLit(t, ct, elt, info));
		}
		return typeExpr(elt, info);
	}
	final exprs:Array<Expr> = [];
	for (elt in expr.elts) {
		final eltKeyType = typeof(elt.key, info, false);
		final eltValueType = typeof(elt.value, info, false);
		final key = assignTranslate(eltKeyType, keyType, run(elt.key), info, false);
		final value = assignTranslate(eltValueType, valueType, run(elt.value), info, false);
		exprs.push(macro x.set($key, $value));
	}
	final keyComplexType = toComplexType(keyType, info);
	final valueComplexType = toComplexType(valueType, info);
	return createMap(underlying, keyComplexType, valueComplexType, exprs, info, ct);
}

function createMap(t:GoType, keyComplexType:ComplexType, valueComplexType:ComplexType, exprs:Array<Expr>, info:Info, ct:ComplexType):Expr {
	var k:GoType = null;
	var v:GoType = null;
	switch getUnderlying(t) {
		case mapType(_.get() => var keyType, _.get() => var valueType):
			k = keyType;
			v = valueType;
		default:
			throw info.panic() + "underlying t invalid type createMap";
	}
	final keyT = toReflectType(k, info, [], true);
	final defaultValueExpr = defaultValue(v, info, true);
	var isObjectMap = false;
	var isUIntptrMap = false;
	function createRefPointerMap(name:String) {
		final keyElemComplexType = keyComplexType;
		final p:TypePath = {name: "GoMap", sub: name, pack: ["stdgo"], params: [TPType(keyComplexType), TPType(valueComplexType)]};
		return macro({
			final x = new $p();
			@:mergeBlock $b{exprs};
			cast x;
		} : stdgo.GoMap<$keyComplexType, $valueComplexType>);
	}
	final uk = getUnderlying(k);
	final p:TypePath = {name: "GoMap", pack: ["stdgo"], params: [TPType(keyComplexType), TPType(valueComplexType)]};
	switch uk {
		case interfaceType(empty, _):
			if (!empty) {
				isObjectMap = true;
			} else {
				return macro({
					final x = new stdgo.GoMap.GoAnyInterfaceMap<$valueComplexType>();
					x.__defaultValue__ = () -> $defaultValueExpr;
					@:mergeBlock $b{exprs};
					cast x;
				} : stdgo.GoMap<$keyComplexType, $valueComplexType>);
			}
		case structType(_), arrayType(_):
			isObjectMap = true;
		case pointerType(_):
			return createRefPointerMap("GoPointerMap");
		case refType(_):
			return createRefPointerMap("GoRefMap");
		case basic(kind):
			switch kind {
				case bool_kind, untyped_bool_kind: p.sub = "GoBoolMap";
				case int_kind, int8_kind, int16_kind, int32_kind, uint_kind, uint8_kind, uint16_kind, uint32_kind: p.sub = "GoIntMap";
				case int64_kind, untyped_int_kind: p.sub = "GoInt64Map";
				case uint64_kind: p.sub = "GoUInt64Map";
				case float32_kind, float64_kind: p.sub = "GoFloat64Map";
				case complex64_kind, complex128_kind, untyped_complex_kind: p.sub = "GoComplex128Map";
				case string_kind, untyped_string_kind: p.sub = "GoStringMap";
				case uintptr_kind: isUIntptrMap = true;
				//case unsafepointer_kind: KindType.unsafePointer;
				case unsafepointer_kind: isObjectMap = true;
				default: throw info.panic() + 'Unknown BasicKind: $kind';
			}
		case chanType(_,_):
			return createRefPointerMap("GoChanMap");
		default:
	}
	if (p.sub != null) {
		p.params = [p.params[1]];
	}
	if (isObjectMap) {
		return macro(({
			final x = new stdgo.GoMap.GoObjectMap<$keyComplexType, $valueComplexType>();
			x.t = new stdgo._internal.internal.reflect.Reflect._Type($keyT);
			x.__defaultValue__ = () -> $defaultValueExpr;
			@:mergeBlock $b{exprs};
			cast x;
		} : stdgo.GoMap<$keyComplexType, $valueComplexType>) : $ct);
	}
	if (isUIntptrMap) {
		return macro(({
			final x = new stdgo.GoMap.GoUIntptrMap<$valueComplexType>();
			x.__defaultValue__ = () -> $defaultValueExpr;
			@:mergeBlock $b{exprs};
			cast x;
		} : stdgo.GoMap<$keyComplexType, $valueComplexType>) : $ct);
	}
	return macro(({
		final x = new $p();
		x.__defaultValue__ = () -> $defaultValueExpr;
		@:mergeBlock $b{exprs};
		x;
	} : stdgo.GoMap<$keyComplexType, $valueComplexType>) : $ct);
}

private function compositeLitList(elem:GoType, keyValueBool:Bool, len:Int, underlying:GoType, ct:ComplexType, expr:Ast.CompositeLit, info:Info):Expr {
	final p = getTypePath(toComplexType(underlying, info), info);
	var value = defaultValue(elem, info, false);
	if (keyValueBool) {
		var exprs:Array<{expr:Expr, index:Int}> = [];
		function run(elt:Ast.Expr, index:Int) {
			if (elt.id == "CompositeLit") {
				if (elt.type == null)
					return {index: index, expr: toExpr(compositeLit(elem, complexTypeElem(ct), elt, info))};
			}
			return {index: index, expr: typeExpr(elt, info)};
		}
		var index:Int = 0;
		for (elt in expr.elts) {
			if (elt.id == "KeyValueExpr") { // array expansion syntax uses KeyValue, value being a string word representation of the number
				var elt:Ast.KeyValueExpr = elt;
				final index = Std.parseInt(elt.key.value);
				exprs.push(run(elt.value, index));
			} else {
				exprs.push(run(elt, index));
			}
			index++;
		}
		var length = makeExpr(len);
		var sets:Array<Expr> = [];
		var max = 0;
		for (i in 0...exprs.length) {
			var index = exprs[i].index;
			if (index > max)
				max = index;
			var value = exprs[i].expr;
			value = assignTranslate(typeof(expr.elts[i], info, false), elem, value, info);
			sets.push(macro s[${makeExpr(index)}] = $value);
		}
		sets.push(macro s);
		if (len == -1) {
			length = makeExpr(max + 1);
			//final e = macro new $p($length, $length, ...([for (i in 0...$length) $value]));
			final e = genSlice(p, elem, length,macro 0,e -> e,info, null);
			sets.unshift(macro var s = $e);
			return macro $b{sets};
		} else {
			return toExpr(EBlock([macro var s:$ct = new $p($length, $length, ...[for (i in 0...$length) $value])].concat(sets)));
		}
	} else {
		var exprs:Array<Expr> = [];
		for (elt in expr.elts) {
			if (elt.id == "CompositeLit") {
				if (elt.type == null) {
					var e = toExpr(compositeLit(elem, toComplexType(elem, info) /*complexTypeElem(ct)*/, elt, info));
					e = assignTranslate(typeof(elt, info, false), elem, e, info);
					exprs.push(e);
					continue;
				}
			}
			var e = typeExpr(elt, info);
			e = assignTranslate(typeof(elt, info, false), elem, e, info);
			exprs.push(e);
		}
		final len = makeExpr(len != -1 ? len : exprs.length);
		final e = genSlice(p, elem, len, len, e -> e, info, exprs);
		//return e;
		return macro ($e : $ct);
	}
}

private function complexTypeElem(ct:ComplexType, index:Int = 0):ComplexType {
	return switch ct {
		case TPath(p):
			if (p.params != null && p.params.length > 0) {
				switch p.params[index] {
					case TPType(t):
						t;
					default:
						ct;
				}
			} else {
				ct;
			}
		default:
			ct;
	}
}

private function funcReset(info:Info) {
	info.global.deferBool = false;
	info.global.recoverBool = false;
	info.global.gotoSystem = false;
}

private function typeFuncLit(expr:Ast.FuncLit, info:Info):ExprDef {
	final info = info.copy();
	info.global.gotoSystem = false;
	var args = typeFieldListArgs(expr.type.params, info);
	var ret = typeFieldListReturn(expr.type.results, info, true);
	final prevDeferBool = info.global.deferBool;
	final prevRecoverBool = info.global.recoverBool;
	final prevGotoSystem = info.global.gotoSystem;
	info.global.deferBool = false;
	info.global.recoverBool = false;
	info.global.gotoSystem = false;
	var block = typeBlockStmt(expr.body, info, true);
	block = argsTranslate(args, toExpr(block), expr.type.params, info, null).expr;
	info.global.deferBool = prevDeferBool;
	info.global.recoverBool = prevRecoverBool;
	info.global.gotoSystem = prevGotoSystem;
	// allows multiple nested values
	return EFunction(FAnonymous, {
		ret: ret,
		args: args,
		expr: block != null ? toExpr(block) : null,
	});
}

private function exprWillReturn(expr:Expr):Bool {
	if (expr == null)
		return false;
	return switch expr.expr {
		case EIf(_, eif, eelse): exprWillReturn(eif) && exprWillReturn(eelse);
		case EReturn(_): true;
		case EMeta(s, e):
			if (s.name == ":fallthrough") {
				true;
			} else {
				exprWillReturn(e);
			}
		case EBlock(exprs):
			for (expr in exprs) {
				if (exprWillReturn(expr))
					return true;
			}
			false;
		case ESwitch(_, cases, _):
			for (c in cases) {
				if (!exprWillReturn(c.expr))
					return false;
			}
			true;
		default:
			false;
	}
}

function opPrecedence(op:Binop):Int {
	return switch op {
		case OpMult, OpDiv, OpMod, OpShr, OpShl, OpAnd:
			5;
		case OpAdd, OpSub, OpOr, OpXor:
			4;
		case OpEq, OpNotEq, OpGt, OpGte, OpLt, OpLte:
			3;
		case OpBoolAnd:
			2;
		case OpBoolOr:
			1;
		default:
			throw "unknown operator";
	}
}

private function typeBinaryExpr(expr:Ast.BinaryExpr, info:Info, walk:Bool = true):ExprDef {
	var x = if (expr.x.id == "BinaryExpr") {
		toExpr(typeBinaryExpr(expr.x, info, false));
	} else {
		typeExpr(expr.x, info);
	}
	var y = if (expr.y.id == "BinaryExpr") {
		toExpr(typeBinaryExpr(expr.y, info, false));
	} else {
		typeExpr(expr.y, info);
	}

	var typeX = typeof(expr.x, info, false);
	var typeY = typeof(expr.y, info, false);

	switch expr.op { // operators that don't exist in haxe need to be handled here
		case AND_NOT: // &^ referenced from Tardisgo
			return typeBinaryExpr({
				x: expr.x,
				y: {
					id: "ParenExpr",
					x: {
						id: "BinaryExpr",
						x: expr.y,
						y: {
							id: "BasicLit",
							value: "-1",
							basic: true,
							token: Ast.Token.INT,
							type: {
								id: "Basic",
								kind: int32_kind
							}
						},
						op: Ast.Token.XOR,
						type: expr.type,
						opPos: 0,
					},
				},
				op: Ast.Token.AND,
				type: expr.type,
				opPos: 0,
			}, info, false);
		default:
	}
	var op = typeOp(expr.op);
	y = toGoType(y);
	x = toGoType(x);
	// A == B or A != B
	switch op {
		case OpEq, OpNotEq: // op == and op !=
			return translateEquals(x, y, typeX, typeY, op, info).expr;
		default:
	}
	if ((isInvalid(typeX) || isInterface(typeX)) && op != OpBoolAnd && !isInvalid(typeY) && op == OpAssign) {
		x = toAnyInterface(x, typeX, info);
		y = toAnyInterface(y, typeY, info);
	}
	var e = toExpr(EBinop(op, x, y));
	e = assignTranslate(getUnderlying(typeX), typeof(expr.type, info, false), e, info);
	if (walk)
		e = walkBinary(e);
	final ct = toComplexType(typeof(expr.type, info, false), info);
	if (ct != null)
		e = macro($e : $ct);
	return e.expr;
} // (A op2 B) op C

function walkBinary(e:Expr):Expr {
	switch e.expr {
		case EBinop(op, e1, c): // (A op2 B) op C
			final p = opPrecedence(op);
			e1 = walkBinary(e1);
			c = walkBinary(c);
			switch e1.expr {
				case EBinop(op2, a, b):
					final p2 = opPrecedence(op2);
					if (p2 >= p) e1 = macro(${e1});
				default:
			}
			switch c.expr {
				case EBinop(op2, a, b):
					final p2 = opPrecedence(op2);
					if (p2 >= p) c = macro(${c});
				default:
			}
			e = toExpr(EBinop(op, e1, c));
		default:
	}
	return e;
}

private function typeUnOp(token:Ast.Token):Unop {
	return switch token {
		case NOT: OpNot;
		case SUB: OpNeg;
		case TIDLE: OpNeg;
		case ARROW: null;
		case XOR: null;
		case ADD: null;
		default:
			throw "unknown unop token: " + token;
			OpNegBits;
	}
}

private function typeOp(token:Ast.Token):Binop {
	return switch token {
		case ADD: OpAdd;
		case SUB: OpSub;
		case MUL: OpMult;
		case QUO: OpDiv;
		case ASSIGN: OpAssign;
		case EQL: OpEq;
		case NEQ: OpNotEq;
		case GTR: OpGt;
		case GEQ: OpGte;
		case LSS: OpLt;
		case LEQ: OpLte;
		case AND: OpAnd;
		case OR: OpOr;
		case XOR: OpXor;
		case LAND: OpBoolAnd;
		case LOR: OpBoolOr;
		case SHL: OpShl;
		case SHR: OpShr;
		case REM: OpMod;

		case ADD_ASSIGN: OpAssignOp(OpAdd);
		case SUB_ASSIGN: OpAssignOp(OpSub);
		case MUL_ASSIGN: OpAssignOp(OpMult);
		case QUO_ASSIGN: OpAssignOp(OpDiv);
		case REM_ASSIGN: OpAssignOp(OpMod);
		case SHL_ASSIGN: OpAssignOp(OpShl);
		case SHR_ASSIGN: OpAssignOp(OpShr);
		case XOR_ASSIGN: OpAssignOp(OpXor);
		case OR_ASSIGN: OpAssignOp(OpOr);

		case AND_ASSIGN: OpAssignOp(OpAnd);
		case AND_NOT_ASSIGN: null;
		case RANGE: OpInterval;
		case ELLIPSIS: OpInterval;
		default:
			throw "unknown op token: " + token;
			OpInterval;
	}
}

function getStructFields(type:GoType, restrictedFields:Array<String>, onlyEmbeds:Bool=false):Array<FieldType> {
	if (type == null)
		return [];
	return switch type {
		case named(_, methods, elem, _, _):
			for (method in methods) {
				restrictedFields.push(method.name);
			}
			getStructFields(elem, restrictedFields, onlyEmbeds);
		case pointerType(_.get() => elem), refType(_.get() => elem):
			getStructFields(elem, restrictedFields, onlyEmbeds);
		case structType(fields):
			if (onlyEmbeds) {
				fields.filter(field -> field.embedded);
			}else{
				fields;
			}
		default:
			[];
	}
}

private function selectorKind(expr:Ast.SelectorExpr):Int {
	return switch expr.x.id {
		case "StarExpr":
			if (expr.x.x.id == "Ident") {
				expr.x.x.kind;
			} else if (expr.x.x.id == "SelectorExpr") {
				expr.x.x.sel.kind;
			} else {
				-1;
			}
		case "SelectorExpr":
			if (expr.x.sel.id == "Ident") {
				expr.x.sel.kind;
			} else {
				-1;
			}
		case "Ident":
			expr.x.kind;
		default:
			-1;
	}
}

private function typeSelectorExpr(expr:Ast.SelectorExpr, info:Info):ExprDef { // EField
	var sel = nameIdent(expr.sel.name, false, false, info,false, true);
	var isStar = false;
	expr.x = escapeParensRaw(expr.x);
	final kind = selectorKind(expr);
	final isStar = expr.x.id == "StarExpr";
	var x = typeExpr(expr.x, info);
	// if ident is type
	if (kind == 3) {
		if (isStar)
			expr.x = expr.x.x;
		switch expr.x.id {
			case "Ident":
				final index = expr.x.name.indexOf(":");
				if (index != -1) {
					expr.x.name = (expr.x.name : String).substr(index + 1);
				}
				x = macro @:selectorExpr $i{splitDepFullPathName(className(expr.x.name, info) + "_static_extension", info)};
				final t = typeof(expr, info, false);
				if (t != null) {
					switch t {
						case signature(_, _, _, _.get() => recv, _) if (recv != null):
							var t = switch recv {
								case _var(_, _.get() => t):
									t;
								default:
									recv;
							}
							if (isPointer(t) || isRef(t))
								t = getElem(t);
							final ct = toComplexType(t, info);
							if (ct != null) {
								switch ct {
									case TPath(p):
										if (p.pack.length == 0) {
											p.pack = p.name.split(".");
											p.name = p.pack.pop();
										}
										p.pack.push(p.pack.pop() + "_static_extension");
										p.name += "_static_extension";
										x = macro @:selectorExprRecv $p{p.pack.concat([p.name])}; 
									default:
								}
							}
						default:
					}
				}
			case "SelectorExpr":
				final xType = typeExprType(expr.x, info);
				switch xType {
					case TPath(p):
						// p = {pack: [stdgo,_internal,time,Time_Time], name: Time, params: []}
						// expected = time/Time_Time_static_extension/Time_static_extension 
						if (p.pack.length == 0) {
							p.pack = p.name.split(".");
							p.name = p.pack.pop();
						}
						final last = p.pack.pop();
						p.pack.push(last + "_static_extension");
						p.pack.push(p.name + "_static_extension");
						x = macro $p{p.pack};
					default:
				}
			default:
				throw info.panic() + "expr id: " + expr.x.id;
		}
	}
	switch x.expr {
		case EConst(CIdent(s)) if (s.indexOf(".") != -1):
			// special import prefix
			if (s.substr(0,2) == "..") {
				s = s.substr(2);
				var exists = false;
				for (imp in info.data.imports) {
					if (s == imp.path.join(".")) {
						exists = true;
						break;
					}
				}
				if (!exists) {
					if (stdgoList.indexOf(toGoPath(info.global.path)) == -1 && !StringTools.endsWith(toGoPath(info.global.path), "_test")) {
						info.data.imports.push({
							path: s.split("."),
							doc: "",
							alias: "",
						});
					}
				}
				x = macro $i{s + "_" + sel.toLowerCase()};
			}
		default:
	}
	var typeX = typeof(expr.x, info, false);
	if (isPointer(typeX)) {
		if (!isClass(expr.x, info)) {
			if (expr.recv == null) {
				x = macro $x.value;
			}else{
				final elem = getElem(typeX);
				switch elem {
					case named(path, methods, type, alias, params):
						var recvPointerBool = false;
						for (method in methods) {
							if (method.name != sel)
								continue;
							recvPointerBool = isRef(method.recv.get());
							break;
						}
						if (!recvPointerBool) {
							x = macro $x.value;
						}else{
							final ct = toComplexType(named(path, methods, type, alias, params), info);
							addPointerSuffix(ct);
							x = macro @:isptr ($x : $ct);
						}
					default:
						//throw "needs to be named type: " + elem;
				}
			}
		}
	}else{
		if (!isClass(expr.x, info)) {
			switch typeX {
				case named(path, methods, type, alias, params):
					var recvPointerBool = false;
					for (method in methods) {
						if (method.name != sel)
							continue;
						switch typeof(expr.sel, info, false) {
							case signature(_, _.get() => params, _.get() => results, _.get() => recv, _.get() => typeParams):
								// trace(getVar(recv));
								// trace(getElem(getVar(recv)));
								// trace(sel);
							default:
						}
						//trace(getElem(method.recv.get()), isRefValue(getElem(method.recv.get())));
						recvPointerBool = isRef(method.recv.get());
						//trace(recvPointerBool, method.name, method.recv.get());
						break;
					}
					if (!recvPointerBool) {
						//trace("here?");
						//x = macro $x.value;
						//x = macro (@:check $x ?? throw "null pointer dereference");
					}else{
						final ct = toComplexType(named(path, methods, type, alias, params), info);
						addPointerSuffix(ct);
						if (!isRefValue(type)) {
							x = macro @:notptr (stdgo.Go.pointer($x) : $ct);
						}else{
							x = macro @:check2 $x;
						}
					}
				case refType(_.get() => elem):
					switch elem {
						case named(path, methods, type, alias, params):
							var recvPointerBool = false;
							for (method in methods) {
								if (method.name != sel)
									continue;
								switch typeof(expr.sel, info, false) {
									case signature(_, _.get() => params, _.get() => results, _.get() => recv, _.get() => typeParams):
										// trace(getVar(recv));
										// trace(getElem(getVar(recv)));
										// trace(sel);
									default:
								}
								//trace(getElem(method.recv.get()), isRefValue(getElem(method.recv.get())));
								recvPointerBool = isRef(method.recv.get());
								//trace(recvPointerBool, method.name, method.recv.get());
								break;
							}
							if (!recvPointerBool) {
								//trace("here?");
								//x = macro $x.value;
								if (expr.x.id != "CallExpr")
									x = macro (@:checkr $x ?? throw "null pointer dereference");
							}else{
								final ct = toComplexType(named(path, methods, type, alias, params), info);
								addPointerSuffix(ct);
								if (!isRefValue(type)) {
									x = macro @:notptrr2 (stdgo.Go.pointer($x) : $ct);
								}else{
									x = macro @:check2r $x;
								}
							}
						default:
				    }
					//x = macro @:check4 ($x ?? throw "null pointer dereference");
				default:
					//throw "needs to be named type: " + typeX;
			}
		}
	}
	final restrictedFields:Array<String> = [];
	final fields = getStructFields(typeX, restrictedFields, true);
	if (fields.length > 0) {
		var chains:Array<String> = []; // chains together a field selectors
		function recursion(path:String, fields:Array<FieldType>,depth:Int) {
			if (depth >= 20)
				return;
			for (field in fields) {
				if (restrictedFields.contains(field.name))
					continue;
				var setPath = path + field.name;
				chains.push(setPath);
				setPath += ".";
				var structFields = getStructFields(field.type.get(), restrictedFields);
				if (isPointer(field.type.get())) {
					setPath += "value.";
				}
				if (structFields.length > 0)
 					recursion(setPath, structFields, depth+1);
			}
		}
		recursion("", fields, 0);
		chains.sort((a, b) -> {
			return a.split(".").length - b.split(".").length;
		});
		for (chain in chains) {
			var field = chain.substr(chain.lastIndexOf(".") + 1);
			if (field == sel) {
				sel = chain;
				break;
			}
		}
	}
	final e = macro $x.$sel;
	//trace(printer.printExpr(e), kind, typeX);
	return e.expr; // EField
}

private function addPointerSuffix(ct:ComplexType) {
	switch ct {
		case TPath(p):
			if (p.name.indexOf(".") != -1) {
				if (p.pack.length == 0) {
					final parts = p.name.split(".");
					final last = parts.pop() + "Pointer";
					final lastPack = parts.pop() + "pointer";
					parts.push(lastPack);
					parts.push(last);
					p.name = parts.join(".");
				}
			}else{
				p.name += "Pointer";
			p.pack.push(p.pack.pop() + "pointer");
			}
		default:
	}
}

private function isClass(x:Ast.Expr, info:Info):Bool {
	return switch x.id {
		case "Ident":
			info.renameIdents[x.name] == info.classNames[x.name];
		case "ParenExpr", "StarExpr":
			isClass(x.x, info);
		default:
			false;
	}
}

private function typeSliceExpr(expr:Ast.SliceExpr, info:Info):ExprDef {
	var x = typeExpr(expr.x, info);
	final xType = typeof(expr.x, info, false);
	if (isPointer(xType)) // get pointer reference of slice/array if pointer type
		x = macro $x.value;
	var low = expr.low != null ? typeExpr(expr.low, info) : macro 0;
	var high = expr.high != null ? typeExpr(expr.high, info) : null;
	final ct = toComplexType(typeof(expr, info, false), info);
	x = if (high != null) {
		if (expr.slice3) {
			var max = typeExpr(expr.max, info);
			max = assignTranslate(typeof(expr.max, info, false), basic(int_kind), max, info);
			macro $x.__slice__($low, $high, $max);
		} else {
					macro $x.__slice__($low, $high);
		}
	} else {
			macro $x.__slice__($low);
	}
	return (macro ($x : $ct)).expr;
}

private function typeAssertExpr(expr:Ast.TypeAssertExpr, info:Info):ExprDef { // a -> b conversion
	var e = typeExpr(expr.x, info);
	if (expr.type == null)
		return e.expr;
	var t = typeof(expr.type, info, false);
	if (typeof(expr.x, info, false) == t) // same type
		return e.expr;
	switch e.expr {
		case EConst(c):
			switch c {
				case CIdent(s):
					if (s == "null") {
						var e = defaultValue(t, info);
						return e.expr;
					}
				default:
			}
		default:
	}
	final ct = typeExprType(expr.type, info);
	final fromType = typeof(expr.x, info, false);
	// non anyInterface conversions are always known to work at compile time
	final t = typeof(expr.type, info, false);
	if (isAnyInterface(fromType))
		return (macro(stdgo.Go.typeAssert(($e : $ct)) : $ct)).expr;
	e = toAnyInterface(e, fromType, info);
	return (macro(stdgo.Go.typeAssert(($e : $ct)) : $ct)).expr;
}

private function destructureExpr(x:Expr, t:GoType):{x:Expr, t:GoType} {
	t = getUnderlying(t);
	if (isPointer(t)) {
		x = macro $x.value;
		t = getElem(t);
	}
	return {x: x, t: t};
}

private function typeStarExpr(expr:Ast.StarExpr, info:Info):ExprDef {
	var x = typeExpr(expr.x, info);
	final t = typeof(expr.x, info, false);
	if (!isPointer(t)) {
		final t = typeof(expr, info, false);
		final ct = toComplexType(t, info);
		return (macro($x : $ct)).expr;
	}
	return (macro $x.value).expr; // pointer code
}

private function typeParenExpr(expr:Ast.ParenExpr, info:Info):ExprDef {
	var x = typeExpr(expr.x, info);
	return x != null ? EParenthesis(x) : null;
} // SPECS

private function typeDeferReturn(info:Info, nullcheck:Bool):Expr {
	return macro for (defer in __deferstack__) {
		if (defer.ran)
			continue;
		defer.ran = true;
		defer.f();
	};
}

private function typeFunction(decl:Ast.FuncDecl, data:Info, restricted:Array<String> = null, isNamed:Bool = false, sel:String = "", defName:String = ""):TypeDefinition {
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
		switch typeBlockStmt(decl.body, info, true) {
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
		final ct = toComplexType(varType, info);//typeExprType(decl.recv.list[0].type, info);
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

			varName = nameIdent(varName, false, true, info);
			if (isPointer(varType)) {
				meta.push({name: ":pointer", pos: null});
			}
		} else {
			varName = "_";
		}
		recvArg = {name: varName, type: ct, vt: varType, meta: isPointer(varType) ? [{name: ":pointer", pos: null}] : []};
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
		macro throw ${makeString(recvName + ":" +info.global.path + "." + name + " is not yet implemented")};
	} else {
		var block = toExpr(typeBlockStmt(decl.body, info, true));
		final cond = Patch.skipTests[patchName];
		if (cond != null) {
			switch block.expr {
				case EBlock(exprs):
					final deferBool = info.global.deferBool;
					info.global.deferBool = false;
					final e = toExpr(typeReturnStmt({results: [], returnPos: 0}, info));
					info.global.deferBool = deferBool;
					if (cond.length == 0) {
						block = macro {
							stdgo.Go.println('-- SKIP: ' + $e{makeExpr(name)});
							$e;
						};
					} else {
						final targets = makeString("(" + cond.join(" || ") + ")");
						block = macro @:define($targets) {
							stdgo.Go.println('-- SKIP: ' + $e{makeExpr(name)});
							stdgo.Go.println(" skip targets: " + $e{makeString(cond.join(", "))});
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
	final patch = Patch.list[patchName];
	if (patch != null) {
		//Patch.list.remove(patchName);
		block = patch;
	}

	block = argsTranslate(args, block, decl.type.params, info, recvArg);

	info.restricted = [];
	var doc = getDocComment(decl);
	var preamble = "* #go2hx ";
	var index = doc.indexOf(preamble);
	var finalDoc = doc + getSource(decl, info);
	if (index != -1) {
		var path = doc.substr(index + preamble.length);
		var params:Array<Expr> = [
			for (arg in args)
				macro $i{arg.name}
		];
		if (args.length > 0 && isRestType(args[args.length - 1].type))
			params.push(macro...$e{params.pop()});
		var e = macro $i{path}($a{params});
		block = macro return $e;
	}
	var access = [];
	if (decl.recv == null) {
		if (Patch.funcInline.indexOf(patchName) != -1 && access.indexOf(AInline) == -1)
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
	}else{
		//non macro function
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
			//trace("add", decl.name.name, spec.name.name);
			final spec = typeSpec(spec, info, true);
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

function mapExprArrayWithData<T>(el:Array<Expr>, data:T, f:(data:T, e:Expr)->Expr):Array<Expr> {
	var ret = [];
	for (e in el)
		ret.push(f(data, e));
	return ret;
}

function mapExprWithData<T>(e:Expr, data:T, f:(data:T,e:Expr)->Expr):Expr {
	return {
		pos: e.pos,
		expr: switch (e.expr) {
			case EConst(_): e.expr;
			case EArray(e1, e2): EArray(f(data, e1), f(data, e2));
			case EBinop(op, e1, e2): EBinop(op, f(data, e1), f(data, e2));
			case EField(e, field): EField(f(data, e), field);
			case EParenthesis(e): EParenthesis(f(data, e));
			case EObjectDecl(fields):
				var ret = [];
				for (field in fields)
					ret.push({field: field.field, expr: f(data, field.expr), quotes: field.quotes});
				EObjectDecl(ret);
			case EArrayDecl(el): EArrayDecl(mapExprArrayWithData(el, data, f));
			case ECall(e, params): ECall(f(data, e), mapExprArrayWithData(params, data, f));
			case ENew(tp, params): ENew(tp, mapExprArrayWithData(params, data, f));
			case EUnop(op, postFix, e): EUnop(op, postFix, f(data, e));
			case EVars(vars):
				var ret = [];
				for (v in vars) {
					var v2:Var = {name: v.name, type: v.type, expr: opt(v.expr, data, f)};
					if (v.isFinal != null)
						v2.isFinal = v.isFinal;
					ret.push(v2);
				}
				EVars(ret);
			case EBlock(el): EBlock(mapExprArrayWithData(el, data, f));
			case EFor(it, expr): EFor(f(data, it), f(data, expr));
			case EIf(econd, eif, eelse): EIf(f(data, econd), f(data, eif), opt(eelse, data, f));
			case EWhile(econd, e, normalWhile): EWhile(f(data, econd), f(data, e), normalWhile);
			case EReturn(e): EReturn(opt(e, data, f));
			case EUntyped(e): EUntyped(f(data, e));
			case EThrow(e): EThrow(f(data, e));
			case ECast(e, t): ECast(f(data, e), t);
			case EIs(e, t): EIs(f(data, e), t);
			case EDisplay(e, dk): EDisplay(f(data, e), dk);
			case ETernary(econd, eif, eelse): ETernary(f(data, econd), f(data, eif), f(data, eelse));
			case ECheckType(e, t): ECheckType(f(data, e), t);
			case EContinue, EBreak:
				e.expr;
			case ETry(e, catches):
				var ret = [];
				for (c in catches)
					ret.push({name: c.name, type: c.type, expr: f(data, c.expr)});
				ETry(f(data, e), ret);
			case ESwitch(e, cases, edef):
				var ret = [];
				for (c in cases)
					ret.push({expr: opt(c.expr, data, f), guard: opt(c.guard, data, f), values: mapExprArrayWithData(c.values, data, f)});
				ESwitch(f(data, e), ret, edef == null || edef.expr == null ? edef : f(data, edef));
			case EFunction(kind, func):
				var ret = [];
				for (arg in func.args)
					ret.push({
						name: arg.name,
						opt: arg.opt,
						type: arg.type,
						value: opt(arg.value, data, f)
					});
				EFunction(kind, {
					args: ret,
					ret: func.ret,
					params: func.params,
					expr: f(data, func.expr)
				});
			case EMeta(m, e): EMeta(m, f(data, e));
		}
	};
}

function opt<T>(e:Null<Expr>, data:T, f:(data:T, Expr)->Expr):Expr
	return e == null ? null : f(data, e);

function opt2<T>(e:Null<Expr>, data:T, f:(data:T, Expr)->Void):Void
	if (e != null)
		f(data, e);

private function getBody(path:String):String {
	var index = path.lastIndexOf("/");
	var dir = "";
	if (index != -1) {
		dir = path.substr(0, index);
	}
	var name = path.substring(index += 1, index = path.indexOf(".", index));
	var selectors = path.substr(index + 1).split(".");
	var content = "";
	path = dir + "/" + name + ".hx";
	try {
		content = File.getContent(path);
	} catch (e) {
		throw e;
	}
	// remove comments
	var close:String = "";
	var closeIndex:Int = 0;
	var len = content.length - 1;
	var diff = 0;
	for (i in 0...len) {
		var i = i + diff;
		if (close == "") {
			if (content.charAt(i) == "/") {
				closeIndex = i;
				final next = content.charAt(i + 1);
				switch next {
					case "/":
						close = "\n";
					case "*":
						close = "*/";
				}
			}
		} else {
			if (content.charAt(i) == close.charAt(0) && close.length == 1 || content.charAt(i + 1) == close.charAt(1)) {
				diff -= i + 2 - closeIndex;
				content = content.substr(0, closeIndex) + content.substr(i + 2);
				close = "";
			}
		}
	}
	if (selectors.length > 1) {
		// inside of a class
		index = content.lastIndexOf("class " + selectors[0]);
		if (index == -1)
			throw "could not find class name: " + selectors[0] + " in file: " + path;
		content = content.substr(content.indexOf("{", index) + 1);
	}
	var func = selectors.pop();
	var funcDecl = 'function ';

	while (true) {
		index = content.indexOf(funcDecl);
		if (index == -1)
			break;
		final name = content.substring(index = index + funcDecl.length, index = content.indexOf("("));
		final isMain = name == func;
		index = content.indexOf("{", index) + 1; // first bracket
		content = content.substr(index);
		var enclosed:Int = 1;
		for (i in 0...content.length) {
			switch content.charAt(i) {
				case "{":
					enclosed++;
				case "}":
					if (--enclosed <= 0) {
						// either use the body or continue to cut
						if (isMain)
							return "{" + content.substr(0, i) + "}";
						content = content.substr(i);
						break;
					}
			}
		}
	}
	return "";
}

private function defaultValue(type:GoType, info:Info, strict:Bool = true):Expr {
	function ct():ComplexType {
		return toComplexType(type, info);
	}
	if (type == null)
		return macro @:unknown_default_value null;
	return switch type {
		case mapType(_.get() => key, _.get() => value):
			final keyComplexType = toComplexType(key, info);
			final valueComplexType = toComplexType(value, info);
			final keyUnderlying = getUnderlying(key);
			switch keyUnderlying {
				case structType(_):
					return macro(({
						final x:stdgo.GoMap.GoObjectMap<$keyComplexType, $valueComplexType> = null;
						// x.t = new stdgo._internal.internal.reflect.Reflect._Type($keyT);
						// x.__defaultValue__ = () -> $defaultValueExpr;
						// @:mergeBlock $b{exprs};
						cast x;
					} : stdgo.GoMap<$keyComplexType, $valueComplexType>)
					);
				default:
					//trace(keyUnderlying);
			}
			macro(null : stdgo.GoMap<$keyComplexType, $valueComplexType>);
		case sliceType(_.get() => elem):
			final t = toComplexType(elem, info);
			macro(null : stdgo.Slice<$t>);
		case arrayType(_.get() => elem, len):
			/*final t = toComplexType(elem, info);
			var value = defaultValue(elem, info);
			if (value == null)
				value = macro stdgo.Go.expectedValue();
			final lenExpr = makeExpr(len);
			final args = [lenExpr,lenExpr];
			if (len > 0)
				args.push(macro ...[for (i in 0...$lenExpr) $value]);
			macro new stdgo.GoArray<$t>($a{args});*/
			final param = toComplexType(elem, info);
			final size = makeExpr(len);
			final cap = size;
			final p:TypePath = {name: "GoArray", params: [TPType(param)], pack: ["stdgo"]};
			final s = genSlice(p, elem, size, cap, e -> e, info, null);
			s;
		case interfaceType(_):
			final ct = ct();
			macro(null : $ct);
		case chanType(_, _.get() => elem):
			final t = toComplexType(elem, info);
			var value = defaultValue(elem, info);
			macro(null : stdgo.Chan<$t>);
		case pointerType(_.get() => elem):
			final t = toComplexType(elem, info);
			macro(null : stdgo.Pointer<$t>);
		case signature(_, _, _, _):
			macro null;
		case refType(_.get() => elem):
			final ct = toComplexType(elem, info);
			switch elem {
				case arrayType(_):
					final s = defaultValue(elem, info, strict);
					macro $s.__setNil__();
				default:
					macro(null : stdgo.Ref<$ct>); // pointer can be nil
			}
		case named(path, _, underlying, alias, _):
			switch getUnderlying(underlying) {
				case chanType(_, _):
					final ct = ct();
					macro(null : $ct);
				case refType(_), pointerType(_), interfaceType(_), mapType(_, _), signature(_, _):
					final ct = ct();
					if (ct != null) {
						macro(null : $ct);
					}else{
						macro null;
					}
				case basic(_):
					final ct = ct();
					final e = defaultValue(underlying, info);
					macro($e : $ct);
				case structType(fields):
					final ct = ct();
					final fs:Array<ObjectField> = [];
					var e = macro {};
					if (alias) {
						e = createNamedObjectDecl(fields, (_, type) -> defaultValue(type, info), info);
					}
					macro($e : $ct);
				case sliceType(_.get() => elem):
					var t = namedTypePath(path, info);
					final ct = ct();
					macro (new $t(0, 0) : $ct);
				case arrayType(_.get() => elem, len):
					final t = namedTypePath(path, info);
					final elem = defaultValue(elem, info);
					final len = makeExpr(len);
					macro new $t($len, $len, ...[for (i in 0...$len) $elem]);
				default:
					var t = namedTypePath(path, info);
					macro new $t();
			}
		case basic(kind):
			if (strict) {
				switch kind {
					case bool_kind: macro false;
					case int_kind: macro(0 : stdgo.GoInt);
					case int8_kind: macro(0 : stdgo.GoInt8);
					case int16_kind: macro(0 : stdgo.GoInt16);
					case int32_kind: macro(0 : stdgo.GoInt32);
					case int64_kind: macro(0 : stdgo.GoInt64);
					case string_kind: macro("" : stdgo.GoString);
					case uint_kind: macro(0 : stdgo.GoUInt);
					case uint8_kind: macro(0 : stdgo.GoUInt8);
					case uint16_kind: macro(0 : stdgo.GoUInt16);
					case uint32_kind: macro(0 : stdgo.GoUInt32);
					case uint64_kind: macro(0 : stdgo.GoUInt64);
					case uintptr_kind: macro new stdgo.GoUIntptr(0);
					case float32_kind: macro(0 : stdgo.GoFloat32);
					case float64_kind: macro(0 : stdgo.GoFloat64);
					case complex64_kind: macro new stdgo.GoComplex64(0, 0);
					case complex128_kind: macro new stdgo.GoComplex128(0, 0);
					case untyped_bool_kind, untyped_rune_kind, untyped_string_kind, untyped_int_kind, untyped_float_kind, untyped_complex_kind:
						throw info.panic() + "untyped kind: " + kind;
					default: macro @:default_value null;
				}
			} else {
				switch kind {
					case bool_kind: macro false;
					case string_kind: macro "";
					case int_kind, int8_kind, int16_kind, int32_kind, int64_kind: macro 0;
					case uint_kind, uint8_kind, uint16_kind, uint32_kind, uint64_kind: macro 0;
					case uintptr_kind: macro new stdgo.GoUIntptr(0);
					case float32_kind, float64_kind: macro 0;
					case complex64_kind: macro new stdgo.GoComplex64(0, 0);
					case complex128_kind: macro new stdgo.GoComplex128(0, 0);
					default: macro @:default_value_kind null;
				}
			}
		case structType(fields):
			if (fields.length == 0)
				return macro {};
			var fs:Array<ObjectField> = [];
			for (field in fields) {
				if (field.optional)
					continue;
				fs.push({
					field: field.name,
					expr: defaultValue(field.type.get(), info, true),
				});
			}
			toExpr(EObjectDecl(fs));
		case invalidType:
			macro @:invalid_type null;
		case tuple(_, _.get() => vars):
			toExpr(EObjectDecl([
				for (i in 0...vars.length) {
					{
						field: "_" + i,
						expr: defaultValue(vars[i], info),
					}
				}
			]));
		case typeParam(name, _):
			// null;
			if (strict) {
				final t = TPath({name: className(name,info), pack: []});
				macro stdgo.Go.defaultValue((cast(null) : $t));
			} else {
				null;
			}
		case _var(_, _.get() => type):
			defaultValue(type, info, strict);
		default:
			throw info.panic() + "unsupported default value type: " + type;
	}
}

private function getRecvName(recv:Ast.Expr, info:Info):String {
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

private function typeFieldListReturn(fieldList:Ast.FieldList, info:Info, retValuesBool:Bool):ComplexType { // A single type or Anonymous struct type
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
		//trace(printer.printComplexType(ct), group.type.id);
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
				returnNames.push(nameIdent(name.name, false, true,info));
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

function getId(e:Ast.Expr, info:Info):String {
	final e = hashTypeToExprType(e, info);
	return switch e.id {
		default:
			trace(e.id);
			e.id;
	}
}

function isVoid(ct:ComplexType):Bool {
	if (ct == null)
		return true;
	return switch ct {
		case TPath(p): p.name == "Void" && p.pack.length == 0;
		default:
			false;
	}
}

private function typeFieldListArgs(list:Ast.FieldList, info:Info):Array<FunctionArg> { // Array of FunctionArgs
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
			final argName = nameIdent(name.name, false, true, info);
			args.push({
				name: argName,
				type: type,
			});
		}
	}
	return args;
}

private function typeFieldListComplexTypes(list:Ast.FieldList, info:Info):Array<ComplexType> {
	var args:Array<ComplexType> = [];
	for (field in list.list) {
		var type = typeExprType(field.type, info);
		if (field.names.length > 0) {
			for (name in field.names) {
				final name = nameIdent(name.name, false, true, info);
				args.push(TNamed(name, type));
			}
		} else {
			args.push(type);
		}
	}
	return args;
}

private function typeFieldListMethods(list:Ast.FieldList, info:Info):Array<Field> {
	var fields:Array<Field> = [];
	final oldRenameIdents = info.renameIdents.copy();
	for (field in list.list) {
		var expr:Ast.FuncType = field.type;

		var ret = typeFieldListReturn(expr.results, info, false);
		var params = typeFieldListArgs(expr.params, info);
		if (ret == null || params == null)
			continue;
		final doc = getDocComment(field, field);
		for (n in field.names) {
			final name = formatHaxeFieldName(n.name, info);
			fields.push({
				name: name,
				pos: null,
				doc: doc,
				access: [APublic],
				kind: FFun({
					args: params,
					ret: ret,
				})
			});
		}
	}
	info.renameIdents = oldRenameIdents;
	return fields;
}

// can also be used for ObjectFields
private function typeFields(list:Array<FieldType>, info:Info, access:Array<Access>, defaultBool:Bool, ?docs:Array<Ast.CommentGroup>,
		?comments:Array<Ast.CommentGroup>):Array<Field> {
	var fields:Array<Field> = [];
	for (i in 0...list.length) {
		final field = list[i];
		final ct = toComplexType(field.type.get(), info);
		var name = field.name;
		var meta:Metadata = [];
		if (field.embedded) {
			meta.push({name: ":embedded", pos: null});
		}
		if (field.tag != "") {
			final tag = makeString(rawEscapeSequences(field.tag));
			meta.push({name: ":tag", pos: null, params: [tag]});
		}
		if (field.optional)
			meta.push({name: ":optional", pos: null});
		var doc:String = getDocComment({doc: docs == null ? null : docs[i]}, {comment: comments == null ? null : comments[i]});
		// trace(name);
		// trace(field.type.get());
		// trace(toComplexType(field.type.get(), info));
		fields.push({
			name: name,
			pos: null,
			meta: meta,
			doc: doc,
			access: access == null ? typeAccess(name, true) : access,
			kind: FVar(toComplexType(field.type.get(), info), defaultBool ? defaultValue(field.type.get(), info, false) : null)
		});
	}
	return fields;
}

private function typeFieldListFieldTypes(list:Ast.FieldList, info:Info, access:Array<Access> = null, defaultBool:Bool = false,
		docs:Array<Ast.CommentGroup> = null, comments:Array<Ast.CommentGroup> = null):Array<FieldType> {
	var fields:Array<Field> = [];
	var fieldList:Array<FieldType> = [];
	function getName(type:Ast.Expr) {
		return switch type.id {
			case "SelectorExpr": type.sel.name;
			case "Ident": type.name;
			case "StarExpr": getName(type.x);
			case "Pointer": getName(type.elem);
			case "IndexExpr": getName(type.x);
			default: throw info.panic() + "unknown embedded: " + type.id;
		}
	}
	final comments = [];
	for (field in list.list) {
		var type = typeof(field.type, info, false);
		var tag = "";
		if (field.tag != "") {
			tag = field.tag;
		}
		if (docs != null)
			docs.push(field.doc);
		if (comments != null)
			comments.push(field.comment);
		if (field.names.length == 0) {
			// embedded
			var name:String = formatHaxeFieldName(getName(field.type), info);
			if (name == null)
				continue;
			fieldList.push({
				name: name,
				type: {get: () -> type},
				tag: tag,
				embedded: true,
				optional: false,
			});
		} else {
			for (n in field.names) {
				final name = formatHaxeFieldName(n.name, info);
				fieldList.push({
					name: name,
					type: {get: () -> type},
					embedded: false,
					tag: tag,
					optional: n.name == "_",
				});
			}
		}
	}
	return fieldList;
}

private function typeFieldListFields(list:Ast.FieldList, info:Info, access:Array<Access> = null, defaultBool:Bool):Array<Field> {
	final docs:Array<Ast.CommentGroup> = [];
	final comments:Array<Ast.CommentGroup> = [];
	final fieldList = typeFieldListFieldTypes(list, info, access, defaultBool, docs, comments);
	return typeFields(fieldList, info, access, defaultBool, docs, comments);
}

private function addAbstractToField(ct:ComplexType, wrapperType:TypePath):Field {
	var name:String = "";
	switch ct {
		case TPath(p):
			name = p.name;
		default:
	}
	return {
		name: "__to_" + name,
		pos: null,
		meta: [{name: ":to", pos: null}],
		kind: FFun({
			args: [],
			ret: ct,
			expr: macro return new $wrapperType(this),
		}),
		access: [AInline],
	};
}

private function typeNamed(spec:Ast.TypeSpec, info:Info):TypeDefinition {
	final name = className(spec.name.name, info);
	info.global.renameClasses[spec.name.name] = name;
	//info.renameIdents[spec.name.name] = name + "_static_extension";
	//info.classNames[spec.name.name] = name + "_static_extension";
	var externBool = isTitle(spec.name.name);
	info.className = name;
	var doc:String = getDocComment(spec, spec) + getSource(spec, info);
	var ct = TPath({name: name, pack: []});
	var t = typeof(spec.type, info, false);
	switch t {
		case structType(fs):
			final path = getTypePath(ct, info);
			final superClass = path;
			final argExprs:Array<Expr> = [];
			final args:Array<FunctionArg> = [];
			for (field in fs) {
				final name = field.name;
				argExprs.push(macro $i{name});
				args.push({opt: true, name: name});
			}
			final meta:Metadata = [{name: ":structInit", pos: null}, {name: ":named", pos: null}];
			final params = getParams(spec.params, info, true); // named struct
			final p:TypePath = {name: name, pack: []};
			if (params != null && params.length > 0)
				p.params = typeParamDeclsToTypeParams(params);
			final td = macro class $name {
				public function new() {}

				public function __copy__() {}
			};
			switch td.fields[0].kind {
				case FFun(f):
					f.args = args;
					f.expr = macro super($a{argExprs});
				default:
			}
			switch td.fields[1].kind {
				case FFun(f):
					f.expr = macro new $p($a{argExprs});
				default:
			}
			td.meta = meta;
			td.doc = getDocComment(spec);
			td.isExtern = isTitle(spec.name.name);
			td.kind = TDClass(superClass);
			return td;
		case interfaceType(empty, _):
			if (empty) {
				final meta:Metadata = [{name: ":follow", pos: null}];
				final params = getParams(spec.params, info, true); // no meta :genericBuild
				return {
					name: name,
					pos: null,
					pack: [],
					params: params,
					isExtern: isTitle(spec.name.name),
					fields: [],
					doc: getDocComment(spec),
					meta: meta,
					kind: TDAlias(anyInterfaceType()),
				};
			}
			final meta:Metadata = [];
			final params = getParams(spec.params, info, true);
			return {
				name: name,
				pos: null,
				params: params,
				pack: [],
				doc: getDocComment(spec),
				isExtern: isTitle(spec.name.name),
				fields: [],
				meta: meta,
				kind: TDAlias(ct)
			};
		case refType(_.get() => named(path, _, t, _, _)), pointerType(_.get() => named(path, _, t, _, _)):
			switch t {
				case refType(_.get() => elem):
					switch elem {
						case named(path2, _, invalidType, _, _):
							if (path == path2) {
								final td = macro class $name {
									public function new() {}
					
									public function __copy__() {}
								};
								td.meta = [{name:":onlynameref", pos: null}];
								return td;
							}
						default:
					}
				default:
			}
		default:
	}
	if (getUnderlying(t) == invalidType) {
		t = refToPointerWrapper(t);
	}
	var uct = t == invalidType ? invalidComplexType() : toComplexType(t, info);
	final meta:Metadata = [{name: ":named", pos: null}];
	final params = getParams(spec.params, info, true);
	return {
		name: name,
		pos: null,
		pack: [],
		fields: [],
		isExtern: isTitle(spec.name.name),
		doc: getDocComment(spec),
		params: params,
		meta: meta,
		kind: TDAlias(uct),
	}
}

private function typeParamDeclsToTypeParams(list:Array<TypeParamDecl>):Array<TypeParam> {
	return list.map(p -> TPType(TPath({name: p.name, pack: []})));
}

private function refToPointerWrapper(t:GoType):GoType {
	return switch t {
		case refType(_.get() => elem):
			pointerType({get: () -> refToPointerWrapper(elem)});
		default:
			t;
	}
}

private function typeSpec(spec:Ast.TypeSpec, info:Info, local:Bool = false):TypeDefinition {
	var hash:UInt = 0;
	if (spec.type.type != null) {
		if (spec.type.type != null && spec.type.type.hash != null)
			hash = spec.type.type.hash;
		if (!info.locals.exists(hash) || hash == 0) {
			final path = spec.name.type.path == null ? spec.name.name : spec.name.type.path;
			var nameType:GoType = if (spec.type.id == "InterfaceType") {
				final t = typeof(spec.type.type, info, true, [path]);
				named(className(path, info), [], t, false, {get: () -> null});
			} else {
				final t = typeof(spec.type, info, false);
				info.localUnderlyingNames[path] = t;
				t;
			}
			switch nameType {
				case structType(fields):
					nameType = named(className(path, info), [], structType(fields), spec.assign != 0 || local, {get: () -> null});
				default:
			}
			if (hash != 0) {
				info.locals[hash] = nameType;
			}
		}
	}
	if (spec.type != null) {
		if (spec.assign != 0 && spec.type.id != "InterfaceType") {
			var name = className(spec.name.name, info);
			var type = typeExprType(spec.type, info);
			if (type == null)
				return null;
			return {
				name: name,
				pos: null,
				pack: [],
				isExtern: isTitle(spec.name.name),
				doc: getDocComment(spec),
				meta: [{name: ":follow", pos: null}],
				fields: [],
				kind: TDAlias(type),
			}
		}
	}
	return switch spec.type.id {
		case "StructType", "InterfaceType": typeType(spec, info, local, hash);
		default: typeNamed(spec, info);
	}
}

function complexTypeToExpr(t:ComplexType):Expr {
	switch t {
		case TPath(p):
			final pack = p.pack == null ? macro [] : macro $a{p.pack.map(p -> makeExpr(p))};
			return macro haxe.macro.Expr.ComplexType.TPath({name: ${makeExpr(p.name)}, pack: $pack, sub: ${p.sub == null ? macro @:complextype_to_expr null : makeExpr(p.sub)}});
		default:
			throw "unsupported complexTypeToExpr: " + t;
	}
}

function getParams(params:Ast.FieldList, info:Info, allowNonGeneric:Bool = false):Array<TypeParamDecl> {
	final list:Array<TypeParamDecl> = [];
	if (params == null)
		return list;
	for (field in params.list) {
		for (name in field.names) {
			list.push({
				name: className(name.name, info),
				// constraints: [ct],
			});
		}
	}
	return list;
}

private function makeString(str:String, ?kind):Expr {
	return toExpr(EConst(CString(str, kind)));
}

private function makeStringLit(values:Array<{?s:String, ?code:Int}>):Expr {
	var e:Expr = macro("" : stdgo.GoString);
	final exprs:Array<Expr> = [];
	for (value in values) {
		final expr = if (value.s != null) {
			makeString(value.s);
		} else {
			final code = value.code;
			makeExpr(code);
		}
		exprs.push(expr);
	}
	if (exprs.length == 1) {
		switch exprs[0].expr {
			case EConst(CString(_)):
				return macro(${exprs[0]} : stdgo.GoString);
			default:
		}
	}
	return macro stdgo.Go.str($a{exprs});
}

private function typeType(spec:Ast.TypeSpec, info:Info, local:Bool = false, hash:UInt = 0):TypeDefinition {
	var name = className(spec.name.name, info);
	info.global.renameClasses[spec.name.name] = name;
	var externBool = isTitle(spec.name.name);
	info.className = name;
	var doc:String = getDocComment(spec, spec) + getSource(spec, info);
	final patchName = info.global.module.path + ":" + name;
	final replaceExpr = Patch.replace[patchName];
	if (replaceExpr != null) {
		final td:TypeDefinition = {
			name: name,
			pos: null,
			pack: [],
			kind: TDAlias(TPath({name: printer.printExpr(replaceExpr), pack: []})),
			fields: [],
			meta: null, // prevents adding @:using or other metadata
			isExtern: true,
		};
		return td; 
	}
	switch spec.type.id {
		case "StructType":
			var struct:Ast.StructType = spec.type;
			var fields = typeFieldListFields(struct.fields, info, [APublic], true);
			var meta:Metadata = [{name: ":structInit", pos: null}];
			info.renameIdents[spec.name.name] = splitDepFullPathName(name + "_static_extension", info);
			info.classNames[spec.name.name] = splitDepFullPathName(name + "_static_extension",info);
			// add to fields patch structs
			final structExpr = Patch.structs[patchName];
			var structAddFieldsIndex = -1;
			if (structExpr != null) { // patch modify struct
				switch structExpr.expr {
					case EBlock(exprs):
						// exprs.pop();
						for (expr in exprs) {
							var meta:Array<MetadataEntry> = [];
							switch expr.expr {
								case EMeta(s, e):
									meta = [s];
									expr = e;
								default:
							}
							switch expr.expr {
								case EFunction(FNamed(name, _), f):
									fields.push({
										name: name,
										pos: null,
										access: [ADynamic, APublic],
										meta: meta,
										kind: FFun(f)
									});
								case EVars(_[0] => v):
									if (structAddFieldsIndex == -1)
										structAddFieldsIndex = fields.length;
									fields.push({
										name: v.name,
										pos: null,
										meta: meta,
										kind: FVar(v.type, v.expr),
									});
								default:
							}
						}
					default:
				}
			}
			final names = [for (field in fields) field.name];
			final exprs:Array<Expr> = [
				for (name in names)
					macro if ($i{name} != null)
						this.$name = $i{name}
			];
			if (!local) {
				fields.push({
					name: "new",
					pos: null,
					access: [APublic],
					kind: FFun({
						args: [
							for (field in fields)
								{
									name: field.name,
									opt: true,
									type: switch field.kind {
										case FVar(t, _): t;
										default: null;
									}
								}
						],
						expr: macro $b{exprs},
					}),
				});

				fields.push({
					name: "__underlying__",
					pos: null,
					access: [APublic],
					kind: FFun({
						args: [],
						expr: macro return stdgo.Go.toInterface(this),
					})
				});
			}
			final params = getParams(spec.params, info, true);
			var p:TypePath = {name: name, pack: []};
			/*if (params != null && params.length > 0)
				p.params = typeParamDeclsToTypeParams(params);*/
			var args:Array<Expr> = [];
			var sets:Array<Expr> = [];
			for (field in fields) {
				switch field.kind {
					case FVar(t, e):
						final fieldName = field.name;
						args.push(macro $i{fieldName});
						sets.push(macro this.$fieldName = __tmp__.$fieldName);
					default:
				}
			}
			sets.push(macro return this);
			final localEmbeddedFields:Array<Field> = [];
			var prevRenameIdents = info.renameIdents.copy();
			for (method in spec.methods) { // covers both embedded interfaces and structures
				// embedded methods
				if (structAddFieldsIndex > -1 && structAddFieldsIndex <= method.index[0])
					continue;
				final fieldIndex = method.index[0];
				final field = fields[fieldIndex];
				if (field == null)
					continue;
				final name = field.name;
				// can conflict with imports, without prevRenameIdents
				info.renameIdents[name] = name;
				info.restricted = [];
				final type = typeof(method.type, info, false);
				switch type {
					case signature(variadic, _.get() => sigParams, _.get() => results, _):
						final args:Array<Expr> = [];
						final params:Array<FunctionArg> = [];
						for (i in 0...sigParams.length) {
							switch sigParams[i] {
								case _var(oldName, _.get() => t):
									final name = formatHaxeFieldName(oldName, info);
									args.push(macro $i{name});
									params.push({
										name: name,
										type: toComplexType(t, info),
									});
								default:
									final name = "_" + i;
									args.push(macro $i{name});
									params.push({
										name: name,
										type: toComplexType(sigParams[i], info),
									});
							}
						}
						if (variadic) {
							var last = params.pop();
							switch last.type {
								case TPath(p):
									p.name = "Rest";
									p.pack = ["haxe"];
									p.sub = null;
									last.type = TPath(p);
								default:
							}
							args.push(macro...${args.pop()});
							params.push(last);
						}
						final fieldName = nameIdent(method.name, false, true, info);
						info.localIdents.remove(fieldName); 
						var ret:ComplexType = null;
						if (results.length > 0) {
							if (results.length == 1) {
								ret = toComplexType(results[0], info);
							} else {
								var i = -1;
								ret = TAnonymous([
									for (res in results) {
										i++;
										switch res {
											case _var(_, _.get() => res):
												{
													name: "_" + i,
													pos: null,
													kind: FVar(toComplexType(res, info)),
												}
											default:
												{
													name: "_" + i,
													pos: null,
													kind: FVar(toComplexType(res, info)),
												}
										}
									}
								]);
							}
						}
						final methodRecv = typeof(method.recv, info, false);
						final methodPointer = isPointer(methodRecv);
						var fieldPointerBool = false;
						//var elemType:ComplexType = null;
						switch field.kind {
							case FVar(TPath({name: "Pointer", pack: ["stdgo"], params: params}), _):
								switch params[0] {
									case TPType(TPath(p)):
										//elemType = TPath({name: p.name, pack: p.pack.copy(), sub: p.sub});
									default:
								}
								fieldPointerBool = true;
							default:
						}
						if (methodPointer) {
							if (fieldPointerBool) {
								args.unshift(macro $i{name});
							}else{
								args.unshift(macro stdgo.Go.pointer($i{name}));
							}
						}
						final methodName = formatHaxeFieldName(method.name,info);
						var expr = if (fieldPointerBool) {
							//trace(methodRecv);
							//macro @:check41 this.$name.value.$fieldName;
							switch methodRecv {
								case pointerType(_.get() => elem):
									if (isNamed(elem)) {
										final ct = toComplexType(elem, info);
										addPointerSuffix(ct);
										macro @:check420 (stdgo.Go.pointer(this.$name) : $ct).$fieldName;
									}else{
										macro @:check50 (this.$name ?? throw "null pointer dereference").$fieldName;
									}
								default:
									if (!isRef(getUnderlying(methodRecv))) {
										macro @:check310 (this.$name ?? throw "null pointer dereference").value.$fieldName;
									}else{
										macro @:check320 this.$name.value.$fieldName;
									}
							}
						}else{
							switch methodRecv {
								case pointerType(_.get() => elem):
									if (isNamed(elem)) {
										final ct = toComplexType(elem, info);
										addPointerSuffix(ct);
										macro @:check42 ((stdgo.Go.pointer(this.$name) : $ct) ?? throw "null pointer dereference").$fieldName;
									}else{
										macro @:check5 (this.$name ?? throw "null pointer dereference").$fieldName;
									}
								default:
									//trace(getUnderlying(methodRecv));
									if (!isRef(getUnderlying(methodRecv))) {
										macro @:check31 (this.$name ?? throw "null pointer dereference").$fieldName;
									}else{
										macro @:check32 this.$name.$fieldName;
									}
							}
						}
						if (info.global.externBool && !StringTools.endsWith(info.global.module.path, "_test")) {
							//expr = results.length == 1 ? defaultValue(results[0], info) : macro @:typeType null;
						}
						if (ret == null)
							ret = TPath({name: "Void", pack: []});
						final ftype = TFunction(params.map(param -> param.type), ret);
						final field:Field = {
							name: methodName,
							pos: null,
							access: [APublic],
							/*kind: FFun({
								args: params,
								ret: ret,
								expr: isVoid(ret) ? expr : macro return $expr,
							}),*/
							kind: FProp("get", "never", ftype),
						};
						final fieldGet:Field = {
							name: "get_" + methodName,
							pos: null,
							meta: [{name: ":embedded", pos: null}],
							access: [APublic],
							kind: FFun({
								args: [],
								ret: ftype,
								expr: macro return $expr,
								params: [],
							}),
						};
						if (local) {
							localEmbeddedFields.push(field);
							localEmbeddedFields.push(fieldGet);
						} else {
							fields.push(field);
							fields.push(fieldGet);
						}
					default:
						throw info.panic() + "method not a signature";
				}
				info.restricted = [];
			}
			info.renameIdents = prevRenameIdents;
			if (local) { // local type created from analysis/local
				final def:TypeDefinition = {
					name: name,
					pack: [],
					pos: null,
					fields: [],
					meta: [{name: ":local", pos: null, params: []}],
					kind: TDAlias(TAnonymous(fields.map(field -> {
						switch field.kind {
							case FVar(t, e):
								field.kind = FVar(t, null);
							default:
						}
						field;
					}))),
				}
				// if (localEmbeddedFields.length > 0) {
				final ct:ComplexType = TPath({
					name: splitDepFullPathName(def.name + "Pointer",info),
					pack: [],
					params: def.params?.map(param -> TPType(TPath({name: param.name, pack: []}))),
				});
				// type alias pointer
				final aliasPointerName = def.name + "Pointer";
				final aliasPointer:TypeDefinition = {
					name: aliasPointerName,
					pos: null,
					pack: [],
					kind: TDAlias(TPath({
						name: "Pointer",
						pack: ["stdgo"],
						params: [TPType(TPath({
							pack: [],
							name: splitDepFullPathName(def.name, info),
							params: def.params?.map(param -> TPType(TPath({name: param.name, pack: []})))}))
						]
					})),
					params: def.params,
					fields: [],
					isExtern: true,
					meta: [
						{name: ":keep", pos: null},
						{name: ":follow", pos: null},
					],
				};
				if (!alreadyExistsTypeDef(aliasPointer,info))
					info.data.defs.push(aliasPointer);
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
				final wrapper = createWrapper(wrapperName, ct);
				wrapper.isExtern = true;
				wrapper.params = def.params;
				if (!alreadyExistsTypeDef(wrapper,info))
					info.data.defs.push(wrapper);
				// embedding
				aliasPointer.meta.push({name: ":using", params: [macro $i{splitDepFullPathName(staticExtensionName, info)}], pos: null});
				def.meta.push({name: ":using", params: [macro $i{splitDepFullPathName(staticExtensionName, info)}], pos: null});
				if (!alreadyExistsTypeDef(staticExtension,info))
					info.data.defs.push(staticExtension);
				var embedded = false;
				for (field in localEmbeddedFields) { // embedded
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
								case FFun(fun):
									field.name = field.name.substr("_get".length);
									field.meta.push({name: ":localembedfields", pos: null});
									switch fun.ret {
										case TFunction(args, ret):
											fun.ret = ret;
											fun.args = [for (i in 0...args.length) {name: '_$i', type: args[i]}];
										default:
									}
									final t = TPath({name: splitDepFullPathName(def.name, info), pack: []});
									final fArgs = fun.args.map(arg -> macro $i{arg.name});
									if (fun.args.length > 0 && isRestType(fun.args[fun.args.length - 1].type)) {
										fArgs[fArgs.length - 1] = macro...$e{fArgs[fArgs.length - 1]};
									}
									fun.args.unshift({
										name: "__self__",
										type: t,
										meta: [],
									});
									fun.expr = macro ${fun.expr}($a{fArgs});
									final expr = {expr: fun.expr.expr, pos: null};
									final fieldName = field.name;
									final args = fun.args.slice(0).map(a -> macro $i{a.name});
									switch fun.args[fun.args.length - 1].type {
										case TPath(p):
											if (p.name == "Rest" && p.pack.length == 1 && p.pack[0] == "haxe") args[args.length - 1] = macro...$e{
												args[args.length - 1]
											};
										default:
									}
									fun.expr = replaceIdent(["this" => "__self__"], fun.expr);
									switch expr.expr {
										case EReturn(_):
											fun.expr = macro return ${fun.expr};
										default:
									}
									// embedded unnamed structs
									addLocalMethod(field.name, field.pos, field.meta, field.doc, field.access, fun, staticExtension, wrapper,
										true, def.params != null
										&& def.params.length > 0);
								default:
							}
						}
					}
				}
				// }
				return def;
				// meta.push({name: ":local", pos: null});
			}
			/*if (!externBool)
				meta.push({name: ":private", pos: null});*/
			var cl:TypeDefinition = {
				name: name,
				pos: null,
				fields: fields,
				pack: [],
				params: params,
				doc: doc,
				isExtern: true,
				meta: meta,
				kind: TDClass(),
			};
			cl.fields.push({
				name: "__copy__", // internally used
				pos: null,
				access: [APublic],
				kind: FFun({
					args: [],
					expr: macro {
						return new $p($a{args});
					},
				}),
			});
			return cl;
		case "InterfaceType": // type interface 
			var struct:Ast.InterfaceType = spec.type;
			if (struct.methods.list.length == 0 && !struct.incomplete) {
				final meta:Metadata = [{name: ":follow", pos: null}];
				final params = getParams(spec.params, info, true);
				return {
					name: name,
					pos: null,
					fields: [],
					pack: [],
					doc: getDocComment(spec),
					params: params,
					isExtern: externBool,
					meta: meta,
					kind: TDAlias(anyInterfaceType()),
				}
			}
			final staticExtensionName = name + "_static_extension";
			final staticExtension:TypeDefinition = {
				name: staticExtensionName,
				pos: null,
				pack: [],
				kind: TDClass(),
				fields: [],
				isExtern: true,
				meta: [
					{name: ":keep", pos: null},
				],
			};
			if (!alreadyExistsTypeDef(staticExtension,info))
				info.data.defs.push(staticExtension);
			final fields:Array<haxe.macro.Expr.Field> = typeFieldListMethods(struct.methods, info);
			final wrapper = macro class Wrapper {};
			for (i in 0...fields.length) {
				final field = fields[i];
				switch field.kind {
					case FProp(_, _, TFunction(args, ret), _):
						throw "use this prop";
						// f.args.unshift({})
						final fargs = [for (i in 0...args.length) macro $i{'_$i'}];
						if (args.length > 0 && isRestType(args[args.length - 1])) {
							fargs[fargs.length - 1] = macro...$e{fargs[fargs.length - 1]};
						}
						final fieldName = field.name;
						final f:haxe.macro.Expr.Function = {args: []};
						f.args = [for (i in 0...args.length) ({name: '_$i', type: args[i]} : haxe.macro.Expr.FunctionArg)];
						f.expr = macro t.$fieldName($a{fargs});
						f.ret = ret;
						if (!isVoid(f.ret))
							f.expr = macro return ${f.expr};
						field.meta.push({name: ":interfacetypefprop", pos: null});
						f.args.unshift({name: "t", type: TPath({name:splitDepFullPathName(name, info), pack: []})});
						// interface struct creation
						addLocalMethod(field.name, field.pos, field.meta, null, [], f, staticExtension, wrapper, false, false);
						f.expr = null;
						f.args.shift();
					case FFun(f):
						// f.args.unshift({})
						final args = [for (arg in f.args) macro $i{arg.name}];
						if (f.args.length > 0 && isRestType(f.args[f.args.length - 1].type)) {
							args[args.length - 1] = macro...$e{args[args.length - 1]};
						}
						final fieldName = field.name;
						f.expr = macro t.$fieldName($a{args});
						if (!isVoid(f.ret))
							f.expr = macro return ${f.expr};
						f.args.unshift({name: "t", type: TPath({name:splitDepFullPathName(name, info), pack: []})});
						if (field.meta == null)
							field.meta = [];
						field.meta.push({name: ":interfacetypeffun", pos: null});
						// interface struct creation
						addLocalMethod(field.name, field.pos, field.meta, null, [], f, staticExtension, wrapper, false, false);
						f.expr = null;
						f.args.shift();
					default:
				}
			}
			for (field in fields)
				field.access.push(ADynamic);
			var meta = [{name: ":interface", pos: null}];
			// embedded interfaces
			final implicits:Array<TypePath> = [];
			if (struct.methods != null && struct.methods.list != null)
				if (struct.methods.list.length == 1 && struct.methods.list[0].names.length == 0) {
					if (struct.methods.list[0].type.id == "BinaryExpr") {
						// union contract interface type
						final meta:Metadata = [{name: ":union", pos: null}];
						final params = getParams(spec.params, info, true);
						return {
							name: name,
							pack: [],
							pos: null,
							fields: [],
							params: params,
							isExtern: externBool,
							meta: meta,
							kind: TDStructure,//TDAlias(TPath({name: "Any", pack: []})),
						};
					}
				}

			for (method in struct.methods.list) {
				if (method.names.length == 0) {
					var t = typeof(method.type, info, false);
					t = getUnderlying(t);
					switch t {
						case interfaceType(_, methods):
							final ct = typeExprType(method.type, info);
							final tp = getTypePath(ct, info);
							if (tp == null) {
							}else{
								//implicits.push(tp);
								for (method in methods) {
									final name = method.name;//formatHaxeFieldName(method.name, info);
									switch toComplexType(method.type.get(), info) {
										case TFunction(args, ret):
											var hasFieldName = false;
											for (field in fields) {
												if (field.name == name) {
													hasFieldName = true;
													break;
												}
											}
											if (!hasFieldName) {
												fields.push({
													name: name,
													pos: null,
													access: [APublic],
													kind: FFun({
														args: [for (i in 0...args.length) ({name: '_$i', type: args[i]} : haxe.macro.Expr.FunctionArg)],
														ret: ret,
													}),
												});
											}
										default:
									}
								}
							}
						default:
					}
				}
			}
			final params = getParams(spec.params, info, true);
			if (struct.incomplete) {
				switch name {
					case "Error":
						implicits.push(switch errorType() {
							case TPath(p):
								p;
							default:
								throw "invalid";
						});
					default:
						trace("struct incomplete: " + name);
				}
			}
			return {
				name: name,
				pack: [],
				pos: null,
				doc: doc,
				params: params,
				fields: [],
				isExtern: externBool,
				meta: meta,
				kind: TDAlias(TIntersection([
					TPath({
						name: "StructType",
						pack: ["stdgo"]
					}),
					TExtend(implicits, fields)
				]))
			};
		default:
			return null;
	}
}

private function anyInterfaceType()
	return TPath({name: "AnyInterface", pack: ["stdgo"]});

private function invalidComplexType()
	return null;

private function errorType()
	return TPath({name: "Error", pack: ["stdgo"]});

private function typeImport(imp:Ast.ImportSpec, info:Info) {
	var doc = getDocComment(imp);
	imp.path = imp.path.substr(1, imp.path.length - 2); // remove quotes
	var path = normalizePath(imp.path);
	var alias = imp.name;
	var blankAlias = false;
	if (alias == "_") {
		blankAlias = true;
		alias = "";
	}
	path = toGoPath(path);
	final pack = path.split("/");
	pack.unshift("_internal");
	if (stdgoList.indexOf(path) != -1) { // haxe only type, otherwise the go code references Haxe
		pack.unshift("stdgo");
	}
	final name = pack[pack.length - 1];
	pack.push(importClassName(name)); // shorten path here
	if (alias != "") {
		if (alias == ".") {
			/*info.data.imports.push({
				path: pack,
				alias: "",
				doc: info.global.noCommentsBool ? "" : doc,
			});*/
		} else {
			info.renameIdents[alias] = ".." + pack.join(".");
		}
	} else {
		if (name == "atomic_") {
			info.renameIdents["atomic"] = ".." + pack.join(".");
		}
		info.renameIdents[name] = ".." + pack.join(".");
	}
	/*if (blankAlias) {
		info.data.imports.push({
			path: pack,
			alias: alias,
			doc: info.global.noCommentsBool ? "" : doc,
		});
	}*/
}

private function alreadyExistsTypeDef(td:TypeDefinition, info:Info):Bool {
	for (def in info.data.defs) {
		if (def.name == td.name) {
			return true;
		}
	}
	return false;
}

private function typeValue(value:Ast.ValueSpec, info:Info, constant:Bool):Array<TypeDefinition> {
	final elem = hashTypeToExprType(value.names[0].type.elem, info);
	var type:ComplexType = null;
	var interfaceBool = false;
	if (value.type.id != null) {
		type = typeExprType(value.type, info);
		interfaceBool = isAnyInterface(typeof(value.type, info, false));
	}
	var values:Array<TypeDefinition> = [];
	// destructure
	if (value.names.length > value.values.length && value.values.length > 0) {
		var t = typeof(value.values[0], info, false);
		var tmp = "__tmp__" + (info.blankCounter++);
		var tmpExpr = macro $i{splitDepFullPathName(tmp, info)};
		var func = typeExpr(value.values[0], info);
		var data = castTranslate(value.values[0], func, info);
		func = data.expr;
		info.blankCounter++;
		final posMin = info.blankCounter;
		values.unshift({
			name: tmp,
			pos: {min: posMin, max: 0, file: ""},
			pack: [],
			fields: [],
			kind: TDField(FVar(null, func))
		});
		var emptyNames = true;
		for (i in 0...value.names.length) {
			var fieldName = "_" + i;
			var nameStr = value.names[i]?.name;
			if (nameStr == null) {
				nameStr = fieldName;
			}else{
				if (nameStr != "_")
					emptyNames = false;
			}
			final name = nameIdent(nameStr, false, true, info);
			info.localIdents.remove(name);
			var e = macro $tmpExpr.$fieldName;
			final toType = typeof(value.names[i], info, false);
			e = assignTranslate(t,toType, e, info, false);
			values.push({
				name: name,
				pos: {min: posMin, max: 0, file: ""},
				pack: [],
				fields: [],
				isExtern: isTitle(value.names[i]?.name ?? ""),
				kind: TDField(FVar(type, e), [])
			});
		}
		if (emptyNames)
			info.global.order.push(tmp);
	} else {
		// normal
		for (i in 0...value.names.length) {
			var expr:Expr = null;
			if (value.values[i] == null) {
				if (type != null) {
					expr = defaultValue(typeof(value.type, info, false), info);
				} else {
					if (!info.global.externBool
						|| StringTools.endsWith(info.global.module.path, "_test")
						|| StringTools.endsWith(info.global.module.path, "_test")) {
						expr = typeExpr(info.lastValue, info);
						expr = assignTranslate(typeof(info.lastValue, info, false), info.lastType, expr, info);
					} else {
						expr = defaultValue(info.lastType, info);
					}
				}
			} else {
				info.lastValue = value.values[i];
				info.lastType = typeof(value.type, info, false);
				final t = typeof(value.values[i], info, false);
				final nameType = typeof(value.names[i], info, false);
				if (!info.global.externBool || StringTools.endsWith(info.global.module.path, "_test")) {
					expr = typeExpr(value.values[i], info);
					expr = assignTranslate(t, info.lastType, expr, info);
				} else {
					if (info.lastType != null && info.lastType != invalidType) {
						expr = defaultValue(info.lastType, info);
					} else {
						
						if (t == invalidType) {
							expr = defaultValue(nameType, info);
						}else{
							expr = defaultValue(t, info);
						}
					}
				}
				type = toComplexType(nameType,info);
			}
			if (expr == null)
				continue;
			var name = nameIdent(value.names[i].name, false, true, info);
			info.localIdents.remove(name);
			// empty name
			if (value.names[i].name == "_")
				info.global.order.push(name);
			var doc:String = getDocComment(value, value); // + getSource(value, info);
			var access = [];
			//if (!isTitle(value.names[i].name))
			//	access.push(APrivate);
			if (constant)
				access.push(AFinal);
			final patchName = info.global.module.path + ":" + name;
			final patch = Patch.list[patchName];
			if (patch != null) {
				expr = patch;
				Patch.list.remove(patchName);
			}
			if (info.global.varTraceBool)
				if (expr != null) {
					expr = macro {
						trace("start var: " + ${makeExpr(name)});
						final value = $expr;
						trace("end var: " + ${makeExpr(name)});
						value;
					}
				}
			final nameType = typeof(value.names[i], info, false);
			//expr = defaultValue(nameType, info);
			//expr = macro (() -> $expr)();
			values.push({
				name: name,
				pos: null,
				pack: [],
				fields: [],
				isExtern: isTitle(value.names[i].name),
				doc: info.global.noCommentsBool ? "" : doc,
				kind: TDField(FVar(type, expr), access)
			});
		}
	}
	return values;
}

private function getDocComment(doc:{doc:Ast.CommentGroup}, ?comment:{comment:Ast.CommentGroup}):String {
	var list:Array<String> = [];
	if (doc.doc != null && doc.doc.list != null) {
		var source = doc.doc.list.join("\n");
		source = sanatizeComment(source);
		list.push(source);
	}
	if (comment != null && comment.comment != null && comment.comment.list != null) {
		var source = comment.comment.list.join("\n");
		source = sanatizeComment(source);
		list.push(source);
	}
	return list.join("\n\n");
}

private function getSource(value:{pos:Int, end:Int}, info:Info):String {
	if (!info.printGoCode || value.pos == value.end)
		return "";
	var source:String = "";
	try {
		source = File.getContent(info.data.location);
	} catch (e) {
		trace("error: " + e + " data: " + info.data.location);
		return "";
	}
	source = source.substring(value.pos, value.end);
	source = "\n" + source;
	source = sanatizeComment(source);
	return source;
}

private function sanatizeComment(source:String):String {
	// sanatize comments
	if (source == "")
		return source;
	source = StringTools.replace(source, "/*", "");
	source = StringTools.replace(source, "*/", "");
	var lines = normalizeCLRF(source).split("\n");
	for (i in 0...lines.length) {
		if (lines[i].substr(0,3) == "// ")
			lines[i] = lines[i].substr(3);
		if (lines[i].substr(0,2) == "//")
			lines[i] = lines[i].substr(2);
	}
	lines = lines.map(line -> '* $line');
	return lines.join("\n");
}

private function typeAccess(name:String, isField:Bool = false):Array<Access> {
	return StringTools.startsWith(name, "_") ? [] : (isField ? [APublic] : []);
}

private function getRestrictedName(name:String, info:Info):String { // all function defs are restricted names
	if (info.global.module == null)
		return name;
	for (file in info.global.module.files) {
		for (def in file.defs) {
			if (def == null)
				continue;
			if (def.name == name) {
				final pack = info.global.module.path.split(".");
				pack.unshift("_internal");
				if (stdgoList.indexOf(toGoPath(info.global.module.path)) == -1) { // haxe only type, otherwise the go code references Haxe
					pack.unshift("stdgo");
				}
				final name = pack[pack.length - 1];
				pack.push(file.name);
				pack.push(def.name);
				return pack.join(".");
			}
		}
	}
	return name;
}

private function nameAscii(name:String):String {
	for (i in 0...name.length) {
		final char = name.charCodeAt(i);
		final isAscii = char > -1 && char < 128;
		if (!isAscii) {
			name = name.substr(0, i) + '$char' + name.substr(i + 1);
			if (i == 0)
				name = "_" + name;
		}
	}
	if (name.length > 255 - 80)
		name = name.substr(0,255 - 80);
	return name;
}

private function formatHaxeFieldName(name:String, info:Info) {
	final newName = nameIdent(name, false, true, info,false,false, null, true);
	return  newName;
}

private function untitle(name:String):String {
	if (isTitle(name)) {
		name = name.substr(0, 1).toLowerCase() + name.substring(1);
	} else {
		name = "_" + name;
	}
	return name;
}

private function nameIdent(name:String, rename:Bool, overwrite:Bool, info:Info, unique:Bool=false, isSelect:Bool=false, objPath:String=null, formatField:Bool=false):String {
	name = nameAscii(name);
	if (name == "_")
		return "__" + info.blankCounter++;
	if (name == "null")
		return "nil";
	if (name == "main")
		return name;
	if (name == "False" || name == "True" || name == "Main")
		name = "_" + name;
	var oldName = name;
	if (overwrite) { // either an overwrite or a rename has been set
		if (name == "nil") {
			name = "_null";
		}
		if (name == "false" || name == "true") {
			name = "_" + name;
		}
	} else {
		if (name == "nil")
			return "null";
		if (name == "false" || name == "true")
			return name;
	}
	var setUnique = false;
	if (rename && info.renameIdents.exists(name)) {
		name = info.renameIdents[name];
		if (unique) {
			name = name + "_";
			setUnique = true;
		}
	} else {
		if (name.charAt(0) == "_") {
			name = name = "_" + name;
		} else {
			name = untitle(name);
		}
	}
	if (!formatField && rename && info.restricted != null && info.restricted.indexOf(name) != -1) {
		name = getRestrictedName(name, info);
	}
	if (unique && setUnique && info.restricted != null) {
		while (info.restricted.indexOf(name) != -1) {
			name = name + "_";
		}
		info.restricted.push(name);
	}
	if (reserved.indexOf(name) != -1) {
		name = name + "_";
	}
	if (objPath != null) {
		final path = normalizePath(objPath);
		final pack  = path.split("/");
		pack.unshift("_internal");
		final path = toGoPath(path);
		if (stdgoList.indexOf(path) != -1) { // haxe only type, otherwise the go code references Haxe
			pack.unshift("stdgo");
		}
		final filePath = pack.pop();
		pack.push(filePath);
		pack.push(title(filePath) + "_" + name.toLowerCase());
		pack.push(name);
		//name = path + "." + filePath + "_" + name + "." + name;
		name = pack.join(".");
	}else if (!formatField && !isSelect && !overwrite && info.localIdents.indexOf(name) == -1){
		if (name.indexOf(".") != -1)
			return name;
		name = splitDepFullPathName(name, info);
	}
	if (!formatField && overwrite) {
		//if (oldName != name)
		info.renameIdents[oldName] = name;
		info.localIdents.push(name);
	}
	return name;
}

function splitDepFullPathName(name:String, info:Info):String {
	var path = getGlobalPath(info);
	/*if (StringTools.endsWith(path, "_test")) {
		path = path.substr(0, path.length - "_test".length);
	}*/
	var filePath = info.global.filePath;
	/*if (StringTools.endsWith(filePath, "_test")) {
		filePath = filePath.substr(0, filePath.length - "_test".length);
	}*/
	name = path + "." + filePath + "_" + name.toLowerCase() + "." + name;
	return name;
}

function normalizePath(path:String):String {
	path = StringTools.replace(path, ".", "dot");
	path = StringTools.replace(path, ":", "colon");
	path = StringTools.replace(path, "go-", "godash");
	path = StringTools.replace(path, "-", "dash");
	var path = path.split("/");
	for (i in 0...path.length) {
		if (reserved.indexOf(path[i]) != -1) {
			path[i] += "_";
		}
	}
	return path.join("/");
}

class Global {
	public var localSpecs:Map<String,Array<Ast.Spec>> = [];
	public var gotoSystem:Bool = false;
	public var recoverBool:Bool = false;
	public var deferBool:Bool = false;
	public var debugBool:Bool = false;
	public var varTraceBool:Bool = false;
	public var funcTraceBool:Bool = false;
	public var stackBool:Bool = false;
	public var initBlock:Array<Expr> = [];
	public var path:String = "";
	public var filePath:String = "";
	public var module:Module = null;
	public var order:Array<String> = [];
	public var noCommentsBool:Bool = false;
	public var renameClasses:Map<String, String> = [];
	public var externBool:Bool = false;
	public var root:String = "";
	public var hashMap:Map<UInt, Dynamic> = [];

	public inline function new() {}

	public function copy():Global {
		var g = new Global();
		g.localSpecs = localSpecs;
		g.initBlock = initBlock.copy();
		g.noCommentsBool = noCommentsBool;
		g.renameClasses = renameClasses;
		g.path = path;
		g.module = module;
		g.filePath = filePath;
		g.varTraceBool = varTraceBool;
		g.debugBool = debugBool;
		g.funcTraceBool = funcTraceBool;
		g.stackBool = stackBool;
		g.root = root;
		g.hashMap = hashMap;
		return g;
	}
}

@:forward
abstract DebugMap(Map<String,String>) from Map<String,String> to Map<String,String> {
	public function new() {
		this = new Map<String,String>();
	}
	@:op([])
	private function get(x:String):String
		return this[x];
	@:op([])
	private function set(key:String,value:String):String {
		/*if (key == "zone" || key == "_zone") {
			trace(key,value);
			throw "issue";
		}*/
		return this[key] = value;
	}
}

class Info {
	public var blankCounter:Int = 0;
	public var restricted:Array<String> = [];
	public var thisName:String = "";
	public var funcName:String = "";
	public var returnNames:Array<String> = [];
	public var returnType:ComplexType = null;
	public var returnNamed:Bool;
	public var printGoCode:Bool = false;
	public var returnTypes:Array<GoType> = [];
	public var returnComplexTypes:Array<ComplexType> = [];
	public var returnInterfaceBool:Array<Bool> = [];
	public var className:String = "";
	public var lastValue:Ast.Expr = null;
	public var lastType:GoType = null;
	public var data:FileType;
	public var switchTag:Expr = null;
	public var switchIndex:Int = 0;
	public var switchTagType:GoType = null;
	public var localIdents:Array<String> = [];

	public var renameIdents:Map<String, String> = []; // identifiers
	public var classNames:Map<String, String> = []; // class names named types
	public var renameClasses:Map<String, String> = []; // class names i.e TPath

	public var locals:Map<UInt, GoType> = [];
	public var localUnderlyingNames:Map<String, GoType> = [];

	public var global = new Global();

	public function new(?global) {
		if (global != null)
			this.global = global;
	}

	public inline function copy() {
		var info = new Info();
		info.blankCounter = blankCounter;
		info.returnTypes = returnTypes.copy();
		info.returnComplexTypes = returnComplexTypes.copy();
		info.returnNames = returnNames.copy();
		info.returnType = returnType;
		info.returnNamed = returnNamed;
		info.funcName = funcName;
		info.className = className;
		info.data = data;
		info.switchIndex = switchIndex;
		info.global = global;//.copy(); // imports, types
		info.renameIdents = renameIdents.copy();
		info.localIdents = localIdents.copy();
		info.classNames = classNames.copy();
		info.renameClasses = renameClasses.copy();
		info.locals = locals.copy();
		info.localUnderlyingNames = localUnderlyingNames.copy();
		return info;
	}

	public function panic():String {
		return "panic: " + global.filePath + ":" + global.path + ":" + global.module.name + ":" + className + ":" + funcName + ":\n";
	}
}

typedef DataType = {args:Array<String>, pkgs:Array<PackageType>, index:String, typeList:Array<Dynamic>};

typedef PackageType = {
	path:String,
	name:String,
	order:Array<String>,
	files:Array<{
		path:String,
		location:String,
		decls:Array<Dynamic>,
		doc:Ast.CommentGroup,
	}>
}; // filepath of export.json also stored here

typedef Module = {name:String, path:String, files:Array<FileType>, isMain:Bool}
typedef ImportType = {path:Array<String>, alias:String, doc:String}

typedef FileType = {
	name:String,
	imports:Array<ImportType>,
	defs:Array<TypeDefinition>,
	location:String,
	isMain:Bool
}; // location is the global path to the file
