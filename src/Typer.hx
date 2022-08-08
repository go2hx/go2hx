import haxe.DynamicAccess;
import haxe.io.Path;
import haxe.macro.Expr;
import shared.Util;
import stdgo.reflect.Reflect;
import sys.io.File;

var stdgoList:Array<String> = stdgoList = haxe.Json.parse(File.getContent("./stdgo.json")).stdgo;
var excludesList:Array<String> = haxe.Json.parse(File.getContent("./excludes.json")).excludes;
var externs:Bool = false;

final reserved = [
	"cap", "iterator", "keyValueIterator", "switch", "case", "break", "continue", "default", "is", "abstract", "cast", "catch", "class", "do", "function",
	"dynamic", "else", "enum", "extends", "extern", "final", "for", "function", "if", "interface", "implements", "import", "in", "inline", "macro", "new",
	"operator", "overload", "override", "package", "private", "public", "return", "static", "this", "throw", "try", "typedef", "untyped", "using", "var",
	"while", "construct", "null", "in", "wait",
];

final reservedClassNames = [
	"Class",
	"Single", // Single is a 32bit float
	"Array",
	"Any",
	"Int",
	"Float",
	"String",
	"Int64",
	"AnyInterface",
	"Dynamic",
	"Null",
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
	// "Type",
	// "UnicodeString",
	"ValueType",
	"Void",
	"Xml",
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
];

var printer = new Printer();

function main(data:DataType, instance:Main.InstanceData) {
	final imports:Array<String> = [];
	// final command = "go list -f '{{ join .Imports \"\\n\" }}' " + data.args.join(" ");
	// Sys.println('$command:');
	// Sys.command(command);

	/*if (data.pkgs.length > 0 && excludesList.indexOf(data.pkgs[0].path) != -1) {
		final testPkgs = [];
		for (pkg in data.pkgs) {
			if (pkg.name == "main" || pkg.path == data.pkgs[0].path + "_test")
				testPkgs.push(pkg);
		}
		data.pkgs = testPkgs;
	}*/
	final noCommentsBool = instance.noComments;
	final externBool = instance.externBool;
	var list:Array<Module> = [];
	var defaultImports:Array<ImportType> = [
		{path: ["stdgo", "StdGoTypes"], alias: "", doc: ""},
		{path: ["stdgo", "Error"], alias: "", doc: ""},
		{path: ["stdgo", "Go"], alias: "", doc: ""},
		{path: ["stdgo", "GoString"], alias: "", doc: ""},
		{path: ["stdgo", "Pointer"], alias: "", doc: ""},

		{path: ["stdgo", "Slice"], alias: "", doc: ""},
		{path: ["stdgo", "GoArray"], alias: "", doc: ""},
		{path: ["stdgo", "GoMap"], alias: "", doc: ""},
		{path: ["stdgo", "Chan"], alias: "", doc: ""},
	];
	// trace(data.pkgs.map(pkg -> pkg.path + " " + pkg.name));
	final hashMap:Map<UInt, Dynamic> = [];
	for (obj in data.typeList) {
		hashMap[obj.hash] = obj;
	}
	// module system
	for (pkg in data.pkgs) {
		if (pkg.files == null)
			continue;
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
		var info = new Info();
		info.printGoCode = instance.printGoCode;
		info.global.path = pkg.path;
		info.global.externBool = instance.externBool;
		info.global.noCommentsBool = instance.noCommentsBool;
		info.global.module = module;
		info.global.root = instance.root;

		info.global.hashMap = hashMap;

		if (pkg.order != null) {
			pkg.order = pkg.order.map(s -> nameIdent(s, false, true, info));
		} else {
			pkg.order = [];
		}

		for (file in pkg.files) {
			if (file.decls == null)
				continue;
			file.path = importClassName(normalizePath(Path.withoutExtension(file.path))); // file naming
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
					nameIdent(decl.name.name, false, true, info); // overwrite name
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
								if (spec.name.name != "_")
									info.data.defs.push(typeSpec(spec, info, gen.tok == FUNC));
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
				// variables after so that all types can be refrenced by a value and have it exist.
				info.lastValue = null;
				info.lastType = null;
				for (spec in gen.specs) {
					if (spec == null)
						continue;
					switch spec.id {
						case "ValueSpec":
							final spec:Ast.ValueSpec = spec;
							values = values.concat(typeValue(spec, info));
						default:
					}
				}
			}
			var valuesSorted = [];
			for (name in pkg.order) {
				for (value in values) {
					if (value.name == name) {
						values.remove(value);
						valuesSorted.push(value);
						break;
					}
				}
			}
			if (values.length > 0) {
				// trace("unsorted values left: " + values.length);
				valuesSorted = valuesSorted.concat(values);
			}
			data.defs = valuesSorted.concat(data.defs);
			for (decl in declFuncs) { // parse function bodies last
				if (decl.recv != null && decl.recv.list.length > 0) {
					recvFunctions.push({decl: decl, path: file.path});
					continue;
				}
				var func = typeFunction(decl, info);
				if (func != null)
					data.defs.push(func);
			}

			// init system
			if (info.global.initBlock.length > 0) {
				var block = toExpr(EBlock(info.global.initBlock));
				block = mapReturnToThrow(block);
				data.defs.push({
					name: "_",
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
			// add file to module
			module.files.push(data);
		}
		// process recv functions check against all TypeSpecs
		for (file in module.files) {
			final defs = file.defs.copy();
			for (def in defs) {
				var local:Array<{func:Ast.FuncDecl, sel:String}> = [];
				final names:Array<{name:String, sel:String}> = [{name: def.name, sel: ""}];
				final methods:Array<Field> = [];
				for (recv in recvFunctions) {
					if (file.isMain && file.name != recv.path)
						continue;
					final recvName = getRecvName(recv.decl.recv.list[0].type, info);
					// trace(recvName, names);
					for (name in names) {
						if (recvName == name.name) {
							local.push({func: recv.decl, sel: name.sel});
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
					name: def.name,
					pack: [],
					params: def.params == null ? [] : def.params.map(p -> TPType(TPath({
						name: p.name,
						pack: []
					})))
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
				if (local.length == 0 && !embedded)
					continue;

				final staticExtensionName = def.name + "_static_extension";
				final staticExtension:TypeDefinition = {
					name: staticExtensionName,
					pos: null,
					pack: [],
					kind: TDClass(),
					fields: [],
					meta: [{name: ":keep", pos: null},],
				};
				final wrapperName = def.name + "_wrapper";
				// FIXME: wrapperType needs to be pointer sometimes
				var isWrapperPointer = false;
				final wrapper:TypeDefinition = macro class $wrapperName {
					public function new(__self__)
						this.__self__ = __self__;

					public function __underlying__()
						return Go.toInterface(__self__);

					var __self__:$ct;
				};
				wrapper.params = def.params;
				final fieldExtension = [info.global.filePath, staticExtensionName];
				final globalPath = getGlobalPath(info);
				if (globalPath != "")
					fieldExtension.unshift(globalPath);
				if (stdgoList.indexOf(toGoPath(globalPath)) != -1) { // haxe only type, otherwise the go code refrences Haxe
					fieldExtension.unshift("stdgo");
				}
				def.meta.push({name: ":using", params: [macro $p{fieldExtension}], pos: null});
				file.defs.push(staticExtension);
				file.defs.push(wrapper);
				var embedded = false;
				for (field in def.fields) {
					if (field.meta != null) {
						embedded = false;
						for (meta in field.meta) {
							if (meta.name == ":embedded") {
								embedded = true;
								break;
							}
						}
						if (embedded) {
							switch field.kind {
								case FFun(fun):
									final t = TPath({name: def.name, pack: []});
									fun.args.unshift({
										name: "__self__",
										type: t,
										meta: [],
									});
									final expr = {expr: fun.expr.expr, pos: null};
									final fieldName = field.name;
									final args = fun.args.slice(1).map(a -> macro $i{a.name});
									switch fun.args[fun.args.length - 1].type {
										case TPath(p):
											if (p.name == "Rest" && p.pack.length == 1 && p.pack[0] == "haxe") args[args.length - 1] = macro...$e{
												args[args.length - 1]
											};
										default:
									}
									fun.expr = macro __self__.$fieldName($a{args});
									switch expr.expr {
										case EReturn(_):
											fun.expr = macro return ${fun.expr};
										default:
									}
									addLocalMethod(fieldName, field.pos, field.meta, field.doc, field.access, fun, staticExtension, wrapper, true);
									fun.args = fun.args.slice(1);
									fun.expr = expr;
								default:
							}
						}
					}
				}
				for (decl in local) {
					var func = typeFunction(decl.func, info, restrictedNames, isNamed, decl.sel);
					switch func.kind {
						case TDField(kind, access):
							switch kind {
								case FFun(fun):
									final patchName = info.global.module.path + "." + def.name + ":" + func.name;
									final patch = Patch.list[patchName];
									if (patch != null)
										fun.expr = patch;
									if (Patch.funcInline.indexOf(patchName) != -1 && access.indexOf(AInline) == -1)
										access.push(AInline);
									if (addLocalMethod(func.name, func.pos, func.meta, func.doc, access, fun, staticExtension,
										wrapper)) isWrapperPointer = true;
								default:
							}
						default:
					}
				}
				if (isWrapperPointer) {
					switch wrapper.fields[wrapper.fields.length - 1].kind {
						case FVar(t, _):
							wrapper.fields[wrapper.fields.length - 1].kind = FVar(TPath({name: "Pointer", pack: [], params: [TPType(t)]}), null);
							switch wrapper.fields[wrapper.fields.length - 2].kind {
								case FFun(f):
									f.expr = macro return Go.toInterface(__self__.value);
								default:
							}
						default:
					}
				}
				// trace(printer.printTypeDefinition(staticExtension));
				// trace(printer.printTypeDefinition(wrapper));
			}
		}
		// for (file in module.files)
		//	trace(file.defs.map(def -> def.name));
		list.push(module);
	}

	return list;
}

private function addLocalMethod(name:String, pos, meta:Metadata, doc, access:Array<Access>, fun:Function, staticExtension:TypeDefinition,
		wrapper:TypeDefinition, embedded:Bool = false) {
	var isPointerArg = false;
	var isWrapperPointer = false;
	if (fun.args.length > 0) {
		for (meta in fun.args[0].meta) {
			if (meta.name == ":pointer") {
				fun.args[0].meta.remove(meta);
				isPointerArg = true;
				isWrapperPointer = true;
				break;
			}
		}
	}
	final funcName = name;
	final staticArgs = fun.args.copy();
	if (isPointerArg) {
		switch exprOfType(staticArgs[0].type) {
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
						staticArgs.unshift(f);
					default:
				}
			default:
		}
	}
	final funcName = name;
	var staticFieldExpr:Expr = {expr: fun.expr.expr, pos: null};
	final staticFieldAccess = access.copy();
	staticFieldAccess.push(AStatic);
	if (staticFieldAccess.indexOf(APublic) == -1)
		staticFieldAccess.push(APublic);
	// trace(staticArgs.map(arg -> printer.printFunctionArg(arg)));
	final staticField:Field = {
		name: funcName,
		pos: pos,
		meta: meta.copy(),
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
	if (isPointerArg)
		fieldArgs.shift();
	for (i in 0...fieldArgs.length)
		fieldArgs[i] = {name: fieldArgs[i].name, type: exprOfType(fieldArgs[i].type)};

	final fieldCallArgs = fieldArgs.map(arg -> macro $i{arg.name});
	var e = macro __self__;
	if (isPointerArg) {
		fieldCallArgs.unshift(macro __self__);
		e = macro $e.value;
	}
	final fieldFuncArgs = fieldArgs.map(arg -> arg.type);
	// trace(func.params);
	final field:Field = {
		name: funcName,
		access: [APublic],
		meta: meta.copy(),
		pos: pos,
		doc: doc,
		kind: FVar(TFunction(fieldFuncArgs, fieldRet), macro null),
	};
	wrapper.fields.unshift(field);
	staticExtension.fields.unshift(staticField);
	return isWrapperPointer;
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

private function mapReturnToThrow(e:Expr):Expr {
	var func = null;
	func = e -> return switch e.expr {
		case EReturn(_):
			macro throw "__return__";
		default:
			haxe.macro.ExprTools.map(e, func);
	}
	return func(e);
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
		case "BadStmt": throw "BAD STATEMENT TYPED";
		case "GoStmt": typeGoStmt(stmt, info);
		case "BranchStmt": typeBranchStmt(stmt, info);
		case "SelectStmt": typeSelectStmt(stmt, info);
		case "SendStmt": typeSendStmt(stmt, info);
		default: throw "unknown stmt id: " + stmt.id;
	}
	if (def == null)
		throw "stmt null: " + stmt.id;
	return toExpr(def);
}

private function typeSendStmt(stmt:Ast.SendStmt, info:Info):ExprDef {
	var chan = typeExpr(stmt.chan, info);
	var t = typeof(stmt.chan, info, false);
	var value = typeExpr(stmt.value, info);
	return (macro $chan.__send__($value)).expr;
}

private function typeSelectStmt(stmt:Ast.SelectStmt, info:Info):ExprDef {
	var defaultBlock:Expr = null;
	var list:Array<Expr> = [];
	if (stmt.body.list == null)
		return (macro @:null_select {}).expr;
	var needsReturn = true;
	for (i in 0...stmt.body.list.length) {
		final obj:Ast.CommClause = stmt.body.list[i];
		final block = toExpr(typeStmtList(obj.body, info, false));
		if (needsReturn && !exprWillReturn(block))
			needsReturn = false;
		var varName = "";
		if (obj.comm == null) { // default true
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
					continue;
				}
				varName = nameIdent(comm.lhs[0].name, false, true, info);
				comm = comm.rhs[0];
			} else if (comm.id == "ExprStmt") {
				comm = comm.x;
			}
			if (comm.id == "UnaryExpr") { // get
				var expr:Ast.UnaryExpr = comm;
				var e = typeExpr(expr.x, info);
				e = macro $e.__get__();
				if (varName != "")
					e = macro var $varName = $e;

				list.push(macro $e => $block);
			} else { // send
				var stmt:Ast.SendStmt = comm;
				final value = typeExpr(stmt.value, info);
				final e = typeExpr(stmt.chan, info);
				list.push(macro $e.__send__($value) => $block);
			}
		}
	}
	stdgo.internal.Random.shuffle(list); // psuedo random
	if (defaultBlock != null)
		list.push(defaultBlock);
	var e = macro $a{list};
	e = (macro Go.select($e));
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
		case CONTINUE: EContinue;
		case BREAK:
			info.global.hasBreak = true;
			if (stmt.label != null) {
				(macro @:break {
					____exit____ = true;
					____break____ = true;
					break;
				}).expr;
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
				continue;
			}).expr;
		default:
			(macro @:unknown_branch_stmt break).expr;
	}
}

private function typeGoStmt(stmt:Ast.GoStmt, info:Info):ExprDef {
	var call = typeExpr(stmt.call, info);
	return (macro Go.routine(() -> $call)).expr;
}

private function typeBlockStmt(stmt:Ast.BlockStmt, info:Info, isFunc:Bool):ExprDef {
	if (stmt.list == null) {
		if (isFunc && info.returnTypes.length > 0)
			return (macro throw "not implemeneted").expr;
		return (macro {}).expr;
	}
	return typeStmtList(stmt.list, info, isFunc);
}

private function typeStmtList(list:Array<Ast.Stmt>, info:Info, isFunc:Bool):ExprDef {
	final info = info;
	info.renameIdents = info.renameIdents.copy();
	info.classNames = info.classNames.copy();
	var exprs:Array<Expr> = [];
	// add named return values
	if (isFunc) {
		if (info.returnNamed) {
			var vars:Array<Var> = [];
			for (i in 0...info.returnNames.length) {
				vars.push({
					name: info.returnNames[i],
					type: info.returnComplexTypes[i],
					expr: defaultValue(info.returnTypes[i], info),
				});
			}
			exprs.unshift(toExpr(EVars(vars)));
		}
	}
	if (list != null) {
		exprs = exprs.concat([for (stmt in list) typeStmt(stmt, info)]);
	}
	if (list != null && info.deferBool && isFunc) { // defer system
		final ret = toExpr(typeReturnStmt({returnPos: 0, results: []}, info));
		final e = ret;
		var catchBlock:Array<Expr> = [
			macro if (!(__exception__.native is AnyInterfaceData))
				throw __exception__,
			macro __recover_exception__ = __exception__.native
		];
		switch e.expr {
			case EBlock(exprs):
				final last = exprs.pop();
				exprs.push(macro if (__recover_exception__ != null)
					throw __recover_exception__);
				exprs.push(last);
				catchBlock = catchBlock.concat(exprs);
			default:
				catchBlock = catchBlock.concat([macro __recover_exception__ != null ?throw __recover_exception__:$e]);
		}
		exprs.unshift(macro var __deferstack__:Array<Void->Void> = []);
		exprs.push(typeDeferReturn(info, true));
		exprs.push(ret);
		// recover
		exprs.unshift(macro var __recover_exception__:AnyInterface = null);
		var pos = 2 + info.returnNames.length;
		var trydef = macro try
			$b{exprs.slice(pos)} catch (__exception__)
			$b{catchBlock};
		// don't include recover and defer stack
		exprs = exprs.slice(0, pos);
		exprs.push(trydef);
	} else if (info.recoverBool && isFunc) {
		exprs.unshift(macro var __recover_exception__:AnyInterface = null);
	}
	return EBlock(exprs);
}

private function typeLabeledStmt(stmt:Ast.LabeledStmt, info:Info):ExprDef {
	final name = makeString(stmt.label.name);
	var stmt = typeStmt(stmt.stmt, info);
	switch stmt.expr {
		case EVars(_):
			stmt = macro ${stmt};
		default:
	}
	info.gotoSystem = true;
	return (macro @:label($name) $stmt).expr;
}

private function typeIncDecStmt(stmt:Ast.IncDecStmt, info:Info):ExprDef {
	var x = typeExpr(stmt.x, info);
	var t = typeof(stmt.x, info, false);
	switch escapeParens(x).expr {
		case ETernary(econd, eif, _):
			x = macro if ($econd)
				$eif;
		default:
	}
	return switch stmt.tok {
		case INC: return (macro $x++).expr;
		case DEC: return (macro $x--).expr;
		default:
			throw "unknown IncDec token: " + stmt.tok;
			null;
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
	info.deferBool = true;
	var exprs:Array<Expr> = [];
	for (i in 0...stmt.call.args.length) {
		var arg = typeExpr(stmt.call.args[i], info);
		var name = "_a" + i;
		exprs.push(macro var $name = $arg);
		stmt.call.args[i] = {id: "Ident", name: 'a$i'}; // switch out call arguments
	}
	// otherwise its Ident, Selector etc
	var call = toExpr(typeCallExpr(stmt.call, info));
	var e = macro __deferstack__.unshift(() -> $call);
	if (exprs.length > 0)
		return EBlock(exprs.concat([e]));
	return e.expr;
}

private function typeRangeStmt(stmt:Ast.RangeStmt, info:Info):ExprDef { // for stmt
	var key = stmt.key == null ? macro _ : typeExpr(stmt.key, info); // iterator int
	var x = typeExpr(stmt.x, info);
	var xType = typeof(stmt.x, info, false);
	x = destructureExpr(x, xType).x;
	var value = stmt.value == null ? macro _ : typeExpr(stmt.value, info); // value of x[key]
	var body = {expr: typeBlockStmt(stmt.body, info, false), pos: null};
	var assign = false;
	// both key and value
	if (stmt.tok == ASSIGN) { // non var
		switch body.expr {
			case EBlock(exprs):
				if (stmt.key != null && (stmt.key.id != "Ident" || stmt.key.name != "_"))
					exprs.unshift(macro $key = __key__);
				if (stmt.value != null && (stmt.value.id != "Ident" || stmt.value.name != "_"))
					exprs.unshift(macro $value = __value__);
				assign = true;
			default:
		}
	}
	x = toGoType(x);
	if (assign) {
		key = macro __key__;
		value = macro __value__;
	}
	return (macro for ($key => $value in $x) $body).expr;
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

	if (name == "any")
		return "AnyInterface";
	if (name == "AnyInterface")
		return "T_AnyInterface";

	if (name == "error")
		return "Error";
	if (name == "Error")
		return "T_error";
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

private function typeDeclStmt(stmt:Ast.DeclStmt, info:Info):ExprDef {
	if (stmt.decl.decls == null)
		return (macro {}).expr; // blank
	var decls:Array<Ast.GenDecl> = stmt.decl.decls;
	var vars:Array<Var> = [];
	for (decl in decls) {
		info.lastValue = null;
		info.lastType = null;
		for (spec in decl.specs) {
			switch spec.id {
				case "TypeSpec":
					var spec:Ast.TypeSpec = spec;
					final name = spec.name.name;
					spec.name.name += "_" + info.funcName + "_" + (info.count++);
					info.renameClasses[name] = className(spec.name.name, info);
					info.data.defs.push(typeSpec(spec, info));
				case "ValueSpec": // typeValue
					var spec:Ast.ValueSpec = spec;
					var type = spec.type.id != null ? typeExprType(spec.type, info) : null;
					var value = macro null;
					var args:Array<Expr> = [];

					if (spec.names.length > spec.values.length && spec.values.length > 0) {
						// destructure
						var tmp = "__tmp__";
						var func = typeExpr(spec.values[0], info);
						var data = castTranslate(spec.values[0], func, info);
						func = data.expr;
						if (data.ok)
							spec.names = [{name: "value", type: null}, {name: "ok", type: null}];
						vars.push({
							name: tmp,
							expr: func
						});
						var type = typeof(spec.values[0], info, false);
						var tuples = getReturnTupleType(type);
						for (i in 0...spec.names.length) {
							final fieldName = "_" + i;
							final type = toComplexType(tuples[i], info);
							final name = nameIdent(spec.names[i].name, false, false, info);
							vars.push({
								name: name,
								expr: macro __tmp__.$fieldName,
								type: type,
							});
						}
					} else {
						vars = vars.concat([
							// concat because this is in a for loop
							for (i in 0...spec.names.length) {
								var expr:Expr = null;
								if (spec.values[i] == null) {
									if (type != null) {
										expr = defaultValue(typeof(spec.type, info, false), info);
									} else {
										expr = typeExpr(info.lastValue, info);
										type = toComplexType(info.lastType, info);
										expr = assignTranslate(typeof(info.lastValue, info, false), info.lastType, expr, info);
									}
								} else {
									info.lastValue = spec.values[i];
									info.lastType = typeof(spec.type, info, false);
									expr = typeExpr(spec.values[i], info);
									expr = assignTranslate(typeof(info.lastValue, info, false), info.lastType, expr, info);
								}
								var name = nameIdent(spec.names[i].name, false, true, info);
								var t = typeof(spec.type, info, false);
								var exprType = type;
								if (exprType == null) {
									final specType = typeof(spec.names[i], info, false);
									if (specType != null)
										exprType = toComplexType(specType, info);
								}
								{
									name: name,
									type: exprType,
									expr: expr,
								};
							}
						]);
					}
				default:
					throw "unknown id: " + spec.id;
			}
		}
	}
	if (vars.length > 0)
		return EVars(vars);
	return (macro {}).expr; // blank expr def
} // ($expr : $type);

private function translateStruct(e:Expr, fromType:GoType, toType:GoType, info:Info):Expr {
	switch toType {
		case refType(_.get() => elem):
			toType = elem;
		default:
	}
	switch toType {
		case named(path, _, _, _):
			final underlying = getUnderlying(toType);
			var p = namedTypePath(path, info);
			var exprs:Array<Expr> = [];
			switch underlying {
				case structType(fields):
					for (field in fields) {
						final field = formatHaxeFieldName(field.name, info);
						exprs.push(macro $e.$field);
					}
				default:
					throw "not a struct";
			}
			return macro new $p($a{exprs});
		default:
			throw "struct is unnamed: " + toType;
	}
}

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
							if (ct != null)
								return macro($value : $ct);
						}
					default:
				}
			default:
		}
	}
	if (isAnyInterface(fromType)) {
		if (isNamed(toType)) {
			return macro(($e.value : Dynamic).__t__ : $ct);
		}

		return macro($e.value : $ct);
	}
	if (isInterface(pointerUnwrap(fromType))) {
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
	// trace(fromType, "|", toType);
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
				throw "struct type not tpath: " + ct;
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
				throw "pointer not tpath: " + ct;
		}
	}
	if (isAnyInterface(toType))
		return e;
	// trace(fromType, toType, isNamed(fromType), isInterface(toType));
	if (isNamed(fromType) && !isInterface(fromType) && isInterface(toType) && !isAnyInterface(toType)) {
		return wrapper(fromType, e, info);
	}
	// trace(fromType, toType);
	if ((isRef(fromType) || isPointer(fromType))
		&& !isAnyInterface(fromType)
		&& !isInterface(fromType)
		&& !isAnyInterface(toType)
		&& isInterface(toType)) {
		e = wrapper(fromType, e, info);
	}
	switch toType {
		case basic(unsafepointer_kind):
			if (fromType != toType) {
				e = macro Go.toInterface($e);
			}
		default:
			switch fromType {
				case basic(unsafepointer_kind):
					if (fromType != toType) {
						final rt = toReflectType(toType, info);
						e = macro $e.__convert__($rt);
					}
				default:
			}
	}

	return macro($e : $ct);
}

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
					setVar = nameIdent(lhs.name, false, false, info);
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
			types.push(interfaceType(true));
			macro $assign == null;
		} else {
			final type = typeExprType(obj.list[i], info);
			types.push(typeof(obj.list[i], info, false));
			macro Go.assertable(($assign : $type));
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
					var set = macro $assign == null ? null : $assign.__underlying__();
					if (types.length == 1) {
						type = toComplexType(types[0], info);
						if (!isAnyInterface(types[0]))
							set = macro $set == null ? null : $set.value;
					} else {
						if (!isAnyInterface(assignType))
							set = macro $set == null ? null : $set.value;
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
	info.global.hasBreak = false;
	var expr = ifs();
	if (info.global.hasBreak) {
		expr = macro {
			while (true) {
				$expr;
				break;
			}
		};
	}
	if (init != null)
		expr = switch expr.expr {
			case EBlock(exprs):
				exprs.unshift(init);
				macro $b{exprs};
			default:
				macro {
					$init;
					$expr;
				}
		}
	return expr.expr;
}

private function translateEquals(x:Expr, y:Expr, typeX:GoType, typeY:GoType, op:Binop, info:Info):Expr {
	switch typeX {
		case named(path, _, _, _):
			if (path == "reflect.Type") {
				var e = macro $x.toString() == $y.toString();
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
		if (isInterface(typeX) || isInterface(typeY))
			return toExpr(EBinop(op, x, y));
		if (isNamed(nilType))
			nilType = getUnderlying(nilType);
		switch nilType {
			case refType(_), signature(_, _, _, _), interfaceType(_, _), named(_, _), structType(_):
				switch op {
					case OpEq:
						return macro $value == null;
					default:
						return macro $value != null;
				}
			default:
		}
		switch op {
			case OpEq:
				return macro($value == null || $value.isNil());
			default:
				return macro($value != null && !$value.isNil());
		}
	}
	if (isInterface(typeX) || isInterface(typeY)) {
		if (isPointer(typeX))
			x = macro $x.value;
		if (isPointer(typeY))
			y = macro $y.value;
		x = toInterface(x, typeX, info);
		y = toInterface(y, typeY, info);
	}
	var t = getUnderlying(typeX);
	switch t {
		case structType(_):
			return toExpr(EBinop(op, toInterface(x, typeX, info), toInterface(y, typeY, info)));
		case arrayType(elem, len):
			var e = macro {
				var bool = true;
				for (i in 0...$x.length.toBasic()) {
					if (Go.toInterface($x[i]) != Go.toInterface($y[i])) {
						bool = false;
						break;
					};
				}
				bool;
			};
			switch op {
				case OpNotEq:
					return (macro !$e);
				default:
					return e;
			}
		default:
	}
	return toExpr(EBinop(op, x, y));
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
			value = translateEquals(tag, value, tagType, typeof(obj.list[i], info, false), OpEq, info);
		}
		if (i + 1 >= obj.list.length)
			return value;
		var next = condition(obj, i + 1);
		return toExpr(EBinop(OpBoolOr, value, next));
	}
	function ifs(i:Int = 0) {
		var obj:Ast.CaseClause = stmt.body.list[i];
		var cond = condition(obj);
		info.switchIndex = i;
		// info.switchNextTag = stmt.body.list.length <= i + 1 ? null : stmt.body.list[i + 1].list[0];
		var block = toExpr(typeStmtList(obj.body, info, false));
		if (hasFallThrough) {
			final index:Expr = makeExpr(i);
			if (cond != null)
				cond = macro __switchIndex__ == $index || (__switchIndex__ == -1 && $cond);
		}
		if (i + 1 >= stmt.body.list.length) {
			if (cond == null)
				return block;
			return macro if ($cond)
				$block;
		}
		var next = ifs(i + 1);
		if (cond == null)
			return next;
		return macro if ($cond)
			$block
		else
			$next;
	}
	info.global.hasBreak = false;
	var expr = ifs();
	if (hasFallThrough || info.global.hasBreak) {
		if (info.global.hasBreak) {
			function func(expr:Expr):Expr {
				return switch expr.expr {
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

		expr = macro {
			var __switchIndex__ = -1;
			while (true) {
				$expr;
				break;
			}
		};
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

private function typeForStmt(stmt:Ast.ForStmt, info:Info):ExprDef {
	var cond = stmt.cond == null ? toExpr(EConst(CIdent("true"))) : typeExpr(stmt.cond, info);
	var body = toExpr(typeBlockStmt(stmt.body, info, false));
	if (body.expr == null)
		body = macro {};
	if (cond.expr == null || body.expr == null) {
		trace("for stmt error: " + cond.expr + " body: " + body.expr);
		return null;
	}
	function ret(def:ExprDef):ExprDef {
		if (stmt.init != null) {
			var init = typeStmt(stmt.init, info);
			if (init == null) {
				trace("for stmt eror init: " + stmt.init);
				return null;
			}
			return EBlock([init, toExpr(def)]);
		}
		return def;
	}
	var def:Expr = null;
	if (stmt.post != null) {
		var ty = typeStmt(stmt.post, info);
		if (ty == null) {
			trace("for stmt error post: " + stmt.post);
			return null;
		}
		def = macro Go.cfor($cond, $ty, $body);
	} else {
		def = toExpr(EWhile(cond, body, true));
		return ret(def.expr);
	}
	return ret(def.expr);
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
					{value: $e, ok: true}
				} catch (_) {
					{value: $value, ok: false};
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
			final t = getUnderlying(typeof(obj, info, false));
			// trace(t);
			final value = switch t {
				case tuple(_, vars):
					defaultValue(vars[0], info);
				default:
					macro null;
			}
			{
				ok: true,
				expr: macro($x != null && $x.__exists__($index) ? {value: $x[$index], ok: true} : {value: $value, ok: false}),
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

private function argsTranslate(args:Array<FunctionArg>, block:Expr):Expr {
	switch block.expr {
		case EBlock(exprs):
			for (arg in args) {
				switch arg.type {
					case TPath(p):
						if (p.name == "Rest" && p.pack.length == 1 && p.pack[0] == "haxe" && p.params != null && p.params.length == 1) {
							final name = arg.name;
							switch p.params[0] {
								case TPType(ct):
									exprs.unshift(macro var $name = new Slice<$ct>(...$i{name}));
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
		default:
	}
	if (!isPointer(fromType) && !isRef(fromType)) {
		var isNamed = isNamed(fromType);
		switch fromType {
			case typeParam(_):
			case basic(_):
			case signature(_, _, _, _):
			case interfaceType(_, _):
			case sliceType(_), mapType(_, _), chanType(_, _): // pass by ref
			case arrayType(_, _): // pass by copy
				y = macro($y == null ? null : $y.__copy__());
			case structType(fields):
				final decl = toExpr(EObjectDecl([
					for (field in fields) {
						final name = nameIdent(field.name, false, false, info);
						{
							field: name,
							expr: passByCopy(field.type, macro x.$name, info),
						}
					}
				]));
				y = macro {
					final x = $y;
					$decl;
				};
			case named(_, _, type):
				switch getUnderlying(type) {
					case pointer(_), basic(_), signature(_, _, _, _), sliceType(_), mapType(_), chanType(_):
						return y;
					case invalidType:
						return y;
					default:
				}
				// trace(printer.printExpr(y), type);
				if (!isInterface(type) && !isAnyInterface(type)) {
					y = macro($y == null ? null : $y.__copy__());
				}
			case invalidType, pointer(_), previouslyNamed(_), refType(_), tuple(_, _):

			case _var(_, _):
		}
	}
	return y;
}

private function isRestExpr(expr:Expr):Bool {
	return switch expr.expr {
		case EUnop(op, _, _):
			op == OpSpread;
		default:
			false;
	}
}

function getReturnTupleType(type:GoType):Array<GoType> {
	return switch type {
		case tuple(_, vars):
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
		case tuple(_, vars):
			[
				for (i in 0...vars.length)
					"_" + i
			];
		default:
			throw "type is not a tuple: " + type;
	}
}

private function assignTranslate(fromType:GoType, toType:GoType, expr:Expr, info:Info, passCopy:Bool = true):Expr {
	fromType = cleanType(fromType);
	toType = cleanType(toType);
	var y = expr;

	if (fromType == null)
		return expr;

	if (isGeneric(toType)) {
		y = macro @:define("!macro") Go.typeFunction($y);
	}

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
		y = toInterface(y, fromType, info);
	}
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
	if (isNamed(fromType) && !isInterface(fromType) && isInterface(toType) && !isAnyInterface(toType)) {
		y = wrapper(fromType, y, info);
		return y;
	}
	if ((isRef(fromType) || isPointer(fromType))
		&& !isAnyInterface(fromType)
		&& !isInterface(fromType)
		&& !isAnyInterface(toType)
		&& isInterface(toType)) {
		y = wrapper(fromType, y, info);
		return y;
	}
	return y;
}

private function wrapper(t:GoType, y:Expr, info:Info):Expr {
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
		case named(name, methods, type):
			if (methods.length == 0)
				return y;
			if (type == invalidType)
				return y;
			if (isInterface(type)) {
				return selfPointer ? self : y;
			}
			final p = namedTypePath(name, info);
			p.name += "_wrapper";
			var exprs = [macro final __self__ = new $p($y)];
			final info = info.copy();
			info.restricted = [];
			for (method in methods) {
				final methodName = nameIdent(method.name, false, false, info);
				switch method.type.get() {
					case signature(variadic, _.get() => params, _.get() => results, _.get() => recv):
						final methodArgs = [];
						final ret:ComplexType = getReturn(results, info);
						final args = params.map(param -> switch param {
							case _var(name, _.get() => type):
								({
									name: nameIdent(name, true, false, info, true),
									type: toComplexType(type, info),
								} : FunctionArg);
							default:
								throw "unknown param type: " + param;
						});
						final callArgs = args.map(arg -> macro $i{arg.name});
						recv = replaceInvalidType(recv, type);
						if (isPointer(recv)) {
							if (!selfPointer) {
								callArgs.unshift(macro Go.pointer($y));
							} else {
								callArgs.unshift(y);
							}
						}
						var e = macro $self.$methodName($a{callArgs});
						if (!isVoid(ret))
							e = macro return $e;
						final f = toExpr(EFunction(FAnonymous, {
							expr: e,
							args: args,
							ret: ret,
						}));
						exprs.push(macro __self__.$methodName = @:define("!macro") $f);
					default:
				}
			}
			info.restricted = [];
			exprs.push(macro __self__);
			return macro $b{exprs};
		default:
	}
	return y;
}

private function replaceInvalidType(t:GoType, replace:GoType):GoType {
	return switch t {
		case _var(name, type):
			_var(name, {get: () -> replaceInvalidType(type.get(), replace)});
		case pointer(elem):
			pointer({get: () -> replaceInvalidType(elem.get(), replace)});
		case refType(elem):
			if (elem.get() == invalidType) {
				if (isRefValue(t)) {
					refType(elem);
				} else {
					pointer(elem);
				}
			} else {
				refType({get: () -> replaceInvalidType(elem.get(), replace)});
			}
		case named(path, methods, type, alias, params):
			named(path, methods, replaceInvalidType(type, replace), alias, params);
		case invalidType:
			replace;
		default:
			t;
	}
}

private function isGeneric(t:GoType):Bool {
	if (t == null)
		return false;
	switch t {
		case signature(_, _.get() => params, _, _.get() => recv):
			switch recv {
				case _var(_, _.get() => t):
					switch t {
						case refType(_.get() => s), pointer(_.get() => s):
							t = s;
						default:
					}
					switch t {
						case named(_, _, _, _, params):
							return params != null && params.length > 0;
						default:
					}
				default:
			}
			if (params.length > 0) {
				var t = params[0];
				switch t {
					case refType(_.get() => s), pointer(_.get() => s):
						t = s;
					default:
				}
				switch t {
					case _var(_, _.get() => named(_, _, _, _, params)):
						return params != null && params.length > 0;
					default:
				}
			}
		default:
	}
	return false;
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
			final expr = toExpr(typeBinaryExpr({
				x: stmt.lhs[0],
				y: {id: "ParenExpr", x: stmt.rhs[0]},
				op: nonAssignToken(stmt.tok),
				opPos: 0,
				type: stmt.lhs[0],
			}, info));

			final assign = typeExpr(stmt.lhs[0], info);
			if (stmt.lhs[0].id == "IndexExpr" || stmt.lhs[0].id == "StarExpr" && stmt.lhs[0].x.id == "IndexExpr") { // prevent invalid assign to null
				switch escapeParens(assign).expr {
					case ETernary(econd, eif, _):
						return (macro if ($econd)
							$expr).expr;
					default:
				}
			}
			return (macro $assign = $expr).expr;
		case ASSIGN:
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
					exprs.push(typeExpr(rhs, info));
				}
				if (exprs.length == 1)
					return exprs[0].expr;
				return (macro $b{exprs}).expr;
			}

			if (stmt.lhs.length == stmt.rhs.length) { // w,x = y,z
				var op = typeOp(stmt.tok);
				var exprs:Array<Expr> = [];
				for (i in 0...stmt.lhs.length) {
					var x = typeExpr(stmt.lhs[i], info);
					var y = typeExpr(stmt.rhs[i], info);
					// remove Haxe compiler error: "Assigning a value to itself"
					if (op == OpAssign) {
						switch x.expr {
							case EConst(c):
								switch c {
									case CIdent(s):
										switch y.expr {
											case EConst(c):
												switch c {
													case CIdent(s2):
														if (s == s2) continue;
													default:
												}
											default:
										}
									default:
								}
							default:
						}
					}
					var toType = typeof(stmt.lhs[i], info, false);
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
						// set underlying
						if (isStruct(toType)) {
							toType = getUnderlying(toType);
							switch toType {
								case structType(fields):
									final exprs:Array<Expr> = [
										for (field in fields) {
											final field = formatHaxeFieldName(field.name, info);
											macro $x.$field = __tmp__.$field;
										}
									];
									exprs.unshift(macro var __tmp__ = $y);
									return (macro $b{exprs}).expr;
								default:
							}
						}
					}
					if (x == null || y == null)
						return null;
					var expr = toExpr(EBinop(op, x, y));
					if (x.expr.match(EConst(CIdent("_")))) // blank means no assign/define just the rhs expr
						expr = y;
					if (op == null) {
						switch stmt.tok {
							case AND_NOT_ASSIGN: // &^=
								expr = toExpr(EBinop(OpAssignOp(OpAnd), x, macro - 1 ^ ($y)));
							default:
								throw "op is null";
						}
					}
					exprs.push(expr);
				}
				if (exprs.length == 1)
					return exprs[0].expr;
				var tmpIndex = 0;
				var inits:Array<Expr> = [];
				for (expr in exprs) {
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
							expr.expr = EBinop(op, e1, macro $i{tmpName});
						default:
							throw "expr should normally be a binop: " + expr.expr;
					}
				}
				exprs = inits.concat(exprs);
				return EBlock(exprs);
			} else if (stmt.lhs.length > stmt.rhs.length && stmt.rhs.length == 1) { // x,y = z
				// assign, destructure system
				var func = typeExpr(stmt.rhs[0], info);
				var t = typeof(stmt.rhs[0], info, false);
				var names:Array<String> = [];
				var types:Array<GoType> = [];
				var data = castTranslate(stmt.rhs[0], func, info);
				func = data.expr;
				if (data.ok)
					names = ["value", "ok"];
				switch t {
					case tuple(_, vars):
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
					final e = typeExpr(stmt.lhs[i], info);
					final fieldName = names[i];
					var e2 = macro __tmp__.$fieldName;
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
					assigns.push(macro $e = ${e2});
				}
				return EBlock([macro var __tmp__ = $func].concat(assigns));
			} else {
				throw "unknown type assign type: " + stmt;
			}
		case DEFINE: // var expr = x; var x = y; x:= y
			if (stmt.lhs.length == stmt.rhs.length) {
				// normal vars
				final vars:Array<Var> = [];
				for (i in 0...stmt.lhs.length) {
					final name = nameIdent(stmt.lhs[i].name, false, true, info);
					var expr = typeExpr(stmt.rhs[i], info);
					final toType = typeof(stmt.lhs[i], info, false);
					final fromType = typeof(stmt.rhs[i], info, false);
					expr = assignTranslate(fromType, toType, expr, info);
					var ct = toComplexType(toType, info);
					function f(ct:ComplexType):Bool {
						if (ct == null)
							return true;
						switch ct {
							case TPath(p):
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
					vars.push({
						name: name,
						type: ct,
						expr: expr,
					});
				}
				return EVars(vars);
			} else if (stmt.lhs.length > stmt.rhs.length && stmt.rhs.length == 1) {
				// define, destructure system
				var func = typeExpr(stmt.rhs[0], info);
				var t = typeof(stmt.rhs[0], info, false);
				var names:Array<String> = [];
				var types:Array<ComplexType> = [];
				var data = castTranslate(stmt.rhs[0], func, info);
				func = data.expr;
				if (data.ok)
					names = ["value", "ok"];
				switch t {
					case tuple(_, vars):
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
						throw "define left side not an ident";
					var varName = nameIdent(stmt.lhs[i].name, false, true, info);
					var fieldName = names[i];
					defines.push({name: varName, expr: macro __tmp__.$fieldName, type: types[i]});
				}
				return EVars([{name: "__tmp__", expr: func}].concat(defines));
			} else {
				throw "unknown type assign define type: " + stmt;
			}
		default:
			throw "type assign tok not found: " + stmt.tok;
	}
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
	function ret(e:ExprDef) {
		if (info.deferBool) {
			return EBlock([typeDeferReturn(info, false), toExpr(e)]);
		}
		return e;
	}
	// blank return
	if (stmt.results.length == 0) {
		if (info.returnTypes.length == 0)
			return ret(EReturn());
		if (info.returnTypes.length == 1) {
			if (info.returnNames.length == 1 && info.returnNamed)
				return ret(EReturn(macro $i{info.returnNames[0]}));
			return ret(EReturn(defaultValue(info.returnTypes[0], info)));
		}
		var fields:Array<ObjectField> = [
			for (i in 0...info.returnTypes.length)
				{field: "_" + i, expr: info.returnNamed ? macro $i{info.returnNames[i]} : defaultValue(info.returnTypes[i], info)}
		];
		return ret(EReturn(toExpr(EObjectDecl(fields))));
	}
	if (stmt.results.length == 1) {
		var e = typeExpr(stmt.results[0], info);
		var retType = info.returnTypes[0];
		if (info.returnTypes.length > 1) {
			retType = tuple(info.returnTypes.length, info.returnNamed ? [
				for (i in 0...info.returnTypes.length)
					_var(info.returnNames[i], {get: () -> info.returnTypes[i]})
			] : info.returnTypes);
		}
		if (retType != null) {
			final t = typeof(stmt.results[0], info, false);
			e = assignTranslate(t, retType, e, info);
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
	return ret(EReturn(expr));
}

private function typeExprType(expr:Dynamic, info:Info):ComplexType { // get the type of an expr

	if (expr == null)
		return null;
	var type = switch expr.id {
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
		default:
			throw "Type expr unknown: " + expr.id;
			null;
	}
	if (type == null)
		throw "Type expr is null: " + expr.id;
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

private function mapTypeExpr(expr:Ast.MapType, info:Info):ComplexType {
	var keyType = typeExprType(expr.key, info);
	var valueType = typeExprType(expr.value, info);
	if (keyType == null || valueType == null)
		return null;
	return TPath({
		name: "GoMap",
		pack: [],
		params: [TPType(keyType), TPType(valueType)],
	});
}

private function chanTypeExpr(expr:Ast.ChanType, info:Info):ComplexType {
	var type = typeExprType(expr.value, info);
	return TPath({
		name: "Chan",
		pack: [],
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
		return TPath({name: "Dynamic", pack: []});
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
				len = macro($len : GoInt).toBasic();
		}
		return TPath({
			pack: [],
			name: "GoArray",
			params: type != null ? [TPType(type), TPExpr(len)] : [],
		});
	}
	// slice
	return TPath({
		pack: [],
		name: "Slice",
		params: type != null ? [TPType(type)] : []
	});
}

private function starType(expr:Ast.StarExpr, info:Info):ComplexType { // pointer type
	var type = typeExprType(expr.x, info);
	var t = typeof(expr.x, info, false);
	if (isRefValue(t))
		return type;
	return TPath({
		pack: [],
		name: "Pointer",
		params: type != null ? [TPType(type)] : [],
	});
}

private function identType(expr:Ast.Ident, info:Info):ComplexType {
	var name = expr.name;
	for (t in basicTypes) {
		if (name == t) {
			name = "Go" + title(name);
			if (name.substr(2, 4) == "Uint") {
				name = "GoUInt" + name.substr(6);
			}
			break;
		}
	}
	name = className(name, info);
	if (StringTools.startsWith(name, "T__struct_") && expr.type != null && expr.type.underlying != null) {
		info.locals[expr.type.underlying.hash] = typeof(expr.type, info, false);
	}
	return TPath({
		pack: [],
		name: name,
		sub: null,
	});
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
		case "BadExpr": throw "BAD EXPRESSION TYPED";
		case "InterfaceType": typeInterfaceType(expr, info);
		case "IndexListExpr": typeIndexListExpr(expr, info);
		default:
			trace("unknown expr id: " + expr.id);
			null;
	};
	if (def == null)
		throw "expr null: " + expr.id;
	return toExpr(def);
}

private function typeIndexListExpr(expr:Ast.IndexListExpr, info:Info):ExprDef {
	final x = typeExpr(expr.x, info);
	final t = typeof(expr.x, info, false);
	switch t {
		case signature(_, _.get() => params, _, _, _.get() => typeParams):
			final args = genericIndices(expr.indices, params, typeParams, info);
			if (args.length > 0) {
				return return (macro @:define("!macro") Go.typeFunction($x($a{args}))).expr;
			}
			return (macro @:define("!macro") Go.typeFunction($x)).expr;
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
					x = macro($x : GoString);
				default:
			}
		default:
	}
	var index = typeExpr(expr.index, info);
	var t = typeof(expr.x, info, false);
	final obj = destructureExpr(x, t);
	x = obj.x;
	t = obj.t;
	switch t {
		case arrayType(_, _), sliceType(_), basic(untyped_string_kind), basic(string_kind):
			index = assignTranslate(typeof(expr.index, info, false), basic(int_kind), index, info);
		case mapType(_.get() => indexType, _):
			index = assignTranslate(typeof(expr.index, info, false), indexType, index, info);
		case signature(_, _.get() => params, _, _, _.get() => typeParams): // generic param
			final args = genericIndices([expr.index], params, typeParams, info);
			if (args.length > 0) {
				return return (macro @:define("!macro") Go.typeFunction($x($a{args}))).expr;
			}
			return (macro @:define("!macro") Go.typeFunction($x)).expr;
		default:
			trace(t);
			index = macro @:invalid_index 0;
	}
	var e = macro($x != null ? $x[$index] : ${defaultValue(typeof(expr, info, false), info)});
	return e.expr;
}

private function typeInterfaceType(expr:Ast.InterfaceType, info:Info):ExprDef {
	return (macro {}).expr;
}

private function typeMapType(expr:Ast.MapType, info:Info):ExprDef {
	return null;
}

private function typeEllipsis(expr:Ast.Ellipsis, info:Info):ExprDef {
	var e = typeExpr(expr.elt, info);
	var t = typeof(expr.elt, info, false);
	var rest = typeRest(e);
	return rest != null ? rest.expr : null;
}

private function typeIdent(expr:Ast.Ident, info:Info, isSelect:Bool):ExprDef {
	var name = nameIdent(expr.name, true, false, info);
	return EConst(CIdent(name));
}

private function isFunction(expr:Ast.Expr, info:Info):Bool {
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
	function returnExpr(e:Expr):ExprDef {
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
			switch tupleArg.expr {
				case EBlock(exprs):
					exprs.unshift(macro var __tmp__ = $tupleArg);
				default:
					e = macro {
						var __tmp__ = $tupleArg;
						$e;
					};
			}
		}
		return e.expr;
	}
	function argSetString(fromType:GoType, arg:Expr) {
		if (fromType == null)
			return arg;
		switch fromType {
			case basic(kind):
				switch kind {
					case uint32_kind, uint_kind, uint64_kind:
						return macro Std.string($arg.toBasic());
					default:
				}
			default:
		}
		return arg;
	}
	function genArgs(translateType:Bool, pos:Int = 0, forceString:Bool = false) {
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
		// ellipsis
		if (expr.ellipsis != 0) {
			var last = args.pop();
			var t = typeof(exprArgs[exprArgs.length - 1], info, false);
			last = typeRest(last);
			args.push(last);
		}
		final type = typeof(expr.fun, info, false);
		if (translateType && type != null) {
			if (isInvalid(type)) { // set standard library expected call arguments
				if (expr.fun.id == "SelectorExpr") {
					var fun:Ast.SelectorExpr = expr.fun;
					if (fun.x.id == "Ident") {
						switch fun.x.name {
							case "unsafe":
								args[0] = macro Go.toInterface(${args[0]});
						}
					}
				}
				if (forceString) {
					for (i in 0...args.length) {
						final fromType = getVar(typeof(exprArgs[i], info, false));
						args[i] = argSetString(fromType, args[i]);
					}
				}
				return;
			}
			var sig = getSignature(type);
			if (sig != null) {
				switch sig {
					case signature(variadic, _.get() => params, _, _, _.get() => typeParams):
						var skip = 0;
						if (expr.fun.id == "IndexListExpr" || expr.fun.id == "IndexExpr") { // could need to set generics
							// trace(expr.fun.indices[0].id);
							final defaultArgs = genericIndices(expr.fun.id == "IndexExpr" ? [expr.fun.index] : expr.fun.indices, params, typeParams, info);
							skip = defaultArgs.length;
							args = defaultArgs.concat(args);
						}
						for (i in skip...args.length) {
							final fromType = getVar(typeof(exprArgs[i - skip], info, false));
							var toType = getVar(params[i - skip]);
							if (variadic && params.length <= i + 1 - skip) {
								toType = getElem(params[params.length - 1]);
							}
							if (forceString) {
								args[i] = argSetString(fromType, args[i]);
							} else {
								args[i] = assignTranslate(fromType, toType, args[i], info);
							}
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
			return toInterface(e, fromType, info).expr;
		}
		return returnExpr(checkType(e, ct, fromType, toType, info));
	}
	var genericBool = false;
	switch expr.fun.id {
		case "ArrayType":
			return typeAssertExpr({
				type: expr.fun,
				x: expr.args[0],
				lparen: 0,
				rparen: 0,
			}, info);
		case "SelectorExpr":
			final selType = typeof(expr.fun.sel, info, false);
			genericBool = isGeneric(selType);
			switch selType {
				case signature(_, _, _, _.get() => recv):
					switch recv {
						case _var(_, _.get() => type):
							final xType = typeof(expr.fun.x, info, false);
							final xTypePointer = isPointer(xType);
							if (isPointer(type)) {
								var selExpr = typeExpr(expr.fun.sel, info);
								final sel = switch selExpr.expr {
									case EConst(CIdent(s)):
										s;
									default:
										throw "unknown expr: " + expr.fun.sel;
								}
								var x = typeExpr(expr.fun.x, info);
								genArgs(true);
								args.unshift(macro Go.pointer($x));
								var e = x;
								if (xTypePointer)
									e = macro $e.value;
								e = macro $e.$sel($a{args});
								if (genericBool)
									e = macro @:define("!macro") $e;
								return returnExpr(e);
							}
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
						return returnExpr(macro($e($a{args}) : GoString));
					}
				case "Exit":
					if (expr.fun.x.id == "Ident" && expr.fun.x.name == "os") {
						genArgs(true);
						return (macro Sys.exit($a{args})).expr;
					}
			}
		case "FuncLit":
			var expr = toExpr(typeFuncLit(expr.fun, info));
			genArgs(true);
			return returnExpr(macro {
				var a = $expr;
				a($a{args});
			});
		case "Ident":
			expr.fun.name = expr.fun.name;
			if (!info.renameIdents.exists(expr.fun.name)) {
				switch expr.fun.name {
					case "panic":
						genArgs(false);
						return returnExpr(macro throw Go.toInterface(${args[0]}));
					case "recover":
						info.recoverBool = true;
						return returnExpr(macro({
							final r = __recover_exception__;
							__recover_exception__ = null;
							r;
						}));
					case "append":
						genArgs(false);
						var e = args.shift();
						if (args.length == 0)
							return returnExpr(e);
						var eType = getElem(typeof(expr.args[0], info, false));
						for (i in 0...args.length - (expr.ellipsis != 0 ? 1 : 0)) {
							final aType = typeof(expr.args[i + 1], info, false);
							args[i] = assignTranslate(aType, eType, args[i], info);
						}
						final ct = toComplexType(typeof(expr.args[0], info, false), info);
						final p = getTypePath(ct);
						return returnExpr(macro($e != null ? $e.__append__($a{args}) : new $p($a{args})));
					case "copy":
						genArgs(false);
						return returnExpr(macro Go.copySlice($a{args}));
					case "delete":
						var e = typeExpr(expr.args[0], info);
						var key = typeExpr(expr.args[1], info);
						var t = typeof(expr.args[0], info, false);
						t = getUnderlying(t);
						switch t {
							case mapType(_.get() => var keyType, _):
								key = assignTranslate(typeof(expr.args[1], info, false), keyType, key, info);
							case invalidType:
							default:
								throw "first arg of delete builtin function not of type map: " + t;
						}
						return returnExpr(macro if ($e != null)
							$e.__remove__($key));
					case "print":
						genArgs(true, 0, true);
						return returnExpr(macro stdgo.fmt.Fmt.print($a{args}));
					case "println":
						genArgs(true, 0, true);
						return returnExpr(macro stdgo.fmt.Fmt.println($a{args}));
					case "complex":
						genArgs(false);
						return returnExpr(macro new GoComplex128($a{args}));
					case "real":
						var e = typeExpr(expr.args[0], info);
						var t = typeof(expr.args[0], info, false);
						return returnExpr(macro $e.real);
					case "imag":
						var e = typeExpr(expr.args[0], info);
						var t = typeof(expr.args[0], info, false);
						return returnExpr(macro $e.imag);
					case "close":
						var e = typeExpr(expr.args[0], info);
						var t = typeof(expr.args[0], info, false);
						return returnExpr(macro if ($e != null)
							$e.__close__());
					case "cap":
						var e = typeExpr(expr.args[0], info);
						var t = typeof(expr.args[0], info, false);
						return returnExpr(macro($e != null ? $e.cap() : (0 : GoInt)));
					case "len":
						var e = typeExpr(expr.args[0], info);
						var t = typeof(expr.args[0], info, false);
						t = getUnderlying(t);
						return returnExpr(macro($e != null ? $e.length : (0 : GoInt)));
					case "new": // create default value put into pointer
						var t = typeExprType(expr.args[0], info);
						switch t {
							case TPath(_), TFunction(_, _), TAnonymous(_):
								var t = typeof(expr.args[0], info, false);
								var value = defaultValue(t, info);
								if (!isRefValue(t))
									value = macro Go.pointer($value);
								return returnExpr(value);
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
							size = macro($size : GoInt).toBasic();
						}
						if (cap != null) {
							cap = assignTranslate(typeof(expr.args[2], info, false), basic(int_kind), cap, info);
							cap = macro($cap : GoInt).toBasic();
							setCap = true;
						}
						var p:TypePath = switch type {
							case named(path, _, _):
								namedTypePath(path, info);
							default:
								null;
						}
						var e = switch getUnderlying(type) {
							case sliceType(_.get() => elem):
								var param = toComplexType(elem, info);
								if (p == null) {
									p = {name: "Slice", params: [TPType(param)], pack: []};
								}
								var value = defaultValue(elem, info);
								if (value == null)
									value = macro Go.expectedValue();
								if (size == null)
									return returnExpr(macro new $p());
								macro new $p(...[for (i in 0...$size) $value]);
							case mapType(_.get() => key, _.get() => value):
								var t = toReflectType(type, info);
								var keyType = toComplexType(key, info);
								var value = toComplexType(value, info);
								var isInt = false;
								switch getUnderlying(key) {
									case basic(kind):
										if (kind != string_kind) isInt = true;
									default:
								}
								if (isInt) {
									if (p == null)
										p = {name: "Map", pack: [], params: [TPType(TPath({name: "Int", pack: []})), TPType(value)]};
									macro new $p();
								} else {
									if (p == null)
										p = {name: "GoMap", pack: [], params: [TPType(keyType), TPType(value)]};
									final ct = TPath(p);
									macro(new GoObjectMap<$keyType, $value>(new stdgo.reflect.Reflect._Type($t)) : $ct);
								}
							case chanType(dir, _.get() => elem):
								var value = defaultValue(elem, info);
								var param = toComplexType(elem, info);
								if (size == null)
									size = macro 0;
								if (p == null)
									p = {name: "Chan", pack: [], params: [TPType(param)]};
								macro new $p($size, () -> $value);
							case invalidType:
								macro @:invalid_make null;
							default:
								throw "unknown make type: " + type;
						}
						if (setCap)
							e = macro $e.__setCap__($cap);
						return returnExpr(e);
				}
			}
	}
	var e = typeExpr(expr.fun, info);
	final type = typeof(expr.fun, info, false);
	var isFmtPrintFormat = false;
	var forceString = false;
	switch e.expr {
		case EField(e, field):
			var str = printer.printExpr(e);
			if (str == "stdgo.fmt.Fmt") {
				if (field.charAt(field.length - 1) == "f") {
					isFmtPrintFormat = true;
				} else {
					forceString = true;
				}
			}
		default:
	}
	if (args.length == 0)
		genArgs(!isFmtPrintFormat || !forceString, 0, forceString);
	e = macro $e($a{args});
	if (genericBool)
		e = macro @:define("!macro") $e;
	return returnExpr(e);
}

private function genericIndices(indices:Array<Ast.Expr>, params:Array<GoType>, typeParams:Array<GoType>, info:Info):Array<Expr> {
	var genericExprs:Array<Ast.Expr> = indices; // genericTypes but exprs
	var removalGenericExprs:Array<Ast.Expr> = [];
	if (typeParams.length == 0)
		return [];
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
			if (compareComplexType(argTypes[i], typeExprType(genericExpr, info))) { // checking if arg already has type matching for macro to use
				genericExprs.remove(genericExpr);
				break;
			}
		}
	}
	final args:Array<Expr> = [];
	if (genericExprs.length > 0) {
		for (genericExpr in genericExprs) {
			final t = typeof(genericExpr, info, false);
			final defaultType = defaultValue(t, info);
			args.push(defaultType);
		}
	}
	return args;
}

private function toInterface(x:Expr, t:GoType, info:Info):Expr {
	switch t {
		case named(_, _, _, _):
			if (!isInterface(t) && !isAnyInterface(t))
				x = wrapper(t, x, info);
		default:
	}
	return macro Go.toInterface($x);
}

private function toReflectType(t:GoType, info:Info):Expr {
	return switch t {
		case typeParam(name, params):
			final name = makeString(name);
			final params = macro [];
			macro stdgo.reflect.Reflect.GoType.typeParam($name, params);
		case refType(_.get() => elem):
			final elem = toReflectType(elem, info);
			macro stdgo.reflect.Reflect.GoType.refType($elem);
		case mapType(_.get() => key, _.get() => value):
			final key = toReflectType(key, info);
			final value = toReflectType(value, info);
			macro stdgo.reflect.Reflect.GoType.mapType($key, $value);
		case pointer(_.get() => elem):
			final elem = toReflectType(elem, info);
			macro stdgo.reflect.Reflect.GoType.pointer($elem);
		case arrayType(_.get() => elem, len):
			final elem = toReflectType(elem, info);
			final len = toExpr(EConst(CInt('$len')));
			macro stdgo.reflect.Reflect.GoType.arrayType($elem, $len);
		case sliceType(_.get() => elem):
			final elem = toReflectType(elem, info);
			macro stdgo.reflect.Reflect.GoType.sliceType($elem);
		case basic(kind):
			final name = macro $i{kind.getName()};
			macro stdgo.reflect.Reflect.GoType.basic($name);
		case _var(name, _.get() => type):
			toReflectType(type, info);
		case chanType(dir, _.get() => elem):
			final dir = toExpr(EConst(CInt('$dir')));
			final elem = toReflectType(elem, info);
			macro stdgo.reflect.Reflect.GoType.chanType($dir, $elem);
		case interfaceType(empty, methods):
			final empty = empty ? macro true : macro false;
			final methods = macro [];
			macro stdgo.reflect.Reflect.GoType.interfaceType($empty, $methods);
		case invalidType:
			macro stdgo.reflect.Reflect.GoType.invalidType;
		case named(path, methods, type):
			final methods = macro [];
			final t = toReflectType(type, info);
			final namedPath = namedTypePath(path, info);
			namedPath.pack.push(namedPath.name);
			final path = makeString(namedPath.pack.join("."));
			macro stdgo.reflect.Reflect.GoType.named($path, $methods, $t);
		case previouslyNamed(path):
			final path = makeString(path);
			macro stdgo.reflect.Reflect.GoType.previousNamed($path);
		case signature(variadic, params, results, _.get() => recv):
			final variadic = variadic ? macro true : macro false;
			final params = macro [];
			final results = macro [];
			final recv = toReflectType(recv, info);
			macro stdgo.reflect.Reflect.GoType.signature($variadic, $params, $results, $recv);
		case structType(fields):
			var exprs:Array<Expr> = [];
			for (field in fields) {
				final name = makeString(formatHaxeFieldName(field.name, info));
				final embedded = field.embedded ? macro true : macro false;
				final tag = makeString(field.tag);
				final t = toReflectType(field.type, info);
				exprs.push(macro {
					name: $name,
					embedded: $embedded,
					tag: $tag,
					type: $t,
				});
			}
			var expr = macro $a{exprs};
			macro stdgo.reflect.Reflect.GoType.structType($expr);
		case tuple(len, vars):
			final len = toExpr(EConst(CInt('$len')));
			final vars = [for (v in vars) toReflectType(v, info)];
			macro stdgo.reflect.Reflect.GoType.tuple($len, $a{vars});
	}
}

private function getLocalType(hash:UInt, underlying:GoType, info:Info):GoType {
	return info.locals.exists(hash) ? info.locals.get(hash) : underlying;
}

private function getTuple(e:Dynamic, info:Info):Array<GoType> {
	if (e == null)
		return [];
	var vars:Array<Dynamic> = e.vars;
	var tuples:Array<GoType> = [];
	var index = 0;
	for (v in vars) {
		final t = typeof(v.type, info, false);
		if (t == invalidType)
			trace("v:", v.type.id, "\n", t);
		if (v.name == "_" || v.name == "") {
			tuples.push(_var("_" + index, {get: () -> t}));
			index++;
			continue;
		}
		tuples.push(_var(v.name, {get: () -> t}));
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

private function typeof(e:Ast.Expr, info:Info, isNamed:Bool):GoType {
	if (e == null)
		return invalidType;
	var t = switch e.id {
		case "HashType":
			typeof(info.global.hashMap[e.hash], info, isNamed);
		case "TypeParam":
			if (e.constraint != null && e.constraint.embeds == null) {
				e.constraint = e.constraint.underlying;
			}
			if (e.constraint == null || e.constraint.embeds == null || e.constraint.embeds.length == 0) {
				typeParam(e.name, [interfaceType(true)]);
			} else {
				final terms:Array<Dynamic> = e.constraint.embeds[0].terms;
				if (terms == null) {
					typeof(e.constraint.embeds[0], info, false);
				} else {
					typeParam(e.name, [
						for (term in terms) {
							typeof(term.type, info, false);
						}
					]);
				}
			}
		case "Signature":
			final params = {get: () -> getTuple(hashTypeToExprType(e.params, info), info)};
			final results = {get: () -> getTuple(hashTypeToExprType(e.results, info), info)};
			final recv = {get: () -> typeof(e.recv, info, false)};
			final typeParams = {
				get: () -> {
					final typeParams = [];
					if (e.typeParams != null && e.typeParams.length > 0) {
						for (param in (e.typeParams : Array<Dynamic>)) {
							typeParams.push(typeof(param, info, false));
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
				throw path;
			}
			final underlying = {
				if (e.hash == null) {
					invalidType;
				} else if (info.locals.exists(e.hash)) {
					getLocalType(e.hash, null, info);
				} else if (info.localUnderlyingNames.exists(path)) {
					info.localUnderlyingNames[path];
				} else {
					typeof(e.underlying, info, true);
				}
			};
			final methods:Array<MethodType> = [];
			if (e.methods != null) {
				for (method in (e.methods : Array<Dynamic>)) {
					methods.push({
						name: method.name,
						type: {get: () -> typeof(method.type, info, false)},
						recv: {get: () -> typeof(method.recv, info, false)},
					});
				}
			}
			final params:Array<GoType> = [];
			if (e.params != null && e.params.length > 0) {
				for (param in (e.params : Array<Dynamic>)) {
					params.push(typeof(param, info, false));
				}
			}

			named(path, methods, underlying, e.alias, params);
		case "Basic":
			if (e.kind == 0) {
				invalidType;
			} else {
				basic(BasicKind.createByIndex(e.kind));
			}
		case "Tuple":
			if (e.len > 1) {
				tuple(e.len, [for (v in (e.vars : Array<Dynamic>)) typeof(v, info, false)]);
			} else {
				typeof(e.vars[0], info, false);
			}
		case "Var":
			if (e.name == "_" || e.name == "")
				return typeof(e.type, info, false);
			_var(e.name, {get: () -> typeof(e.type, info, false)});
		case "Interface":
			if (e.embeds.length == 1 && e.embeds[0].id == "Union") {
				typeof(e.embeds[0], info, false);
			} else {
				final underlying = interfaceType(e.empty, e.path);
				final t = getLocalType(e.hash, underlying, info);
				t;
			}
		case "Slice":
			sliceType({get: () -> typeof(e.elem, info, false)});
		case "Array":
			arrayType({get: () -> typeof(e.elem, info, false)}, e.len);
		case "Pointer":
			pointer({get: () -> typeof(e.elem, info, false)});
		case "Map":
			mapType({get: () -> typeof(e.key, info, false)}, {get: () -> typeof(e.elem, info, false)});
		case "Struct":
			var t:GoType = structType([
				for (field in (e.fields : Array<Dynamic>))
					{
						name: field.name,
						type: typeof(field.type, info, false),
						embedded: field.embedded,
						tag: field.tag == null ? "" : field.tag,
					}

			]);
			if (!isNamed) {
				t = getLocalType(e.hash, t, info);
			}
			t;
		case "Chan":
			chanType(e.dir, {get: () -> typeof(e.elem, info, false)});
		case null:
			return invalidType;
		case "CallExpr":
			var e:Ast.CallExpr = e;
			var type = typeof(e.type, info, false);
			switch type {
				case signature(variadic, params, _.get() => results, recv):
					return results[0];
				default:
					return type;
			}
		case "BasicLit":
			var e:Ast.BasicLit = e;
			if (e.type == null) {
				var kind = switch e.kind {
					case STRING: string_kind;
					case FLOAT: float64_kind;
					case INT: int64_kind;
					case IMAG: complex128_kind;
					case CHAR: int32_kind;
					default:
						throw "unknown basiclit typeof: " + e.kind;
				}
				basic(kind);
			} else {
				typeof(e.type, info, false);
			}
		case "Ident":
			var e:Ast.Ident = e;
			typeof(e.type, info, false);
		case "CompositeLit":
			var e:Ast.CompositeLit = e;
			typeof(e.type, info, false);
		case "SelectorExpr":
			var e:Ast.SelectorExpr = e;
			typeof(e.type, info, false);
		case "IndexExpr":
			var e:Ast.IndexExpr = e;
			typeof(e.type, info, false);
		case "IndexListExpr":
			var e:Ast.IndexListExpr = e;
			typeof(e.type, info, false);

		case "BinaryExpr":
			var e:Ast.BinaryExpr = e;
			typeof(e.type, info, false);
		case "StarExpr":
			var e:Ast.StarExpr = e;
			typeof(e.type, info, false);
		case "UnaryExpr":
			var e:Ast.UnaryExpr = e;
			switch e.op {
				case ARROW:
					getElem(typeof(e.x, info, false));
				case AND:
					pointer({get: () -> typeof(e.x, info, false)});
				default:
					typeof(e.x, info, false);
			}
		case "TypeAssertExpr":
			var e:Ast.TypeAssertExpr = e;
			typeof(e.type, info, false);
		case "FuncLit":
			var e:Ast.FuncLit = e;
			typeof(e.type.type, info, false);
		case "KeyValueExpr":
			var e:Ast.KeyValueExpr = e;
			mapType({get: () -> typeof(e.key, info, false)}, {get: () -> typeof(e.value, info, false)});
		case "SliceExpr":
			var e:Ast.SliceExpr = e;
			typeof(e.type, info, false);
		case "ParenExpr":
			var e:Ast.ParenExpr = e;
			typeof(e.x, info, false);
		case "InterfaceType":
			var e:Ast.InterfaceType = e;
			typeof(e.type, info, false);
		case "ArrayType":
			var e:Ast.ArrayType = e;
			typeof(e.type, info, false);
		case "MapType":
			var e:Ast.MapType = e;
			mapType({get: () -> typeof(e.key, info, false)}, {get: () -> typeof(e.value, info, false)});
		case "ChanType":
			var e:Ast.ChanType = e;
			typeof(e.type, info, false);
		case "StructType":
			var e:Ast.StructType = e;
			typeof(e.type, info, false);
		case "FuncType":
			var e:Ast.FuncType = e;
			typeof(e.type, info, false);
		default:
			throw "unknown typeof expr: " + e.id;
	}
	return switch t {
		case pointer(elem):
			isRefValue(elem.get()) ? refType(elem) : t;
		default:
			t;
	}
}

private function getGlobalPath(info:Info):String {
	var globalPath = info.global.path;
	if (StringTools.endsWith(info.global.path, ".pkg"))
		globalPath = globalPath.substr(0, globalPath.length - 4);
	return globalPath;
}

private function toGoPath(path:String):String {
	if (StringTools.endsWith(path, "_test")) {
		path = path.substr(0, path.length - "_test".length);
	}
	return StringTools.replace(path, ".", "/");
}

private function toHaxePath(path:String):String {
	return StringTools.replace(path, "/", ".");
}

private function namedTypePath(path:String, info:Info):TypePath { // other parseTypePath

	if (path == "command-line-arguments")
		path = "";
	if (path == "error")
		return errorTypePath();
	var index = path.indexOf("[");
	final params:Array<TypeParam> = [];
	if (index != -1) {
		for (s in path.substr(index).split(",")) {
			// params.push()
		}
		path = path.substr(0, index); // remove type param from path name
	}
	var last = path.lastIndexOf("/") + 1;
	var part = path.substr(last);
	var split = part.lastIndexOf(".");
	var pkg = part.substr(0, split);
	var cl = className(part.substr(split + 1), info);
	path = path.substr(0, last) + pkg;
	if (path == "command-line-arguments")
		path = "";
	path = normalizePath(path);
	var globalPath = getGlobalPath(info);
	globalPath = toGoPath(globalPath);
	var pack = [];
	if (globalPath != path) {
		pack = path.split("/");
		// trace(path);
		if (stdgoList.indexOf(toGoPath(path)) != -1) { // haxe only type, otherwise the go code refrences Haxe
			pack.unshift("stdgo");
		}
		if (last == 0 && split == -1)
			return {pack: [], name: cl};
		pack.push(title(pkg));
	}
	return {pack: pack, name: cl,};
}

private function toComplexType(e:GoType, info:Info):ComplexType {
	if (e == null)
		return TPath({pack: [], name: "Any"});
	return switch e {
		case refType(_.get() => elem):
			TPath({name: "Ref", pack: [], params: [TPType(toComplexType(elem, info))]});
		case basic(kind):
			switch kind {
				case int64_kind: TPath({pack: [], name: "GoInt64"});
				case int32_kind: TPath({pack: [], name: "GoInt32"});
				case int16_kind: TPath({pack: [], name: "GoInt16"});
				case int8_kind: TPath({pack: [], name: "GoInt8"});

				case int_kind: TPath({pack: [], name: "GoInt"});
				case uint_kind: TPath({pack: [], name: "GoUInt"});

				case uint64_kind: TPath({pack: [], name: "GoUInt64"});
				case uint32_kind: TPath({pack: [], name: "GoUInt32"});
				case uint16_kind: TPath({pack: [], name: "GoUInt16"});
				case uint8_kind: TPath({pack: [], name: "GoUInt8"});

				case string_kind: TPath({pack: [], name: "GoString"});
				case complex64_kind: TPath({pack: [], name: "GoComplex64"});
				case complex128_kind: TPath({pack: [], name: "GoComplex128"});
				case float32_kind: TPath({pack: [], name: "GoFloat32"});
				case float64_kind: TPath({pack: [], name: "GoFloat64"});
				case bool_kind: TPath({pack: [], name: "Bool"});

				case uintptr_kind: TPath({pack: [], name: "GoUIntptr"});

				case untyped_int_kind: TPath({pack: [], name: "GoUnTypedInt"});
				case untyped_bool_kind: TPath({pack: [], name: "Bool"});
				case untyped_float_kind: TPath({pack: [], name: "GoUnTypedFloat"});
				case untyped_rune_kind: TPath({pack: [], name: "GoInt32"});
				case untyped_complex_kind: TPath({pack: [], name: "GoUnTypedComplex"});
				case untyped_string_kind: TPath({pack: [], name: "GoString"});
				case untyped_nil_kind: null;
				case invalid_kind: null;
				case unsafepointer_kind: TPath({pack: ["stdgo", "unsafe", "Unsafe"], name: "UnsafePointer"});
				default:
					throw "unknown kind to complexType: " + kind;
			}
		case interfaceType(empty, _):
			if (empty)
				return TPath({pack: [], name: "AnyInterface"});
			throw "non empty interface";
		case named(path, _, underlying, _, params):
			if (path == null) {
				trace("underlying null path: " + printer.printComplexType(toComplexType(underlying, info)));
				throw path;
			}
			final p = namedTypePath(path, info);
			if (params != null)
				p.params = params.map(param -> TPType(toComplexType(param, info)));
			TPath(p);
		case sliceType(_.get() => elem):
			final ct = toComplexType(elem, info);
			TPath({pack: [], name: "Slice", params: [TPType(ct)]});
		case arrayType(_.get() => elem, len):
			final ct = toComplexType(elem, info);
			TPath({pack: [], name: "GoArray", params: [TPType(ct)]});
		case mapType(_.get() => key, _.get() => value):
			final ctKey = toComplexType(key, info);
			final ctValue = toComplexType(value, info);
			TPath({pack: [], name: "GoMap", params: [TPType(ctKey), TPType(ctValue)]});
		case invalidType:
			null;
		case pointer(_.get() => elem):
			final ct = toComplexType(elem, info);
			TPath({pack: [], name: "Pointer", params: [TPType(ct)]});
		case chanType(dir, _.get() => elem):
			final ct = toComplexType(elem, info);
			TPath({pack: [], name: "Chan", params: [TPType(ct)]});
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
			TPath({name: name, pack: []});
		default:
			throw "unknown goType to complexType: " + e;
	}
}

private function getReturn(results:Array<GoType>, info:Info) {
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
					return macro($expr : GoString);
				case CInt(_):
					return macro($expr : GoInt);
				case CFloat(_):
					return macro($expr : GoFloat64);
				default:
			}
		default:
	}
	return expr;
}

private function typeRest(expr:Expr):Expr {
	expr = toGoType(expr);
	return macro...$expr.__toArray__();
}

private function typeBasicLit(expr:Ast.BasicLit, info:Info):ExprDef {
	final type = typeof(expr.type, info, false);
	return setBasicLit(expr.kind, expr.value, type, expr.raw, info);
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
					return "\\u0" + num;
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
				default:
					return "\\" + String.fromCharCode(code);
			}
			backslash = false;
			i++;
			continue;
		}
		final code = value.charCodeAt(i);
		switch code {
			case "\\".code:
				backslash = true;
			case "$".code:
				buff.add("$$");
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

private function decodeEscapeSequences(value:String):Array<{?s:String, ?code:String}> {
	var backslash = false;
	var i = 0;
	final values:Array<{?s:String, ?code:String}> = [];
	var buff = new StringBuf();
	function escapeHex(value:String) {
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
					var hex = value.substr(i + 1, 2);
					escapeHex(hex);
					i += 2;
				case '0'.code, '1'.code, '2'.code, '3'.code, '4'.code, '5'.code, '6'.code, '7'.code, '8'.code, '9'.code:
					var num = 0;
					for (j in 0...3) {
						final numCode = Std.parseInt(value.charAt(i + j));
						final expo = Std.int(Math.pow(8, 2 - j));
						num += numCode * expo;
					}
					final hex = StringTools.hex(num, 2);
					escapeHex(hex);
					i += 3;
				case '"'.code:
					buff.add('"');
				case 'a'.code:
					buff.add("\\x07");
				case 'b'.code:
					escapeHex("08");
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
			case "$".code:
				buff.add("$$");
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

private function setBasicLit(kind:Ast.Token, value:String, type:GoType, raw:Bool, info:Info) {
	var ct:ComplexType = toComplexType(type, info);
	var e:Expr = switch kind {
		case STRING:
			if (!raw) {
				makeStringLit(decodeEscapeSequences(value));
			} else {
				makeString(rawEscapeSequences(value));
			}
		case CHAR:
			final const = makeString(getRune(value));
			if (ct == null)
				ct = TPath({name: "GoRune", pack: []});
			macro $const.code;
		case INT:
			var e = toExpr(EConst(CInt(value)));
			if (value.length >= 10) {
				try {
					var i = haxe.Int64Helper.parseString(value);
					if (i > 2147483647 || i < -2147483648) {
						e = makeString(value);
					}
				} catch (_) {
					e = makeString(value);
				}
			}
			e;
		case FLOAT:
			final e = toExpr(EConst(CFloat(value)));
			e;
		case IDENT:
			var name = nameIdent(value, false, false, info);
			macro $i{name};
		case IMAG:
			macro new GoComplex128(0, ${toExpr(EConst(CFloat(value)))});
		default:
			throw "basic lit kind unknown: " + kind;
			null;
	}
	if (ct != null) {
		switch ct {
			case TPath(p):
				if (p.params != null && p.params.length > 0)
					return e.expr; // ct not allowed to have params
			default:
		}
		e = macro($e : $ct);
	}
	return e.expr;
}

private function typeUnaryExpr(expr:Ast.UnaryExpr, info:Info):ExprDef {
	var x = typeExpr(expr.x, info);
	final t = typeof(expr.x, info, false);
	final isNamed = isNamed(t);
	if (expr.op == AND) {
		if (!isRefValue(t))
			return (macro Go.pointer($x)).expr;
		return x.expr;
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
	if (expr.type == null)
		return (macro @:invalid_compositelit_null null).expr;
	var type = typeof(expr.type, info, false);
	var ct = typeExprType(expr.type, info);
	final e = compositeLit(type, ct, expr, info);
	// trace(printer.printExpr({expr: e, pos: null}));
	return e;
}

function getTypePath(ct:ComplexType):TypePath {
	switch ct {
		case TPath(p):
			return p;
		default:
			throw "ComplexType not a TPath: " + ct;
	}
}

private function title(name:String):String {
	return name.charAt(0).toUpperCase() + name.substring(1);
}

private function hasTypeParam(ct:ComplexType):Bool {
	if (ct == null)
		return false;
	return switch ct {
		case TPath(p): p.params != null && p.params.length > 0;
		default: false;
	}
}

function compositeLit(type:GoType, ct:ComplexType, expr:Ast.CompositeLit, info:Info):ExprDef {
	var keyValueBool:Bool = hasKeyValueExpr(expr.elts);
	final underlying = getUnderlying(type);
	if (isInvalid(underlying)) {
		return (macro @:invalid_compositelit null).expr;
	}
	switch underlying {
		case pointer(_.get() => elem):
			final e = toExpr(compositeLit(elem, complexTypeElem(ct), expr, info));
			return (macro Go.pointer($e)).expr;
		case structType(fields):
			var objectFields:Array<ObjectField> = [];
			var fields = fields.copy();
			if (keyValueBool) {
				for (i in 0...expr.elts.length) {
					var elt:Ast.KeyValueExpr = expr.elts[i];
					var key = elt.key.name;
					var value = typeExpr(elt.value, info);
					var removed = false;
					for (field in fields) {
						if (field.name == "_")
							continue;
						if (field.name == key) {
							value = assignTranslate(typeof(elt.value, info, false), field.type, value, info);
							objectFields.push({
								field: nameIdent(key, false, true, info),
								expr: value, // macro ($value : $fieldType),
							});
							fields.remove(field);
							removed = true;
							break;
						}
					}
					if (!removed)
						throw "cannot find field type of name: " + key + " in names: " + [for (field in fields) field.name];
				}
				var e = toExpr(EObjectDecl(objectFields));
				return (macro($e : $ct)).expr;
			} else {
				// if (fields.length == 0)
				//	return (macro {}).expr; // no field struct
				final args = [
					for (i in 0...expr.elts.length)
						assignTranslate(typeof(expr.elts[i], info, false), fields[i].type, typeExpr(expr.elts[i], info), info)
				];
				if (hasTypeParam(ct) && args.length < fields.length) {
					for (i in args.length...fields.length) {
						args.push(defaultValue(fields[i].type, info, true));
					}
				}
				final p = getTypePath(ct);
				return (macro(new $p($a{args}) : $ct)).expr;
			}
		case sliceType(elem):
			final p = getTypePath(ct);
			var exprs:Array<{index:Int, expr:Expr}> = [];
			var index:Int = 0;
			var max:Int = 0;
			var keyValueBool:Bool = false;
			function run(elt:Ast.Expr) {
				if (elt.id == "CompositeLit") {
					if (elt.type == null)
						return {index: index, expr: toExpr(compositeLit(elem.get(), complexTypeElem(ct), elt, info))};
				}
				return {index: index, expr: typeExpr(elt, info)};
			}
			for (elt in expr.elts) {
				if (elt.id == "KeyValueExpr") {
					var elt:Ast.KeyValueExpr = elt;
					index = Std.parseInt(elt.key.value);
					exprs.push(run(elt.value));
					keyValueBool = true;
				} else {
					exprs.push(run(elt));
				}
				index++;
				if (index > max)
					max = index;
			}
			var length = toExpr(EConst(CInt('$max')));
			var value = defaultValue(elem.get(), info, false);
			if (keyValueBool) {
				var sets:Array<Expr> = [];
				for (i in 0...exprs.length) {
					var index = toExpr(EConst(CInt('${exprs[i].index}')));
					var e = exprs[i].expr;
					e = assignTranslate(typeof(expr.elts[i], info, false), elem.get(), e, info);
					sets.push(macro s[$index] = $e);
				}
				sets.push(macro s);
				return EBlock([macro var s:$ct = new $p(...([for (i in 0...$length) $value]))].concat(sets));
			} else {
				var params:Array<Expr> = [];
				for (i in 0...exprs.length) {
					var e = exprs[i].expr;
					final t = typeof(expr.elts[i], info, false);
					e = assignTranslate(t, elem.get(), e, info);
					params.push(e);
				}
				return (macro(new $p($a{params}) : $ct)).expr;
			}
		case arrayType(elem, len):
			final p = getTypePath(toComplexType(underlying, info));
			if (keyValueBool) {
				var exprs:Array<{index:Int, expr:Expr}> = [];
				var index:Int = 0;
				function run(elt:Ast.Expr) {
					if (elt.id == "CompositeLit") {
						if (elt.type == null)
							return {index: index, expr: toExpr(compositeLit(elem.get(), complexTypeElem(ct), elt, info))};
					}
					return {index: index, expr: typeExpr(elt, info)};
				}
				for (elt in expr.elts) {
					if (elt.id == "KeyValueExpr") { // array expansion syntax uses KeyValue, value being a string word representation of the number
						var elt:Ast.KeyValueExpr = elt;
						var int = Std.parseInt(elt.key.value);
						if (int != null)
							index = int;
						exprs.push(run(elt.value));
						keyValueBool = true;
					} else {
						exprs.push(run(elt));
					}
					index++;
				}
				var length = toExpr(EConst(CInt('$len')));
				final elem = elem.get();
				var value = defaultValue(elem, info, false);
				var sets:Array<Expr> = [];
				for (i in 0...exprs.length) {
					var index = toExpr(EConst(CInt('${exprs[i].index}')));
					var value = exprs[i].expr;
					value = assignTranslate(typeof(expr.elts[i], info, false), elem, value, info);
					sets.push(macro s[$index] = $value);
				}
				sets.push(macro s);
				return EBlock([macro var s:$ct = new $p(...[for (i in 0...$length) $value])].concat(sets));
			} else {
				var exprs:Array<Expr> = [];
				for (elt in expr.elts) {
					if (elt.id == "CompositeLit") {
						if (elt.type == null) {
							var e = toExpr(compositeLit(elem.get(), complexTypeElem(ct), elt, info));
							e = assignTranslate(typeof(elt, info, false), elem.get(), e, info);
							exprs.push(e);
							continue;
						}
					}
					var e = typeExpr(elt, info);
					e = assignTranslate(typeof(elt, info, false), elem.get(), e, info);
					exprs.push(e);
				}
				if (len == exprs.length)
					return (macro(new $p($a{exprs}) : $ct)).expr;
				var diff = len - exprs.length;
				var len = toExpr(EConst(CInt('$diff')));
				var value = defaultValue(elem.get(), info, true);
				var values = macro [for (i in 0...$len) $value];
				return (macro(new $p(...($a{exprs}.concat($values))) : $ct)).expr;
			}
		case mapType(_.get() => var keyType, _.get() => valueType):
			var t = toReflectType(type, info);
			var params:Array<Expr> = [];
			for (elt in expr.elts) {
				if (elt.id != "KeyValueExpr")
					throw "not a KeyValueExpr for Map CompositeLit";
				var elt:Ast.KeyValueExpr = elt;
				var key = typeExpr(elt.key, info);
				var value = typeExpr(elt.value, info);

				var fromValueType = typeof(elt.value, info, false);
				if (fromValueType == invalidType) {
					fromValueType = valueType;
					value = defaultValue(valueType, info, true);
				}
				key = assignTranslate(typeof(elt.key, info, false), keyType, key, info);
				value = assignTranslate(fromValueType, valueType, value, info);

				params.push(macro $key => $value);
			}
			return (macro Go.map($a{params})).expr;
		default:
			throw "not supported CompositeLit type: " + type;
	}
}

private function complexTypeElem(ct:ComplexType):ComplexType {
	return switch ct {
		case TPath(p):
			if (p.params != null && p.params.length > 0) {
				switch p.params[0] {
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
	info.deferBool = false;
	info.recoverBool = false;
}

private function typeFuncLit(expr:Ast.FuncLit, info:Info):ExprDef {
	final info = info.copy();
	info.deferBool = false;
	info.recoverBool = false;

	var args = typeFieldListArgs(expr.type.params, info);
	var ret = typeFieldListReturn(expr.type.results, info, true);
	var block = typeBlockStmt(expr.body, info, true);
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
		case AND_NOT: // &^ refrenced from Tardisgo
			// macro($x) & (($y) ^ (-1 : GoUnTypedInt)))
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
							kind: Ast.Token.INT,
							type: {
								id: "Basic",
								kind: BasicKind.untyped_int_kind.getIndex()
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
	if ((isInvalid(typeX) || isInterface(typeX)) && op != OpBoolAnd && !isInvalid(typeY) && op == OpAssign) {
		x = toInterface(x, typeX, info);
		y = toInterface(y, typeY, info);
	} else {
		switch typeX {
			case basic(untyped_float_kind):
				y = macro($y : GoUnTypedFloat);
			default:
		}
		switch typeY {
			case basic(untyped_float_kind):
				x = macro($x : GoUnTypedFloat);
			default:
		}
	}
	var e = toExpr(EBinop(op, x, y));
	e = assignTranslate(getUnderlying(typeX), typeof(expr.type, info, false), e, info);
	if (walk)
		e = walkBinary(e);
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

function getStructFields(type:GoType):Array<FieldType> {
	if (type == null)
		return [];
	return switch type {
		case named(_, _, elem), pointer(_.get() => elem), refType(_.get() => elem):
			getStructFields(elem);
		case structType(fields):
			fields;
		default:
			[];
	}
}

private function typeSelectorExpr(expr:Ast.SelectorExpr, info:Info):ExprDef { // EField

	var x = typeExpr(expr.x, info);
	var typeX = typeof(expr.x, info, false);

	var sel = nameIdent(expr.sel.name, false, false, info);
	var selFunctionBool = isFunction(expr.sel, info);

	if (isPointer(typeX)) {
		if (!isClass(expr.x, info))
			x = macro $x.value;
	}
	if (!selFunctionBool) {
		final fields = getStructFields(typeX);
		if (fields.length > 0) {
			var chains:Array<String> = []; // chains together a field selectors
			function recursion(path:String, fields:Array<FieldType>) {
				for (field in fields) {
					var setPath = path + nameIdent(field.name, false, false, info);
					chains.push(setPath);
					setPath += ".";
					var structFields = getStructFields(field.type);
					if (isPointer(field.type)) {
						setPath += "value.";
					}
					if (structFields.length > 0)
						recursion(setPath, structFields);
				}
			}
			recursion("", fields);
			chains.sort((a, b) -> {
				return a.length - b.length;
			});
			for (chain in chains) {
				var field = chain.substr(chain.lastIndexOf(".") + 1);
				if (field == sel) {
					sel = chain;
					break;
				}
			}
		}
	}
	final e = macro $x.$sel;
	return e.expr; // EField
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
	if (isPointer(xType)) // get pointer refrence of slice/array if pointer type
		x = macro $x.value;
	var low = expr.low != null ? typeExpr(expr.low, info) : macro 0;
	var high = expr.high != null ? typeExpr(expr.high, info) : null;
	final ct = toComplexType(typeof(expr, info, false), info);
	x = high != null ? macro($x.__slice__($low, $high) : $ct) : macro($x.__slice__($low) : $ct);
	if (expr.slice3) {
		var max = typeExpr(expr.max, info);
		max = assignTranslate(typeof(expr.max, info, false), basic(int_kind), max, info);
		x = macro $x.__setCap__(($max : GoInt) - (1 : GoInt));
	}
	return x.expr;
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
	final e = checkType(e, typeExprType(expr.type, info), typeof(expr.x, info, false), t, info);
	return e.expr;
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
	if (!isPointer(t))
		return x.expr;
	return (macro $x.value).expr; // pointer code
}

private function typeParenExpr(expr:Ast.ParenExpr, info:Info):ExprDef {
	var x = typeExpr(expr.x, info);
	return x != null ? EParenthesis(x) : null;
} // SPECS

private function typeDeferReturn(info:Info, nullcheck:Bool):Expr {
	return macro for (defer in __deferstack__) {
		defer();
	};
}

var counter:Int = 0;

private function typeFunction(decl:Ast.FuncDecl, data:Info, restricted:Array<String> = null, isNamed:Bool = false, sel:String = ""):TypeDefinition {
	final info = new Info();
	info.data = data.data;
	info.renameClasses = data.renameClasses;
	info.classNames = data.classNames.copy();
	info.renameIdents = data.renameIdents.copy();
	info.count = 0;
	info.gotoSystem = false;
	info.global = data.global;
	info.locals = data.locals.copy();
	info.localUnderlyingNames = data.localUnderlyingNames.copy();
	var name = nameIdent(decl.name.name, false, false, info);
	if (decl.name.name == "init" && (decl.recv == null || decl.recv.list == null)) {
		switch typeBlockStmt(decl.body, info, true) {
			case EBlock(exprs):
				info.global.initBlock = info.global.initBlock.concat(exprs);
			default:
		}
		return null;
	}
	info.funcName = name;
	var ret = typeFieldListReturn(decl.type.results, info, true);
	var args = typeFieldListArgs(decl.type.params, info);
	var meta:Metadata = [];
	var recvGeneric = false;
	var params:Array<TypeParamDecl> = null;
	if (decl.recv != null) {
		// trace(decl.recv.list);
		// params = decl.recv.list[0].type
		meta.push({name: ":keep", pos: null});
		var varName = decl.recv.list[0].names.length > 0 ? decl.recv.list[0].names[0].name : "";
		var varType = typeof(decl.recv.list[0].type, info, false);
		final ct = typeExprType(decl.recv.list[0].type, info);
		switch ct {
			case TPath(p):
				var f = null;
				f = (p:TypePath) -> {
					if (p.name == "Pointer" || p.name == "Ref") {
						switch p.params[0] {
							case TPType(TPath(p)):
								return f(p);
							default:
						}
					}
					return p;
				};
				p = f(p);
				recvGeneric = p.params != null && p.params.length > 0;
				if (recvGeneric) {
					params = p.params.map(param -> switch param {
						case TPType(TPath(p)):
							({name: p.name} : TypeParamDecl);
						default:
							throw "unknown param";
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
		args.unshift({name: varName, type: ct, meta: isPointer(varType) ? [{name: ":pointer", pos: null}] : []});
	}
	info.restricted = restricted;
	final patchName = info.global.module.path + ":" + name;
	var block:Expr = if (info.global.externBool) {
		info.returnNamed = false;
		toExpr(typeReturnStmt({returnPos: 0, results: []}, info));
	} else {
		final patch = Patch.list[patchName];
		if (decl.recv == null && patch != null) {
			patch;
		} else {
			toExpr(typeBlockStmt(decl.body, info, true));
		}
	}

	block = argsTranslate(args, block);

	info.restricted = [];
	if (info.gotoSystem) {
		var e = macro stdgo.internal.Macro.controlFlow($block);
		if (decl.type.results != null && decl.type.results.list.length > 0)
			e = macro return $e;
		block = macro {
			$e;
		};
	}
	var doc = getDoc(decl);
	var preamble = "//#go2hx ";
	var index = doc.indexOf(preamble);
	var finalDoc = doc + getSource(decl, info);
	if (index != -1) {
		var path = doc.substr(index + preamble.length);
		var params:Array<Expr> = [
			for (arg in args)
				macro $i{arg.name}
		];
		var e = macro $i{path}($a{params});
		block = macro return $e;
	}
	var access = [];
	if (decl.recv == null) {
		if (Patch.funcInline.indexOf(patchName) != -1 && access.indexOf(AInline) == -1)
			access.push(AInline);
	}
	var nonGenericParams:Array<TypeParamDecl> = []; // params
	if (decl.type.typeParams != null || recvGeneric) {
		for (arg in args) {
			arg.type = TPath({
				name: "Expr",
				sub: "ExprOf",
				pack: ["haxe", "macro"],
				params: [TPType(arg.type)]
			});
		}
		ret = TPath({
			name: "Expr",
			sub: "ExprOf",
			pack: ["haxe", "macro"],
			params: [TPType(ret)]
		});
		var nonGenericTypes = []; // exprs
		if (!recvGeneric) {
			// params = getParams(decl.typeParams, info);
			params = getParams(decl.type.typeParams, info);
			// non generics
			if (decl.type.typeParams != null) {
				for (field in decl.type.typeParams.list) {
					if (field.type.id != "Ident")
						continue; // multi type, generic type
					final t = typeExprType(field.type, info);
					for (name in field.names) {
						switch identType(name, info) {
							case TPath(p):
								nonGenericParams.push({
									name: p.name,
								});
								nonGenericTypes.push(macro {
									final t:haxe.macro.Expr.ComplexType = ${complexTypeToExpr(t)};
									final pos = haxe.macro.Context.currentPos();
									final td:haxe.macro.Expr.TypeDefinition = {
										name: $e{makeExpr(p.name)},
										pos: pos,
										pack: [],
										fields: [],
										meta: [{name: ":follow", pos: pos}],
										kind: TDAlias(t),
									};
									tds.push(td);
								});
							default:
								throw "issue";
						}
					}
				}
			}
		}
		access.push(AMacro);
		final funcArgs = [
			for (arg in args) {
				final ct = macro haxe.macro.Context.toComplexType(haxe.macro.Context.typeof($i{arg.name}));
				macro {
					var ct = $ct;
					switch ct {
						case TPath(p):
							if (p.name == "StdTypes" && p.sub == "Null" && p.pack.length == 0) {
								switch p.params[0] {
									case TPType(t):
										ct = t;
									default:
										@:keep var _ = false;
								}
							}
						default:
							@:keep var _ = false;
					}
					{
						name: ${makeString(arg.name)},
						type: ct,
					};
				}
			}
		];
		final retExpr = macro haxe.macro.Context.getExpectedType() == null ? null : haxe.macro.Context.toComplexType(haxe.macro.Context.getExpectedType());
		final nameArgs = [
			for (arg in args)
				macro $i{"$" + arg.name}
		];
		final extension = [
			for (arg in args)
				macro className += haxe.macro.Context.signature(haxe.macro.Context.toComplexType(haxe.macro.Context.typeof($i{arg.name}))) + "_"
		];
		final genericNames = params == null ? [] : params.map(param -> param.name);
		final genericTypes = [];
		function findGeneric(name:String, reverse:Array<Int>, t:ComplexType) {
			switch t {
				case TPath(p):
					if (p.params != null) {
						for (i in 0...p.params.length) {
							switch p.params[i] {
								case TPType(t):
									findGeneric(name, reverse.concat([i]), t);
								default:
							}
						}
					}
					if (p.pack == null || p.pack.length > 0)
						return;
					for (genericName in genericNames) {
						if (genericName != p.name)
							continue;
						var e = macro haxe.macro.Context.toComplexType(haxe.macro.Context.typeof($i{name}));
						// e = macro($e.getParameters()[0] : haxe.macro.Expr.TypePath).params;
						// reverse.unshift(0);
						for (index in reverse) {
							e = macro switch $e{e} {
								case TPath(p):
									switch p.params[$e{makeExpr(index)}] {
										case TPType(t):
											t;
										default:
											throw "invalid param t";
									}
								default:
									throw "invalid e";
							};
							// e = macro($e[$e{makeExpr(index)}].getParameters()[0] : haxe.macro.Expr.ComplexType);
						}
						genericTypes.push(macro {
							final t:haxe.macro.Expr.ComplexType = $e;
							final pos = haxe.macro.Context.currentPos();
							final td:haxe.macro.Expr.TypeDefinition = {
								name: $e{makeExpr(genericName)},
								pos: pos,
								pack: [],
								fields: [],
								meta: [{name: ":follow", pos: pos}],
								kind: TDAlias(t),
							};
							tds.push(td);
						});
						genericNames.remove(genericName);
					}
				default:
			}
		}
		for (arg in args) {
			switch arg.type {
				case TPath(p):
					switch p.params[0] {
						case TPType(t):
							findGeneric(arg.name, [], t);
						default:
					}
				default:
			}
		}
		if (genericNames.length > 0) {
			var i = genericNames.length - 1;
			var len = genericNames.length;
			genericNames.reverse();
			for (name in genericNames) {
				final arg:FunctionArg = {
					name: "__generic__" + i,
					type: TPath({
						name: "Expr",
						sub: "ExprOf",
						pack: ["haxe", "macro"],
						params: [TPType(TPath({name: name, pack: []}))],
					}),
				};
				args.unshift(arg);
				i--;
			}
			for (i in 0...len) {
				switch args[i].type {
					case TPath(p):
						switch p.params[0] {
							case TPType(t):
								findGeneric(args[i].name, [], t);
							default:
						}
					default:
				}
			}
		}
		final className = "T_" + info.className + "_" + info.funcName + "_";
		final call = macro $p{["$p{pack.concat([className])}", info.funcName]}($a{nameArgs});
		block = macro {
			final tds = [];
			final block = @:macro $block;
			var className = ${makeString(className)};
			$b{extension};
			final pack = ["stdgo", "generic", className.toLowerCase()];
			// $b{extensionDebug};
			try {
				haxe.macro.Context.getType(className);
			} catch (____exec____) {
				final td:haxe.macro.Expr.TypeDefinition = {
					name: className,
					pos: haxe.macro.Context.currentPos(),
					pack: [],
					fields: [
						{
							name: ${makeString(info.funcName)},
							pos: haxe.macro.Context.currentPos(),
							kind: FFun({
								expr: block,
								args: $a{funcArgs},
								ret: $retExpr,
							}),
							access: [APublic, AStatic],
						}
					],
					kind: TDClass(),
				};
				$b{genericTypes};
				$b{nonGenericTypes};
				tds.push(td);
				haxe.macro.Context.defineModule(pack.concat([className]).join("."), tds, haxe.macro.Context.getLocalImports());
			}
			return @:macro $call;
		};
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
	if (nonGenericParams.length > 0) {
		params = params.concat(nonGenericParams);
	}
	final def:TypeDefinition = {
		name: name,
		pos: null,
		pack: [],
		fields: [],
		doc: info.global.noCommentsBool ? "" : finalDoc,
		meta: meta,
		isExtern: isTitle(decl.name.name),
		kind: TDField(FFun({
			ret: ret,
			expr: block,
			params: params,
			args: args,
		}), access)
	};
	return def;
}

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
			final key = toComplexType(key, info);
			final value = toComplexType(value, info);
			macro(null : GoMap<$key, $value>);
		case sliceType(_.get() => elem):
			final t = toComplexType(elem, info);
			macro(null : Slice<$t>);
		case arrayType(_.get() => elem, len):
			final t = toComplexType(elem, info);
			var value = defaultValue(elem, info);
			if (value == null)
				value = macro Go.expectedValue();
			macro new GoArray<$t>(...[for (i in 0...${toExpr(EConst(CInt('$len')))}) $value]);
		case interfaceType(_):
			final ct = ct();
			macro(null : $ct);
		case chanType(_, _.get() => elem):
			final t = toComplexType(elem, info);
			var value = defaultValue(elem, info);
			macro(null : Chan<$t>);
		case pointer(_.get() => elem):
			final t = toComplexType(elem, info);
			macro(null : Pointer<$t>);
		case signature(_, _, _, _):
			macro null;
		case refType(_.get() => elem):
			final ct = toComplexType(elem, info);
			if (hasTypeParam(ct)) {
				macro null;
			} else {
				macro(null : $ct); // pointer can be nil
			}
		case named(path, _, underlying):
			switch underlying {
				case named(_, _, type):
					underlying = type;
				default:
			}
			switch underlying {
				case pointer(_), interfaceType(_), mapType(_, _), signature(_, _):
					final ct = ct();
					if (hasTypeParam(ct)) {
						macro null;
					} else {
						macro(null : $ct);
					}
				default:
					var t = namedTypePath(path, info);
					macro new $t();
			}
		case basic(kind):
			if (strict) {
				switch kind {
					case bool_kind: macro false;
					case int_kind: macro(0 : GoInt);
					case int8_kind: macro(0 : GoInt8);
					case int16_kind: macro(0 : GoInt16);
					case int32_kind: macro(0 : GoInt32);
					case int64_kind: macro(0 : GoInt64);
					case string_kind: macro("" : GoString);
					case uint_kind: macro(0 : GoUInt);
					case uint8_kind: macro(0 : GoUInt8);
					case uint16_kind: macro(0 : GoUInt16);
					case uint32_kind: macro(0 : GoUInt32);
					case uint64_kind: macro(0 : GoUInt64);
					case uintptr_kind: macro(0 : GoUIntptr);
					case float32_kind: macro(0 : GoFloat32);
					case float64_kind: macro(0 : GoFloat64);
					case complex64_kind: macro new GoComplex64(0, 0);
					case complex128_kind: macro new GoComplex128(0, 0);
					default: macro null;
				}
			} else {
				switch kind {
					case bool_kind: macro false;
					case string_kind: macro "";
					case int_kind, int8_kind, int16_kind, int32_kind, int64_kind: macro 0;
					case uint_kind, uint8_kind, uint16_kind, uint32_kind, uint64_kind: macro 0;
					case uintptr_kind: macro 0;
					case float32_kind, float64_kind: macro 0;
					case complex64_kind: macro new GoComplex64(0, 0);
					case complex128_kind: macro new GoComplex128(0, 0);
					default: macro null;
				}
			}
		case structType(fields):
			if (fields.length == 0)
				return macro null;
			var fs:Array<ObjectField> = [];
			var fields = typeFields([
				for (field in fields)
					{
						name: field.name,
						type: field.type,
						embedded: field.embedded,
						tag: field.tag,
					}
			], info, null, true);
			for (field in fields) {
				switch field.kind {
					case FVar(_, e):
						fs.push({
							field: field.name,
							expr: e
						});
					default:
				}
			}
			toExpr(EObjectDecl(fs));
		case invalidType:
			macro null;
		case tuple(_, vars):
			toExpr(EObjectDecl([
				for (i in 0...vars.length) {
					{
						field: "_" + i,
						expr: defaultValue(vars[i], info),
					}
				}
			]));
		case typeParam(_, _):
			// null;
			if (strict) {
				macro Go.expectedValue();
			} else {
				null;
			}
		case _var(_, _.get() => type):
			defaultValue(type, info, strict);
		default:
			throw "unsupported default value type: " + type;
	}
}

private function getRecvName(recv:Ast.Expr, info:Info):String {
	if (recv.id == "StarExpr" || recv.id == "IndexExpr" || recv.id == "IndexListExpr") {
		return getRecvName(recv.x, info);
	}
	return className(recv.name, info);
}

private function getRecvComplexTypeName(t:ComplexType, info:Info):String {
	return switch t {
		case TPath(p):
			if (p.name == "Pointer" && p.params != null && p.params.length == 1) {
				switch p.params[0] {
					case TPType(t):
						getRecvComplexTypeName(t, info);
					default:
						throw "no tp expr type allowed";
				}
			} else {
				p.name;
			}
		default:
			throw "cannot convert recv complex type: " + t;
	}
	return "";
}

private function getRecvInfo(recvType:ComplexType, type:GoType):{name:String, isPointer:Bool, type:ComplexType} {
	switch recvType {
		case TPath(p):
			if (p.name == "Pointer") {
				switch p.params[0] {
					case TPType(t):
						switch t {
							case TPath(p):
								return {name: p.name, isPointer: true, type: t};
							default:
						}
					default:
				}
			}
			return {name: p.name, isPointer: false, type: recvType};
		default:
	}
	return {name: "", isPointer: false, type: recvType};
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
				returnNames.push(formatHaxeFieldName(name.name, info));
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

private function isVoid(ct:ComplexType):Bool {
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
	var counter:Int = 0;
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
			args.push({
				name: nameIdent(name.name, false, true, info),
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
	for (field in list.list) {
		var expr:Ast.FuncType = field.type;

		var ret = typeFieldListReturn(expr.results, info, false);
		var params = typeFieldListArgs(expr.params, info);
		if (ret == null || params == null)
			continue;
		for (n in field.names) {
			var name = n.name;
			fields.push({
				name: nameIdent(name, true, false, info),
				pos: null,
				access: [APublic], // typeAccess(n.name, true),
				kind: FFun({
					args: params,
					ret: ret,
				})
			});
		}
	}
	return fields;
}

// can also be used for ObjectFields
private function typeFields(list:Array<FieldType>, info:Info, access:Array<Access> = null, defaultBool:Bool):Array<Field> {
	var fields:Array<Field> = [];
	var blankCounter = 0;
	for (field in list) {
		final ct = toComplexType(field.type, info);
		var name = field.name;
		var meta:Metadata = [];
		if (field.embedded) {
			meta.push({name: ":embedded", pos: null});
		}
		if (field.tag != "")
			meta.push({name: ":tag", pos: null, params: [makeString(field.tag)]});
		fields.push({
			name: nameIdent(name, false, false, info),
			pos: null,
			meta: meta,
			access: access == null ? typeAccess(name, true) : access,
			kind: FVar(toComplexType(field.type, info), defaultBool ? defaultValue(field.type, info, false) : null)
		});
	}
	return fields;
}

private function typeFieldListFields(list:Ast.FieldList, info:Info, access:Array<Access> = null, defaultBool:Bool):Array<Field> {
	var fields:Array<Field> = [];
	var fieldList:Array<FieldType> = [];
	function getName(type:Ast.Expr) {
		return switch type.id {
			case "SelectorExpr": type.sel.name;
			case "Ident": type.name;
			case "StarExpr": getName(type.x);
			case "Pointer": getName(type.elem);
			default: throw "unknown embedded: " + type.id;
		}
	}
	for (field in list.list) {
		var type = typeof(field.type, info, false);
		var tag = "";
		if (field.tag != "") {
			tag = field.tag;
		}
		if (field.names.length == 0) {
			// embedded
			var name:String = getName(field.type);
			if (name == null)
				continue;
			fieldList.push({
				name: name,
				type: type,
				tag: tag,
				embedded: true,
			});
		} else {
			for (n in field.names) {
				var name = n.name;
				fieldList.push({
					name: name,
					type: type,
					embedded: false,
					tag: tag,
				});
			}
		}
	}
	return typeFields(fieldList, info, access, defaultBool);
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
	var name = className(spec.name.name, info);
	info.renameIdents[spec.name.name] = name + "_static_extension";
	info.classNames[spec.name.name] = name + "_static_extension";
	var externBool = isTitle(spec.name.name);
	info.className = name;
	var doc:String = getComment(spec) + getDoc(spec) + getSource(spec, info);
	var ct = TPath({name: name, pack: []});
	var t = typeof(spec.type, info, false);
	switch t {
		case structType(fs):
			final path = getTypePath(ct);
			final superClass = path;
			final argExprs:Array<Expr> = [];
			final args:Array<FunctionArg> = [];
			final p:TypePath = {name: name, pack: []};
			for (field in fs) {
				final name = nameIdent(field.name, true, false, info);
				argExprs.push(macro $i{name});
				args.push({opt: true, name: name});
			}
			final meta:Metadata = [{name: ":structInit", pos: null}, {name: ":named", pos: null}];
			final params = getParams(spec.params, info, true); // named struct
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
					fields: [],
					meta: meta,
					kind: TDAlias(TPath({pack: [], name: "AnyInterface"})),
				};
			}
			final meta:Metadata = [];
			final params = getParams(spec.params, info, true);
			final ct = TPath(getTypePath(ct));
			return {
				name: name,
				pos: null,
				params: params,
				pack: [],
				fields: [],
				meta: meta,
				kind: TDAlias(ct)
			};
		default:
	}
	if (getUnderlying(t) == invalidType) {
		t = refToPointerWrapper(t);
	}
	var uct = toComplexType(t, info);
	final meta:Metadata = [{name: ":named", pos: null}];
	final params = getParams(spec.params, info, true);
	return {
		name: name,
		pos: null,
		pack: [],
		fields: [],
		params: params,
		meta: meta,
		kind: TDAlias(uct),
	}
}

private function refToPointerWrapper(t:GoType):GoType {
	return switch t {
		case refType(elem):
			pointer({get: () -> refToPointerWrapper(elem.get())});
		default:
			t;
	}
}

private function typeSpec(spec:Ast.TypeSpec, info:Info, local:Bool = false):TypeDefinition {
	if (spec.type.type != null) {
		final hash:UInt = spec.type.type.hash;
		if (!info.locals.exists(hash)) {
			final path = spec.name.type.path == null ? spec.name.name : spec.name.type.path;
			var nameType:GoType = if (spec.type.id == "InterfaceType") {
				named(path, [], interfaceType(spec.type.type.empty));
			} else {
				final t = typeof(spec.type, info, false);
				info.localUnderlyingNames[path] = t;
				t;
			}
			switch nameType {
				case structType(fields):
					nameType = named(path, [], structType(fields));
				default:
			}
			info.locals[hash] = nameType;
		}
	}
	if (spec.type != null && spec.type.id == "Ident") {
		if (spec.assign != 0) {
			var name = className(spec.name.name, info);
			var type = typeExprType(spec.type, info);
			if (type == null)
				return null;
			return {
				name: name,
				pos: null,
				pack: [],
				isExtern: true,
				meta: [{name: ":follow", pos: null}],
				fields: [],
				kind: TDAlias(type),
			}
		}
	}
	return switch spec.type.id {
		case "StructType", "InterfaceType": typeType(spec, info, local);
		default: typeNamed(spec, info);
	}
}

function complexTypeToExpr(t:ComplexType):Expr {
	switch t {
		case TPath(p):
			final pack = p.pack == null ? macro [] : macro $a{p.pack.map(p -> makeExpr(p))};
			return macro haxe.macro.Expr.ComplexType.TPath({name: ${makeExpr(p.name)}, pack: $pack, sub: ${p.sub == null ? macro null : makeExpr(p.sub)}});
		default:
			throw "unsupported complexTypeToExpr: " + t;
	}
}

function getParams(params:Ast.FieldList, info:Info, allowNonGeneric:Bool = false):Array<TypeParamDecl> {
	final list:Array<TypeParamDecl> = [];
	if (params == null)
		return list;
	for (field in params.list) {
		if (!allowNonGeneric && field.type.id == "Ident" || field.type.id == "SelectorExpr")
			continue; // singular type as such not generic
		for (name in field.names) {
			// final ct = typeExprType(field.type, info);
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

private function makeStringLit(values:Array<{?s:String, ?code:String}>):Expr {
	var e:Expr = macro("" : GoString);
	var init:Bool = true;
	for (value in values) {
		var expr = if (value.s != null) {
			makeString(value.s);
		} else {
			final code = makeString(value.code);
			macro haxe.io.Bytes.ofHex($code);
		}
		expr = macro($expr : GoString);
		if (init) {
			e = expr;
			init = false;
		} else {
			e = macro $e + $expr;
		}
	}
	return macro($e);
}

private function typeType(spec:Ast.TypeSpec, info:Info, local:Bool = false):TypeDefinition {
	var name = className(spec.name.name, info);
	var externBool = isTitle(spec.name.name);
	info.className = name;
	var doc:String = getComment(spec) + getDoc(spec) + getSource(spec, info);
	switch spec.type.id {
		case "StructType":
			info.renameIdents[spec.name.name] = name + "_static_extension";
			info.classNames[spec.name.name] = name + "_static_extension";
			var struct:Ast.StructType = spec.type;
			var fields = typeFieldListFields(struct.fields, info, [APublic], true);
			final names = [for (field in fields) field.name];
			final exprs:Array<Expr> = [
				for (name in names)
					macro if ($i{name} != null)
						this.$name = $i{name}
			];
			if (StringTools.startsWith(name, "T__struct_")) {
				var e = macro "{";
				for (i in 0...fields.length) {
					e = macro $e + Go.string($i{fields[i].name});
					if (i < fields.length - 1)
						e = macro $e + " ";
				}
				e = macro $e + "}";
				fields.push({
					name: "string",
					access: [APublic],
					pos: null,
					kind: FFun({
						ret: TPath({name: "String", pack: []}),
						args: [],
						expr: macro return $e,
					})
				});
			}
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
			var p:TypePath = {name: name, pack: []};
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
			var meta:Metadata = [{name: ":structInit", pos: null}];
			if (local)
				meta.push({name: ":local", pos: null, params: []});
			for (method in spec.methods) { // covers both embedded interfaces and structures
				// final recv = typeof(method.recv);
				// embedded methods
				final name = fields[method.index[0]].name;
				info.renameIdents[name] = name;
				info.restricted = [];
				final type = typeof(method.type, info, false);
				switch type {
					case signature(variadic, _.get() => sigParams, _.get() => results, _):
						final args:Array<Expr> = [];
						final params:Array<FunctionArg> = [];
						for (i in 0...sigParams.length) {
							switch sigParams[i] {
								case _var(name, _.get() => t):
									final name = nameIdent(name, true, false, info, true);
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
						final fieldName = nameIdent(method.name, false, false, info);
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
						final methodName = nameIdent(method.name, false, false, info);
						var expr = macro $i{name}.$fieldName($a{args});
						if (info.global.externBool)
							expr = results.length == 1 ? defaultValue(results[0], info) : macro null;
						fields.push({
							name: methodName,
							meta: [{name: ":embedded", pos: null}],
							pos: null,
							access: [APublic],
							kind: FFun({
								args: params,
								ret: ret,
								expr: isVoid(ret) ? expr : macro return $expr,
							}),
						});
					default:
						throw "method not a signature";
				}
				info.restricted = [];
			}
			final params = getParams(spec.params, info, true);
			var cl:TypeDefinition = {
				name: name,
				pos: null,
				fields: fields,
				pack: [],
				params: params,
				doc: info.global.noCommentsBool ? "" : doc,
				isExtern: externBool,
				meta: meta,
				kind: TDClass(),
			};
			cl.fields.push({
				name: "__underlying__",
				pos: null,
				kind: FFun({args: [], expr: macro return Go.toInterface(this), ret: anyInterfaceType()}),
				access: [APublic],
			});
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
		case "InterfaceType":
			var struct:Ast.InterfaceType = spec.type;
			if (struct.methods.list.length == 0) {
				final meta:Metadata = [{name: ":follow", pos: null}];
				final params = getParams(spec.params, info, true);
				return {
					name: name,
					pos: null,
					fields: [],
					pack: [],
					params: params,
					meta: meta,
					kind: TDAlias(anyInterfaceType()),
				}
			}
			final fields = typeFieldListMethods(struct.methods, info);
			var meta = [];
			if (local)
				meta.push({name: ":local", pos: null, params: []});
			// embedded interfaces
			final implicits:Array<TypePath> = [];
			if (struct.methods != null && struct.methods.list != null)
				if (struct.methods.list.length == 1 && struct.methods.list[0].names.length == 0) {
					if (struct.methods.list[0].type.id == "BinaryExpr") {
						// union contract interface type
						final meta:Metadata = [{name: "union", pos: null}];
						final params = getParams(spec.params, info, true);
						return {
							name: name,
							pack: [],
							pos: null,
							fields: [],
							params: params,
							isExtern: externBool,
							meta: meta,
							kind: TDAlias(TPath({name: "Any", pack: []})),
						};
					}
				}
			for (method in struct.methods.list) {
				if (method.names.length == 0) {
					implicits.push(getTypePath(typeExprType(method.type, info)));
				}
			}
			final params = getParams(spec.params, info, true);
			return {
				name: name,
				pack: [],
				pos: null,
				doc: info.global.noCommentsBool ? "" : doc,
				params: params,
				fields: [],
				isExtern: externBool,
				meta: meta,
				kind: TDAlias(TIntersection([
					TPath({
						name: "StructType",
						pack: []
					}),
					TExtend(implicits, fields)
				]))
			};
		default:
			return null;
	}
}

private function anyInterfaceType()
	return TPath({name: "AnyInterface", pack: []});

private function errorTypePath():TypePath
	return {name: "Error", pack: ["stdgo"]};

private function errorType()
	return TPath(errorTypePath());

private function typeImport(imp:Ast.ImportSpec, info:Info) {
	var doc = getDoc(imp);
	imp.path = imp.path.substr(1, imp.path.length - 2); // remove quotes
	final path = normalizePath(imp.path);
	final pack = path.split("/");
	var alias = imp.name;
	if (alias == "_")
		alias = "";
	if (stdgoList.indexOf(toGoPath(path)) != -1) { // haxe only type, otherwise the go code refrences Haxe
		pack.unshift("stdgo");
	}
	final name = pack[pack.length - 1];
	pack.push(importClassName(name)); // shorten path here
	if (alias != "") {
		if (alias == ".") {
			info.data.imports.push({
				path: pack,
				alias: "",
				doc: info.global.noCommentsBool ? "" : doc,
			});
		} else {
			info.renameIdents[alias] = pack.join(".");
		}
	} else {
		info.renameIdents[name] = pack.join(".");
	}
}

private function typeValue(value:Ast.ValueSpec, info:Info):Array<TypeDefinition> {
	var type:ComplexType = null;
	var interfaceBool = false;
	if (value.type.id != null) {
		type = typeExprType(value.type, info);
		interfaceBool = isAnyInterface(typeof(value.type, info, false));
	}
	var values:Array<TypeDefinition> = [];
	if (value.names.length > value.values.length && value.values.length > 0) {
		var t = typeof(value.values[0], info, false);
		// destructure
		var tmp = "__tmp__" + (info.blankCounter++);
		var tmpExpr = macro $i{tmp};
		var func = typeExpr(value.values[0], info);
		var data = castTranslate(value.values[0], func, info);
		func = data.expr;
		if (data.ok)
			value.names = [{name: "value", type: null}, {name: "ok", type: null}];
		values.push({
			name: tmp,
			pos: null,
			pack: [],
			fields: [],
			kind: TDField(FVar(null, func))
		});
		for (i in 0...value.names.length) {
			var fieldName = "_" + i;
			values.push({
				name: nameIdent(value.names[i].name, false, true, info),
				pos: null,
				pack: [],
				fields: [],
				isExtern: isTitle(value.names[i].name),
				kind: TDField(FVar(type, macro $tmpExpr.$fieldName), [])
			});
		}
	} else {
		for (i in 0...value.names.length) {
			var expr:Expr = null;
			if (value.values[i] == null) {
				if (type != null) {
					expr = defaultValue(typeof(value.type, info, false), info);
				} else {
					// last expr use iota
					if (!info.global.externBool) {
						expr = typeExpr(info.lastValue, info);
						expr = assignTranslate(typeof(info.lastValue, info, false), info.lastType, expr, info);
					} else {
						expr = defaultValue(info.lastType, info);
					}
					type = toComplexType(info.lastType, info);
				}
			} else {
				info.lastValue = value.values[i];
				info.lastType = typeof(value.type, info, false);
				final t = typeof(value.values[i], info, false);
				if (!info.global.externBool) {
					expr = typeExpr(value.values[i], info);
					expr = assignTranslate(t, info.lastType, expr, info);
				} else {
					expr = defaultValue(t, info);
				}
			}
			if (expr == null)
				continue;
			var type = type; // set local type
			if (type == null) {
				type = toComplexType(typeof(value.values[i], info, false), info);
			}

			var name = nameIdent(value.names[i].name, false, true, info);
			var doc:String = getComment(value) + getDoc(value); // + getSource(value, info);
			var access = []; // typeAccess(value.names[i]);
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

private function getComment(value:{comment:Ast.CommentGroup}):String {
	if (value.comment == null || value.comment.list == null)
		return "";
	return value.comment.list.join("\n");
}

private function getDoc(value:{doc:Ast.CommentGroup}):String {
	if (value.doc == null || value.doc.list == null)
		return "";
	var source = value.doc.list.join("\n");
	source = sanatizeComment(source);
	return source;
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
	source = StringTools.replace(source, "/*", "/|*");
	source = StringTools.replace(source, "*/", "*|/");
	return source;
}

private function typeAccess(name:String, isField:Bool = false):Array<Access> {
	return isTitle(name) ? (isField ? [APublic] : []) : [APrivate];
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
				if (stdgoList.indexOf(toGoPath(info.global.module.path)) != -1) { // haxe only type, otherwise the go code refrences Haxe
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
	return name;
}

private function formatHaxeFieldName(name:String, info) {
	return nameIdent(name, false, false, info);
}

private function untitle(name:String):String {
	if (isTitle(name)) { // nicer styling turns "GC" -> "gc" instead of "gC"
		var index = 0;
		while (index < name.length) {
			if (!isTitle(name.charAt(index)))
				break;
			index++;
		}
		name = name.substr(0, index).toLowerCase() + name.substring(index);
	} else {
		name = "_" + name;
	}
	return name;
}

private function nameIdent(name:String, rename:Bool, overwrite:Bool, info:Info, unique:Bool = false):String {
	name = nameAscii(name);
	if (name == "_")
		return "_" + info.blankCounter++;
	if (name == "null")
		return "nil";
	if (name == "main")
		return name;
	if (name == "False" || name == "True" || name == "Main")
		return "_" + name;
	var oldName = name;
	if (overwrite) { // either an overwrite or a rename has been set
		if (name == "nil") {
			name = "_null";
			info.renameIdents[oldName] = name;
			return name;
		}
		if (name == "false" || name == "true") {
			name = "_" + name;
			info.renameIdents[oldName] = name;
			return name;
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
	if (rename && info.restricted != null && info.restricted.indexOf(name) != -1) {
		name = getRestrictedName(name, info);
	}
	if (unique && setUnique) {
		while (info.restricted.indexOf(name) != -1) {
			name = name + "_";
		}
		info.restricted.push(name);
	}
	if (reserved.indexOf(name) != -1)
		name = name + "_";
	if (overwrite) {
		info.renameIdents[oldName] = name;
	}
	return name;
}

function normalizePath(path:String):String {
	path = path.toLowerCase();
	path = StringTools.replace(path, ".", "_");
	path = StringTools.replace(path, ":", "_");
	path = StringTools.replace(path, "-", "_");
	var path = path.split("/");
	for (i in 0...path.length) {
		if (reserved.indexOf(path[i]) != -1)
			path[i] += "_";
	}
	return path.join("/");
}

class Global {
	public var initBlock:Array<Expr> = [];
	public var path:String = "";
	public var filePath:String = "";
	public var hasBreak:Bool = false;
	public var module:Module = null;
	public var noCommentsBool:Bool = false;
	public var externBool:Bool = false;
	public var root:String = "";
	public var hashMap:Map<UInt, Dynamic> = [];

	public inline function new() {}

	public function copy():Global {
		var g = new Global();
		g.initBlock = initBlock.copy();
		g.noCommentsBool = noCommentsBool;
		g.path = path;
		g.module = module;
		g.filePath = filePath;
		g.hasBreak = hasBreak;
		g.root = root;
		g.hashMap = hashMap;
		return g;
	}
}

class Info {
	public var blankCounter:Int = 0;
	public var count:Int = 0;
	public var restricted:Array<String> = [];
	public var thisName:String = "";
	public var deferBool:Bool = false;
	public var recoverBool:Bool = false;
	public var funcName:String = "";
	public var gotoSystem:Bool = false;
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

	public var renameIdents:Map<String, String> = []; // identifiers
	public var classNames:Map<String, String> = []; // class names named types
	public var renameClasses:Map<String, String> = ["bool" => "Bool"]; // class names i.e TPath

	public var locals:Map<UInt, GoType> = [];
	public var localUnderlyingNames:Map<String, GoType> = [];

	public var global = new Global();

	public function new(?global) {
		if (global != null)
			this.global = global;
	}

	public inline function copy() {
		var info = new Info();
		info.returnTypes = returnTypes.copy();
		info.returnComplexTypes = returnComplexTypes.copy();
		info.returnNames = returnNames.copy();
		info.returnType = returnType;
		info.returnNamed = returnNamed;
		info.deferBool = deferBool;
		info.recoverBool = recoverBool;
		info.count = count;
		info.funcName = funcName;
		info.className = className;
		info.data = data;
		info.global = global.copy(); // imports, types
		info.renameIdents = renameIdents.copy();
		info.classNames = classNames.copy();
		info.renameClasses = renameClasses.copy();
		info.locals = locals.copy();
		info.localUnderlyingNames = localUnderlyingNames.copy();
		return info;
	}
}

typedef DataType = {args:Array<String>, pkgs:Array<PackageType>, index:String, typeList:Array<Dynamic>};

typedef PackageType = {
	path:String,
	name:String,
	order:Array<String>,
	files:Array<{path:String, location:String, decls:Array<Dynamic>}>
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
