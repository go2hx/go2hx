import haxe.DynamicAccess;
import haxe.io.Path;
import haxe.macro.Expr;
import shared.Util;
import stdgo.reflect.Reflect;
import sys.io.File;

var stdgoList:Array<String>;
var externs:Bool = false;

final reserved = [
	"switch", "case", "break", "continue", "default", "is", "abstract", "cast", "catch", "class", "do", "function", "dynamic", "else", "enum", "extends",
	"extern", "final", "for", "function", "if", "interface", "implements", "import", "in", "inline", "macro", "new", "operator", "overload", "override",
	"package", "private", "public", "return", "static", "this", "throw", "try", "typedef", "untyped", "using", "var", "while", "construct", "null", "in",
];

final reservedClassNames = [
	"Class",
	"T",
	"K",
	"S",
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
	"List",
	"Map",
	// "Math",
	"Std",
	"Sys",
	"StringBuf",
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
var config = {printGoCode: false}; // typer config

function main(data:DataType, printGoCode:Bool = false) {
	config.printGoCode = printGoCode;
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
			var path = module.path;
			path = path.substring(0, path.length - "_test".length);
			final pack = path.split(".");
			final name = importClassName(pack[pack.length - 1]);
			pack.push(name);
			defaultImports.push({
				path: pack,
				alias: "",
				doc: "",
			});
		}

		var info = new Info();
		info.global.path = pkg.path;

		// holds the last path to refrence against to see if a file has the main package name
		var endPath = pkg.path;
		var index = endPath.lastIndexOf(".");
		endPath = endPath.substr(index + 1);
		endPath = importClassName(endPath);

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

			// check for overriding functions
			var removal = [];
			for (i in 0...declFuncs.length) {
				for (j in 0...declFuncs.length) {
					if (i == j)
						continue;
					if (declFuncs[i].name == declFuncs[j].name) {
						removal.push(declFuncs[i]);
					}
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
			locals.clear();
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
							// info.data.imports.push(typeImport(spec, info));
							typeImport(spec, info);
						case "TypeSpec":
							var spec:Ast.TypeSpec = spec;
							if (spec.name.name != "_")
								info.data.defs.push(typeSpec(spec, info, gen.tok == FUNC));
					}
				}
			}
			var values = [];
			for (gen in declGens) {
				// variables after so that all types can be refrenced by a value and have it exist.
				info.iota = 0;
				info.lastValue = null;
				info.lastType = null;
				for (spec in gen.specs) {
					if (spec == null)
						continue;
					switch spec.id {
						case "ValueSpec":
							var spec:Ast.ValueSpec = spec;
							values = values.concat(typeValue(spec, info));
							info.iota++;
						default:
					}
				}
			}
			final valueDeps = new Map<String, {value:TypeDefinition, deps:Array<String>}>();
			values.sort((a, b) -> {
				if (a.name == "_")
					return 1;
				if (b.name == "_")
					return -1;
				return 0;
			});
			for (value in values) {
				if (value.name == "_")
					value.name += info.count++;
				valueDeps[value.name] = {value: value, deps: extractTypeDefIdents(value)};
			}
			values = [];
			function hasDeps(depName:String, deps:Array<String>) {
				for (name in deps) {
					if (!valueDeps.exists(name) || name == depName)
						continue;
					final data = valueDeps[name];
					hasDeps(name, data.deps);
					if (valueDeps.remove(name))
						values.push(data.value);
				}
			}
			for (name => data in valueDeps) {
				if (data == null)
					continue;
				hasDeps(name, data.deps);
				if (valueDeps.remove(name))
					values.push(data.value);
			}
			data.defs = data.defs.concat(values);

			for (decl in declFuncs) { // parse function bodies last
				if (decl.recv != null && decl.recv.list.length > 0) {
					recvFunctions.push({decl: decl, path: file.path});
					continue;
				}
				var func = typeFunction(decl, info);
				if (func != null)
					data.defs.push(func);
			}

			// make blank identifiers not name conflicting for global
			var blankCounter:Int = 0;
			for (def in info.data.defs) {
				switch def.kind {
					case TDClass(superClass, interfaces, isInterface, isFinal, _):
						var blankCounter:Int = 0;
						for (field in def.fields) {
							if (field.name == "_")
								field.name += blankCounter++;
						}
					case TDField(kind, access):
						if (def.name == "_")
							def.name += blankCounter++;
					default:
				}
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
						catch (e)
							if (e.message != "__return__")
								throw e;
						true;
					})),
				});
			}
			data.imports = data.imports.concat(defaultImports);
			// add file to module
			module.files.push(data);
		}
		info.global.module = module;
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
					for (name in names) {
						if (getRecvName(recv.decl.recv.list[0].type, info) == name.name)
							local.push({func: recv.decl, sel: name.sel});
					}
				}
				var restrictedNames = [for (func in local) nameIdent(func.func.name.name, false, false, info)];
				var isNamed = false;
				if (def != null && def.meta != null && def.meta[0] != null && def.meta[0].name == ":named")
					isNamed = true;
				// remove duplicated names
				for (i in 0...local.length) {
					if (local[i] == null)
						continue;
					for (j in 0...local.length) {
						if (i == j)
							continue;
						if (local[j] == null)
							continue;
						final name = local[i].func.name.name;
						final name2 = local[j].func.name.name;
						if (name == name2) {
							local.remove(local[i]);
							break;
						}
					}
				}
				if (local.length == 0)
					continue;
				final extensionFields:TypeDefinition = {
					name: def.name + "_extension_fields",
					pos: null,
					pack: [],
					kind: TDClass(),
					fields: [],
				};
				file.defs.push(extensionFields);
				for (decl in local) {
					var func = typeFunction(decl.func, info, restrictedNames, isNamed, decl.sel);
					if (func == null)
						continue;
					switch func.kind {
						case TDField(kind, access):
							switch kind {
								case FFun(fun):
									if (func.name == "toString") {
										for (field in def.fields) {
											if (field.name == "toString") {
												def.fields.remove(field);
												break;
											}
										}
									}
									def.fields.unshift({
										name: func.name,
										pos: null,
										meta: null,
										access: [APublic],
										kind: FFun({
											args: fun.args,
											ret: fun.ret,
											expr: fun.expr,
										})
									});
									final args = [
										for (arg in fun.args)
											macro $i{arg.name}
									];
									final funcName = func.name;
									var e = macro __tmp__.$funcName($a{args});
									if (!isVoid(fun.ret))
										e = macro return $e;
									extensionFields.fields.push({
										name: funcName,
										pos: null,
										meta: null,
										access: [APublic],
										kind: FFun({
											args: [{name: "__tmp__"}].concat(fun.args),
											ret: fun.ret,
											expr: e,
										})
									});
								default:
							}
						default:
					}
				}
			}
		}

		list.push(module);
	}

	return list;
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
		case "CommClause": typeCommClause(stmt, info);
		default: throw "unknown stmt id: " + stmt.id;
	}
	if (def == null)
		throw "stmt null: " + stmt.id;
	return toExpr(def);
}

// STMT
private function typeCommClause(stmt:Ast.CommClause, info:Info):ExprDef { // selector case system
	var list:Array<Ast.Stmt> = stmt.body;
	if (stmt.comm != null) {
		if (list == null)
			return typeStmt(stmt.comm, info).expr;
		list.unshift(stmt.comm);
		return typeStmtList(list, info, false);
	}
	return (macro null).expr;
}

private function typeSendStmt(stmt:Ast.SendStmt, info:Info):ExprDef {
	var chan = typeExpr(stmt.chan, info);
	var t = typeof(stmt.chan);
	if (isNamed(t))
		chan = macro $chan.__t__;
	var value = typeExpr(stmt.value, info);
	return (macro $chan.send($value)).expr;
}

private function typeSelectStmt(stmt:Ast.SelectStmt, info:Info):ExprDef {
	unsupportedMessage("select statement", info);
	return typeBlockStmt(stmt.body, info, false);
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

private function unsupportedMessage(message:String, info:Info) {
	final name = info.global.filePath;
	final path = info.global.path;
	// Sys.println("function: " + info.funcName);
	// throw '$message is unsupported: $path/$name';
}

private function typeGoStmt(stmt:Ast.GoStmt, info:Info):ExprDef {
	unsupportedMessage("go statement", info);
	var call = typeExpr(stmt.call, info);
	return (macro Go.routine($call)).expr;
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
	if (list != null)
		exprs = exprs.concat([for (stmt in list) typeStmt(stmt, info)]);
	if (list != null)
		if (info.deferBool && isFunc) { // defer system
			final e = toExpr(typeReturnStmt({returnPos: 0, results: []}, info));
			final ret = switch e.expr {
				case EBlock(exprs):
					final last = exprs.pop();
					exprs.push(macro if (recover_exception != null)
						throw recover_exception);
					exprs.push(last);
					toExpr(EBlock(exprs));
				default:
					macro recover_exception != null ?throw recover_exception:$e;
			}
			exprs.unshift(macro var deferstack:Array<Void->Void> = []);
			exprs.push(typeDeferReturn(info, true));
			// recover
			exprs.unshift(macro var recover_exception:Error = null);
			var pos = 2 + info.returnNames.length;
			var trydef = ETry(toExpr(EBlock(exprs.slice(pos))), [
				{
					name: "e",
					expr: macro {
						recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
						$ret;
					}
				}
			]); // don't include recover and defer stack
			exprs = exprs.slice(0, pos);
			exprs.push(toExpr(trydef));
		} else if (info.recoverBool && isFunc) {
			exprs.unshift(macro var recover_exception:Error = null);
		}
	return EBlock(exprs);
}

private function typeLabeledStmt(stmt:Ast.LabeledStmt, info:Info):ExprDef {
	final name = makeString(stmt.label.name);
	var stmt = typeStmt(stmt.stmt, info);
	switch stmt.expr {
		case EVars(_):
			stmt = macro {${stmt}};
		default:
	}
	info.gotoSystem = true;
	return (macro @:label($name) $stmt).expr;
}

private function typeIncDecStmt(stmt:Ast.IncDecStmt, info:Info):ExprDef {
	var x = typeExpr(stmt.x, info);
	var t = typeof(stmt.x);
	if (isNamed(t))
		x = macro $x.__t__;
	return switch stmt.tok {
		case INC: return (macro $x++).expr;
		case DEC: return (macro $x--).expr;
		default:
			throw "unknown IncDec token: " + stmt.tok;
			null;
	}
}

private function typeDeferStmt(stmt:Ast.DeferStmt, info:Info):ExprDef {
	info.deferBool = true;
	var exprs:Array<Expr> = [];
	for (i in 0...stmt.call.args.length) {
		var arg = typeExpr(stmt.call.args[i], info);
		var name = "a" + i;
		exprs.push(macro var $name = $arg);
		stmt.call.args[i] = {id: "Ident", name: "A" + i}; // switch out call arguments
	}
	if (stmt.call.fun.id == "FuncLit") {
		var call = toExpr(typeCallExpr(stmt.call, info));
		exprs.push(macro deferstack.unshift(() -> $call));
		return EBlock(exprs);
	}
	// otherwise its Ident, Selector etc
	var call = toExpr(typeCallExpr(stmt.call, info));
	var e = macro deferstack.unshift(() -> $call);
	if (exprs.length > 0)
		return EBlock(exprs.concat([e]));
	return e.expr;
}

private function typeRangeStmt(stmt:Ast.RangeStmt, info:Info):ExprDef {
	var key = stmt.tok == DEFINE ? macro $i{
		nameIdent(stmt.key.name, false, true, info)
	} : typeExpr(stmt.key, info); // iterator int
	var x = typeExpr(stmt.x, info);
	var xType = typeof(stmt.x);
	x = destructureExpr(x, xType).x;
	var hasDefer = false;
	var value = stmt.value != null ? (stmt.tok == DEFINE ? macro $i{
		nameIdent(stmt.value.name, false, true, info)
	} : typeExpr(stmt.value, info)) : null; // value of x[key]
	var body = {expr: typeBlockStmt(stmt.body, info, false), pos: null};
	if (key != null && key.expr.match(EConst(CIdent("_")))) {
		if (stmt.tok == DEFINE) {
			return (macro for ($value in $x) $body).expr; // iterate through values using "in" for loop
		} else {
			switch body.expr {
				case EBlock(exprs):
					if (value != null)
						exprs.unshift(macro $value = _obj.value);
				default:
			}
			return (macro for (_obj in $x) $body).expr; // iterator through values using "in" for loop, and assign value to not defined value
		}
	}
	var keyString:String = "_";
	var valueString:String = "_";

	if (value != null) {
		switch value.expr {
			case EConst(c):
				switch c {
					case CIdent(s): valueString = s;
					default:
				}
			default:
		}
	}
	if (key != null) {
		switch key.expr {
			case EConst(c):
				switch c {
					case CIdent(s): keyString = s;
					default:
				}
			default:
		}
	}
	// both key and value
	if (stmt.tok == DEFINE) {
		hasDefer = true;
		switch body.expr {
			case EBlock(exprs):
				if (value != null) {
					exprs.unshift(macro $i{valueString} = _obj.value); // not a local variable but declared outside for block
				}
				if (key != null) {
					exprs.unshift(macro $i{keyString} = _obj.key); // not a local variable but declared outside for block
				}
			default:
		}
	} else { // ASSIGN
		switch body.expr {
			case EBlock(exprs):
				if (stmt.tok == ASSIGN) {
					if (key != null) {
						exprs.unshift(macro $key = _obj.key); // no diffrence with assign
					}
					if (value != null) {
						exprs.unshift(macro $value = _obj.value); // no diffrence with assign
					}
				}
			default:
		}
	}
	x = toGoType(x);
	var e = macro for (_obj in $x.keyValueIterator()) $body;
	if (hasDefer) {
		var inits:Array<Expr> = [];
		if (keyString != "_")
			inits.push(macro var $keyString);
		if (valueString != "_")
			inits.push(macro var $valueString);
		e = toExpr(EBlock(inits.concat([e])));
	}
	return e.expr;
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

	if (name == "error")
		return "Error";
	// if (name == "Error")
	//	return "T_error";
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
	var decls:Array<Ast.GenDecl> = stmt.decl.decls;
	var vars:Array<Var> = [];
	for (decl in decls) {
		info.iota = 0;
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
							spec.names = [{name: "value", type: null, kind: typ}, {name: "ok", type: null, kind: typ}];
						vars.push({
							name: tmp,
							expr: func
						});
						var type = typeof(spec.values[0]);
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
										expr = defaultValue(typeof(spec.type), info);
									} else {
										expr = typeExpr(info.lastValue, info);
										type = toComplexType(info.lastType, info);
										expr = assignTranslate(typeof(info.lastValue), info.lastType, expr, info);
									}
								} else {
									info.lastValue = spec.values[i];
									info.lastType = typeof(spec.type);
									expr = typeExpr(spec.values[i], info);
									expr = assignTranslate(typeof(info.lastValue), info.lastType, expr, info);
								}
								var name = nameIdent(spec.names[i].name, false, true, info);
								var t = typeof(spec.type);
								var exprType = type;
								if (exprType == null) {
									final specType = typeof(spec.names[i]);
									if (specType != null)
										exprType = toComplexType(specType, info);
								}
								// expr = assignTranslate(typeof(spec.values[i]), t, expr, info);
								{
									name: name,
									type: exprType,
									isFinal: spec.constants[i],
									expr: expr,
								};
							}
						]);
					}
				default:
					throw "unknown id: " + spec.id;
			}
			info.iota++;
		}
	}
	if (vars.length > 0)
		return EVars(vars);
	return (macro {}).expr; // blank expr def
}

private function checkType(e:Expr, ct:ComplexType, from:GoType, to:GoType, info:Info):Expr {
	if (e != null)
		switch e.expr {
			case EBinop(_, _, _):
				e = macro($e);
			case EConst(c):
				switch c {
					case CIdent(i):
						if (i == "null") {
							var value = defaultValue(to, info);
							if (ct != null)
								return macro($value : $ct);
						}
					default:
				}
			default:
		}
	function namedCheckCast(from:GoType, to:GoType) {
		var fromNamed = isNamed(from);
		var toNamed = isNamed(to);
		if (fromNamed && !toNamed && !isInterface(to) && !isInvalid(to)) {
			return macro $e.__t__;
		}
		if (toNamed) {
			switch ct {
				case TPath(p):
					e = assignTranslate(from, getUnderlying(to), e, info);
					return macro new $p($e);
				default:
			}
		}
		return null;
	}
	var ret = namedCheckCast(from, to);
	if (ret != null)
		return ret;
	if (isAnyInterface(from)) {
		return macro($e.value : $ct);
	}

	if (isInterface(pointerUnwrap(from))) {
		final args:Array<Expr> = [];
		if (!isPointer(from) && isPointer(to)) {
			args.push(macro true);
			switch ct {
				case TPath(p):
					switch p.params[0] {
						case TPType(t):
							ct = t;
						default:
					}
				default:
			}
		}
		args.unshift(macro cast($e, $ct)); // add to start, allows correct interface casting
		return macro Go.smartcast($a{args}); // add all args to smart cast macro function
	}
	if (isStruct(from) && isStruct(to)) {
		switch to {
			case named(path, _, _, _):
				final underlying = getUnderlying(to);
				var p = namedTypePath(path, info);
				var exprs:Array<Expr> = [];
				switch underlying {
					case structType(fields):
						for (field in fields) {
							final field = formatHaxeFieldName(field.name);
							exprs.push(macro $e.$field);
						}
					default:
						throw "not a struct";
				}
				return macro new $p($a{exprs});
			default:
				throw "struct is unnamed";
		}
	}

	if (isPointerStruct(from) && isPointerStruct(to)) {
		final ct = toComplexType(to, info);
		final fromElem = getElem(from);
		final toElem = getElem(to);
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

	if (isPointer(from) && isPointer(to)) {
		final ct = toComplexType(to, info);
		final fromElem = getElem(from);
		final toElem = getElem(to);
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
	if (isAnyInterface(to))
		return e;
	if (isPointer(from) && isInterface(to))
		e = macro $e.value;
	return macro($e : $ct);
}

private function typeTypeSwitchStmt(stmt:Ast.TypeSwitchStmt, info:Info):ExprDef { // a switch statement of a type
	var init:Expr = null;
	if (stmt.init != null)
		init = typeStmt(stmt.init, info);
	var assign:Expr = null;
	var assignType:GoType = null;
	var setVar:String = "";
	switch stmt.assign.id {
		case "ExprStmt":
			var stmt:Ast.ExprStmt = stmt.assign;
			switch stmt.x.id {
				case "TypeAssertExpr":
					final stmt:Ast.TypeAssertExpr = stmt.x;
					assignType = typeof(stmt.x);
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
					assignType = typeof(rhs.x);
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
			types.push(typeof(obj.list[i]));
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
	if (isNamed(typeX))
		x = macro $x.__t__;
	if (isNamed(typeY))
		y = macro $y.__t__;
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
			case signature(_, _, _, _), interfaceType(_, _):
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
				return macro $value == null || $value.isNil();
			default:
				return macro $value != null && !$value.isNil();
		}
	}
	if (isInterface(typeX) || isInterface(typeY)) {
		if (isPointer(typeX))
			x = macro $x.value;
		if (isPointer(typeY))
			y = macro $y.value;
		x = macro Go.toInterface($x);
		y = macro Go.toInterface($y);
	}
	var t = getUnderlying(typeX);
	switch t {
		case structType(_):
			return toExpr(EBinop(op, macro Go.toInterface($x), macro Go.toInterface($y)));
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
	if (stmt.body == null || stmt.body.list == null)
		return (macro {}).expr;
	// this is an if else chain
	var tag:Expr = null;
	var tagType:GoType = null;
	if (stmt.tag != null) {
		tagType = typeof(stmt.tag);
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
			value = translateEquals(tag, value, tagType, typeof(obj.list[i]), OpEq, info);
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
	if (stmt.init != null) {
		var init = typeStmt(stmt.init, info);
		return (macro {
			$init;
			$expr;
		}).expr;
	}
	return expr.expr;
}

private function typeForStmt(stmt:Ast.ForStmt, info:Info):ExprDef {
	var cond = stmt.cond == null ? toExpr(EConst(CIdent("true"))) : typeExpr(stmt.cond, info);
	var hasDefer = false;
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
			var value = defaultValue(typeof(obj.type), info);
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
			{expr: macro $x.smartGet(), ok: true};
		case "IndexExpr":
			var obj:Ast.IndexExpr = obj;
			var index = typeExpr(obj.index, info);
			var x = typeExpr(obj.x, info);
			{
				ok: true,
				expr: macro $x.exists($index) ? {value: $x[$index], ok: true} : {value: $x.defaultValue(), ok: false},
			};
		default:
			{expr: e, ok: false};
	}
}

private function cleanType(type:GoType):GoType {
	if (type == null)
		return type;
	return switch type {
		/*case signature(_, _, results, _):
			if (results.length == 0)
				return invalidType;
			cleanType(results[0]); */
		case _var(_, type):
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

private function passByCopy(fromType:GoType, y:Expr, info:Info, toType:GoType = null):Expr {
	if (y == null)
		return y;
	switch y.expr {
		case EBlock(_):
			return y;
		default:
	}
	if (!isPointer(fromType) && (toType == null || !isPointer(toType))) {
		var isNamed = isNamed(fromType) || isStruct(fromType);
		switch fromType {
			case basic(_):
			case signature(_, _, _, _):
			case interfaceType(_, _):
			case sliceType(_), mapType(_, _), chanType(_, _): // pass by ref
			case arrayType(_, _): // pass by copy
				y = macro $y.copy();
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
					case basic(_):
						return y;
					case invalidType:
						return y;
					default:
				}
				if (!isInterface(type) && !isAnyInterface(type))
					y = macro $y.__copy__();
			default:
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
						case _var(name, type):
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

	// trace("from: " + fromType + " to: " + toType);

	if (fromType == null)
		return expr;

	switch fromType {
		case basic(kind):
			switch kind {
				case untyped_nil_kind:
					return defaultValue(toType, info);
				default:
			}
		default:
	}
	if (passCopy)
		y = passByCopy(fromType, y, info, toType);

	if (isNamed(fromType) && !isNamed(toType) && !isInterface(toType) && !isInvalid(toType) && !isAnyInterface(toType)) {
		y = macro $y.__t__;
	}

	if (isAnyInterface(toType) && !isRestExpr(expr)) {
		y = macro Go.toInterface($y);
	}
	if (isAnyInterface(fromType) && !isInvalid(toType) && !isInterface(toType)) {
		final ct = toComplexType(fromType, info);
		if (ct != null) {
			y = macro($y.value : $ct);
		}
	}
	final namedX = isNamed(fromType);
	final namedY = isNamed(toType);
	if (!namedX && namedY && !isTuple(fromType)) {
		var ct = toComplexType(toType, info);
		switch ct {
			case TPath(p):
				y = assignTranslate(fromType, getUnderlying(toType), y, info);
				y = macro new $p($y);
			default:
		}
	}
	if (isPointer(fromType) && isInterface(toType) && !isAnyInterface(toType))
		y = macro $y.value;
	return y;
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

			if (stmt.lhs.length == stmt.rhs.length) {
				var op = typeOp(stmt.tok);
				var exprs = [
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
						var toType = typeof(stmt.lhs[i]);
						var fromType = typeof(stmt.rhs[i]);
						y = assignTranslate(fromType, toType, y, info);
						if (x == null || y == null)
							return null;
						var expr = toExpr(EBinop(op, x, y));
						if (x.expr.match(EConst(CIdent("_")))) // blank means no assign/define just the rhs expr
							expr = y;
						if (op == null) {
							switch stmt.tok {
								case AND_NOT_ASSIGN:
									expr = toExpr(EBinop(OpAssignOp(OpAnd), x, macro - 1 ^ ($y)));
								default:
									throw "op is null";
							}
						}
						expr;
					}
				];
				if (exprs.length == 1)
					return exprs[0].expr;
				var tmpIndex = 0;
				var inits:Array<Expr> = [];
				for (expr in exprs) {
					switch expr.expr {
						case EBinop(op, e1, e2):
							var tmpName = "__tmp__" + tmpIndex;
							tmpIndex++;
							inits.push(macro final $tmpName = ${e2});
							expr.expr = EBinop(op, e1, macro $i{tmpName});
						default:
							throw "expr must be a binop";
					}
				}
				exprs = inits.concat(exprs);
				return EBlock(exprs);
			} else if (stmt.lhs.length > stmt.rhs.length && stmt.rhs.length == 1) { // x = y
				// assign, destructure system
				var func = typeExpr(stmt.rhs[0], info);
				var t = typeof(stmt.rhs[0]);
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
								case _var(_, type):
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
					e2 = assignTranslate(types[i], typeof(stmt.lhs[i]), e2, info);
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
					var expr = typeExpr(stmt.rhs[i], info);
					final name = nameIdent(stmt.lhs[i].name, false, true, info);

					final toType = typeof(stmt.lhs[i]);
					final fromType = typeof(stmt.rhs[i]);
					expr = assignTranslate(fromType, toType, expr, info);
					vars.push({
						name: name,
						type: toComplexType(toType, info),
						expr: expr,
					});
				}
				return EVars(vars);
			} else if (stmt.lhs.length > stmt.rhs.length && stmt.rhs.length == 1) {
				// define, destructure system
				var func = typeExpr(stmt.rhs[0], info);
				var t = typeof(stmt.rhs[0]);
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
								case _var(_, type):
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
}

// written by Eliott issue #17
private function typeIfStmt(stmt:Ast.IfStmt, info:Info):ExprDef {
	var obj:haxe.DynamicAccess<Dynamic> = cast stmt; // new - set-up DynamicAccess
	stmt.elseStmt = obj.get("else"); // new - dynamically access the JSON element with the reserved name
	var ifStmt:Expr = toExpr(EIf(typeExpr(stmt.cond, info), typeStmt(stmt.body, info), typeStmt(stmt.elseStmt, info)));
	if (stmt.init != null)
		return EBlock([typeStmt(stmt.init, info), ifStmt]);
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
					_var(info.returnNames[i], info.returnTypes[i])
			] : info.returnTypes);
		}
		if (retType != null)
			e = assignTranslate(typeof(stmt.results[0]), retType, e, info);
		return ret(EReturn(e));
	}
	// multireturn
	var expr = toExpr(EObjectDecl([
		for (i in 0...stmt.results.length) {
			var e = typeExpr(stmt.results[i], info);
			final retType = info.returnTypes[i];
			if (retType != null) {
				final t = typeof(stmt.results[i]);
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
		default:
			throw "Type expr unknown: " + expr.id;
			null;
	}
	if (type == null)
		throw "Type expr is null: " + expr.id;
	return type;
}

// TYPE EXPR
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
	return TPath({
		pack: [],
		name: name,
	});
}

private function selectorType(expr:Ast.SelectorExpr, info:Info):ComplexType {
	function func(x:Ast.Expr, isSelector:Bool):Array<String> {
		switch x.id {
			case "Ident":
				var name = nameIdent(x.name, true, false, info);
				return [name];
			case "SelectorExpr":
				var x:Ast.SelectorExpr = x;
				var name = nameIdent(x.sel.name, true, false, info);
				return [name].concat(func(x.x, true));
			default:
				trace("unknown x id: " + x.id);
				return [];
		}
	}
	var name = className(expr.sel.name, info);
	final pack = func(expr.x, false);
	if (pack.length == 1 && pack[0] == "stdgo.unsafe.Unsafe" && name == "Pointer")
		name = "UnsafePointer";
	return TPath({
		name: name,
		pack: pack,
	});
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
		default:
			trace("unknown expr id: " + expr.id);
			null;
	};
	if (def == null)
		throw "expr null: " + expr.id;
	return toExpr(def);
}

private function typeInterfaceType(expr:Ast.InterfaceType, info:Info):ExprDef {
	return (macro {}).expr;
}

private function typeMapType(expr:Ast.MapType, info:Info):ExprDef {
	return null;
}

private function typeEllipsis(expr:Ast.Ellipsis, info:Info):ExprDef {
	var e = typeExpr(expr.elt, info);
	var t = typeof(expr.elt);
	if (isNamed(t))
		e = macro $e.__t__;
	var rest = typeRest(e);
	return rest != null ? rest.expr : null;
}

private function iotaExpr(info:Info):Expr {
	return toExpr(ECheckType(toExpr(EConst(CInt(Std.string(info.iota)))), TPath({name: "GoUnTypedInt", pack: []})));
}

private function typeIdent(expr:Ast.Ident, info:Info, isSelect:Bool):ExprDef {
	if (!info.renameIdents.exists("iota") && expr.name == "iota" && !isSelect) {
		return iotaExpr(info).expr;
	}
	var name = nameIdent(expr.name, true, false, info);
	return EConst(CIdent(name));
}

private function isFunction(expr:Ast.Expr):Bool {
	final ft = typeof(expr);
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
			final t = typeof(exprArgs[0]);
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
			var t = typeof(exprArgs[exprArgs.length - 1]);
			if (isNamed(t))
				last = macro $last.__t__;
			last = typeRest(last);
			args.push(last);
		}
		final type = typeof(expr.fun);
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
						final fromType = getVar(typeof(exprArgs[i]));
						args[i] = argSetString(fromType, args[i]);
					}
				}
				return;
			}
			var sig = getSignature(type);
			if (sig != null) {
				switch sig {
					case signature(variadic, params, _, _):
						for (i in 0...args.length) {
							final fromType = getVar(typeof(exprArgs[i]));
							var toType = getVar(params[i]);
							if (variadic && params.length <= i + 1) {
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
	final isFunction = isFunction(expr.fun);
	if (!isFunction) {
		final ct = typeExprType(expr.fun, info);
		var e = typeExpr(expr.args[0], info);
		final fromType = typeof(expr.args[0]);
		return returnExpr(checkType(e, ct, fromType, typeof(expr.fun), info));
	}

	switch expr.fun.id {
		case "SelectorExpr":
			switch expr.fun.sel.name {
				case "String": expr.fun.sel.name = "ToString"; // titled in order to export
			}
		case "FuncLit":
			var expr = typeExpr(expr.fun, info);
			genArgs(true);
			return returnExpr(macro {
				var a = $expr;
				a($a{args});
			});
		case "Ident":
			expr.fun.name = expr.fun.name;
			if (!info.renameIdents.exists(expr.fun.name)) {
				switch expr.fun.name {
					case "String":
						expr.fun.name = "toString";
					case "panic":
						genArgs(false);
						return returnExpr(macro throw ${args[0]});
					case "recover":
						info.recoverBool = true;
						return returnExpr(macro Go.recover());
					case "append":
						genArgs(false);
						var e = args.shift();
						if (args.length == 0)
							return returnExpr(e);
						var eType = getElem(typeof(expr.args[0]));
						for (i in 0...args.length - (expr.ellipsis != 0 ? 1 : 0)) {
							final aType = typeof(expr.args[i + 1]);
							args[i] = assignTranslate(aType, eType, args[i], info);
						}
						return returnExpr(macro $e.__append__($a{args}));
					case "copy":
						genArgs(false);
						return returnExpr(macro Go.copy($a{args}));
					case "delete":
						var e = typeExpr(expr.args[0], info);
						var key = typeExpr(expr.args[1], info);
						var t = typeof(expr.args[0]);
						t = getUnderlying(t);
						switch t {
							case mapType(keyType, _):
								key = assignTranslate(typeof(expr.args[1]), keyType, key, info);
							case invalidType:
							default:
								throw "first arg of delete builtin function not of type map: " + t;
						}
						return returnExpr(macro $e.remove($key));
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
						var t = typeof(expr.args[0]);
						if (isNamed(t))
							e = macro $e.__t__;
						return returnExpr(macro $e.real);
					case "imag":
						var e = typeExpr(expr.args[0], info);
						var t = typeof(expr.args[0]);
						if (isNamed(t))
							e = macro $e.__t__;
						return returnExpr(macro $e.imag);
					case "close":
						var e = typeExpr(expr.args[0], info);
						var t = typeof(expr.args[0]);
						if (isNamed(t))
							e = macro $e.__t__;
						return returnExpr(macro $e.close());
					case "cap":
						var e = typeExpr(expr.args[0], info);
						var t = typeof(expr.args[0]);
						if (isNamed(t))
							e = macro $e.__t__;
						return returnExpr(macro $e.cap());
					case "len":
						var e = typeExpr(expr.args[0], info);
						var t = typeof(expr.args[0]);
						if (isNamed(t))
							e = macro $e.__t__;
						t = getUnderlying(t);
						return returnExpr(switch t {
							case mapType(_, _):
								(macro($e == null ? 0 : $e.length));
							default:
								(macro $e.length);
						});
					case "new": // create default value put into pointer
						var t = typeExprType(expr.args[0], info);
						switch t {
							case TPath(_), TFunction(_, _), TAnonymous(_):
								var t = typeof(expr.args[0]);
								var value = defaultValue(t, info, true);
								if (isInterface(t)) {
									return returnExpr(macro Go.pointer($value, true));
								} else {
									return returnExpr(macro Go.pointer($value));
								}

							default:
						}
					case "make":
						var type = typeof(expr.args[0]);
						var isNamed = isNamed(type);
						type = getUnderlying(type);
						genArgs(false, 1);
						var size = args[0];
						var cap = args[1];

						var setCap:Bool = cap != null;
						if (size != null) {
							size = assignTranslate(typeof(expr.args[1]), basic(int_kind), size, info);
							size = macro($size : GoInt).toBasic();
						}
						if (cap != null) {
							cap = assignTranslate(typeof(expr.args[2]), basic(int_kind), cap, info);
							cap = macro($cap : GoInt).toBasic();
							setCap = true;
						}
						var e = switch type {
							case sliceType(elem):
								var param = toComplexType(elem, info);
								var value = defaultValue(elem, info);
								if (size == null)
									return returnExpr(macro new Slice<$param>());
								macro new Slice<$param>(...[for (i in 0...$size) $value]);
							case mapType(key, value):
								var t = toReflectType(type);
								var key = toComplexType(key, info);
								var value = toComplexType(value, info);
								macro new GoMap<$key, $value>(new stdgo.reflect.Reflect._Type($t));
							case chanType(dir, elem):
								var value = defaultValue(elem, info);
								var param = toComplexType(elem, info);
								if (size == null)
									size = macro 0;

								macro new Chan<$param>($size, () -> $value);
							default:
								throw "unknown make type: " + type;
						}
						if (setCap)
							e = macro $e.setCap($cap);
						if (isNamed) {
							var ct = typeExprType(expr.args[0], info);
							switch ct {
								case TPath(p):
									e = macro new $p($e);
								default:
							}
						}
						return returnExpr(e);
				}
			}
	}
	var e = typeExpr(expr.fun, info);
	final type = typeof(expr.fun);
	if (isNamed(type))
		e = macro $e.__t__;
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
	return returnExpr(macro $e($a{args}));
}

private function toReflectType(t:GoType):Expr {
	return switch t {
		case mapType(key, value):
			final key = toReflectType(key);
			final value = toReflectType(value);
			macro stdgo.reflect.Reflect.GoType.mapType($key, $value);
		case pointer(elem):
			final elem = toReflectType(elem);
			macro stdgo.reflect.Reflect.GoType.pointer($elem);
		case arrayType(elem, len):
			final elem = toReflectType(elem);
			final len = toExpr(EConst(CInt('$len')));
			macro stdgo.reflect.Reflect.GoType.arrayType($elem, $len);
		case sliceType(elem):
			final elem = toReflectType(elem);
			macro stdgo.reflect.Reflect.GoType.sliceType($elem);
		case basic(kind):
			final name = macro $i{kind.getName()};
			macro stdgo.reflect.Reflect.GoType.basic($name);
		case _var(name, type):
			toReflectType(type);
		case chanType(dir, elem):
			final dir = toExpr(EConst(CInt('$dir')));
			final elem = toReflectType(elem);
			macro stdgo.reflect.Reflect.GoType.chanType($dir, $elem);
		case interfaceType(empty, methods):
			final empty = empty ? macro true : macro false;
			final methods = macro [];
			macro stdgo.reflect.Reflect.GoType.interfaceType($empty, $methods);
		case invalidType:
			macro stdgo.reflect.Reflect.GoType.invalidType;
		case named(path, methods, type):
			final path = makeString(path);
			final methods = macro [];
			final t = toReflectType(type);
			macro stdgo.reflect.Reflect.GoType.named($path, $methods, $t);
		case previouslyNamed(path):
			final path = makeString(path);
			macro stdgo.reflect.Reflect.GoType.previousNamed($path);
		case signature(variadic, params, results, recv):
			final variadic = variadic ? macro true : macro false;
			final params = macro [];
			final results = macro [];
			final recv = toReflectType(recv);
			macro stdgo.reflect.Reflect.GoType.signature($variadic, $params, $results, $recv);
		case structType(fields):
			var exprs:Array<Expr> = [];
			for (field in fields) {
				final name = makeString(formatHaxeFieldName(field.name));
				final embedded = field.embedded ? macro true : macro false;
				final tag = makeString(field.tag);
				final t = toReflectType(field.type);
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
			final vars = [for (v in vars) toReflectType(v)];
			macro stdgo.reflect.Reflect.GoType.tuple($len, $a{vars});
	}
}

var locals = new Map<String, GoType>();

private function getLocalType(hash:String, underlying:GoType):GoType {
	return locals.exists(hash) ? locals.get(hash) : underlying;
}

private function getTuple(e:Dynamic):Array<GoType> {
	if (e == null)
		return [];
	var vars:Array<Dynamic> = e.vars;
	var tuples:Array<GoType> = [];
	for (v in vars) {
		final t = typeof(v.type);
		if (v.name == "_" || v.name == "") {
			tuples.push(t);
			continue;
		}
		tuples.push(_var(v.name, t));
	}
	return tuples;
}

private function extractTypeDefIdents(e:TypeDefinition):Array<String> {
	if (e == null)
		return [];
	switch e.kind {
		case TDField(kind, _):
			switch kind {
				case FVar(_, expr):
					final list = extractIdents(expr);
					return list;
				default:
			}
		default:
	}
	return [];
}

private function extractIdents(e:Expr):Array<String> {
	final list = [];
	var func = null;
	func = e -> {
		switch e.expr {
			case EConst(CIdent(s)):
				list.push(s);
			default:
				haxe.macro.ExprTools.iter(e, func);
		}
	};
	func(e);
	return list;
}

private function typeof(e:Ast.Expr):GoType {
	if (e == null)
		return invalidType;
	return switch e.id {
		case "Signature":
			var params = getTuple(e.params);
			var results = getTuple(e.results);
			GoType.signature(e.variadic, params, results, invalidType);
		case "Basic":
			basic(BasicKind.createByIndex(e.kind));
		case "Tuple":
			if (e.len > 1) {
				tuple(e.len, [for (v in (e.vars : Array<Dynamic>)) typeof(v)]);
			} else {
				typeof(e.vars[0]);
			}
		case "Var":
			final t = typeof(e.type);
			if (e.name == "_" || e.name == "")
				return t;
			final name = formatHaxeFieldName(e.name);
			_var(name, t);
		case "Interface":
			final underlying = interfaceType(e.empty, e.path);
			final t = getLocalType(e.hash, underlying);
			t;
		case "Slice":
			sliceType(typeof(e.elem));
		case "Array":
			arrayType(typeof(e.elem), e.len.low);
		case "Pointer":
			pointer(typeof(e.elem));
		case "Map":
			mapType(typeof(e.key), typeof(e.elem));
		case "Named":
			var underlying = typeof(e.underlying);
			if (locals.exists(e.hash)) {
				return getLocalType(e.hash, null);
			}
			final path = e.path;
			if (path == null) {
				trace("null named path: " + e);
				throw path;
			}
			final methods:Array<MethodType> = []; // TODO get method data
			named(path, methods, underlying, e.alias);
		case "Struct":
			var t:GoType = structType([
				for (field in (e.fields : Array<Dynamic>))
					{
						name: field.name,
						type: typeof(field.type),
						embedded: field.embedded,
						tag: field.tag == null ? "" : field.tag
					}

			]);
			t = getLocalType(e.hash, t);
			t;
		case "Chan":
			chanType(e.dir, typeof(e.elem));
		case null:
			return invalidType;
		case "CallExpr":
			var e:Ast.CallExpr = e;
			var type = typeof(e.type);
			switch type {
				case signature(variadic, params, results, recv):
					return results[0];
				default:
					return type;
			}
		case "BasicLit":
			var e:Ast.BasicLit = e;
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
		case "Ident":
			var e:Ast.Ident = e;
			typeof(e.type);
		case "CompositeLit":
			var e:Ast.CompositeLit = e;
			typeof(e.type);
		case "SelectorExpr":
			var e:Ast.SelectorExpr = e;
			typeof(e.type);
		case "IndexExpr":
			var e:Ast.IndexExpr = e;
			typeof(e.type);
		case "BinaryExpr":
			var e:Ast.BinaryExpr = e;
			typeof(e.type);
		case "StarExpr":
			var e:Ast.StarExpr = e;
			typeof(e.type);
		case "UnaryExpr":
			var e:Ast.UnaryExpr = e;
			switch e.op {
				case ARROW:
					getElem(typeof(e.x));
				case AND:
					pointer(typeof(e.x));
				default:
					typeof(e.x);
			}
		case "TypeAssertExpr":
			var e:Ast.TypeAssertExpr = e;
			typeof(e.type);
		case "FuncLit":
			var e:Ast.FuncLit = e;
			typeof(e.type.type);
		case "KeyValueExpr":
			var e:Ast.KeyValueExpr = e;
			mapType(typeof(e.key), typeof(e.value));
		case "SliceExpr":
			var e:Ast.SliceExpr = e;
			typeof(e.type);
		case "ParenExpr":
			var e:Ast.ParenExpr = e;
			typeof(e.x);
		case "InterfaceType":
			var e:Ast.InterfaceType = e;
			typeof(e.type);
		case "ArrayType":
			var e:Ast.ArrayType = e;
			typeof(e.type);
		case "MapType":
			var e:Ast.MapType = e;
			mapType(typeof(e.key), typeof(e.value));
		case "ChanType":
			var e:Ast.ChanType = e;
			typeof(e.type);
		case "StructType":
			var e:Ast.StructType = e;
			typeof(e.type);
		case "FuncType":
			var e:Ast.FuncType = e;
			typeof(e.type);
		default:
			throw "unknown typeof expr: " + e.id;
	}
}

private function getGlobalPath(info:Info):String {
	var globalPath = info.global.path;
	if (StringTools.endsWith(info.global.path, ".pkg"))
		globalPath = globalPath.substr(0, globalPath.length - 4);
	return globalPath;
}

private function parseTypePath(path:String, name:String, info:Info):TypePath { // other namedTypePath
	if (path == "command-line-arguments")
		path = "";
	path = normalizePath(path);
	var cl = className(name, info);
	var globalPath = getGlobalPath(info);
	globalPath = toGoPath(globalPath);
	var pack = [];
	if (globalPath != path) {
		pack = path.split("/");
		if (stdgoList.indexOf(path) != -1) { // haxe only type, otherwise the go code refrences Haxe
			pack.unshift("stdgo");
		}
		var last = pack.pop();
		pack.push(last);
		pack.push(title(last));
	}
	return {name: cl, pack: pack};
}

private function toGoPath(path:String):String {
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
		if (stdgoList.indexOf(path) != -1) { // haxe only type, otherwise the go code refrences Haxe
			pack.unshift("stdgo");
		}
		if (last == 0 && split == -1)
			return {pack: [], name: cl};
		pack.push(title(pkg));
	}
	return {pack: pack, name: cl};
}

private function toComplexType(e:GoType, info:Info):ComplexType {
	if (e == null)
		return TPath({pack: [], name: "Any"});
	return switch e {
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
			throw "interface type is not empty";
		case named(path, _, underlying):
			if (path == null) {
				trace("underlying null path: " + printer.printComplexType(toComplexType(underlying, info)));
				throw path;
			}
			TPath(namedTypePath(path, info));
		case sliceType(elem):
			final ct = toComplexType(elem, info);
			TPath({pack: [], name: "Slice", params: [TPType(ct)]});
		case arrayType(elem, len):
			final ct = toComplexType(elem, info);
			TPath({pack: [], name: "GoArray", params: [TPType(ct)]});
		case mapType(key, value):
			final ctKey = toComplexType(key, info);
			final ctValue = toComplexType(value, info);
			TPath({pack: [], name: "GoMap", params: [TPType(ctKey), TPType(ctValue)]});
		case invalidType:
			null;
		case pointer(elem):
			final ct = toComplexType(elem, info);
			TPath({pack: [], name: "Pointer", params: [TPType(ct)]});
		case chanType(dir, elem):
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
		case signature(variadic, params, results, recv):
			var args:Array<ComplexType> = [];
			for (param in params)
				args.push(toComplexType(param, info));
			var ret:ComplexType = null;
			if (results.length == 0) {
				ret = TPath({name: "Void", pack: []});
			} else if (results.length == 1) {
				ret = toComplexType(results[0], info);
			} else {
				var fields:Array<Field> = [];
				for (i in 0...results.length) {
					switch results[i] {
						case _var(_, type):
							fields.push({name: "_" + i, pos: null, kind: FVar(toComplexType(type, info))});
						default:
							fields.push({name: "_" + i, pos: null, kind: FVar(toComplexType(results[i], info))});
					}
				}
				ret = TAnonymous(fields);
			}
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
		case _var(_, type):
			toComplexType(type, info);
		default:
			throw "unknown goType to complexType: " + e;
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
	return macro...$expr.toArray();
}

private function typeBasicLit(expr:Ast.BasicLit, info:Info):ExprDef {
	final type = typeof(expr.type);
	return setBasicLit(expr.kind, expr.value, type, info);
}

private function setBasicLit(kind:Ast.Token, value:String, type:GoType, info:Info) {
	function formatEscapeCodes(value:String):String {
		value = StringTools.replace(value, "\\a", "\x07");
		value = StringTools.replace(value, "\\b", "\x08");
		value = StringTools.replace(value, "\\e", "\x1B");
		value = StringTools.replace(value, "\\f", "\x0C");
		value = StringTools.replace(value, "\\n", "\x0A");
		value = StringTools.replace(value, "\\r", "\x0D");
		value = StringTools.replace(value, "\\t", "\x09");
		value = StringTools.replace(value, "\\v", "\x0B");
		value = StringTools.replace(value, "\\x", "\\u00");
		value = StringTools.replace(value, "\\U", "\\u");
		if (value.charAt(0) == "\\" && value.charAt(1) == "u") {
			value = value.substring(2);
			value = '\\u{$value}';
		}
		return value;
	}
	var ct:ComplexType = null;
	var e:Expr = switch kind {
		case STRING:
			value = StringTools.replace(value, "\\n", "\n");
			value = StringTools.replace(value, '\\"', '"');
			value = StringTools.replace(value, "\\x", "\\\\x");
			value = StringTools.replace(value, "\\b", "\\x08");
			var e = makeString(value);
			e;
		case INT:
			var e = toExpr(EConst(CInt(value)));
			if (value.length >= 10) {
				try {
					var i = haxe.Int64Helper.parseString(value);
					if (i > 2147483647 || i < -2147483647) {
						e = makeString(value);
					}
				} catch (_) {
					e = makeString(value);
				}
			}
			if (isNamed(type))
				type = getUnderlying(type);
			ct = toComplexType(type, info);
			e;
		case FLOAT:
			final e = toExpr(EConst(CFloat(value)));
			if (isNamed(type))
				type = getUnderlying(type);
			ct = toComplexType(type, info);
			e;
		case CHAR:
			var value = formatEscapeCodes(value);
			if (value == "\\'") {
				value = "'";
			}
			var const = makeString(value);
			if (value == "\\") {
				return (macro $const.charCodeAt(0)).expr;
			}
			ct = TPath({name: "GoRune", pack: []});
			macro $const.code;
		case IDENT:
			var name = nameIdent(value, false, false, info);
			macro $i{name};
		case IMAG:
			macro new GoComplex128(0, ${toExpr(EConst(CFloat(value)))});
		default:
			throw "basic lit kind unknown: " + kind;
			null;
	}
	if (ct != null)
		e = macro($e : $ct);
	return e.expr;
}

private function typeUnaryExpr(expr:Ast.UnaryExpr, info:Info):ExprDef {
	var x = typeExpr(expr.x, info);
	final t = typeof(expr.x);
	final isNamed = isNamed(t);
	if (isNamed && expr.op != AND) // exception of not using underlying type is for creating a pointer
		x = macro $x.__t__;
	if (expr.op == AND) {
		return (macro Go.pointer($x)).expr;
	} else {
		final op = typeUnOp(expr.op);
		if (op == null)
			return switch expr.op {
				case XOR: EBinop(OpXor, macro - 1, x);
				case ARROW: (macro $x.get()).expr; // $chan.get
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
 */
/*
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
	var type = typeof(expr.type);
	return compositeLit(type, expr, info);
}

function getTypePath(type:GoType, info:Info):TypePath {
	final ct = toComplexType(type, info);
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

function compositeLit(type:GoType, expr:Ast.CompositeLit, info:Info):ExprDef {
	var keyValueBool:Bool = hasKeyValueExpr(expr.elts);
	final isNamed = isNamed(type);
	if (!keyValueBool) {
		if (isNamed) {
			final ct = toComplexType(type, info);
			final p = getTypePath(type, info);
			type = getUnderlying(type);
			var e = toExpr(compositeLit(type, expr, info));
			return (macro new $p($e)).expr;
		}
	}
	final underlying = getUnderlying(type);
	if (isInvalid(underlying))
		return (macro @:invalid_compositelit null).expr;
	switch underlying {
		case pointer(elem):
			final e = toExpr(compositeLit(elem, expr, info));
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
							// var fieldType = toComplexType(field.type,info);
							value = assignTranslate(typeof(elt.value), field.type, value, info);
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
				for (field in fields) {
					objectFields.push({
						field: nameIdent(field.name, false, false, info),
						expr: defaultValue(field.type, info, false),
					});
				}
				var e = toExpr(EObjectDecl(objectFields));
				final ct = toComplexType(type, info);
				return (macro($e : $ct)).expr;
			} else {
				final args = [
					for (i in 0...expr.elts.length)
						assignTranslate(typeof(expr.elts[i]), fields[i].type, typeExpr(expr.elts[i], info), info)
				];
				final p = getTypePath(type, info);
				return (macro new $p($a{args})).expr;
			}
		case sliceType(elem):
			final p = getTypePath(type, info);
			var exprs:Array<{index:Int, expr:Expr}> = [];
			var index:Int = 0;
			var max:Int = 0;
			var keyValueBool:Bool = false;
			function run(elt:Ast.Expr) {
				if (elt.id == "CompositeLit") {
					if (elt.type == null)
						return {index: index, expr: toExpr(compositeLit(elem, elt, info))};
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
			var value = defaultValue(elem, info, false);
			if (keyValueBool) {
				var sets:Array<Expr> = [];
				for (i in 0...exprs.length) {
					var index = toExpr(EConst(CInt('${exprs[i].index}')));
					var e = exprs[i].expr;
					e = assignTranslate(typeof(expr.elts[i]), elem, e, info);
					sets.push(macro s[$index] = $e);
				}
				sets.push(macro s);
				return EBlock([macro var s = new $p(...([for (i in 0...$length) $value]))].concat(sets));
			} else {
				var params:Array<Expr> = [];
				for (i in 0...exprs.length) {
					var e = exprs[i].expr;
					final t = typeof(expr.elts[i]);
					e = assignTranslate(t, elem, e, info);
					params.push(e);
				}
				return (macro new $p($a{params})).expr;
			}
		case arrayType(elem, len):
			final p = getTypePath(type, info);
			if (keyValueBool) {
				var exprs:Array<{index:Int, expr:Expr}> = [];
				var index:Int = 0;
				function run(elt:Ast.Expr) {
					if (elt.id == "CompositeLit") {
						if (elt.type == null)
							return {index: index, expr: toExpr(compositeLit(elem, elt, info))};
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
				var value = defaultValue(elem, info, false);
				var sets:Array<Expr> = [];
				for (i in 0...exprs.length) {
					var index = toExpr(EConst(CInt('${exprs[i].index}')));
					var value = exprs[i].expr;
					value = assignTranslate(typeof(expr.elts[i]), elem, value, info);
					sets.push(macro s[$index] = $value);
				}
				sets.push(macro s);
				return EBlock([macro var s = new $p(...[for (i in 0...$length) $value])].concat(sets));
			} else {
				var exprs:Array<Expr> = [];
				for (elt in expr.elts) {
					if (elt.id == "CompositeLit") {
						if (elt.type == null) {
							var e = toExpr(compositeLit(elem, elt, info));
							e = assignTranslate(typeof(elt), elem, e, info);
							exprs.push(e);
							continue;
						}
					}
					var e = typeExpr(elt, info);
					e = assignTranslate(typeof(elt), elem, e, info);
					exprs.push(e);
				}
				if (len == exprs.length)
					return (macro new $p($a{exprs})).expr;
				var diff = len - exprs.length;
				var len = toExpr(EConst(CInt('$diff')));
				var value = defaultValue(elem, info, false);
				var values = macro [for (i in 0...$len) $value];
				return (macro new $p(...($a{exprs}.concat($values)))).expr;
			}
		case mapType(keyType, valueType):
			var t = toReflectType(type);
			var params:Array<Expr> = [];
			for (elt in expr.elts) {
				if (elt.id != "KeyValueExpr")
					throw "not a KeyValueExpr for Map CompositeLit";
				var elt:Ast.KeyValueExpr = elt;
				var key = typeExpr(elt.key, info);
				var value = typeExpr(elt.value, info);

				key = assignTranslate(typeof(elt.key), keyType, key, info);
				value = assignTranslate(typeof(elt.value), valueType, value, info);

				params.push(macro {key: $key, value: $value});
			}
			t = macro new stdgo.reflect.Reflect._Type($t);
			params.unshift(t);
			final p = getTypePath(type, info);
			return (macro new $p($a{params})).expr;
		default:
			throw "not supported CompositeLit type: " + type;
	}
}

private function funcReset(info:Info) {
	info.deferBool = false;
	info.recoverBool = false;
}

private function typeFuncLit(expr:Ast.FuncLit, info:Info):ExprDef {
	final info = info.copy();
	funcReset(info);

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

private function typeBinaryExpr(expr:Ast.BinaryExpr, info:Info):ExprDef {
	var x = typeExpr(expr.x, info);
	var y = typeExpr(expr.y, info);

	var typeX = typeof(expr.x);
	var typeY = typeof(expr.y);

	switch expr.op { // operators that don't exist in haxe need to be handled here
		case AND_NOT: // &^ refrenced from Tardisgo
			// macro($x) & (($y) ^ (-1 : GoUnTypedInt)))
			return typeBinaryExpr({
				x: {
					id: "ParenExpr",
					x: {
						id: "BinaryExpr",
						x: expr.x,
						y: expr.y,
						op: Ast.Token.AND,
						type: expr.type,
						opPos: 0,
					}
				},
				y: {
					id: "BasicLit",
					value: "-1",
					kind: Ast.Token.INT,
					type: {id: "Basic", kind: BasicKind.untyped_int_kind.getIndex()}
				},
				op: Ast.Token.XOR,
				type: expr.type,
				opPos: 0,
			}, info);
		default:
	}
	var op = typeOp(expr.op);
	y = toGoType(y);
	x = toGoType(x);
	switch op {
		case OpEq, OpNotEq:
			return translateEquals(x, y, typeX, typeY, op, info).expr;
		default:
	}
	var paren = false;
	switch op {
		case OpShl, OpShr:
			paren = true;

		default:
	}
	if (isInvalid(typeX) || isInterface(typeX)) {
		x = macro Go.toInterface($x);
		y = macro Go.toInterface($y);
	}

	if (isNamed(typeX))
		x = macro $x.__t__;
	if (isNamed(typeY))
		y = macro $y.__t__;
	var e = toExpr(EBinop(op, x, y));
	e = assignTranslate(getUnderlying(typeX), typeof(expr.type), e, info);
	if (paren)
		e = toExpr(EParenthesis(e)); // proper math ordering
	return e.expr;
}

private function typeUnOp(token:Ast.Token):Unop {
	return switch token {
		case NOT: OpNot;
		case SUB: OpNeg;
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
		case named(_, _, elem), pointer(elem):
			getStructFields(elem);
		case structType(fields):
			fields;
		default:
			[];
	}
}

private function typeSelectorExpr(expr:Ast.SelectorExpr, info:Info):ExprDef { // EField
	var x = typeExpr(expr.x, info);
	var typeX = typeof(expr.x);
	var isThis = false;

	var sel = nameIdent(expr.sel.name, false, false, info);
	var selFunctionBool = isFunction(expr.sel);

	if (isPointer(typeX) && !isThis)
		x = macro $x.value;
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
	return (macro $x.$sel).expr; // EField
}

private function typeSliceExpr(expr:Ast.SliceExpr, info:Info):ExprDef {
	var x = typeExpr(expr.x, info);
	final xType = typeof(expr.x);
	if (isPointer(xType)) // get pointer refrence of slice/array if pointer type
		x = macro $x.value;
	var low = expr.low != null ? typeExpr(expr.low, info) : macro 0;
	var high = expr.high != null ? typeExpr(expr.high, info) : null;
	x = high != null ? macro $x.__slice__($low, $high) : macro $x.__slice__($low);
	if (expr.slice3) {
		var max = typeExpr(expr.max, info);
		max = assignTranslate(typeof(expr.max), basic(int_kind), max, info);
		x = macro $x.setCap(($max : GoInt) - (1 : GoInt));
	}
	return x.expr;
}

private function typeAssertExpr(expr:Ast.TypeAssertExpr, info:Info):ExprDef {
	var e = typeExpr(expr.x, info);
	if (expr.type == null)
		return e.expr;
	var type = typeExprType(expr.type, info);
	switch e.expr {
		case EConst(c):
			switch c {
				case CIdent(s):
					if (s == "null") {
						var e = defaultValue(typeof(expr.type), info);
						return e.expr;
					}
				default:
			}
		default:
	}
	return checkType(e, type, typeof(expr.x), typeof(expr.type), info).expr;
}

private function destructureExpr(x:Expr, t:GoType):{x:Expr, t:GoType} {
	if (isNamed(t))
		x = macro $x.__t__;
	t = getUnderlying(t);
	if (isPointer(t)) {
		x = macro $x.value;
		t = getElem(t);
		if (isNamed(t)) {
			x = macro $x.__t__;
			t = getUnderlying(t);
		}
	}
	return {x: x, t: t};
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
	var t = typeof(expr.x);
	final obj = destructureExpr(x, t);
	x = obj.x;
	t = obj.t;
	switch t {
		case arrayType(_, _), sliceType(_), basic(untyped_string_kind), basic(string_kind):
			index = assignTranslate(typeof(expr.index), basic(int_kind), index, info);
		case mapType(indexType, _):
			index = assignTranslate(typeof(expr.index), indexType, index, info);
		default:
			throw "unknown type for index: " + t;
	}
	var e = macro $x[$index];
	return e.expr;
}

private function typeStarExpr(expr:Ast.StarExpr, info:Info):ExprDef {
	var x = typeExpr(expr.x, info);
	switch x.expr {
		case EConst(c):
			switch c {
				case CIdent(s):
					if ((info.thisName == "" && s == info.thisName) || s == "this") return x.expr;
				default:
			}
		default:
	}
	return (macro $x.value).expr; // pointer code
}

private function typeParenExpr(expr:Ast.ParenExpr, info:Info):ExprDef {
	var x = typeExpr(expr.x, info);
	return x != null ? EParenthesis(x) : null;
}

// SPECS
private function typeDeferReturn(info:Info, nullcheck:Bool):Expr {
	return macro for (defer in deferstack) {
		defer();
	};
}

private function getRecvThis(recvType:GoType, sel:String, varName:String, isNamed:Bool, info:Info):Expr {
	final thisValue = sel == "" ? macro this : macro this.$sel; // embedded method field name
	return if (isPointer(recvType)) {
		final t = getElem(recvType);
		final p = getTypePath(t, info);
		if (isNamed) {
			final e = macro $thisValue.__t__;
			macro var $varName = new Pointer(() -> new $p($e), __tmp__ -> new $p($e = __tmp__.__t__));
		} else {
			macro var $varName = new Pointer(() -> $thisValue, __tmp__ -> $thisValue.__set__(__tmp__));
		}
	} else {
		if (isNamed) {
			macro var $varName = $thisValue.__copy__();
		} else {
			macro var $varName = $thisValue.__copy__();
		}
	}
}

private function typeFunction(decl:Ast.FuncDecl, data:Info, restricted:Array<String> = null, isNamed:Bool = false, sel:String = ""):TypeDefinition {
	final info = new Info();
	info.data = data.data;
	info.renameClasses = data.renameClasses;
	info.renameIdents = data.renameIdents.copy();
	info.thisName = "";
	info.count = 0;
	info.gotoSystem = false;
	info.global = data.global;
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
	info.thisName = "";
	info.restricted = restricted;
	var block:Expr = toExpr(typeBlockStmt(decl.body, info, true));

	block = argsTranslate(args, block);

	if (info.gotoSystem) {
		var e = macro stdgo.internal.Macro.controlFlow($block);
		if (decl.type.results != null && decl.type.results.list.length > 0)
			e = macro return $e;
		block = macro {
			$e;
		};
	}

	info.restricted = null;
	var meta:Metadata = null;
	if (decl.recv != null) {
		var varName = decl.recv.list[0].names.length > 0 ? decl.recv.list[0].names[0].name : "";
		if (varName != "") {
			varName = nameIdent(varName, false, true, info);
			info.thisName = varName;
			switch block.expr {
				case EBlock(exprs):
					final recvType = typeof(decl.recv.list[0].type);
					exprs.unshift(getRecvThis(recvType, sel, varName, isNamed, info));
					block.expr = EBlock(exprs);
				default:
			}
		}
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
	return {
		name: name,
		pos: null,
		pack: [],
		fields: [],
		doc: finalDoc,
		meta: meta,
		isExtern: isTitle(decl.name.name),
		kind: TDField(FFun({
			ret: ret,
			params: null,
			expr: block,
			args: args
		}), [])
	};
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
		case mapType(key, value):
			final key = toComplexType(key, info);
			final value = toComplexType(value, info);
			final typ = toReflectType(type);
			macro new GoMap<$key, $value>(new stdgo.reflect.Reflect._Type($typ)).nil();
		case sliceType(elem):
			final t = toComplexType(elem, info);
			macro new Slice<$t>().nil();
		case arrayType(elem, len):
			final t = toComplexType(elem, info);
			macro new GoArray<$t>(...[for (i in 0...${toExpr(EConst(CInt('$len')))}) ${defaultValue(elem, info)}]);
		case interfaceType(_):
			final ct = ct();
			macro(null : $ct);
		case chanType(_, elem):
			final t = toComplexType(elem, info);
			var value = defaultValue(elem, info);
			macro new Chan<$t>(0, () -> $value, true);
		case pointer(elem):
			final t = toComplexType(elem, info);
			macro new Pointer<$t>().nil();
		case signature(_, _, _, _):
			macro null;
		case named(path, _, underlying):
			switch underlying {
				case pointer(_), interfaceType(_), mapType(_, _):
					final ct = ct();
					macro(null : $ct);
				case invalidType:
					final ct = ct();
					macro(null : $ct);
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
		default:
			throw "unsupported default value type: " + type;
	}
}

private function getRecvName(recv:Ast.Expr, info:Info):String {
	if (recv.id == "StarExpr")
		return className(recv.x.name, info);
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
		var t = typeof(group.type);
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
				returnNames.push(formatHaxeFieldName(name.name));
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
				name: "arg" + counter++,
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
		if (name == "_") {
			// isBlank
			name = "__blank__" + (blankCounter++);
		}
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
			kind: FVar(toComplexType(field.type, info), defaultBool ? defaultValue(field.type, info) : null)
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
		var type = typeof(field.type);
		var tag = "";
		if (field.tag != null) {
			tag = field.tag.value;
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

private function typeFieldListTypes(list:Ast.FieldList, info:Info):Array<TypeDefinition> {
	var defs:Array<TypeDefinition> = [];
	for (field in list.list) {
		var type = typeExprType(field.type, info);
		for (name in field.names) {
			defs.push({
				name: nameIdent(name.name, false, false, info),
				pos: null,
				pack: [],
				fields: [],
				kind: null,
			});
		}
	}
	return defs;
}

private function interfaceWrapperName(name:String):String
	return "__" + name + "_" + "InterfaceWrapper";

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
	var externBool = isTitle(spec.name.name);
	info.className = name;
	var doc:String = getComment(spec) + getDoc(spec) + getSource(spec, info);

	var t = typeof(spec.type);
	var underlyingType = getUnderlying(t);
	var underlyingComplexType = toComplexType(underlyingType, info);
	var e = macro t;
	var ct = underlyingComplexType; // typeExprType(spec.type, info);
	var value = defaultValue(underlyingType, info, false);
	var p:TypePath = {name: name, pack: []};
	var copyT = macro __t__;
	copyT = passByCopy(t, copyT, info);
	var fields:Array<Field> = [
		{
			name: "__t__",
			access: [APublic],
			pos: null,
			kind: FVar(ct),
		},
		{
			name: "new",
			pos: null,
			access: [APublic],
			kind: FFun({
				args: [{name: "t", opt: true, type: underlyingComplexType}],
				expr: macro {
					__t__ = t == null ? $value : $e;
				},
			})
		},
		{
			name: "__underlying__",
			pos: null,
			access: [APublic],
			kind: FFun({
				args: [],
				expr: macro return Go.toInterface(this),
				ret: anyInterfaceType()
			})
		},
		{
			name: "toString",
			pos: null,
			access: [APublic],
			meta: [{name: ":implicit", pos: null}],
			kind: FFun({
				args: [],
				expr: macro return Go.string(__t__),
				ret: TPath({name: "GoString", pack: []}),
			})
		},
		{
			name: "__copy__",
			pos: null,
			access: [APublic],
			kind: FFun({
				args: [],
				expr: macro return new $p($copyT),
			}),
		}
	];
	final intType = TPath({name: "GoInt", pack: []});
	var meta = [{name: ":named", pos: null}];
	var superClass:TypePath = null;
	var isInterface = false;
	var func = null;
	func = function() {
		switch t { // only functions that need to give back the named type should be here, the rest should use x.__t__.y format x is the identifier, and y is the function
			case sliceType(elem):
				fields.push({
					name: "__append__",
					pos: null,
					access: [APublic],
					kind: FFun({
						args: [
							{name: "args", type: TPath({name: "Rest", pack: ["haxe"], params: [TPType(toComplexType(elem, info))]})}
						],
						expr: macro return new $p(this.__t__.__append__(...args)),
					})
				});
				fields.push({
					name: "__slice__",
					pos: null,
					access: [APublic],
					kind: FFun({
						args: [{name: "low", type: intType}, {name: "high", type: intType, value: macro - 1}],
						expr: macro return new $p(this.__t__.__slice__(low, high)),
					})
				});
			case arrayType(elem, _):
				fields.push({
					name: "__slice__",
					pos: null,
					access: [APublic],
					kind: FFun({
						args: [{name: "low", type: intType}, {name: "high", type: intType, value: macro - 1}],
						expr: macro return this.__t__.__slice__(low, high),
					})
				});
			case named(_, _, _, _):
				if (!isNamed(t)) { // is Struct or Interface
					final path = getTypePath(t, info);
					final type = getUnderlying(t);
					superClass = path;
					fields = [];
					final params:Array<Expr> = [];
					final args:Array<FunctionArg> = [];
					switch type {
						case structType(fs):
							for (field in fs) {
								final name = nameIdent(field.name, true, false, info);
								params.push(macro $i{name});
								args.push({opt: true, name: name});
							}
							meta.push({name: ":structInit", pos: null});
							fields = [
								{
									name: "new",
									pos: null,
									access: [APublic],
									kind: FFun({
										args: args,
										expr: macro super($a{params}),
									}),
								},
								{
									name: "__copy__",
									pos: null,
									access: [APublic, AOverride],
									kind: FFun({
										args: [],
										expr: macro return new $p($a{params}),
									}),
								}
							];
						case interfaceType(empty, methods):
							if (empty)
								return true;
							isInterface = true;
							fields = [];
							for (method in methods) {
								trace(method);
							}
						default: // must be an InterfaceType
							throw "not an interface";
					}
				}
			default:
		}
		return false;
	}
	if (func())
		return {
			name: name,
			pos: null,
			pack: [],
			fields: [],
			meta: [{name: ":follow", pos: null}],
			kind: TDAlias(TPath({pack: [], name: "AnyInterface"})),
		};
	if (isInterface) {
		return {
			name: name,
			pos: null,
			pack: [],
			fields: [],
			meta: meta,
			kind: TDAlias(TIntersection([
				TPath({name: "StructType", pack: []}),
				TExtend([{name: "StructType", pack: []}], fields)
			]))
		};
	}
	return {
		name: name,
		pos: null,
		pack: [],
		fields: fields,
		meta: meta,
		kind: TDClass(superClass),
	}
}

private function typeSpec(spec:Ast.TypeSpec, info:Info, local:Bool = false):TypeDefinition {
	if (spec.type.type != null) {
		final hash:String = spec.type.type.hash;
		if (!locals.exists(hash)) {
			final path = spec.name.type.path == null ? spec.name.name : spec.name.type.path;
			var nameType:GoType = spec.type.id == "InterfaceType" ? named(path,[],interfaceType(spec.type.type.empty)) : typeof(spec.type);
			switch nameType {
				case structType(_):
					nameType = named(path, [], nameType);
				default:
			}
			locals[hash] = nameType;
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

private function makeString(str:String, ?kind):Expr {
	return toExpr(EConst(CString(str, kind)));
}

private function typeType(spec:Ast.TypeSpec, info:Info, local:Bool = false):TypeDefinition {
	var name = className(spec.name.name, info);
	var externBool = isTitle(spec.name.name);
	info.className = name;
	var doc:String = getComment(spec) + getDoc(spec) + getSource(spec, info);
	switch spec.type.id {
		case "StructType":
			var struct:Ast.StructType = spec.type;
			var fields = typeFieldListFields(struct.fields, info, [APublic], true);
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
					expr: macro stdgo.internal.Macro.initLocals(),
				}),
			});
			var toStringExpr:Expr = null;
			if (fields.length > 1) { // 1 because new is already defined
				toStringExpr = makeString("{", SingleQuotes);
				for (field in fields) {
					switch field.kind {
						case FVar(t, e):
							toStringExpr = macro $toStringExpr + Go.string($i{field.name}) + " ";
						default:
					}
				}
				switch toStringExpr.expr {
					case EBinop(op, e1, e2):
						toStringExpr.expr = EBinop(op, e1, macro "}");
					default:
				}
			} else {
				toStringExpr = makeString("{}");
			}

			fields.push({
				name: "toString",
				pos: null,
				access: [APublic],
				kind: FFun({
					args: [],
					expr: macro {
						return $toStringExpr;
					},
				}),
			});
			var type:TypePath = {name: name, pack: []};
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
				final name = fields[method.index[0]].name;
				final type = typeof(method.type);
				switch type {
					case signature(variadic, params, results, recv):
						var i = -1;
						final args:Array<Expr> = [
							for (param in params) {
								i++;
								macro $i{"_" + i};
							}
						];
						i = -1;
						final params:Array<FunctionArg> = [
							for (param in params) {
								i++;
								switch param {
									case _var(name, type):
										{
											name: nameIdent(name, false, false, info),
											type: toComplexType(type, info),
										}
									default:
										{
											name: "_" + i,
											type: toComplexType(type, info),
										}
								}
							}
						];
						final fieldName = nameIdent(method.name, false, false, info);
						var expr = macro $i{name}.$fieldName($a{args});
						var ret:ComplexType = null;
						if (results.length > 0) {
							if (results.length == 1) {
								ret = toComplexType(results[0], info);
							} else {
								i = -1;
								ret = TAnonymous([
									for (res in results) {
										i++;
										switch res {
											case _var(_, type):
												{
													name: "_" + i,
													pos: null,
													kind: FVar(toComplexType(type, info)),
												}
											default:
												{
													name: "_" + i,
													pos: null,
													kind: FVar(toComplexType(type, info)),
												}
										}
									}
								]);
							}
						}
						if (!isVoid(ret))
							expr = macro return $expr;

						fields.push({
							name: nameIdent(method.name, false, false, info),
							pos: null,
							access: [APublic],
							kind: FFun({
								args: params,
								ret: ret,
								expr: expr,
							}),
						});
					default:
						throw "method not a signature";
				}
			}

			var cl:TypeDefinition = {
				name: name,
				pos: null,
				fields: fields,
				pack: [],
				doc: doc,
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
						return new $type($a{args});
					},
				}),
			});
			cl.fields.push({
				name: "__set__", // used for pointer setting of public method
				pos: null,
				access: [APublic],
				kind: FFun({
					args: [{name: "__tmp__"}],
					expr: macro $b{sets},
				}),
			});
			return cl;
		case "InterfaceType":
			var struct:Ast.InterfaceType = spec.type;
			if (struct.methods.list.length == 0) {
				return {
					name: name,
					pos: null,
					fields: [],
					pack: [],
					meta: [{name: ":follow", pos: null}],
					kind: TDAlias(anyInterfaceType()),
				}
			}
			final fields = typeFieldListMethods(struct.methods, info);
			// embedded interfaces
			final implicits:Array<TypePath> = [];
			if (struct.methods != null && struct.methods.list != null)
				for (method in struct.methods.list) {
					if (method.names.length == 0) {
						implicits.push(getTypePath(typeof(method.type), info));
					}
				}
			var meta = [];
			if (local)
				meta.push({name: ":local", pos: null, params: []});
			return {
				name: name,
				pack: [],
				pos: null,
				doc: doc,
				fields: [],
				isExtern: externBool,
				meta: meta,
				kind: TDAlias(TIntersection([TPath({name: "StructType", pack: []}), TExtend(implicits, fields)]))
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
	final path = normalizePath(imp.path.value);
	final pack = path.split("/");
	var alias = imp.name == null ? null : imp.name.name;
	if (alias == "_")
		alias = "";
	if (stdgoList.indexOf(path) != -1) { // haxe only type, otherwise the go code refrences Haxe
		pack.unshift("stdgo");
	}
	final name = pack[pack.length - 1];
	pack.push(importClassName(name)); // shorten path here
	if (alias != null && alias != "") {
		if (alias == ".") {
			info.data.imports.push({
				path: pack,
				alias: "",
				doc: doc,
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
		interfaceBool = isAnyInterface(typeof(value.type));
	}
	var values:Array<TypeDefinition> = [];
	if (value.names.length > value.values.length && value.values.length > 0) {
		var t = typeof(value.values[0]);

		// destructure
		var tmp = "__tmp__" + (info.blankCounter++);
		var tmpExpr = macro $i{tmp};
		var func = typeExpr(value.values[0], info);
		var data = castTranslate(value.values[0], func, info);
		func = data.expr;
		if (data.ok)
			value.names = [{name: "value", type: null, kind: typ}, {name: "ok", type: null, kind: typ}];
		values.push({
			name: tmp,
			pos: null,
			pack: [],
			fields: [],
			kind: TDField(FVar(null, func))
		});
		for (i in 0...value.names.length) {
			var fieldName = "_" + i;
			var access = []; // typeAccess(value.names[i]);
			if (value.constants[i])
				access.push(AFinal);
			values.push({
				name: nameIdent(value.names[i].name, false, true, info),
				pos: null,
				pack: [],
				fields: [],
				isExtern: isTitle(value.names[i].name),
				kind: TDField(FVar(type, macro $tmpExpr.$fieldName), access)
			});
		}
	} else {
		for (i in 0...value.names.length) {
			var expr:Expr = null;
			if (value.values[i] == null) {
				if (type != null) {
					expr = defaultValue(typeof(value.type), info);
				} else {
					// last expr use iota
					expr = typeExpr(info.lastValue, info);
					type = toComplexType(info.lastType, info);
					expr = assignTranslate(typeof(info.lastValue), info.lastType, expr, info);
				}
			} else {
				info.lastValue = value.values[i];
				info.lastType = typeof(value.type);
				expr = typeExpr(value.values[i], info);
				expr = assignTranslate(typeof(value.values[i]), info.lastType, expr, info);
			}
			if (expr == null)
				continue;
			var type = type; // set local type
			if (type == null)
				type = toComplexType(typeof(value.values[i]), info);
			var name = nameIdent(value.names[i].name, false, true, info);
			var doc:String = getComment(value) + getDoc(value); // + getSource(value, info);
			var access = []; // typeAccess(value.names[i]);
			if (value.constants[i])
				access.push(AFinal);
			values.push({
				name: name,
				pos: null,
				pack: [],
				fields: [],
				isExtern: isTitle(value.names[i].name),
				doc: doc,
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
	return value.doc.list.join("\n");
}

private function getSource(value:{pos:Int, end:Int}, info:Info):String {
	if (!config.printGoCode || value.pos == value.end)
		return "";
	var source:String = "";
	try {
		source = File.getContent(info.data.location);
	} catch (e) {
		trace("error: " + e + " data: " + info.data.location);
		return "";
	}
	source = source.substring(value.pos, value.end);
	// sanatize comments
	if (source != "") {
		source = "\n" + source;
		source = StringTools.replace(source, "/*", "/|*");
		source = StringTools.replace(source, "*/", "*|/");
	}
	return source;
}

private function typeAccess(name:String, isField:Bool = false):Array<Access> {
	return isTitle(name) ? (isField ? [APublic] : []) : [APrivate];
}

private function getRestrictedName(name:String, info:Info):String {
	for (file in info.global.module.files) {
		for (def in file.defs) {
			if (def.name == name)
				return file.name + "." + def.name;
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

private function formatHaxeFieldName(name:String) {
	return nameIdent(name, false, false, null);
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

private function nameIdent(name:String, rename:Bool, overwrite:Bool, info:Info):String {
	name = nameAscii(name);
	if (name == "_")
		return "_";
	if (name == "null")
		return "nil";
	if (name == "main")
		return name;
	if (name == "False" || name == "True" || name == "Main")
		return "_" + name;
	if (name == "String")
		return "toString";
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
	if (rename && info.renameIdents.exists(name)) {
		name = info.renameIdents[name];
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
	if (reserved.indexOf(name) != -1)
		name = name + "_";
	if (overwrite) {
		info.renameIdents[oldName] = name;
	}
	return name;
}

private function normalizePath(path:String):String {
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

	public inline function new() {}

	public function copy():Global {
		var g = new Global();
		g.initBlock = initBlock.copy();
		g.path = path;
		g.module = module;
		g.filePath = filePath;
		g.hasBreak = hasBreak;
		return g;
	}
}

class Info {
	public var blankCounter:Int = 0;
	public var count:Int = 0;
	public var restricted:Array<String> = null;
	public var thisName:String = "";
	public var deferBool:Bool = false;
	public var recoverBool:Bool = false;
	public var funcName:String = "";
	public var gotoSystem:Bool = false;
	public var returnNames:Array<String> = [];
	public var returnType:ComplexType = null;
	public var returnNamed:Bool;
	public var returnTypes:Array<GoType> = [];
	public var returnComplexTypes:Array<ComplexType> = [];
	public var returnInterfaceBool:Array<Bool> = [];
	public var className:String = "";
	public var iota:Int = 0;
	public var lastValue:Ast.Expr = null;
	public var lastType:GoType = null;
	public var data:FileType;
	public var switchTag:Expr = null;
	public var switchIndex:Int = 0;
	public var switchTagType:GoType = null;

	public var renameIdents:Map<String, String> = []; // identifiers
	public var renameClasses:Map<String, String> = ["bool" => "Bool"]; // class names i.e TPath

	public var global = new Global();

	public function new(?global) {
		if (global != null)
			this.global = global;
	}

	public inline function copy() {
		var info = new Info();
		info.thisName = thisName;
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
		info.iota = iota;
		info.data = data;
		info.global = global.copy(); // imports, types
		info.renameIdents = renameIdents.copy();
		info.renameClasses = renameClasses.copy();
		return info;
	}
}

typedef DataType = {args:Array<String>, pkgs:Array<PackageType>};

typedef PackageType = {
	path:String,
	name:String,
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
