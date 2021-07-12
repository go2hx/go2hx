import stdgo.GoString;
import Ast.ExprType;
import sys.io.File;
import haxe.io.Path;
import haxe.ds.StringMap;
import haxe.macro.Type.ClassField;
import haxe.macro.Type.ClassKind;
import haxe.macro.Type.ClassType;
import haxe.macro.Type.ModuleType;
import haxe.macro.Expr;
import haxe.DynamicAccess;
import sys.FileSystem;
import Ast.GoType;
import Ast.BasicKind;
import stdgo.Go;

var stdgoList:Array<String>;
var excludes:Array<String>;
var externs:Bool = false;

final reserved = [
	"switch", "case", "break", "continue", "default", "is", "abstract", "cast", "catch", "class", "do", "function", "dynamic", "else", "enum", "extends",
	"extern", "final", "for", "function", "if", "interface", "implements", "import", "in", "inline", "macro", "new", "operator", "overload", "override",
	"package", "private", "public", "return", "static", "this", "throw", "try", "typedef", "untyped", "using", "var", "while", "construct", "null",
];

final reservedClassNames = [
	"Class",
	"T",
	"K",
	"S",
	"Single", // Single is a 32bit float
	"Array",
	"Any",
	"AnyInterface",
	"Dynamic",
	"Null",
	"Reflect",
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
	"Math",
	"Std",
	"Sys",
	"StringBuf",
	"StringTools",
	"SysError",
	"Type",
	"UnicodeString",
	"ValueType",
	// "Void",
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
	// default imports
	var defaultImports:Array<ImportType> = [
		{path: ["stdgo", "StdGoTypes"], alias: "", doc: ""},
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
		pkg.path = StringTools.replace(pkg.path, "/", ".");
		if (pkg.path == "")
			pkg.path = "std";

		var module:Module = {
			path: pkg.path,
			files: [],
			isMain: pkg.name == "main",
			name: pkg.name
		};
		if (!module.isMain)
			module.path += ".pkg";

		var info = new Info();
		info.global.path = pkg.path;
		//info.global.path = module.path; //this potentially adds .pkg to end
		info.global.renameTypes["String"] = "toString";

		// holds the last path to refrence against to see if a file has the main package name
		var endPath = pkg.path;
		var index = endPath.lastIndexOf(".");
		endPath = endPath.substr(index + 1);
		endPath = className(endPath, info);

		var namedDecls:Array<Ast.Decl> = [];

		function hasName(name:String, exception:Int, info:Info) {
			for (i in 0...namedDecls.length) {
				if (i == exception)
					continue;
				var decl = namedDecls[i];
				var change = false;
				switch decl.id {
					case "ValueSpec":
						var decl:Ast.ValueSpec = decl;
						for (i in 0...decl.names.length) {
							if (untitle(name) != decl.names[i].name)
								continue;
							change = !isTitle(name);
							name = change ? name : decl.names[i].name;
							decl.names[i].name = "_" + name;
							info.global.renameTypes[name] = decl.names[i].name;
						}
					default:
						if (untitle(name) != decl.name.name)
							continue;
						change = !isTitle(name);
						name = change ? name : decl.name.name;
						decl.name.name = "_" + name;
						info.global.renameTypes[name] = decl.name.name;
				}
			}
		}

		for (file in pkg.files) {
			if (file.decls == null)
				continue;

			file.path = className(normalizePath(Path.withoutExtension(file.path)), info);

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
				if (decl.recv == null || decl.recv.list == null || decl.recv.list.length == 0)
					namedDecls.push(decl);
			}
			for (gen in declGens) {
				for (spec in gen.specs) {
					if (spec == null)
						continue;
					switch spec.id {
						case "ValueSpec", "TypeSpec":
							namedDecls.push(spec);
						default:
					}
				}
			}
		}
		// rename per package
		for (i in 0...namedDecls.length) {
			var decl = namedDecls[i];
			switch decl.id {
				case "ValueSpec":
					var decl:Ast.ValueSpec = decl;
					for (i in 0...decl.names.length) {
						if (!isTitle(decl.names[i].name))
							continue;
						hasName(decl.names[i].name, i, info);
					}
				default:
					if (!isTitle(decl.name.name))
						continue;
					var decl:Ast.TypeSpec = decl;
					hasName(decl.name.name, i, info);
			}
		}
		var recvFunctions:Array<{decl:Ast.FuncDecl, path:String}> = [];
		// 2nd pass
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
			info = new Info(info.global);
			info.data = data;

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
			for (gen in declGens) {
				for (spec in gen.specs) {
					if (spec == null)
						continue;
					switch spec.id {
						case "ImportSpec":
							// info.data.imports.push(typeImport(spec, info));
							typeImport(spec, info);
						case "TypeSpec":
							info.data.defs.push(typeSpec(spec, info));
					}
				}
			}

			// variables after so that all types can be refrenced by a value and have it exist.
			info.iota = 0;
			info.lastValue = null;
			info.lastType = null;

			for (gen in declGens) {
				for (spec in gen.specs) {
					if (spec == null)
						continue;
					switch spec.id {
						case "ValueSpec":
							var spec:Ast.ValueSpec = spec;
							data.defs = info.data.defs.concat(typeValue(spec, info));
							info.iota++;
						default:
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
				data.defs.push({
					name: "__init__",
					pos: null,
					pack: [],
					fields: [],
					kind: TDField(FFun({
						ret: null,
						params: null,
						expr: toExpr(EBlock(info.global.initBlock)),
						args: []
					}), null)
				});
			}
			data.imports = data.imports.concat(defaultImports);
			for (path => alias in info.global.imports)
				data.imports.push({path: path.split("."), alias: alias, doc: ""});
			// add file to module
			module.files.push(data);
		}
		info.global.module = module;
		// process recv functions check against all TypeSpecs
		for (file in module.files) {
			for (def in file.defs) {
				var local:Array<Ast.FuncDecl> = [];
				for (recv in recvFunctions) {
					if (file.isMain && file.name != recv.path)
						continue;
					if (getRecvName(recv.decl.recv.list[0].type, info) == def.name)
						local.push(recv.decl);
				}
				// rename conflicts
				var change = false;
				for (i in 0...local.length) {
					var name = local[i].name.name;
					for (j in 0...local.length) {
						if (i == j)
							continue;
						if (untitle(name) != local[j].name.name)
							continue;
						change = !isTitle(name);
						name = change ? name : local[j].name.name;
						local[j].name.name = "_" + name;
						info.global.renameTypes[name] = local[j].name.name;
					}
				}
				var restrictedNames = [for (func in local) nameIdent(func.name.name, info, false, false)];
				var isNamed = false;
				if (def.meta != null && def.meta[0].name == ":named")
					isNamed = true;
				for (decl in local) {
					if (decl.name.name.charAt(0) == decl.name.name.charAt(0).toLowerCase())
						decl.name.name = "_" + decl.name.name;

					var func = typeFunction(decl, info, restrictedNames, isNamed);
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
									def.fields.push({
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
									if (implementsError(decl.name.name, fun.ret)) {
											switch def.kind {
												case TDClass(_, interfaces, isInterfaceBool, isFinalBool):
													interfaces.push({name: "Error", pack: []});
													def.kind = TDClass(null, interfaces, isInterfaceBool, isFinalBool);
												default:
											}
									}
								default:
							}
						default:
					}
				}
			}
		}
		// main system
		if (!module.isMain) {
			var pkgExport = {
				name: endPath,
				imports: defaultImports, // default imports
				defs: [],
				location: "", // does not have a linked go file
				isMain: false,
			};
			// add to main module list
			list.push({
				path: pkg.path,
				files: [pkgExport],
				isMain: false,
				name: pkg.name,
			});

			var imports:Array<ImportType> = [];

			for (file in module.files) {
				for (def in file.defs) {
					if (def == null || def.name == "__init__")
						continue;
					// exported and non added to module imports.hx
					var imp:ImportType = {
						path: module.path.split(".").concat([file.name, def.name]),
						alias: "",
						doc: "",
					};
					imports.push(imp);
					if (def.isExtern == null || !def.isExtern)
						continue; // not an exported def

					switch def.kind { // export out fields, export fields
						case TDClass(superClass, interfaces, isInterface, isFinal, isAbstract):
							if (StringTools.endsWith(def.name, "__extension"))
								continue;
							var t:ComplexType = TPath({name: def.name, pack: module.path.split(".").concat([file.name])});
							pkgExport.defs.push({
								name: def.name,
								pack: [],
								pos: null,
								kind: TDAlias(t),
								fields: [],
							});
						case TDAlias(t):
							var t:ComplexType = TPath({name: def.name, pack: []});
							pkgExport.defs.push({
								name: def.name,
								pack: [],
								pos: null,
								kind: TDAlias(t),
								fields: [],
							});
						case TDField(kind, access):
							switch kind {
								case FVar(t, e):
									if (t == null)
										t = TPath({name: "Dynamic", pack: []});
									var ident = toExpr(EConst(CIdent(module.path + "." + file.name + "." + def.name)));
									pkgExport.defs.unshift({
										name: "get_" + def.name,
										pack: [],
										pos: null,
										fields: [],
										kind: TDField(FFun({
											ret: t,
											args: [],
											expr: macro return $ident,
										}), [AInline]),
									});
									pkgExport.defs.unshift({
										name: "set_" + def.name,
										pack: [],
										pos: null,
										fields: [],
										kind: TDField(FFun({
											ret: t,
											args: [{name: "value", type: t}],
											expr: macro return $ident = value,
										}), [AInline]),
									});
									pkgExport.defs.unshift({
										name: def.name,
										pack: [],
										pos: null,
										fields: [],
										kind: TDField(FProp("get", "set", t)),
									});
								case FFun(f):
								default:
							}
						case TDAbstract(tthis, from, to): // export out alias type
							var t:ComplexType = TPath({name: file.name, sub: def.name, pack: module.path.split(".")});
							pkgExport.defs.unshift({
								name: def.name,
								pack: [],
								pos: null,
								kind: TDAlias(t),
								fields: [],
							});
						default:
					}
				}
			}
			module.files.push({
				name: "import",
				imports: imports,
				defs: [],
				location: "",
				isMain: module.isMain,
			});
		} else {
			module.isMain = true;
		}
		list.push(module);
	}
	return list;
}

private function implementsFields(interfaceFields:Array<Field>, classFields:Array<Field>):Bool {
	var passed = true;
	for (interfaceField in interfaceFields) {
		var passField:Bool = false;
		for (classField in classFields) {
			if (interfaceField.name != classField.name)
				continue;
			var interfaceFunc:Function = null;
			var classFunc:Function = null;
			switch interfaceField.kind {
				case FFun(f):
					interfaceFunc = f;
				default:
			}
			switch classField.kind {
				case FFun(f):
					classFunc = f;
				default:
			}
			if (interfaceFunc == null || classFunc == null) // if either fields are not functions
				continue;
			if (!compareComplexType(interfaceFunc.ret, classFunc.ret)) // returns values are not equal
				continue;
			if (interfaceFunc.args.length != classFunc.args.length) // the functions don't have the same amount of args
				continue;
			var argTypesPass:Bool = true;
			for (i in 0...interfaceFunc.args.length) {
				if (!compareComplexType(interfaceFunc.args[i].type, classFunc.args[i].type)) { // compare the arg types
					argTypesPass = false;
					break;
				}
			}
			if (argTypesPass) {
				// the field has passed
				passField = true;
				break;
			}
		}
		if (!passField)
			return false;
	}
	return true;
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
		case "BlockStmt": typeBlockStmt(stmt, info, false, false);
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
		return typeStmtList(list, info, false, false);
	}
	return (macro null).expr;
}

private function typeSendStmt(stmt:Ast.SendStmt, info:Info):ExprDef {
	var chan = typeExpr(stmt.chan, info);
	var value = typeExpr(stmt.value, info);
	return (macro $chan.send($value)).expr;
}

private function typeSelectStmt(stmt:Ast.SelectStmt, info:Info):ExprDef {
	return typeBlockStmt(stmt.body, info, false, false);
}

private function typeBranchStmt(stmt:Ast.BranchStmt, info:Info):ExprDef {
	return switch stmt.tok {
		case CONTINUE: EContinue;
		case BREAK: EBreak;
		case GOTO:
			var name = toExpr(typeIdent(stmt.label, info, false));
			return (macro return $name()).expr;
		case FALLTHROUGH: EBreak; // TODO
		default: EBreak;
	}
}

private function typeGoStmt(stmt:Ast.GoStmt, info:Info):ExprDef {
	var call = typeExpr(stmt.call, info);
	return (macro Go.routine($call)).expr;
}

private function typeBlockStmt(stmt:Ast.BlockStmt, info:Info, isFunc:Bool, needReturn:Bool):ExprDef {
	if (stmt.list == null) {
		if (info.returnTypes.length > 0)
			return (macro throw "not implemeneted").expr;
		return (macro {}).expr;
	}
	return typeStmtList(stmt.list, info, isFunc, needReturn);
}

private function typeStmtList(list:Array<Ast.Stmt>, info:Info, isFunc:Bool, needReturn:Bool):ExprDef {
	var exprs:Array<Expr> = [];
	var oldRetypeList = null;
	var oldLocalVars = null;
	var oldRenameTypes = null;
	if (!isFunc) {
		oldRetypeList = info.retypeList.copy();
		oldLocalVars = info.localVars.copy();
		oldRenameTypes = info.renameTypes.copy();
	}
	// add named return values
	if (isFunc) {
		if (info.returnNamed) {
			var vars:Array<Var> = [];
			for (i in 0...info.returnNames.length) {
				info.localVars[info.returnNames[i]] = true;
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
	// label and goto system
	var labels:Array<String> = [];
	var returnBool:Bool = false;
	if (list != null)
		for (i in 0...list.length) {
			switch list[i].id {
				case "LabeledStmt":
					var stmt:Ast.LabeledStmt = list[i];
					var name = nameIdent(stmt.label.name, info, true, false);
					labels.push(name);
					var body = exprs.splice(i, list.length);
					var func = toExpr(EFunction(null, {
						expr: toExpr(EBlock(body)),
						args: [],
					}));
					var v = makeString(name);
					exprs.unshift(macro $v = $func);
					exprs.unshift(macro var $name = null);
					exprs.push(macro return $v);
				case "ReturnStmt":
					returnBool = true;
				default:
			}
		}
	// defer system
	if (info.deferBool && isFunc) {
		exprs.unshift(macro var deferstack:Array<Void->Void> = []);
		exprs.push(typeDeferReturn(info, true));
		// recover
		exprs.unshift(macro var recover_exception:Dynamic = null);
		var pos = 2;
		var ret = toExpr(typeReturnStmt({returnPos: 0, results: []}, info));
		var trydef = ETry(toExpr(EBlock(exprs.slice(pos))), [
			{
				name: "e",
				expr: macro {
					recover_exception = e;
					$ret;
					if (recover_exception != null)
						throw recover_exception;
				}
			}
		]); // don't include recover and defer stack
		exprs = exprs.slice(0, pos);
		exprs.push(toExpr(trydef));
	}
	if (!isFunc) {
		// leave scope and set back to before
		info.renameTypes = oldRenameTypes;
		info.retypeList = oldRetypeList;
		info.localVars = oldLocalVars;
	}
	return EBlock(exprs);
}

private function typeLabeledStmt(stmt:Ast.LabeledStmt, info:Info):ExprDef {
	return (macro {}).expr;
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
		stmt.call.args[i] = {id: "Ident", name: name}; // switch out call arguments
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
	var key = typeExpr(stmt.key, info); // iterator int
	var x = typeExpr(stmt.x, info);
	var hasDefer = false;
	var body = {expr: typeBlockStmt(stmt.body, info, false, false), pos: null};
	var value = stmt.value != null ? typeExpr(stmt.value, info) : null; // value of x[key]
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
					case CIdent(s): valueString = nameIdent(s, info, false, false);
					default:
				}
			default:
		}
	}
	if (key != null) {
		switch key.expr {
			case EConst(c):
				switch c {
					case CIdent(s): keyString = nameIdent(s, info, false, false);
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
					if (key != null)
						exprs.unshift(macro $key = _obj.key); // no diffrence with assign
					if (value != null)
						exprs.unshift(macro $value = _obj.value); // no diffrence with assign
				}
			default:
		}
	}
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

private function className(name:String, info:Info):String {
	if (info.global.renameTypes.exists(name))
		name = info.global.renameTypes[name];
	name = title(name);

	if (reservedClassNames.indexOf(name) != -1)
		name += "_";

	if (info.restricted != null && info.restricted.indexOf(name) != -1)
		return getRestrictedName(name, info);

	return name;
}

private function getReturnTuple(type:GoType):Array<String> {
	switch type {
		case tuple(_, vars):
			var index = 0;
			return [
				for (i in 0...vars.length) {
					switch vars[i] {
						case varValue(name, _):
							name;
						default:
							"v" + (index++);
					}
				}
			];
		default:
			throw "type is not a tuple: " + type;
	}
	return [];
}

private function typeDeclStmt(stmt:Ast.DeclStmt, info:Info):ExprDef {
	var decls:Array<Ast.GenDecl> = stmt.decl.decls;
	var vars:Array<Var> = [];
	for (decl in decls) {
		for (spec in decl.specs) {
			switch spec.id {
				case "TypeSpec":
					var spec:Ast.TypeSpec = spec;
					var name = className(spec.name.name, info);
					spec.name.name += "_" + info.funcName + "_" + (info.count++);
					info.retypeList[name] = TPath({
						name: className(spec.name.name, info),
						pack: [],
					});
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
						var data = castTranslate(spec.values[0],func,info);
						func = data.expr;
						if (data.ok)
							spec.names = [{name: "value",type: null},{name: "ok",type: null}];
						vars.push({
							name: tmp,
							expr: func
						});
						var type = typeof(spec.values[0]);
						var tuples = getReturnTuple(type);
						for (i in 0...spec.names.length) {
							var fieldName = tuples[i];
							var name = nameIdent(spec.names[i].name, info, false, false, false);
							info.localVars[name] = true;
							vars.push({
								name: name,
								expr: macro __tmp__.$fieldName,
							});
						}
					} else {
						vars = vars.concat([
							// concat because this is in a for loop
							for (i in 0...spec.names.length) {
								var expr = typeExpr(spec.values[i], info);
								var name = nameIdent(spec.names[i].name, info, false, false, false);
								var t = typeof(spec.type);

								expr = assignTranslate(t, typeof(spec.values[i]), expr, info);
								info.localVars[name] = true;
								{
									name: name,
									type: type,
									isFinal: spec.constants[i],
									expr: i < spec.values.length ? expr : type != null ? defaultValue(t, info) : null,
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
}

private function isAnyInterface(type:GoType):Bool {
	if (type == null)
		return false;
	return switch type {
		case named(_, elem):
			isAnyInterface(elem);
		case interfaceValue(numMethods):
			numMethods == 0;
		default:
			false;
	}
}

private function isInterface(type:GoType):Bool {
	return switch type {
		case named(_, elem):
			isInterface(elem);
		case interfaceValue(_):
			true;
		default:
			false;
	}
}

private function isSignature(type:GoType):Bool {
	return switch type {
		case signature(_, _, _):
			true;
		case named(_, underlying):
			isSignature(underlying);
		default:
			false;
	}
}
//named doesn't count for structures
private function isNamed(type:GoType):Bool {
	return switch type {
		case named(_,underlying):
			switch underlying {
				case struct(_): false;
				case interfaceValue(_): false;
				default: true;
			} 
		default: false;
	}
}

private function isInvalid(type:GoType):Bool {
	return switch type {
		case invalid:
			true;
		case basic(kind):
			switch kind {
				case invalid_kind:
					true;
				default:
					false;
			}
		case named(_, underlying):
			isInvalid(underlying);
		default:
			false;
	}
}

private function getUnderlying(type:GoType):GoType {
	return switch type {
		case named(_, underlying):
			getUnderlying(underlying);
		default:
			type;
	}
}

private function getElem(type:GoType):GoType {
	return switch type {
		case array(elem, _), slice(elem):
			elem;
		default:
			type;
	}
}

private function getSignature(type:GoType):GoType {
	return switch type {
		case signature(_, _, _):
			type;
		case named(_, underlying):
			getSignature(underlying);
		default:
			null;
	}
}

private function getStructFields(type:GoType):Array<Ast.FieldType> {
	return switch type {
		case named(_, elem):
			getStructFields(elem);
		case struct(fields):
			fields;
		default:
			[];
	}
}

private function isUnsafePointer(type:GoType):Bool {
	return switch type {
		case named(_, elem):
			isUnsafePointer(elem);
		case basic(kind):
			switch kind {
				case unsafepointer_kind: true;
				default: false;
			}
		default:
			false;
	}
}

private function isPointer(type:GoType):Bool {
	return switch type {
		case named(_, elem):
			isPointer(elem);
		case pointer(_):
			true;
		default:
			false;
	}
}

private function pointerUnwrap(type:GoType):GoType {
	return switch type {
		case pointer(elem):
			pointerUnwrap(elem);
		default:
			type;
	}
}

private function checkType(e:Expr, ct:ComplexType, from:GoType, to:GoType, info:Info):Expr {
	if (e != null)
		switch e.expr {
			case EConst(c):
				switch c {
					case CIdent(i):
						if (i == "null") {
							var value = defaultValue(to, info);
							if (ct != null)
								return macro ($value : $ct);
						}
					default:
				}
			default:
		}
	var fromNamed = isNamed(from);
	var toNamed = isNamed(to);
	if (fromNamed && !toNamed && !isInterface(to))
		return macro $e.__t__;
	if (toNamed && !fromNamed) {
		switch ct {
			case TPath(p):
				return macro new $p($e);
			default:
		}
	}
	if (isAnyInterface(from))
		return macro Go.fromInterface(($e : $ct));
	if (isInterface(pointerUnwrap(from))) {
		return macro Go.smartcast(cast($e, $ct)); // allows correct interface casting
	}
	return macro($e : $ct);
}

private function typeTypeSwitchStmt(stmt:Ast.TypeSwitchStmt, info:Info):ExprDef { // a switch statement of a type
	var init:Expr = null;
	if (stmt.init != null)
		init = toExpr(typeSwitchStmt(stmt.init, info));
	var assign:Expr = null;
	var setVar:String = "";
	switch stmt.assign.id {
		case "ExprStmt":
			var stmt:Ast.ExprStmt = stmt.assign;
			switch stmt.x.id {
				case "TypeAssertExpr":
					var stmt:Ast.TypeAssertExpr = stmt.x;
					assign = typeExpr(stmt.x, info);
				default:
					trace("unknown assign expr: " + stmt.x.id);
			}
		case "AssignStmt":
			var stmt:Ast.AssignStmt = stmt.assign;
			var rhs = stmt.rhs[0];
			switch rhs.id {
				case "TypeAssertExpr":
					var rhs:Ast.TypeAssertExpr = rhs;
					assign = typeExpr(rhs.x, info);
				default:
					trace("unknown assign rhs type switch expr: " + rhs.id);
			}
			var lhs = stmt.lhs[0];
			switch lhs.id {
				case "Ident":
					var lhs:Ast.Ident = lhs;
					var name = lhs.name;
					setVar = lhs.name;
				default:
					trace("unknown assign lhs type switch expr: " + rhs.id);
			}
		default:
			trace("unknown assign: " + stmt.assign.id);
	}
	var types:Array<ComplexType> = [];
	function condition(obj:Ast.CaseClause, i:Int = 0) {
		if (obj.list.length == 0)
			return null;
		var type = typeExprType(obj.list[i], info);
		types.push(type);
		var value = macro Go.assignable(($assign : $type));
		if (i + 1 >= obj.list.length)
			return value;
		var next = condition(obj, i + 1);
		return toExpr(EBinop(OpBoolOr, value, next));
	}
	function ifs(i:Int = 0) {
		var obj:Ast.CaseClause = stmt.body.list[i];
		types = [];
		var cond = condition(obj);
		var block = toExpr(typeStmtList(obj.body, info, false, false));
		if (setVar != "") {
			switch block.expr {
				case EBlock(exprs):
					var type:ComplexType = anyInterfaceType();
					if (types.length == 1)
						type = types[0];
					exprs.unshift(macro var $setVar:$type = $assign);
					block.expr = EBlock(exprs);
				default:
			}
		}

		if (i + 1 >= stmt.body.list.length)
			return cond == null ? macro $block : macro if ($cond)
				$block;
		var next = ifs(i + 1);
		return macro if ($cond)
			$block
		else
			$next;
	}
	return ifs().expr;
}

private function typeSwitchStmt(stmt:Ast.SwitchStmt, info:Info):ExprDef { // always an if else chain to deal with int64s and complex numbers
	// this is an if else chain
	var tag = stmt.tag == null ? null : typeExpr(stmt.tag, info);
	function condition(obj:Ast.CaseClause, i:Int = 0) {
		if (obj.list.length == 0)
			return null;
		var value = typeExpr(obj.list[i], info);
		if (tag != null)
			value = macro $tag == $value;
		if (i + 1 >= obj.list.length)
			return value;
		var next = condition(obj, i + 1);
		return toExpr(EBinop(OpBoolOr, value, next));
	}
	function ifs(i:Int = 0) {
		var obj:Ast.CaseClause = stmt.body.list[i];
		var cond = condition(obj);
		var block = toExpr(typeStmtList(obj.body, info, false, false));

		if (i + 1 >= stmt.body.list.length)
			return cond == null ? macro $block : macro if ($cond)
				$block;
		var next = ifs(i + 1);
		return macro if ($cond)
			$block
		else
			$next;
	}
	if (stmt.body == null || stmt.body.list == null)
		return (macro {}).expr;
	var expr = ifs();
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
	var body = toExpr(typeBlockStmt(stmt.body, info, false, false));
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
			switch init.expr {
				case EVars(vars):
					for (v in vars) {
						v.type = TPath({
							name: "GoInt",
							pack: [],
						});
					}
				default:
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

private function toExpr(def:ExprDef):Expr {
	return {expr: def, pos: null};
}

private function castTranslate(obj:Ast.Expr,e:Expr,info:Info):{expr:Expr,ok:Bool} {
	return switch obj.id {
		case "TypeAssertExpr":
			var obj:Ast.TypeAssertExpr = obj;
			var value = defaultValue(typeof(obj.type),info);
			{ok: true, expr: macro try {
				{value: $e, ok: true}
			}catch(_) {
				{value: $value, ok: false};
			}};
		case "UnaryExpr":
			var obj:Ast.UnaryExpr = obj;
			var x = typeExpr(obj.x, info);
			{expr: macro $x.smartGet(), ok: true};
		case "IndexExpr":
			var obj:Ast.IndexExpr = obj;
			var index = typeExpr(obj.index,info);
			var x = typeExpr(obj.x,info);
			{
				ok: true,
				expr: macro $x.exists($index) ? {value: $x[$index], ok: true} : {value: $x.defaultValue(), ok: false},
			};
		default:
			{expr: e, ok: false};
	}
}

private function assignTranslate(fromType:GoType, toType:GoType, expr:Expr, info:Info):Expr {
	var y = expr;
	if (isInterface(fromType) && isPointer(toType)) {
		if (isNamed(fromType))
			y = macro $y.__t__;
		y = macro $y.value;
	}
	if (isAnyInterface(toType)) {
		if (isNamed(toType))
			y = macro $y.__t__;
		y = macro Go.toInterface($y);
	}
	if (isAnyInterface(fromType)) {
		final ct = toComplexType(fromType, info);
		if (ct != null) {
			if (isNamed(toType))
				y = macro $y.__t__;
			y = macro Go.fromInterface(($y : $ct));
		}
	}
	if (isUnsafePointer(fromType)) {
		if (isNamed(toType))
			y = macro $y.__t__;
		y = macro Go.unsafePointer($y);
	}
	var namedX = isNamed(fromType);
	var namedY = isNamed(toType);
	if (!namedX && namedY) {
		var ct = toComplexType(toType,info);
		switch ct {
			case TPath(p):
				y = macro new $p($y);
			default:
		}
	}
	return y;
}

private function typeAssignStmt(stmt:Ast.AssignStmt, info:Info):ExprDef {
	switch stmt.tok {
		case ASSIGN, ADD_ASSIGN, SUB_ASSIGN, MUL_ASSIGN, QUO_ASSIGN, REM_ASSIGN, SHL_ASSIGN, SHR_ASSIGN, XOR_ASSIGN, AND_ASSIGN, AND_NOT_ASSIGN, OR_ASSIGN:
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

						var toType = typeof(stmt.lhs[i]);
						var fromType = typeof(stmt.rhs[i]);

						y = assignTranslate(fromType,toType, y, info);

						if (x == null || y == null)
							return null;
						x.expr.match(EConst(CIdent("_"))) ? y : toExpr(EBinop(op, x, y)); // blank means no assign/define just the rhs expr
					}
				];
				if (exprs.length == 1)
					return exprs[0].expr;
				return EBlock(exprs);
			} else if (stmt.lhs.length > stmt.rhs.length && stmt.rhs.length == 1) {
				// non variable assign, destructure system
				var func = typeExpr(stmt.rhs[0], info);
				var t = typeof(stmt.rhs[0]);
				var names:Array<String> = [];
				var data = castTranslate(stmt.rhs[0],func,info);
				func = data.expr;
				if (data.ok)
					names = ["value","ok"];
				switch t {
					case tuple(_,vars):
						for (i in 0...vars.length) {
							var v = vars[i];
							switch v {
								case varValue(name,_):
									names.push(name == "_" ? 'v$i' : name);
								default:
									names.push('v$i');
							}
						}
					default:
				}
				var assigns:Array<Expr> = [];
				for (i in 0...stmt.lhs.length) {
					var e = typeExpr(stmt.lhs[i],info);
					var fieldName = names[i];
					assigns.push(macro $e = __tmp__.$fieldName);
				}
				return EBlock([macro var __tmp__ = $func].concat(assigns));
			} else {
				throw "unknown type assign type: " + stmt;
			}
		case DEFINE: // var expr = x;
			if (stmt.lhs.length == stmt.rhs.length) {
				// normal vars
				var vars:Array<Var> = [];
				for (i in 0...stmt.lhs.length) {
					var expr = typeExpr(stmt.rhs[i], info);
					var isTitled = stmt.lhs[i].name == stmt.lhs[i].name.toUpperCase();
					var name = nameIdent(stmt.lhs[i].name, info, true, false);
					var newName = name;
					var tempName = isTitled ? untitle(name) : title(name);
					if (info.renameTypes.exists(tempName)) {
						newName = "_" + newName;
						name = !isTitled ? untitle(name) : title(name);
					}
					info.renameTypes[name] = newName;
					name = newName;
					var t = typeof(stmt.rhs[i]);
					info.localVars[name] = true; // set local name
					
					var toType = typeof(stmt.lhs[i]);
					var fromType = typeof(stmt.rhs[i]);

					expr = assignTranslate(fromType,toType, expr, info);

					vars.push({
						name: name,
						type: toComplexType(t, info),
						expr: expr,
					});
				}
				return EVars(vars);
			} else if (stmt.lhs.length > stmt.rhs.length && stmt.rhs.length == 1) {
				// non variable assign, destructure system
				var func = typeExpr(stmt.rhs[0], info);
				var t = typeof(stmt.rhs[0]);
				var names:Array<String> = [];
				var data = castTranslate(stmt.rhs[0],func,info);
				func = data.expr;
				if (data.ok)
					names = ["value","ok"];
				switch t {
					case tuple(_,vars):
						for (i in 0...vars.length) {
							var v = vars[i];
							switch v {
								case varValue(name,_):
									names.push(name == "_" ? 'v$i' : name);
								default:
									names.push('v$i');
							}
						}
					default:
				}
				var defines:Array<Var> = [];
				for (i in 0...stmt.lhs.length) {
					if (stmt.lhs[i].id != "Ident")
						throw "define left side not an ident";
					var varName = stmt.lhs[i].name;
					var fieldName = names[i];
					defines.push({name: varName,expr: macro __tmp__.$fieldName});
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
		// TODO handle blank return
		if (info.returnTypes.length == 0)
			return ret(EReturn());
		if (info.returnTypes.length == 1) {
			if (info.returnNames.length == 1 && info.returnNamed)
				return ret(EReturn(macro $i{info.returnNames[0]}));
			return ret(EReturn(defaultValue(info.returnTypes[0], info)));
		}
		var fields:Array<ObjectField> = [
			for (i in 0...info.returnTypes.length)
				{field: info.returnNames[i], expr: info.returnNamed ? macro $i{info.returnNames[i]} : defaultValue(info.returnTypes[i], info)}
		];
		return ret(EReturn(toExpr(EObjectDecl(fields))));
	}
	if (stmt.results.length == 1) {
		var e = typeExpr(stmt.results[0], info);
		e = assignTranslate(typeof(stmt.results[0]), info.returnTypes[0], e, info);
		return ret(EReturn(e));
	}
	// multireturn
	var expr = toExpr(EObjectDecl([
		for (i in 0...stmt.results.length) {
			var e = typeExpr(stmt.results[i], info);
			e = assignTranslate(typeof(stmt.results[i]), info.returnTypes[i], e, info);
			{
				field: info.returnNames[i],
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
		case "MapType": mapType(expr, info);
		case "ChanType": chanType(expr, info);
		case "InterfaceType": interfaceType(expr, info);
		case "StructType": structType(expr, info);
		case "FuncType": funcType(expr, info);
		case "ArrayType": arrayType(expr, info);
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
private function mapType(expr:Ast.MapType, info:Info):ComplexType {
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

private function chanType(expr:Ast.ChanType, info:Info):ComplexType {
	var type = typeExprType(expr.value, info);
	return TPath({
		name: "Chan",
		pack: [],
		params: [TPType(type)],
	});
}

private function interfaceType(expr:Ast.InterfaceType, info:Info):ComplexType {
	if (expr.methods.list.length == 0) {
		// dynamic
		return anyInterfaceType();
	} else {
		// anonymous struct
		var fields = typeFieldListFields(expr.methods, info, [], false, true);
		return TAnonymous(fields);
	}
}

private function structType(expr:Ast.StructType, info:Info):ComplexType {
	if (expr.fields == null || expr.fields.list == null || expr.fields.list.length == 0)
		return TPath({name: "Dynamic", pack: []});
	var fields = typeFieldListFields(expr.fields, info, [], false, true);
	return TAnonymous(fields);
}

private function funcType(expr:Ast.FuncType, info:Info):ComplexType {
	var ret = typeFieldListReturn(expr.results, info, false);
	var params = typeFieldListComplexTypes(expr.params, info);
	if (ret == null || params == null)
		return TFunction([], TPath({name: "Void", pack: []}));
	return TFunction(params, ret);
}

private function arrayType(expr:Ast.ArrayType, info:Info):ComplexType {
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
	if (info.retypeList.exists(name))
		return info.retypeList[name];
	return TPath({
		pack: [],
		name: name,
	});
}

private function selectorType(expr:Ast.SelectorExpr, info:Info):ComplexType {
	function func(x:Ast.Expr, isSelector:Bool):Array<String> {
		switch x.id {
			case "Ident":
				var name = nameIdent(x.name, info, false, isSelector);
				return [name];
			case "SelectorExpr":
				var x:Ast.SelectorExpr = x;
				var name = nameIdent(x.sel.name, info, false, false);
				return [name].concat(func(x.x, true));
			default:
				trace("unknown x id: " + x.id);
				return [];
		}
	}
	return TPath({
		name: expr.sel.name,
		pack: func(expr.x, false),
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
	var expr = typeExpr(expr.elt, info);
	var rest = typeRest(expr);
	return rest != null ? rest.expr : null;
}

private function iotaExpr(info:Info):Expr {
	return toExpr(ECheckType(toExpr(EConst(CInt(Std.string(info.iota)))), TPath({name: "GoInt64", pack: []})));
}

private function typeIdent(expr:Ast.Ident, info:Info, isSelect:Bool):ExprDef {
	if (expr.name == "iota") {
		return iotaExpr(info).expr;
	}
	var name = nameIdent(expr.name, info, false, isSelect);
	return EConst(CIdent(name));
}

private function typeCallExpr(expr:Ast.CallExpr, info:Info):ExprDef {
	var args:Array<Expr> = [];
	var ellipsisFunc = null;
	function genArgs(pos:Int = 0) {
		args = [for (arg in expr.args.slice(pos)) typeExpr(arg, info)];
	}
	ellipsisFunc = function() {
		if (expr.ellipsis != 0) {
			var last = args.pop();
			if (last == null)
				return;
			switch last.expr {
				case EConst(c):
					switch c {
						case CString(s, kind):
							last = macro new GoString($last);
						default:
					}
				default:
			}
			last = typeRest(last);
			args.push(last);
		}
	}
	var ft = typeof(expr.fun);
	var notFunction = !isSignature(ft) && !isInvalid(ft);
	if (notFunction) {
		final ct = typeExprType(expr.fun, info);
		var e = typeExpr(expr.args[0], info);
		return checkType(e, ct, typeof(expr.args[0]), typeof(expr.fun), info).expr;
	}

	switch expr.fun.id {
		case "SelectorExpr":
			switch expr.fun.sel.name {
				case "String": expr.fun.sel.name = "ToString"; // titled in order to export
			}
		case "FuncLit":
			var expr = typeExpr(expr.fun, info);
			genArgs();
			return (macro {
				var a = $expr;
				a($a{args});
			}).expr;
		case "Ident":
			expr.fun.name = expr.fun.name;
			switch expr.fun.name {
				case "String":
					expr.fun.name = "toString";
				case "panic":
					genArgs();
					ellipsisFunc();
					return (macro throw ${args[0]}).expr;
				case "recover":
					return (macro Go.recover()).expr;
				case "append":
					genArgs();
					ellipsisFunc();
					var e = args.shift();
					if (args.length == 0)
						return e.expr;
					return (macro $e.append($a{args})).expr;
				case "copy":
					genArgs();
					ellipsisFunc();
					return (macro Go.copy($a{args})).expr;
				case "delete":
					var e = typeExpr(expr.args[0], info);
					var key = typeExpr(expr.args[1], info);
					return (macro $e.remove($key)).expr;
				case "print":
					genArgs();
					ellipsisFunc();
					return (macro stdgo.fmt.Fmt.print($a{args})).expr;
				case "println":
					genArgs();
					ellipsisFunc();
					return (macro stdgo.fmt.Fmt.println($a{args})).expr;
				case "complex":
					genArgs();
					return (macro new GoComplex128($a{args})).expr;
				case "real":
					var e = typeExpr(expr.args[0], info);
					return (macro $e.real).expr;
				case "imag":
					var e = typeExpr(expr.args[0], info);
					return (macro $e.imag).expr;
				case "close":
					var e = typeExpr(expr.args[0], info);
					return (macro $e.close()).expr;
				case "cap":
					var e = typeExpr(expr.args[0], info);
					return (macro $e.cap()).expr;
				case "len":
					var e = typeExpr(expr.args[0], info);
					var t = getUnderlying(typeof(expr.args[0]));
					return switch t {
						case map(_,_):
							(macro ($e == null ? 0 : $e.length)).expr;
						default:
							(macro $e.length).expr;
					}
				case "new": // create default value put into pointer
					var t = typeExprType(expr.args[0], info);
					switch t {
						case TPath(_), TFunction(_, _), TAnonymous(_):
							var value = defaultValue(typeof(expr.args[0]), info);
							return (macro Go.pointer($value)).expr; // TODO does not work for non constructed types, such as basic types
						default:
					}
				case "make":
					var type = typeof(expr.args[0]);
					type = getUnderlying(type);
					genArgs(1);
					var size = args[0];
					var cap = args[1];
					if (size != null)
						size = macro($size : GoInt).toBasic();
					if (cap != null)
						cap = macro($cap : GoInt).toBasic();
					return switch type {
						case slice(elem):
							var param = toComplexType(elem, info);
							var value = defaultValue(elem, info);
							if (size == null)
								return (macro new Slice<$param>()).expr;
							(macro new Slice<$param>(...[for (i in 0...$size) $value])).expr;
						case map(key, value):
							var t = toReflectType(type);
							var key = toComplexType(key, info);
							var value = toComplexType(value, info);

							(macro new GoMap<$key, $value>(new stdgo.reflect.Reflect.Type($t))).expr;
						case chan(dir, elem):
							var value = defaultValue(elem, info);
							var param = toComplexType(elem, info);
							if (size == null)
								size = macro 0;

							(macro new Chan<$param>($size, () -> $value)).expr;
						default:
							throw "unknown make type: " + type;
					}
			}
	}
	if (args.length == 0)
		genArgs();
	ellipsisFunc();
	var e = typeExpr(expr.fun, info);
	if (isNamed(ft))
		e = macro $e.__t__;
	var isFmt = false;
	switch e.expr {
		case EField(e, field):
			var str = printer.printExpr(e);
			str = str.substr(0, str.lastIndexOf("."));
			if (str == "stdgo.fmt")
				isFmt = true;
		default:
	}
	if (!isFmt) {
		var type = typeof(expr.fun);
		var vars:Array<GoType> = [];
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
		}
		if (type != null) {
			type = getSignature(type);
			if (type != null) {
				switch type {
					case signature(variadic, params, results, recv):
						if (params != null)
							switch params {
								case varValue(_, _):
									vars.push(params);
								case tuple(_, v):
									vars = vars.concat(v);
								default:
									vars.push(varValue("", params));
							}
					default:
				}
			}
		}
		for (i in 0...vars.length) {
			switch vars[i] {
				case varValue(name, type):
					switch type {
						case interfaceValue(numMethods):
							if (numMethods == 0) {
								args[i] = macro Go.toInterface(${args[i]});
							} else {}
						case named(path, underlying):
							switch underlying {
								case interfaceValue(_):

								default:
							}
						default:
					}
				default:
			}
		}
	}
	return (macro $e($a{args})).expr;
}

private function follow(t:GoType):GoType {
	return switch t {
		case named(_, underlying):
			follow(underlying);
		default:
			t;
	}
}

private function toReflectType(t:GoType):Expr {
	return switch t {
		case map(key, value):
			var key = toReflectType(key);
			var value = toReflectType(value);
			macro stdgo.reflect.Reflect.GT_enum.GT_map($key, $value);
		case pointer(elem):
			var elem = toReflectType(elem);
			macro stdgo.reflect.Reflect.GT_enum.GT_pointer($elem);
		case slice(elem):
			var elem = toReflectType(elem);
			macro stdgo.reflect.Reflect.GT_enum.GT_slice($elem);
		case invalid:
			macro stdgo.reflect.Reflect.GT_enum.GT_invalid;
		case basic(kind):
			switch kind {
				case int_kind:
					macro stdgo.reflect.Reflect.GT_enum.GT_int;
				case int8_kind:
					macro stdgo.reflect.Reflect.GT_enum.GT_int8;
				case int16_kind:
					macro stdgo.reflect.Reflect.GT_enum.GT_int16;
				case int32_kind:
					macro stdgo.reflect.Reflect.GT_enum.GT_int32;
				case int64_kind:
					macro stdgo.reflect.Reflect.GT_enum.GT_int64;
				case uint_kind:
					macro stdgo.reflect.Reflect.GT_enum.GT_uint;
				case uint8_kind:
					macro stdgo.reflect.Reflect.GT_enum.GT_uint8;
				case uint16_kind:
					macro stdgo.reflect.Reflect.GT_enum.GT_uint16;
				case uint32_kind:
					macro stdgo.reflect.Reflect.GT_enum.GT_uint32;
				case uint64_kind:
					macro stdgo.reflect.Reflect.GT_enum.GT_uint64;
				case bool_kind:
					macro stdgo.reflect.Reflect.GT_enum.GT_bool;
				case float32_kind:
					macro stdgo.reflect.Reflect.GT_enum.GT_float32;
				case float64_kind:
					macro stdgo.reflect.Reflect.GT_enum.GT_float64;
				case complex64_kind:
					macro stdgo.reflect.Reflect.GT_enum.GT_complex64;
				case complex128_kind:
					macro stdgo.reflect.Reflect.GT_enum.GT_complex128;
				case string_kind:
					macro stdgo.reflect.Reflect.GT_enum.GT_string;
				default:
					throw "unsupported reflect type basic: " + kind;
			}
		case named(path, underlying):
			var last = path.lastIndexOf(".");
			var pack = makeString(path.substr(0, last));
			var module = makeString(path);
			var name = makeString(path.substr(last + 1));
			var methods = [];
			var interfaces = [];
			var t = toReflectType(underlying);
			macro stdgo.reflect.Reflect.GT_enum.GT_namedType($pack, $module, $name, $a{methods}, $a{interfaces}, $t);
		case array(elem, len):
			var elem = toReflectType(elem);
			var len:Expr = {expr: EConst(CInt('$len')), pos: null};
			macro stdgo.reflect.Reflect.GT_enum.GT_array($elem, $len);
		case interfaceValue(numMethods):
			if (numMethods == 0) {
				macro stdgo.reflect.Reflect.GT_enum.GT_interface("", "", "interface{}", []);
			}else{
				macro stdgo.reflect.Reflect.GT_enum.GT_invalid;
			}
		case struct(structFields):
			var fields = [];
			for (field in structFields) {
				var t = toReflectType(field.type);
				var name = makeString(field.name);
				fields.push(macro stdgo.reflect.Reflect.GT_enum.GT_field($name, $t, ""));
			}
			var fields = macro $a{fields};
			macro stdgo.reflect.Reflect.GT_enum.GT_struct($fields);
		default:
			throw "unsupported reflect type: " + t;
	}
}

private function typeof(e:Ast.Expr):GoType {
	if (e == null)
		return invalid;
	return switch e.id {
		case "Signature":
			signature(e.variadic, typeof(e.params), typeof(e.results), e.recv != null ? typeof(e.recv) : null);
		case "Basic":
			basic(BasicKind.createByIndex(e.kind));
		case "Tuple":
			if (e.len > 1) {
				tuple(e.len, [for (v in (e.vars : Array<Dynamic>)) typeof(v)]);
			} else {
				typeof(e.vars[0]);
			}
		case "Var":
			if (e.name != "") {
				varValue(e.name, typeof(e.type));
			} else {
				typeof(e.type);
			}
		case "Interface":
			interfaceValue(e.numMethods);
		case "Slice":
			slice(typeof(e.elem));
		case "Array":
			array(typeof(e.elem), e.len);
		case "Pointer":
			pointer(typeof(e.elem));
		case "Map":
			map(typeof(e.key), typeof(e.elem));
		case "Named":
			named(e.path, typeof(e.underlying));
		case "Struct":
			struct([
				for (field in (e.fields : Array<Dynamic>)) {name: field.name, type: typeof(field.type)}
			]);
		case "Chan":
			chan(e.dir, typeof(e.elem));
		case null:
			// trace("null: " + e);
			return invalid;
		// invalid;
		case "CallExpr":
			var e:Ast.CallExpr = e;
			var type = typeof(e.type);
			switch type {
				case signature(variadic, params, results, recv):
					return results;
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
			var t = typeof(e.type);
			t;
		case "BinaryExpr":
			var e:Ast.BinaryExpr = e;
			typeof(e.type);
		case "StarExpr":
			var e:Ast.StarExpr = e;
			typeof(e.type);
		case "UnaryExpr":
			var e:Ast.UnaryExpr = e;
			typeof(e.type);
		case "TypeAssertExpr":
			var e:Ast.TypeAssertExpr = e;
			typeof(e.type);
		case "FuncLit":
			invalid;
		case "KeyValueExpr":
			var e:Ast.KeyValueExpr = e;
			map(typeof(e.key), typeof(e.value));
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
			map(typeof(e.key), typeof(e.value));
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
	return null;
}

private function getGlobalPath(info:Info):String {
	var globalPath = info.global.path;
	if (StringTools.endsWith(info.global.path, ".pkg"))
		globalPath = globalPath.substr(0, globalPath.length - 4);
	return globalPath;
}

private function parseTypePath(path:String, name:String, info:Info):TypePath {
	path = normalizePath(path);
	var cl = className(name, info);
	var globalPath = getGlobalPath(info);
	if (globalPath == path) {
		if (info.retypeList.exists(cl))
			return switch info.retypeList[cl] {
				case TPath(p):
					trace("p: " + p);
					p;
				default:
					throw "error";
			}
		return {pack: [], name: cl};
	}
	var pack = path.split("/");
	if (stdgoList.indexOf(pack[0]) != -1) { // haxe only type, otherwise the go code refrences Haxe
		pack.unshift("stdgo");
	}
	var last = pack.pop();
	pack.push(last);
	pack.push(title(last));

	return {name: cl, pack: pack};
}

private function namedTypePath(path:GoString, info:Info):TypePath {
	if (path == "error")
		return {pack: [], name: "Error"};
	var last = path.lastIndexOf("/") + 1;
	var part = path.substr(last);
	var split = part.lastIndexOf(".");
	var pkg = part.substr(0, split);
	var cl = className(part.substr(split + 1), info);
	path = path.substr(0, last) + pkg;
	path = normalizePath(path);
	var globalPath = getGlobalPath(info);
	globalPath = StringTools.replace(globalPath,".","/");
	var pack = [];
	if (globalPath != path) {
		path += "/" + title(pkg);
		pack = path.split("/");
		if (stdgoList.indexOf(pack[0]) != -1) { // haxe only type, otherwise the go code refrences Haxe
			pack.unshift("stdgo");
		}
	} else {
		if (info.retypeList.exists(cl))
			return switch info.retypeList[cl] {
				case TPath(p):
					p;
				default:
					throw "error";
			}
	}
	return {pack: pack, name: cl};
}

private function toComplexType(e:GoType, info:Info):ComplexType {
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

				case untyped_int_kind: null;
				case untyped_bool_kind: TPath({pack: [], name: "Bool"});
				case untyped_float_kind: TPath({pack: [], name: "GoFloat64"});
				case untyped_rune_kind: TPath({pack: [], name: "GoInt32"});
				case untyped_complex_kind: TPath({pack: [], name: "GoComplex128"});
				case untyped_string_kind: TPath({pack: [], name: "GoString"});
				case untyped_nil_kind: null;
				case invalid_kind: null;
				case unsafepointer_kind: TPath({pack: ["stdgo", "unsafe", "Unsafe"], name: "Pointer"});
				default:
					throw "unknown kind to complexType: " + kind;
			}
		case interfaceValue(numMethods):
			if (numMethods == 0)
				return TPath({pack: [],name: "AnyInterface"});
			return TPath({pack: [], name: "Unknown"});
		case named(path, underlying):
			TPath(namedTypePath(path, info));
		case slice(elem):
			final ct = toComplexType(elem, info);
			TPath({pack: [], name: "Slice", params: [TPType(ct)]});
		case array(elem, len):
			final ct = toComplexType(elem, info);
			TPath({pack: [], name: "GoArray", params: [TPType(ct)]});
		case map(key, value):
			final ctKey = toComplexType(key, info);
			final ctValue = toComplexType(value, info);
			TPath({pack: [], name: "GoMap", params: [TPType(ctKey), TPType(ctValue)]});
		case tuple(len, vars):
			if (len == 1)
				return toComplexType(vars[0], info);
			null;
		case invalid:
			null;
		case pointer(elem):
			final ct = toComplexType(elem, info);
			TPath({pack: [], name: "Pointer", params: [TPType(ct)]});
		case chan(dir, elem):
			final ct = toComplexType(elem, info);
			TPath({pack: [], name: "Chan", params: [TPType(ct)]});
		case struct(fields):
			var fields = typeFields(fields, info, null, false, true);
			fields.length == 0 ? TPath({pack: [], name: "Dynamic"}) : TAnonymous([
				for (field in fields)
					{
						name: field.name,
						pos: null,
						kind: field.kind,
					}
			]);
		case signature(variadic, params, results, recv):
			var args:Array<ComplexType> = [];
			switch params {
				case tuple(_, vars):
					for (v in vars) {
						args.push(toComplexType(v, info));
					}
				case invalid:
				default:
					args.push(toComplexType(params, info));
			}
			var ret:ComplexType = null;
			switch results {
				case tuple(_, vars):
					if (vars.length == 1) {
						ret = toComplexType(vars[0], info);
					} else {
						/*ret = TPath({pack: [],name: "MultiReturn",params: [TPType(TAnonymous([
								
							]))]}); */
					}
				default:
					ret = toComplexType(results, info);
			}
			if (ret == null)
				ret = TPath({pack: [], name: "Void"});
			TFunction(args, ret);
		case varValue(name, type):
			toComplexType(type, info);
		default:
			throw "unknown goType to complexType: " + e;
	}
}

private function typeRest(expr:Expr):Expr {
	return macro...$expr.toArray();
}

private function typeBasicLit(expr:Ast.BasicLit, info:Info):ExprDef {
	return setBasicLit(expr.kind, expr.value, info);
}

private function setBasicLit(kind:Ast.Token, value:String, info:Info) {
	final bs = "\\".charAt(0);
	function formatEscapeCodes(value:String):String {
		value = StringTools.replace(value, bs + "a", "\x07");
		value = StringTools.replace(value, bs + "b", "\x08");
		value = StringTools.replace(value, bs + "e", "\x1B");
		value = StringTools.replace(value, bs + "f", "\x0C");
		value = StringTools.replace(value, bs + "n", "\x0A");
		value = StringTools.replace(value, bs + "r", "\x0D");
		value = StringTools.replace(value, bs + "t", "\x09");
		value = StringTools.replace(value, bs + "v", "\x0B");
		value = StringTools.replace(value, bs + "x", bs + "u00");
		value = StringTools.replace(value, bs + "U", bs + "u");
		if (value.charAt(0) == bs && value.charAt(1) == "u") {
			value = value.substring(2);
			value = bs + 'u{$value}';
		}

		// value = StringTools.replace(value,bs + "" ,"\x27");
		return value;
	}
	return switch kind {
		case STRING:
			value = StringTools.replace(value, "\\", "\"".substr(0, 1));
			var e = makeString(value);
			return e.expr;
		case INT:
			var e = toExpr(EConst(CInt(value)));
			if (value.length > 10) {
				try {
					var i = haxe.Int64Helper.parseString(value);
					if (i > 2147483647 || i < -2147483647) {
						e = makeString(value);
					}
				} catch (e) {
					trace("basic lit int error: " + e + " value: " + value);
				}
			}
			e.expr;
		case FLOAT:
			var e = toExpr(EConst(CFloat(value)));
			e.expr;
		case CHAR:
			var value = formatEscapeCodes(value);
			if (value == bs + "'") {
				value = "'";
			}
			var const = makeString(value);
			if (value == "\\") {
				return (macro $const.charCodeAt(0)).expr;
			}
			ECheckType(toExpr(EField(const, "code")), TPath({name: "GoRune", pack: []}));
		case IDENT:
			EConst(CIdent(nameIdent(value, info, false, false)));
		case IMAG: // TODO: IMPLEMENT COMPLEX NUMBER
			(macro new GoComplex128(0, ${toExpr(EConst(CFloat(value)))})).expr;
		default:
			throw "basic lit kind unknown: " + kind;
			null;
	}
}

private function typeUnaryExpr(expr:Ast.UnaryExpr, info:Info):ExprDef {
	var x = typeExpr(expr.x, info);
	var t = typeof(expr.x);
	if (isNamed(t))
		x = macro $x.__t__;
	if (expr.op == AND) {
		return (macro Go.pointer($x)).expr;
	} else {
		var type = typeUnOp(expr.op);
		if (type == null)
			return switch expr.op {
				case XOR: EBinop(OpXor, macro - 1, x);
				case ARROW: (macro $x.get()).expr;
				default: x.expr;
			}
		switch expr.op {
			case SUB:
				switch x.expr {
					case ECheckType(e, t):
						switch e.expr {
							case EConst(c):
								var isConst = true;
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
		return EUnop(type, false, x);
	}
}

enum CompositeType {
	map;
	struct;
	named;
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
	return compositeLit(type,expr,info);
	
}
function compositeLit(type:GoType,expr:Ast.CompositeLit,info:Info):ExprDef {
	var keyValueBool:Bool = hasKeyValueExpr(expr.elts);
	function keyFormat(key:String):String {
		return (key.charAt(0) == "_" || key.charAt(0) == key.charAt(0).toLowerCase() ? "_" : "") + nameIdent(key, info, false, false);
	}
	function getTypePath():TypePath{
		final ct = toComplexType(type,info);
		switch ct {
			case TPath(p):
				return p;
			default:
				throw "ComplexType not a TPath: " + ct;
		}
	}
	if (!keyValueBool) {
		if (isNamed(type)) {
			final ct = toComplexType(type,info);
			final p = getTypePath();
			type = getUnderlying(type);
			var e = toExpr(compositeLit(type,expr,info));
			return (macro new $p($e)).expr;
		}
	}
	type = getUnderlying(type);
	switch type {
		case struct(fields):
			var objectFields:Array<ObjectField> = [];
			var fields = fields.copy();
			if (keyValueBool) {
				for (i in 0...expr.elts.length) {
					var elt:Ast.KeyValueExpr = expr.elts[i];
					var key = elt.key.name;
					var value = typeExpr(elt.value,info);
					var removed = false;
					for (field in fields) {
						if (field.name == key) {
							var fieldType = toComplexType(field.type,info);
							value = assignTranslate(typeof(elt.value), field.type,value,info);
							objectFields.push({
								field: keyFormat(key),
								expr: macro ($value : $fieldType),
							});
							fields.remove(field);
							removed = true;
							break;
						}
					}
					if (!removed)
						throw "cannot find field type of name: " + keyFormat(key) + " in names: " + [for (field in fields) field.name];
				}
				for (field in fields) {
					objectFields.push({
						field: keyFormat(field.name),
						expr: defaultValue(field.type,info,false)
					});
				}
			}else{
				for (i in 0...fields.length) {
					objectFields.push({
						field: keyFormat(fields[i].name),
						expr: expr.elts.length > i ? {
							var e = typeExpr(expr.elts[i],info);
							e = assignTranslate(typeof(expr.elts[i]), fields[i].type,e,info);
							e;
						} : defaultValue(fields[i].type,info,false),
					});
				}
			}
			return EObjectDecl(objectFields);
		case slice(elem):
			final p = getTypePath();
			var exprs:Array<{index:Int,expr:Expr}> = [];
			var index:Int = 0;
			var max:Int = 0;
			var keyValueBool:Bool = false;
			function run(elt:Ast.Expr) {
				if (elt.id == "CompositeLit") {
					if (elt.type == null)
						return {index: index,expr: toExpr(compositeLit(elem,elt,info))};
				}
				return {index: index, expr: typeExpr(elt,info)};
			}
			for (elt in expr.elts) {
				if (elt.id == "KeyValueExpr") {
					var elt:Ast.KeyValueExpr = elt;
					index = Std.parseInt(elt.key.value);
					exprs.push(run(elt.value));
					keyValueBool = true;
				}else{
					exprs.push(run(elt));
				}
				index++;
				if (index > max)
					max = index;
			}
			var length = toExpr(EConst(CInt('$max')));
			var value = defaultValue(elem,info,false);
			if (keyValueBool) {
				var sets:Array<Expr> = [];
				for (i in 0...exprs.length) {
					var index = toExpr(EConst(CInt('${exprs[i].index}')));
					var e = exprs[i].expr;
					e = assignTranslate(typeof(expr.elts[i]), elem,e,info);
					sets.push(macro s[$index] = $e);
				}
				sets.push(macro s);
				return EBlock([macro var s = new $p(...([for (i in 0...$length) $value]))].concat(sets));
			}else{
				var params:Array<Expr> = [];
				for (i in 0...exprs.length) {
					var e = exprs[i].expr;
					e = assignTranslate(typeof(expr.elts[i]), elem,e,info);
					params.push(e);
				}
				return (macro new $p($a{params})).expr;
			}
		case array(elem,len):
			final p = getTypePath();
			if (keyValueBool) {
				var exprs:Array<{index:Int,expr:Expr}> = [];
				var index:Int = 0;
				function run(elt:Ast.Expr) {
					if (elt.id == "CompositeLit") {
						if (elt.type == null)
							return {index: index,expr: toExpr(compositeLit(elem,elt,info))};
					}
					return {index: index, expr: typeExpr(elt,info)};
				}
				for (elt in expr.elts) {
					if (elt.id == "KeyValueExpr") {
						var elt:Ast.KeyValueExpr = elt;
						index = Std.parseInt(elt.key.value);
						exprs.push(run(elt.value));
						keyValueBool = true;
					}else{
						exprs.push(run(elt));
					}
					index++;
				}
				var length = toExpr(EConst(CInt('$len')));
				var value = defaultValue(elem,info,false);
				var sets:Array<Expr> = [];
				for (expr in exprs) {
					var index = toExpr(EConst(CInt('${expr.index}')));
					var value = expr.expr;
					sets.push(macro s[$index] = $value);
				}
				sets.push(macro s);
				return EBlock([macro var s = new $p(...[for (i in 0...$length) $value])].concat(sets));
			}else{
				var exprs:Array<Expr> = [];
				for (elt in expr.elts) {
					if (elt.id == "CompositeLit") {
						if (elt.type == null) {
							var e = toExpr(compositeLit(elem,elt,info));
							e = assignTranslate(typeof(elt),elem,e,info);
							exprs.push(e);
							continue;
						}
					}
					exprs.push(typeExpr(elt,info));
				}
				if (len == exprs.length)
					return (macro new $p($a{exprs})).expr;
				var diff = len - exprs.length;
				var len = toExpr(EConst(CInt('$diff')));
				var value = defaultValue(elem,info,false);
				var values = macro [for (i in 0...$len) $value];
				return (macro new $p(...($a{exprs}.concat($values)))).expr;
			}
		case map(keyType, valueType):
			var t = toReflectType(type);
			var params:Array<Expr> = [];
			for (elt in expr.elts) {
				if (elt.id != "KeyValueExpr")
					throw "not a KeyValueExpr for Map CompositeLit";
				var elt:Ast.KeyValueExpr = elt;
				var key = typeExpr(elt.key,info);
				var value = typeExpr(elt.value,info);

				key = assignTranslate(typeof(elt.key),keyType, key,info);
				value = assignTranslate(typeof(elt.value), valueType,value,info);

				params.push(macro {key: $key,value: $value});
			}
			t = macro new stdgo.reflect.Reflect.Type($t);
			params.unshift(t);
			final p = getTypePath();
			return (macro new $p($a{params})).expr;
		default:
			throw "not supported CompositeLit type: " + type;
	}
}

private function funcReset(info:Info) {
	info.deferBool = false;
}

private function typeFuncLit(expr:Ast.FuncLit, info:Info):ExprDef {
	info = info.clone();
	funcReset(info);

	var ret = typeFieldListReturn(expr.type.results, info, true);
	var args = typeFieldListArgs(expr.type.params, info);
	var block = typeBlockStmt(expr.body, info, true, true);
	// allows multiple nested values
	return EFunction(FAnonymous, {
		ret: ret,
		args: args,
		expr: block != null ? toExpr(block) : null,
	});
}

private function typeBinaryExpr(expr:Ast.BinaryExpr, info:Info):ExprDef {
	var x = typeExpr(expr.x, info);
	var y = typeExpr(expr.y, info);
	switch expr.op { // operators that don't exist in haxe need to be handled here
		case AND_NOT: // refrenced from Simon's Tardisgo
			return (macro $x & ($y ^ (-1 : GoInt64))).expr;
		default:
	}
	var op = typeOp(expr.op);
	var typeX = typeof(expr.x);
	var typeY = typeof(expr.y);
	var nilExpr:Expr = null;
	switch x.expr {
		case EConst(c):
			switch c {
				case CIdent(s):
					if (s == "null") 
						nilExpr = y;
				default:
					final ct = toComplexType(typeX,info);
					if (ct != null)
						x = macro ($x : $ct);
			}
		default:
	}
	switch y.expr {
		case EConst(c):
			switch c {
				case CIdent(s):
					if (s == "null") 
						nilExpr = x;
				default:
					final ct = toComplexType(typeY,info);
					if (ct != null)
						y = macro ($y : $ct);
			}
		default:
	}
	switch op {
		case OpEq, OpNotEq:
			var value = nilExpr;
			if (value != null) {
				if (isInterface(typeX) || isInterface(typeY))
					return EBinop(op, x, y);
				switch op {
					case OpEq:
						return (macro $value == null || $value.isNill()).expr;
					default:
						return (macro $value != null && !$value.isNill()).expr;
				}
			}
			var t = typeX;
			switch t {
				case named(_, underlying):
					t = underlying;
				default:
			}
			switch t {
				case struct(_):
					return EBinop(op, macro Go.toInterface($x), macro Go.toInterface($y));
				case array(elem, len):
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
							return (macro !$e).expr;
						default:
							return e.expr;
					}
				default:
			}
		default:
			/*if (isNamed(typeX))
				x = macro $x.__t__;
			if (isNamed(typeY))
				y = macro $y.__t__;*/
	}
	switch op {
		case OpXor:
			return EBinop(op, x, y);
		case OpShl, OpShr:
			return EParenthesis(toExpr(EBinop(op, x, y))); // proper math ordering
		default:
	}
	if (isInvalid(typeX) || isInterface(typeX)) {
		x = macro Go.toInterface($x);
		y = macro Go.toInterface($y);
	}
	return EBinop(op, x, y);
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
		case AND_NOT_ASSIGN: OpInterval; // TODO properly create AND_NOT operator

		case RANGE: OpInterval; // TODO turn into iterator
		case ELLIPSIS: OpInterval;
		default:
			throw "unknown op token: " + token;
			OpInterval;
	}
}

private function typeSelectorExpr(expr:Ast.SelectorExpr, info:Info):ExprDef { // EField
	var x = typeExpr(expr.x, info);
	var typeX = typeof(expr.x);
	var isThis = false;

	function setIdent(sel):String {
		return (sel.charAt(0) == sel.charAt(0).toLowerCase() ? "_" : "") + nameIdent(sel, info, false, true);
	}

	var sel = expr.sel.name;
	var style = 0;
	switch x.expr {
		case EField(e, field):
			if (field.charAt(0) == field.charAt(0).toUpperCase() && field.charAt(0) != "_") {
				style = 0;
			} else {
				style = 1;
			}
		case EConst(c):
			switch c {
				case CIdent(s):
					if (s == info.thisName)
						isThis = true;
					var index = s.lastIndexOf(".");
					var field = s.substr(index + 1);
					if (field.charAt(0) == field.charAt(0).toUpperCase() && field.charAt(0) != "_") {
						style = 0;
					} else {
						style = 1;
					}
				default:
			}
		default:
			style = 1;
	}
	function runStyle(sel):String {
		return switch style {
			case 0: nameIdent(sel, info, false, true);
			case 1: setIdent(sel);
			default: throw "invalid style: " + style;
		}
	}
	sel = runStyle(sel);

	if (isPointer(typeX) && !isThis)
		x = macro $x.value;
	var fields = getStructFields(typeX);
	if (fields.length > 0) {
		var chains:Array<String> = [];
		// style = 0;
		function recursion(path:String, fields:Array<Ast.FieldType>) {
			for (field in fields) {
				var setPath = path + runStyle(field.name);
				chains.push(setPath);
				setPath += ".";
				var structFields = getStructFields(field.type);
				if (structFields.length > 0)
					recursion(setPath, structFields);
			}
		}
		recursion("", fields);

		for (chain in chains) {
			var field = chain.substr(chain.lastIndexOf(".") + 1);
			if (field == sel) {
				sel = chain;
				break;
			}
		}
	}
	return (macro $x.$sel).expr; // EField
}

private function typeSliceExpr(expr:Ast.SliceExpr, info:Info):ExprDef {
	var x = typeExpr(expr.x, info);
	var low = expr.low != null ? typeExpr(expr.low, info) : macro 0;
	var high = expr.high != null ? typeExpr(expr.high, info) : null;
	x = high != null ? macro $x.slice($low, $high) : macro $x.slice($low);
	if (expr.slice3)
		x = macro $x.slice(${typeExpr(expr.max, info)});
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

private function typeIndexExpr(expr:Ast.IndexExpr, info:Info):ExprDef {
	var x = typeExpr(expr.x, info);
	var index = typeExpr(expr.index, info);
	var t = typeof(expr.x);
	t = getUnderlying(t);
	var e = macro $x[$index];
	switch t {
		case map(_,valueType):
			var value = defaultValue(valueType,info,true);
			e = macro ($x == null ? $value : $e);
		default:
	}
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
	/*var t = typeof(expr);
		if (isPointer(t))
			return x.expr; */
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

private function implementsError(name:String, type:ComplexType):Bool {
	if (name != "Error")
		return false;
	switch type {
		case TPath(p):
			if (p.pack.length == 0 && p.name == "GoString")
				return true;
		default:
	}
	return false;
}

private function typeFunction(decl:Ast.FuncDecl, data:Info, restricted:Array<String> = null, isNamed:Bool = false):TypeDefinition {
	var info = new Info();
	info.renameTypes = data.renameTypes;
	info.typeNames = data.typeNames;
	info.data = data.data;
	info.thisName = "";
	info.count = 0;
	info.global = data.global;
	var name = nameIdent(decl.name.name, info, false, false, false);
	if (name == "init") {
		switch typeBlockStmt(decl.body, info, true, true) {
			case EBlock(exprs):
				info.global.initBlock = info.global.initBlock.concat(exprs);
			default:
		}
		return null;
	}
	info.funcName = decl.name.name;
	var ret = typeFieldListReturn(decl.type.results, info, true);
	// info.ret = [ret];
	var args = typeFieldListArgs(decl.type.params, info);
	info.thisName = "";
	info.restricted = restricted;
	var block:Expr = toExpr(typeBlockStmt(decl.body, info, true, true));
	info.restricted = null;
	var meta:Metadata = null;
	if (decl.recv != null) {
		var varName = decl.recv.list[0].names.length > 0 ? decl.recv.list[0].names[0].name : "";
		if (varName != "") {
			info.thisName = varName;
			switch block.expr {
				case EBlock(exprs):
					if (isPointer(typeof(decl.recv.list[0].type))) {
						exprs.unshift(macro var $varName = Go.pointer(this));
					} else {
						if (isNamed) {
							exprs.unshift(macro var $varName = this);
						} else {
							exprs.unshift(macro var $varName = this.__copy__());
						}
					}
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
		if (args.length > 0) {
			block = macro return $e;
		} else {
			block = e;
		}
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

private function defaultValue(type:GoType, info:Info,strict:Bool=true):Expr {
	return switch type {
		case map(_, _): macro null;
		case slice(elem):
			var t = toComplexType(elem, info);
			macro new Slice<$t>();
		case array(elem, len):
			var t = toComplexType(elem, info);
			macro new GoArray<$t>(...[for (i in 0...${toExpr(EConst(CInt('$len')))}) ${defaultValue(elem, info)}]);
		case interfaceValue(numMethods):
			macro null;
		case chan(_, elem):
			var t = toComplexType(elem, info);
			var value = defaultValue(elem, info);
			macro new Chan<$t>(0, () -> $value);
		case pointer(_):
			macro null;
		case signature(_, _, _, _):
			macro null;
		case named(path, underlying):
			switch underlying {
				case pointer(_), interfaceValue(_), map(_, _):
					macro null;
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
			}else{
				switch kind {
					case bool_kind: macro false;
					case string_kind: macro "";
					case int_kind,int8_kind,int16_kind,int32_kind,int64_kind: macro 0;
					case uint_kind,uint8_kind,uint16_kind,uint32_kind,uint64_kind: macro 0;
					case uintptr_kind: macro 0;
					case float32_kind,float64_kind: macro 0;
					case complex64_kind: macro new GoComplex64(0, 0);
					case complex128_kind: macro new GoComplex128(0, 0);
					default: macro null;
				}
			}
		case struct(fields):
			var fs:Array<ObjectField> = [];
			var fields = typeFields([
				for (field in fields)
					{
						name: field.name,
						type: field.type
					}
			], info, null, true, true);
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
		case invalid:
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
	if (fieldList == null)
		return TPath({
			name: "Void",
			pack: [],
		});
	// reset
	var returnComplexTypes:Array<ComplexType> = [];
	var returnNamed:Bool = true;
	var returnNames:Array<String> = [];
	var returnTypes:Array<GoType> = [];

	for (group in fieldList.list) {
		final ct = typeExprType(group.type, info);
		var t = typeof(group.type);
		if (group.names.length == 0) {
			returnTypes.push(t);
			returnNames.push("v" + returnNames.length);
			returnNamed = false;
			returnComplexTypes.push(ct);
			continue;
		}
		for (name in group.names) {
			if (name.name == "_") {
				returnNames.push("v" + returnNames.length);
			}else{
				returnNames.push(nameIdent(name.name, info, false, false));
			}
			returnTypes.push(t);
			returnComplexTypes.push(ct);
		}
	}

	var type = if (returnComplexTypes.length > 1) {
		// anonymous
		TPath({
			name: "MultiReturn",
			pack: [],
			params: [
				TPType(TAnonymous([
					for (i in 0...returnComplexTypes.length)
						{
							name: returnNames[i],
							pos: null,
							kind: FVar(returnComplexTypes[i])
						}
				]))
			],
		});
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
	} else {
		info.returnNames = [];
		info.returnTypes = [];
		info.returnType = null;
		info.returnNamed = false;
		info.returnComplexTypes = [];
	}
	return type;
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
				name: nameIdent(name.name, info, false, false),
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
				args.push(TNamed(name.name, type));
			}
		} else {
			args.push(type);
		}
	}
	return args;
}

private function typeFieldListMethods(list:Ast.FieldList, info:Info, underlineBool:Bool):Array<Field> {
	var fields:Array<Field> = [];
	for (field in list.list) {
		var expr:Ast.FuncType = field.type;

		var ret = typeFieldListReturn(expr.results, info, false);
		var params = typeFieldListArgs(expr.params, info);
		if (ret == null || params == null)
			continue;
		for (n in field.names) {
			var name = n.name;
			if (underlineBool) {
				if (name.charAt(0) == name.charAt(0).toLowerCase())
					name = "_" + name;
			}
			fields.push({
				name: nameIdent(name, info, false, false),
				pos: null,
				access: typeAccess(n.name, true),
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
private function typeFields(list:Array<Ast.FieldType>, info:Info, access:Array<Access> = null, defaultBool:Bool, underlineBool:Bool):Array<Field> {
	var fields:Array<Field> = [];
	var blankCounter = 0;
	for (field in list) {
		final ct = toComplexType(field.type, info);
		var name = field.name;
		if (name == "_") {
			// isBlank
			name = "__blank__" + (blankCounter++);
		} else {
			if (underlineBool) {
				if (name.charAt(0) == name.charAt(0).toLowerCase())
					name = "_" + name;
			}
		}
		fields.push({
			name: nameIdent(name, info, false, false),
			pos: null,
			access: access == null ? typeAccess(name, true) : access,
			kind: FVar(toComplexType(field.type, info), defaultBool ? defaultValue(field.type, info) : null)
		});
	}
	return fields;
}

private function typeFieldListFields(list:Ast.FieldList, info:Info, access:Array<Access> = null, defaultBool:Bool, underlineBool:Bool):Array<Field> {
	var fields:Array<Field> = [];
	var fieldList:Array<Ast.FieldType> = [];
	for (field in list.list) {
		var type = typeof(field.type);
		if (field.names.length == 0) {
			var name:String = field.type.id == "SelectorExpr" ? field.type.sel.name : field.type.name;
			if (name == null)
				continue;
			fieldList.push({
				name: name,
				type: type
			});
		} else {
			for (n in field.names) {
				var name = n.name;
				fieldList.push({
					name: name,
					type: type
				});
			}
		}
	}
	return typeFields(fieldList, info, access, defaultBool, underlineBool);
}

private function typeFieldListTypes(list:Ast.FieldList, info:Info):Array<TypeDefinition> {
	var defs:Array<TypeDefinition> = [];
	for (field in list.list) {
		var type = typeExprType(field.type, info);
		for (name in field.names) {
			defs.push({
				name: nameIdent(name.name, info, false, false),
				pos: null,
				pack: [],
				fields: [],
				kind: null,
			});
		}
	}
	return defs;
}

private function renameDef(name:String, info:Info):String {
	for (decl in info.data.defs) {
		if (decl == null)
			continue;
		if (decl.name == name) {
			return renameDef(name + "_", info);
		}
	}
	return name;
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
	var implicits:Array<TypePath> = [{pack: [],name: "StructType"}];
	for (imp in spec.implicits) {
		implicits.push(parseTypePath(imp.path, imp.name, info));
	}
	var t = typeof(spec.type);
	var ct = typeExprType(spec.type,info);
	var value = defaultValue(t,info,false);
	var fields:Array<Field> = [{
		name: "__t__",
		access: [APublic],
		pos: null,
		kind: FVar(ct),
	},{
		name: "new",
		pos: null,
		access: [APublic],
		kind: FFun({
			args: [{name: "t",opt: true}],
			expr: macro {
				__t__ = t == null ? $value : t;
			},
		})
	},{
		name: "__underlying__",
		pos: null,
		access: [APublic],
		kind: FFun({
			args: [],
			expr: macro return Go.toInterface(__t__),
			ret: TPath({name: "AnyInterface",pack: []})
		})
	},{
		name: "toString",
		pos: null,
		access: [APublic],
		kind: FFun({
			args: [],
			expr: macro return Std.string(__t__),
			ret: TPath({name: "GoString",pack: []}),
		})
	}];

	return {
		name: name,
		pos: null,
		pack: [],
		fields: fields,
		meta: [{name: ":named",pos: null}],
		kind: TDClass(null,implicits),
	}
}

private function typeSpec(spec:Ast.TypeSpec, info:Info) {
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
			fields: [],
			kind: TDAlias(type),
		}
	}
	return switch spec.type.id {
		case "StructType", "InterfaceType": typeType(spec, info);
		default: typeNamed(spec, info);
	}
}

private function makeString(str:String, ?kind):Expr {
	return toExpr(EConst(CString(str, kind)));
}

private function typeType(spec:Ast.TypeSpec, info:Info):TypeDefinition {
	var name = className(spec.name.name, info);
	var externBool = isTitle(spec.name.name);
	info.className = name;
	var doc:String = getComment(spec) + getDoc(spec) + getSource(spec, info);
	switch spec.type.id {
		case "StructType":
			var struct:Ast.StructType = spec.type;
			var fields = typeFieldListFields(struct.fields, info, [APublic], true, true);
			fields.push({
				name: "new",
				pos: null,
				access: [APublic],
				kind: FFun({
					args: [for (field in fields) {name: field.name, opt: true}],
					expr: macro stdgo.internal.Macro.initLocals(),
				}),
			});
			var toStringExpr:Expr = makeString("{", SingleQuotes);
			for (field in fields) {
				switch field.kind {
					case FVar(t, e):
						toStringExpr = macro $toStringExpr + Std.string($i{field.name}) + " ";
					default:
				}
			}
			switch toStringExpr.expr {
				case EBinop(op, e1, e2):
					toStringExpr.expr = EBinop(op, e1, macro "}");
				default:
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
			for (field in fields) {
				switch field.kind {
					case FVar(t, e):
						args.push(toExpr(EConst(CIdent(field.name))));
					default:
				}
			}
			var meta:Metadata = [{name: ":structInit", pos: null}, getAllow(info)];
			var implicits:Array<TypePath> = [];
			for (imp in spec.implicits) {
				implicits.push(parseTypePath(imp.path, imp.name, info));
			}
			var cl:TypeDefinition = {
				name: name,
				pos: null,
				fields: fields,
				pack: [],
				doc: doc,
				isExtern: externBool,
				meta: meta,
				kind: TDClass(null, [{name: "StructType", pack: []}].concat(implicits), false, true, false),
			};

			cl.fields.push({
				name: "__underlying__",
				pos: null,
				kind: FFun({args: [], expr: macro return Go.toInterface(this), ret: TPath({name: "AnyInterface", pack: []})}),
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
			return cl;
		case "InterfaceType":
			// var interface:Ast.InterfaceType = spec.type;
			var struct:Ast.InterfaceType = spec.type;
			if (struct.methods.list.length == 0) {
				return {
					name: name,
					pos: null,
					fields: [],
					pack: [],
					meta: [],
					kind: TDAlias(anyInterfaceType()),
				}
			}
			var fields = typeFieldListMethods(struct.methods, info, true);
			fields.push({
				name: "__underlying__",
				pos: null,
				kind: FFun({args: [], ret: TPath({name: "AnyInterface", pack: []})}),
				access: [APublic],
			});
			return {
				name: name,
				pack: [],
				pos: null,
				doc: doc,
				fields: fields,
				isExtern: externBool,
				meta: [getAllow(info)],
				kind: TDClass(null, [], true) // INTERFACE
			};
		default:
			return null;
	}
}

private function anyInterfaceType()
	return TPath({name: "AnyInterface", pack: []});

private function getAllow(info:Info) {
	return {name: ":allow", params: [toExpr(EConst(CIdent(info.global.path)))], pos: null};
}

private function typeImport(imp:Ast.ImportSpec, info:Info):ImportType {
	var doc = getDoc(imp);
	var path = normalizePath(imp.path.value).split("/");
	var alias = imp.name == null ? null : imp.name.name;
	if (alias == "_")
		alias = "";
	if (stdgoList.indexOf(path[0]) != -1) { // haxe only type, otherwise the go code refrences Haxe
		path.unshift("stdgo");
	}
	var name = path[path.length - 1];
	path.push(title(name));
	info.renameTypes[name] = path.join(".");
	return {
		path: path,
		alias: alias,
		doc: doc,
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
		var tuples = getReturnTuple(t);

		// destructure
		var tmp = "__tmp__" + (info.blankCounter++);
		var tmpExpr = macro $i{tmp};
		var func = typeExpr(value.values[0], info);
		var data = castTranslate(value.values[0],func,info);
		func = data.expr;
		if (data.ok)
			value.names = [{name: "value",type: null},{name: "ok",type: null}];
		values.push({
			name: tmp,
			pos: null,
			pack: [],
			fields: [],
			kind: TDField(FVar(null, func))
		});
		var tuples = getReturnTuple(t);
		for (i in 0...value.names.length) {
			var fieldName = tuples[i];
			var access = []; // typeAccess(value.names[i]);
			if (value.constants[i])
				access.push(AFinal);
			values.push({
				name: nameIdent(value.names[i].name, info, false, false),
				pos: null,
				pack: [],
				fields: [],
				isExtern: isTitle(value.names[i].name),
				kind: TDField(FVar(type, macro $tmpExpr.$fieldName), access)
			});
		}
	} else {
		for (i in 0...value.names.length) {
			if (value.names[i].name == "_") {
				value.names[i].name += (info.count++);
			}
			var expr:Expr = null;
			if (value.values[i] == null) {
				if (type != null) {
					expr = defaultValue(typeof(value.type), info);
				} else {
					// last expr use
					expr = typeExpr(info.lastValue, info);
					type = info.lastType;
				}
			} else {
				info.lastValue = value.values[i];
				info.lastType = type;
				expr = typeExpr(value.values[i], info);
				expr = assignTranslate(typeof(value.values[i]), typeof(value.type), expr, info);
			}
			if (expr == null)
				continue;
			if (type == null)
				type = toComplexType(typeof(value.values[i]), info);
			var name = nameIdent(value.names[i].name, info, false, false);
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
		trace("error: " + e + " data: " + info.data);
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

private function nameIdent(name:String, info:Info, forceString:Bool, isSelect:Bool, restrictCheck:Bool = true):String {
	if (name == "nil")
		return "null";

	if (info.localVars.exists(name))
		forceString = true;

	if (!forceString) {
		if (info.global.imports.exists(name))
			return info.global.imports[name];
		var rt = false; // retype
		if (info.renameTypes.exists(name)) {
			name = info.renameTypes[name];
			rt = true;
		}
		if (info.global.renameTypes.exists(name) && !rt)
			name = info.global.renameTypes[name];
		name = untitle(name);
		if (reserved.indexOf(name) != -1 && !rt)
			name += "_";
		if (restrictCheck && info.restricted != null && info.restricted.indexOf(name) != -1)
			return getRestrictedName(name, info);
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

function isTitle(string:String):Bool {
	return string.charAt(0) == "_" ? false : string.charAt(0) == string.charAt(0).toUpperCase();
}

function title(string:String):String {
	var index:Int = 0;
	for (i in 0...string.length) {
		index = i;
		if (string.charAt(i) != "_")
			break;
	}
	index++;
	string = string.substr(0, index).toUpperCase() + string.substr(index);
	return string;
}

function untitle(string:String):String {
	var index:Int = 0;
	for (i in 0...string.length) {
		if (string.charAt(i) == "_")
			continue;
		if (string.charAt(i) == string.charAt(i).toLowerCase())
			break;
		index = i;
	}
	index++;
	string = string.substr(0, index).toLowerCase() + string.substr(index);
	return string;
}

class Global {
	public var renameTypes:Map<String, String> = [];
	public var imports:Map<String, String> = [];
	public var initBlock:Array<Expr> = [];
	public var path:String = "";
	public var module:Module = null;

	public inline function new() {}
}

class Info {
	public var localVars:Map<String, Bool> = [];
	public var blankCounter:Int = 0;
	public var count:Int = 0;
	public var restricted:Array<String> = null;
	public var thisName:String = "";
	public var deferBool:Bool = false;
	public var funcName:String = "";
	public var renameTypes:Map<String, String> = [];
	public var returnNames:Array<String> = [];
	public var returnType:ComplexType = null;
	public var returnNamed:Bool;
	public var returnTypes:Array<GoType> = [];
	public var returnComplexTypes:Array<ComplexType> = [];
	public var returnInterfaceBool:Array<Bool> = [];
	public var className:String = "";
	public var retypeList:Map<String, ComplexType> = [];
	public var typeNames:Array<String> = [];
	public var iota:Int = 0;
	public var lastValue:Ast.Expr = null;
	public var lastType:ComplexType = null;
	public var data:FileType;
	public var global = new Global();

	public function new(?global) {
		if (global != null)
			this.global = global;
	}

	public inline function clone() {
		var info = new Info();
		info.thisName = thisName;
		info.returnTypes = returnTypes;
		info.returnComplexTypes = returnComplexTypes;
		info.returnNames = returnNames;
		info.returnType = returnType;
		info.returnNamed = returnNamed;
		info.deferBool = deferBool;
		info.count = count;
		info.funcName = funcName;
		info.renameTypes = renameTypes;
		info.localVars = localVars;
		info.className = className;
		info.retypeList = retypeList;
		info.typeNames = typeNames;
		info.iota = iota;
		info.data = data;
		info.global = global; // imports, types
		return info;
	}
}

typedef DataType = {args:Array<String>, pkgs:Array<PackageType>};
typedef PackageType = {path:String, name:String, files:Array<{path:String, location:String, decls:Array<Dynamic>}>}; // filepath of export.json also stored here
typedef Module = {name:String, path:String, files:Array<FileType>, isMain:Bool}
typedef ImportType = {path:Array<String>, alias:String, doc:String}
typedef FileType = {name:String, imports:Array<ImportType>, defs:Array<TypeDefinition>, location:String,
	isMain:Bool}; // location is the global path to the file
