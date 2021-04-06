import stdgo.Pointer.PointerWrapper;
import sys.io.File;
import haxe.io.Path;
import haxe.ds.StringMap;
import haxe.macro.Type.ClassField;
import haxe.macro.Type.ClassKind;
import haxe.macro.Context;
import haxe.macro.Type.ClassType;
import haxe.macro.Type.ModuleType;
import haxe.macro.Expr;
import haxe.DynamicAccess;
import sys.FileSystem;

var stdgoList:Array<String>;
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
typedef Alias = {name:String, type:ComplexType};
var aliases:Map<String, Array<Alias>>;

function main(data:DataType) {
	var list:Array<Module> = [];
	var info:Info = defaultInfo();
	// alias system
	aliases = new Map<String, Array<Alias>>();
	for (pkg in data.pkgs) {
		if (pkg.files == null)
			continue;
		pkg.path = normalizePath(pkg.path);
		pkg.path = StringTools.replace(pkg.path, "/", ".");
		if (pkg.path == "")
			pkg.path == "std";

		info.path = pkg.path;
		aliases[info.path] = [];
		for (file in pkg.files) {
			if (file.decls == null)
				continue;
			for (decl in file.decls) {
				switch decl.id {
					case "GenDecl":
						var specs:Array<Ast.Spec> = decl.specs;
						for (spec in specs) {
							switch spec.id {
								case "TypeSpec":
									setAlias(spec, info);
							}
						}
				}
			}
		}
	}
	// module system
	for (pkg in data.pkgs) {
		if (pkg.files == null)
			continue;
		var module:Module = {path: pkg.path, files: []};
		var main:FileType = null;
		for (file in pkg.files) {
			if (file.decls == null)
				continue;
			file.path = normalizePath(Path.withoutExtension(file.path));
			file.location = Path.normalize(file.location);
			var data:FileType = {
				name: file.path,
				imports: [],
				defs: [],
				location: file.location
			};
			data.name = normalizePath(data.name);
			// set name
			data.name = className(Typer.title(data.name));

			info = defaultInfo(data, module.path);
			var declFuncs:Array<Ast.FuncDecl> = [];
			for (decl in file.decls) {
				switch decl.id {
					case "GenDecl":
						typeGenDecl(decl, info);
					case "FuncDecl":
						var decl:Ast.FuncDecl = decl;
						declFuncs.push(decl);
					default:
				}
			}
			for (decl in declFuncs) { // parse function bodies last
				var func = typeFunction(decl, info);
				if (func != null)
					data.defs.push(func);
			}

			for (i in 0...info.data.defs.length) {
				var defRename = null;
				var def = info.data.defs[i];
				for (j in 0...info.data.defs.length) {
					if (i == j)
						continue;
					var def2 = info.data.defs[j];
					if (def.name == def2.name) {
						switch def2.kind {
							case TDClass(superClass, interfaces, isInterface, isFinal, isAbstract):
								defRename = def;
							case TDField(kind, access):
								defRename = access.contains(APrivate) ? def2 : def;
							default:
						}
						break;
					}
				}
				if (defRename == null)
					continue;

				info.types.push({name: defRename.name, rename: defRename.name = defRename.name = "_" + defRename.name, index: 0});
			}

			typeImplements(info);
			// make blank identifiers not name conflicting for global
			var blankCounter:Int = 0;
			for (def in info.data.defs) {
				switch def.kind {
					case TDClass(superClass, interfaces, isInterface, isFinal, isAbstract):
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
			// setup implements
			data.imports.push({path: ["stdgo", "StdGoTypes"], alias: ""});
			data.imports.push({path: ["stdgo", "Go"], alias: ""});
			for (path => alias in info.imports)
				data.imports.push({path: path.split("."), alias: alias});
			module.files.push(data);
		}
		list.push(module);
	}
	return list;
}

private function setAlias(spec:Ast.TypeSpec, info:Info) {
	switch spec.type.id {
		case "InterfaceType":
			// var interface:Ast.InterfaceType = spec.type;
			var struct:Ast.InterfaceType = spec.type;
			if (struct.methods.list.length == 0) {
				aliases[info.path].push({name: spec.name.name, type: TPath({name: "AnyInterface", pack: []})});
			}
		case "StructType":
		default:
			var type = typeExprType(spec.type, info);
			aliases[info.path].push({
				name: spec.name.name,
				type: type,
			});
	}
}

private function defaultInfo(data:FileType = null, path:String = ""):Info {
	return {
		recover: [],
		hasType: false,
		lengths: [],
		iota: 0,
		aliasStaticExtensionMap: [],
		layerIndex: 0,
		funcIndex: 0,
		typeNames: [],
		thisName: "",
		className: "",
		retValues: [],
		hasDefer: false,
		deferBool: [],
		funcName: "",
		path: path,
		types: [],
		imports: [],
		ret: [],
		data: data,
		local: false,
		retypeList: [],
		print: false,
	};
}

private function typeImplements(info:Info) {
	for (cl in info.data.defs) {
		switch cl.kind {
			case TDClass(superClass, interfaces, isInterface, isFinal, isAbstract):
				if (isInterface)
					continue;
				for (inter in info.data.defs) {
					switch inter.kind {
						case TDClass(superClass, interfaces2, isInterface, isFinal, isAbstract):
							if (!isInterface)
								continue;
							for (interField in inter.fields) {
								for (clField in cl.fields) {
									if (interField.name != clField.name)
										continue;
									var interFunc:Function = null;
									var clFunc:Function = null;
									switch interField.kind {
										case FFun(f):
											interFunc = f;
										default:
									}
									switch clField.kind {
										case FFun(f):
											clFunc = f;
										default:
									}
									if (interFunc == null || clFunc == null)
										continue;
									if (!compareComplexType(interFunc.ret, clFunc.ret))
										continue;
									var passed:Bool = true;
									if (interFunc.args.length != clFunc.args.length)
										continue;
									for (i in 0...interFunc.args.length) {
										/*if (interFunc.args[0].name != clFunc.args[0].name) {
											passed = false;
											break;
										}*/
										if (!compareComplexType(interFunc.args[0].type, clFunc.args[0].type)) {
											passed = false;
											break;
										}
									}
									if (!passed)
										continue;
									interfaces.push({
										name: inter.name,
										pack: inter.pack,
									});
								}
							}
						default:
					}
				}
			default:
		}
	}
}

private function compareComplexType(a:ComplexType, b:ComplexType):Bool {
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

private function typeGenDecl(decl:Ast.GenDecl, info:Info) {
	var specs:Array<Ast.Spec> = decl.specs;
	// types first
	for (spec in specs) {
		switch spec.id {
			case "ImportSpec":
				info.data.imports.push(typeImport(spec, info));
			case "TypeSpec":
				var spec:Ast.TypeSpec = spec;
				info.typeNames.push(spec.name.name);
				info.data.defs.push(typeType(spec, info));
		}
	}
	// variables after so that all types can be refrenced by a value and have it exist.
	for (spec in specs) {
		switch spec.id {
			case "ValueSpec":
				var spec:Ast.ValueSpec = spec;
				info.data.defs = info.data.defs.concat(typeValue(spec, info));
			default:
		}
	}
}

private function typeStmt(stmt:Dynamic, info:Info):Expr {
	info.hasType = false;
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
		case "BadStmt":
			error("BAD STATEMENT TYPED");
			null;
		case "GoStmt": typeGoStmt(stmt, info);
		case "BranchStmt": typeBranchStmt(stmt, info);
		case "SelectStmt": typeSelectStmt(stmt, info);
		case "SendStmt": typeSendStmt(stmt, info);
		case "CommClause": typeCommClause(stmt, info);
		default:
			error("unknown stmt id: " + stmt.id);
			null;
	}
	return def == null ? {error("stmt null: " + stmt.id); null;} : toExpr(def);
}

var errorCache = new StringMap<Bool>();

private function error(message:String) {
	if (!errorCache.exists(message))
		throw(message);
	errorCache.set(message, true);
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
			var name = toExpr(typeIdent(stmt.label, info));
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
	if (stmt.list == null)
		return (macro {}).expr;
	return typeStmtList(stmt.list, info, isFunc, needReturn);
}

private function typeStmtList(list:Array<Ast.Stmt>, info:Info, isFunc:Bool, needReturn:Bool):ExprDef {
	info.layerIndex++;
	if (isFunc)
		info.funcIndex++;
	var exprs:Array<Expr> = [];
	if (list != null)
		exprs = [for (stmt in list) typeStmt(stmt, info)];
	// label and goto system
	var labels:Array<String> = [];
	var returnBool:Bool = false;
	if (list != null)
		for (i in 0...list.length) {
			switch list[i].id {
				case "LabeledStmt":
					var stmt:Ast.LabeledStmt = list[i];
					var name = nameIdent(stmt.label.name, info);
					labels.push(name);
					var body = exprs.splice(i, list.length);
					var func = toExpr(EFunction(null, {
						expr: toExpr(EBlock(body)),
						args: [],
					}));
					var v = toExpr(EConst(CIdent(name)));
					exprs.unshift(macro $v = $func);
					exprs.unshift(macro var $name = null);
					exprs.push(macro return $v());
				case "ReturnStmt":
					returnBool = true;
				default:
			}
		}
	// defer system
	if (info.deferBool.exists(info.funcIndex) && isFunc) {
		exprs.unshift(macro var deferstack:Array<Void->Void> = []);
		exprs.push(typeDeferReturn(info, true));
		if (info.recover.exists(info.funcIndex)) {
			exprs.unshift(macro var recover_exception:Dynamic = null);
			var pos = 2;
			var ret = toExpr(typeReturnStmt({returnPos: null, results: []}, info));
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
	}

	if (!returnBool && needReturn) {
		var isVoid:Bool = false;
		if (info.ret.length == 1) {
			switch info.ret[0] {
				case TPath(p):
					switch p.name {
						case "Void":
							isVoid = true;
					}
				default:
			}
		}
		if (!isVoid) {
			var ret = typeReturnStmt({returnPos: null, results: []}, info);
			exprs.push(toExpr(ret)); // blank return
		}
	}
	if (isFunc)
		info.funcIndex--;
	// remove types and retypes that no longer are in scope
	for (retype in info.retypeList) {
		if (retype.index <= info.layerIndex)
			continue;
		info.retypeList.remove(retype);
	}
	for (type in info.types) {
		if (type.index <= info.layerIndex)
			continue;
		info.types.remove(type);
	}
	// add potential return value variables
	if (info.retValues.length > 0 && info.retValues[0].length > 0)
		exprs.unshift(getRetValues(info));
	return EBlock(exprs);
}

private function typeLabeledStmt(stmt:Ast.LabeledStmt, info:Info):ExprDef {
	return (macro {}).expr;
}

private function typeIncDecStmt(stmt:Ast.IncDecStmt, info:Info):ExprDef {
	var x = typeExpr(stmt.x, info);
	return switch stmt.tok {
		case INC: return (macro $x++).expr;
		case DEC: return (macro $x--).expr;
		default:
			error("unknown IncDec token: " + stmt.tok);
			null;
	}
}

private function typeDeferStmt(stmt:Ast.DeferStmt, info:Info):ExprDef {
	info.deferBool[info.funcIndex] = true;
	info.hasDefer = true;
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
	info.hasDefer = false;
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
					case CIdent(s): valueString = nameIdent(s, info);
					default:
				}
			default:
		}
	}
	if (key != null) {
		switch key.expr {
			case EConst(c):
				switch c {
					case CIdent(s): keyString = nameIdent(s, info);
					default:
				}
			default:
		}
	}
	// both key and value
	if (stmt.tok == DEFINE) {
		switch body.expr {
			case EBlock(exprs):
				if (value != null) {
					if (info.hasDefer) {
						exprs.unshift(macro $i{valueString} = _obj.value); // not a local variable but declared outside for block
					} else {
						exprs.unshift(macro var $valueString = _obj.value);
					}
				}
				if (key != null) {
					if (info.hasDefer) {
						exprs.unshift(macro $i{keyString} = _obj.key); // not a local variable but declared outside for block
					} else {
						exprs.unshift(macro var $keyString = _obj.key);
					}
				}
			default:
		}
	} else { //ASSIGN
		switch body.expr {
			case EBlock(exprs):
				if (key != null) {
					if (info.hasDefer) {
						exprs.unshift(macro $i{keyString} = _obj.key); // no diffrence with assign
					} else {
						exprs.unshift(macro $i{keyString} = _obj.key);
					}
				}
				if (value != null) {
					if (info.hasDefer) {
						exprs.unshift(macro $i{valueString} = _obj.value); // no diffrence with assign
					} else {
						exprs.unshift(macro $i{valueString} = _obj.value);
					}
				}
			default:
		}
	}
	var e = macro for (_obj in Go.range($x)) $body;
	if (info.hasDefer) {
		var inits:Array<Expr> = [];
		if (keyString != "_")
			inits.push(macro var $keyString);
		if (valueString != "_")
			inits.push(macro var $valueString);
		e = toExpr(EBlock(inits.concat([e])));
	}
	return e.expr;
}

private function className(name:String):String {
	if (reservedClassNames.indexOf(name) != -1)
		name += "_";
	return name;
}

private function typeDeclStmt(stmt:Ast.DeclStmt, info:Info):ExprDef {
	var decls:Array<Ast.GenDecl> = stmt.decl.decls;
	var vars:Array<Var> = [];
	for (decl in decls) {
		for (spec in decl.specs) {
			switch spec.id {
				case "TypeSpec":
					var spec:Ast.TypeSpec = spec;
					var name = className(title(spec.name.name));
					spec.name.name += "_" + info.funcName + "_" + info.layerIndex;
					info.retypeList.push({
						name: name,
						index: info.layerIndex,
						type: TPath({
							name: className(title(spec.name.name)),
							pack: [],
						})
					});
					setAlias(spec, info);
					info.data.defs.push(typeType(spec, info));
				case "ValueSpec":
					var spec:Ast.ValueSpec = spec;
					var type = spec.type.id != null ? typeExprType(spec.type, info) : null;
					var value = macro null;
					var args:Array<Expr> = [];
					vars = vars.concat([
						for (i in 0...spec.names.length)
							{
								name: nameIdent(spec.names[i], info),
								type: type,
								expr: i < spec.values.length ? typeExpr(spec.values[i], info) : type != null ? defaultValue(type, info, 0, false) : null,
							}
					]);
			}
		}
	}
	if (vars.length > 0)
		return EVars(vars);
	return (macro {}).expr; // blank expr def
}

private function typeTypeSwitchStmt(stmt:Ast.TypeSwitchStmt, info:Info):ExprDef { // a switch statement of a type
	var init:Expr = null;
	if (stmt.init != null)
		init = toExpr(typeSwitchStmt(stmt.init, info));

	var assign:Expr = null;
	var set:String = "";
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
					set = lhs.name;
				default:
					trace("unknown assign lhs type switch expr: " + rhs.id);
			}
		default:
			trace("unknown assign: " + stmt.assign.id);
	}
	if (assign == null)
		return null;
	var cases:Array<Case> = [];
	var def:Expr = null;
	for (stmt in stmt.body.list) {
		var stmt:Ast.CaseClause = stmt;
		var values:Array<Expr> = [];
		var body = toExpr(typeStmtList(stmt.body, info, false, false));
		if (stmt.list.length == 0) {
			def = body;
			continue;
		}
		for (expr in stmt.list) {
			values.push(toExpr(EConst(CString(exprTypeString(expr)))));
		}
		cases.push({
			values: values,
			expr: body,
		});
	}
	return ESwitch(macro $assign.typeName(), cases, def);
}

private function exprTypeString(expr:Ast.Expr):String {
	switch expr.id {
		case "Ident":
			var name = expr.name;
			switch name {
				case "byte":
					name = "uint8";
				case "rune":
					name = "int";
				case "int32":
					name = "int";
			}
			return name;
		case "ChanType":
			var expr:Ast.ChanType = expr;
			return "chan " + exprTypeString(expr.value);
		case "ArrayType":
			var expr:Ast.ArrayType = expr;
			return "[" + (expr.len == null ? "" : exprTypeString(expr.len)) + "]" + exprTypeString(expr.elt);
		case "MapType":
			var expr:Ast.MapType = expr;
			return "[" + exprTypeString(expr.key) + "]" + exprTypeString(expr.value);
		case "FuncType":
			var expr:Ast.FuncType = expr;
			return "func("
				+ [for (param in expr.params.list) exprTypeString(param.type)].join(" ,") + ") -> " +
					[for (result in expr.results.list) exprTypeString(result.type)].join(" ,");
		case "InterfaceType":
			return "";
		case "StarExpr":
			return "*" + exprTypeString(expr.x);
		case "StructType":
			var expr:Ast.StructType = expr;
			return "{todo_structtype}";
		default:
			throw "unknown case value: " + expr.id;
	}
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
	if (stmt.body.list == null)
		return (macro {}).expr;
	return ifs().expr;
}

private function typeForStmt(stmt:Ast.ForStmt, info:Info):ExprDef {
	var cond = stmt.cond == null ? toExpr(EConst(CIdent("true"))) : typeExpr(stmt.cond, info);
	info.hasDefer = false;
	var body = toExpr(typeBlockStmt(stmt.body, info, false, false));
	if (body.expr == null)
		body = macro {};
	if (cond.expr == null || body.expr == null) {
		trace("for stmt error: " + cond.expr + " body: " + body.expr);
		return null;
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
		if (stmt.cond == null) {
			var retValue = defaultValue(info.ret[0], info, 0, false);
			switch info.ret[0] {
				case TPath(p):
					if (p.name == "Void")
						retValue = null;
				default:
			}
			return EBlock([def, toExpr(EReturn(retValue))]);
		}
		return def.expr;
	}
	if (stmt.init != null) {
		var init = typeStmt(stmt.init, info);
		if (init == null) {
			trace("for stmt eror init: " + stmt.init);
			return null;
		}
		return EBlock([init, def]);
	}
	return def.expr;
}

private function toExpr(def:ExprDef):Expr {
	return {expr: def, pos: null};
}

private function typeAssignStmt(stmt:Ast.AssignStmt, info:Info):ExprDef {
	switch stmt.tok {
		case ASSIGN, ADD_ASSIGN, SUB_ASSIGN, MUL_ASSIGN, QUO_ASSIGN, REM_ASSIGN, SHL_ASSIGN, SHR_ASSIGN, XOR_ASSIGN, AND_ASSIGN, AND_NOT_ASSIGN, OR_ASSIGN:
			if (stmt.lhs.length == stmt.rhs.length) {
				if (stmt.tok == ASSIGN && stmt.lhs.length == 1 && stmt.rhs.length == 1 && stmt.lhs[0].id == "Ident" && stmt.lhs[0].name == "_") {
					var y = typeExpr(stmt.rhs[0], info);
					return y.expr; // only underscore assign, therefore only need to type right side.
				}
				var op = typeOp(stmt.tok);
				var exprs = [
					for (i in 0...stmt.lhs.length) {
						var x = typeExpr(stmt.lhs[i], info);
						var y = typeExpr(stmt.rhs[i], info);
						if (x == null || y == null)
							return null;
						x.expr.match(EConst(CIdent("_"))) ? y : toExpr(EBinop(op, x, y));
					}
				];
				if (exprs.length == 1)
					return exprs[0].expr;
				return EBlock(exprs);
			} else if (stmt.lhs.length > stmt.rhs.length && stmt.rhs.length == 1) {
				// non variable assign, destructure system
				var exprs:Array<Expr> = [];
				for (lhs in stmt.lhs) {
					exprs.push(typeExpr(lhs, info));
				}
				for (rhs in stmt.rhs) {
					exprs.push(typeExpr(rhs, info));
				}
				return (macro Go.destruct($a{exprs})).expr;
			} else {
				error("unknown type assign type: " + stmt);
				return null;
			}
		case DEFINE: // var expr = x;
			info.lengths = [];
			if (stmt.lhs.length == stmt.rhs.length) {
				// normal vars
				var vars:Array<Var> = [];
				for (i in 0...stmt.lhs.length) {
					var expr = typeExpr(stmt.rhs[i], info);
					var isTitled = stmt.lhs[i].name == stmt.lhs[i].name.toUpperCase();
					var name = nameIdent(stmt.lhs[i].name, info);
					var newName = name;
					var tempName = isTitled ? untitle(name) : title(name);
					for (type in info.types) {
						if (type.name == tempName) {
							newName = "_" + newName;
							name = !isTitled ? untitle(name) : title(name);
							break;
						}
					}
					info.types.push({name: name, rename: newName, index: info.layerIndex});
					name = newName;
					vars.push({
						name: name,
						type: null,
						expr: expr,
					});
				}
				return EVars(vars);
			} else if (stmt.lhs.length > stmt.rhs.length && stmt.rhs.length == 1) {
				// variable destructure system
				var exprs:Array<Expr> = [];
				for (lhs in stmt.lhs) {
					exprs.push(toExpr(EConst(CString(lhs.name))));
				}
				for (rhs in stmt.rhs) {
					exprs.push(typeExpr(rhs, info));
				}
				return (macro Go.destruct($a{exprs})).expr;
			} else {
				error("unknown type assign define type: " + stmt);
				return null;
			}
		default:
			error("type assign tok not found: " + stmt.tok);
			return null;
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
		if (info.deferBool.exists(info.funcIndex)) {
			return EBlock([typeDeferReturn(info, false), toExpr(e),]);
		}
		return e;
	}
	// blank return
	if (stmt.results.length == 0) {
		if (info.retValues.length > 0) {
			if (info.retValues[0].length == 1)
				return ret(EReturn(toExpr(EConst(CIdent(info.retValues[0][0].name)))));
			if (info.retValues.length > 1) {
				var expr = toExpr(EObjectDecl([
					for (value in info.retValues[0])
						{
							field: value.name,
							expr: toExpr(EConst(CIdent(value.name))),
						}
				]));
				return ret(EReturn(expr));
			}
		}
		if (info.ret[0] != null)
			return ret(EReturn(defaultValue(info.ret[0], null, 0, false)));
		return ret(EReturn());
	}
	if (stmt.results.length == 1) {
		// could be a function lit and therefore change it out
		var e = typeExpr(stmt.results[0], info);
		/*switch e.expr {
			case EFunction(kind, f):
				e = macro {$e;};
			default:
		}*/
		return ret(EReturn(e));
	}
	// multireturn
	switch info.ret[0] {
		case TAnonymous(fields):
			var expr = toExpr(EObjectDecl([
				for (i in 0...fields.length)
					{
						field: fields[i].name,
						expr: typeExpr(stmt.results[i], info),
					}
			]));
			return ret(EReturn(expr));
		default:
			trace("unknown multi return type: " + info.ret[0] + " results: " + stmt.results);
	}
	return ret(EReturn());
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
		default:
			error("Type expr unknown: " + expr.id);
			null;
	}
	if (type == null)
		error("Type expr is null: " + expr.id);
	return type;
}

// TYPE EXPR
private function mapType(expr:Ast.MapType, info:Info):ComplexType {
	var keyType = typeExprType(expr.key, info);
	var valueType = typeExprType(expr.value, info);
	if (keyType == null || valueType == null)
		return null;
	addImport("stdgo.GoMap", info);
	return TPath({
		name: "GoMap",
		pack: [],
		params: [TPType(keyType), TPType(valueType)],
	});
}

private function chanType(expr:Ast.ChanType, info:Info):ComplexType {
	var type = typeExprType(expr.value, info);
	addImport("stdgo.Chan", info);
	return TPath({
		name: "Chan",
		pack: [],
		params: [TPType(type)],
	});
}

private function interfaceType(expr:Ast.InterfaceType, info:Info):ComplexType {
	if (expr.methods.list.length == 0) {
		// dynamic
		return TPath({
			name: "AnyInterface",
			pack: [],
		});
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
	var ret = typeFieldListRes(expr.results, info, false);
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
		addImport("stdgo.GoArray", info);
		info.hasType = true;
		var len = typeExpr(expr.len, info);
		info.hasType = false;
		info.lengths.unshift(len);
		return TPath({
			pack: [],
			name: "GoArray",
			params: type != null ? [TPType(type)] : [],
		});
	}
	// slice
	addImport("stdgo.Slice", info);
	return TPath({
		pack: [],
		name: "Slice",
		params: type != null ? [TPType(type)] : []
	});
}

private function addPointerImports(info:Info) {
	addImport("stdgo.Pointer", info);
	addImport("stdgo.Pointer.PointerWrapper", info);
}

private function starType(expr:Ast.StarExpr, info:Info):ComplexType { // pointer type
	var type = typeExprType(expr.x, info);
	var basicBool = isBasic(type, info);
	addPointerImports(info);
	if (basicBool) {
		addPointerImports(info);
		return TPath({
			pack: [],
			name: "Pointer",
			params: type != null ? [TPType(type)] : [],
		});
	}
	switch type {
		case TPath(p):
			switch p.name {
				case "GoString", "String", "Bool", "GoInt", "GoFloat", "GoUInt", "GoRune", "GoByte", "GoInt8", "GoInt16", "GoInt32", "GoInt64", "GoUIn8",
					"GoUInt16", "GoUInt32", "GoUInt64", "GoComplex", "GoComplex64", "GoComplex128":
					return TPath({
						pack: [],
						name: "Pointer",
						params: type != null ? [TPType(type)] : [],
					});
				case "Pointer", "PointerWrapper":
					return TPath({
						pack: [],
						name: "Pointer",
						params: type != null ? [TPType(type)] : [],
					});
				case "Slice", "GoMap", "GoArray":
					return type;
			}
		default:
	}
	return TPath({
		pack: [],
		name: "PointerWrapper",
		params: type != null ? [TPType(type)] : [],
	});
}

private function isBasic(type:ComplexType, info:Info):Bool {
	var basicBool:Bool = true;
	switch type {
		case TPath(p):
			if (p.pack.length > 0) {
				switch p.name {
					case "GoInt", "GoUInt":
					case "GoInt8", "GoInt16", "GoInt32", "GoInt64", "GoUInt8", "GoUInt16", "GoUInt32", "GoUInt64":
					case "GoFloat", "GoFloat32", "GoFloat64", "GoComplex64", "GoComplex128":
					case "Bool", "GoString":
					default:
						basicBool = false;
				}
				if (basicBool) // lowest underlying type already found
					return true;
				// look for type alias
				for (def in info.data.defs) {
					if (p.name != def.name)
						continue;
					switch def.kind {
						case TDAlias(t):
							return isBasic(t, info);
						case TDStructure:
							return false;
						default:
					}
				}
				return false;
			} else {
				return false;
			}
		default:
	}
	return false;
}

private function addImport(path:String, info:Info, alias:String = "") {
	if (!info.imports.exists(path))
		info.imports[path] = alias;
}

private function identType(expr:Ast.Ident, info:Info):ComplexType {
	var name = expr.name;
	if (name == "String") {
		addImport("stdgo.GoString", info);
		name = "GoString";
	}
	for (t in basicTypes) {
		if (name == t) {
			name = "Go" + title(name);
			break;
		}
	}
	if (name.substr(2, 4) == "Uint") {
		name = "GoUInt" + name.substr(6);
	}
	name = className(title(name));
	// name = title(name);
	for (retype in info.retypeList) {
		if (retype.name != name /*|| retype.index <= info.layerIndex*/)
			continue;
		return retype.type;
	}
	return TPath({
		pack: [],
		name: name,
	});
}

private function selectorType(expr:Ast.SelectorExpr, info:Info):ComplexType {
	function func(x:Ast.Expr):Array<String> {
		switch x.id {
			case "Ident":
				var name = nameIdent(x.name, info);
				return [name];
			case "SelectorExpr":
				var x:Ast.SelectorExpr = x;
				var name = nameIdent(x.sel.name, info);
				return [name].concat(func(x.x));
			default:
				trace("unknown x id: " + x.id);
				return [];
		}
	}
	return TPath({
		name: expr.sel.name,
		pack: func(expr.x),
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
	if (info.print)
		trace("id: " + expr.id);
	var def = switch expr.id {
		case "Ident": typeIdent(expr, info);
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
		// case "KeyValueExpr": typeKeyValueExpr(expr,info);
		case "MapType": typeMapType(expr, info);
		case "BadExpr":
			error("BAD EXPRESSION TYPED");
			null;
		case "InterfaceType": typeInterfaceType(expr, info);
		default:
			trace("unknown expr id: " + expr.id);
			null;
	};
	return def == null ? {error("expr null: " + expr.id); null;} : toExpr(def);
}

// EXPR
private function typeInterfaceType(expr:Ast.InterfaceType, info:Info):ExprDef {
	return (macro {}).expr;
}

private function typeMapType(expr:Ast.MapType, info:Info):ExprDef {
	return null;
}

private function typeKeyValueData(expr:Ast.KeyValueExpr, info:Info):{key:String, value:Expr, kind:String} {
	var value = typeExpr(expr.value, info);
	var type = expr.key.id == "Ident" ? "" : expr.key.kind;
	return {key: type == "" ? expr.key.name : expr.key.value, value: value, kind: type};
}

private function typeEllipsis(expr:Ast.Ellipsis, info:Info):ExprDef {
	var expr = typeExpr(expr.elt, info);
	var rest = typeRest(expr);
	return rest != null ? rest.expr : null;
}

private function iotaExpr(info:Info):Expr {
	return toExpr(ECheckType(toExpr(EConst(CInt(Std.string(info.iota++)))), TPath({name: "IntegerType", pack: []})));
}

private function typeIdent(expr:Ast.Ident, info:Info):ExprDef {
	if (expr.name == "iota") {
		return iotaExpr(info).expr;
	}
	var name = nameIdent(expr.name, info);
	return EConst(CIdent(name));
}

private function typeCallExpr(expr:Ast.CallExpr, info:Info):ExprDef {
	var args:Array<Expr> = [];
	var ellipsisFunc = null;
	function genArgs() {
		args = [for (arg in expr.args) typeExpr(arg, info)];
	}
	ellipsisFunc = function() {
		if (!expr.ellipsis.noPos) {
			var last = args.pop();
			if (last == null)
				return;
			switch last.expr {
				case EConst(c):
					switch c {
						case CString(s, kind):
							last = macro(($last) : Slice<GoString>);
						default:
					}
				default:
			}
			last = typeRest(last);
			args.push(last);
		}
	}
	switch expr.fun.id {
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
				case "panic":
					genArgs();
					ellipsisFunc();
					return (macro throw ${args[0]}).expr;
				case "recover":
					info.recover[info.funcIndex - 1] = true;
					return (macro Go.recover()).expr;
				case "append":
					genArgs();
					ellipsisFunc();
					var e = args.shift();
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
					return (macro e.real).expr;
				case "imag":
					var e = typeExpr(expr.args[0], info);
					return (macro e.imag).expr;
				case "close":
					var e = typeExpr(expr.args[0], info);
					return (macro $e.close()).expr;
				case "cap":
					var e = typeExpr(expr.args[0], info);
					return (macro $e.cap()).expr;
				case "len":
					var e = typeExpr(expr.args[0], info);
					return (macro $e.length).expr;
				case "new": // create default value put into pointer
					var t = typeExprType(expr.args[0], info);
					addPointerImports(info);
					switch t {
						case TPath(p):
							return (macro Go.pointer(${defaultValue(t,info)})).expr; // TODO does not work for non constructed types, such as basic types
						default:
					}
				case "make":
					var type = expr.args.shift();
					genArgs();
					var t = typeExprType(type, info);
					args.unshift(macro(_ : $t)); // ECheckType
					return (macro Go.make($a{args})).expr;
				default:
					if (expr.args.length == 1) {
						var isType = basicTypes.indexOf(expr.fun.name) != -1;
						if (!isType) {
							for (typeName in info.typeNames) {
								if (typeName == className(title(expr.fun.name))) {
									isType = true;
									break;
								}
							}
						}
						if (isType) {
							var arg = typeExpr(expr.args[0], info);
							var type = typeExprType(expr.fun, info);
							return (macro($arg : $type)).expr;
						}
					}
			}
		case "ParenExpr":
			// type set
			var e:Ast.ParenExpr = expr.fun;
			if (e.x.id != "FuncLit") {
				var t = typeExprType(e.x, info);
				switch t {
					case TPath(p):
						if (p.name == "Pointer" || p.name == "PointerWrapper") {
							switch p.params[0] {
								case TPType(t2):
									var value = defaultValue(t2, null);
									return (macro Go.pointer($value)).expr;
								default:
							}
						}
						return (macro ${defaultValue(t,null,true)}).expr;
					default:
						// trace("unknown type paren expr");
						var expr = typeExpr(expr.args[0], info);
						switch expr.expr {
							case EConst(c):
								switch c {
									case CIdent(s):
										if (s == "null") {
											var e = defaultValue(t, null, true);
											return e.expr;
										}
									default:
								}
							default:
						}
						return (macro($expr : $t)).expr;
				}
			}
		case "MapType":
			// set assert type
			var type = typeExprType(expr.fun, info);
			var expr = typeExpr(expr.args[0], info);
			switch expr.expr {
				case EConst(c):
					switch c {
						case CIdent(s):
							if (s == "null") {
								var e = defaultValue(type, null, true);
								return e.expr;
							}
						default:
					}
				default:
			}
			return (macro($expr : $type)).expr;
		case "ArrayType":
			// set assert type
			var type = typeExprType(expr.fun, info);
			var expr = typeExpr(expr.args[0], info);
			switch expr.expr {
				case EConst(c):
					switch c {
						case CIdent(s):
							if (s == "null") {
								var e = defaultValue(type, null, true);
								return e.expr;
							}
						default:
					}
				default:
			}
			return (macro($expr : $type)).expr;
		case "InterfaceType":
			// set dynamic
			genArgs();
			return args[0].expr;
	}
	if (args.length == 0)
		genArgs();
	ellipsisFunc();
	var e = typeExpr(expr.fun, info);
	return ECall(e, args);
}

private function typeRest(expr:Expr):Expr {
	return macro...$expr.toArray();
}

private function typeBasicLit(expr:Ast.BasicLit, info:Info):ExprDef {
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
	return switch expr.kind {
		case STRING:
			addImport("stdgo.GoString", info);
			var e = toExpr(EConst(CString(expr.value)));
			if (info.hasType)
				return e.expr;
			return (macro($e : GoString)).expr;
		case INT:
			if (expr.value.length > 10) {
				try {
					var i = haxe.Int64Helper.parseString(expr.value);
					if (i > 2147483647 || i < -2147483647) {
						return EConst(CString(expr.value));
					}
				} catch (e) {
					trace("basic lit int error: " + e + " value: " + expr.value);
				}
			}
			var e = toExpr(EConst(CInt(expr.value)));
			if (info.hasType)
				return e.expr;
			ECheckType(e, TPath({name: "IntegerType", pack: []}));
		case FLOAT:
			EConst(CFloat(expr.value));
		case CHAR:
			var value = formatEscapeCodes(expr.value);
			if (value == bs + "'") {
				value = "'";
			}
			var const = toExpr(EConst(CString(value)));
			if (value == "\\") {
				return (macro $const.charCodeAt(0)).expr;
			}
			ECheckType(toExpr(EField(const, "code")), TPath({name: "GoRune", pack: []}));
		case IDENT:
			EConst(CIdent(nameIdent(expr.value, info)));
		case IMAG: // TODO: IMPLEMENT COMPLEX NUMBER
			return (macro new GoComplex128(0, ${toExpr(EConst(CFloat(expr.value)))})).expr;
		default:
			error("basic lit kind unknown: " + expr.kind);
			null;
	}
}

private function typeUnaryExpr(expr:Ast.UnaryExpr, info:Info):ExprDef {
	var x = typeExpr(expr.x, info);
	if (expr.op == AND) {
		// pointer access
		addPointerImports(info);
		return (macro Go.pointer($x)).expr;
	} else {
		var type = typeUnOp(expr.op);
		if (type == null)
			return switch expr.op {
				case XOR: EBinop(OpXor, macro - 1, x);
				case ARROW: return (macro $x.get()).expr;
				default: x.expr;
			}
		return EUnop(type, false, x);
	}
}

private function typeCompositeLit(expr:Ast.CompositeLit, info:Info):ExprDef {
	info.hasType = false;
	var params:Array<Expr> = [];
	var p:TypePath = null;
	var type:ComplexType = null;
	function getParams() {
		for (elt in expr.elts) {
			params.push(typeExpr(elt, info));
		}
	}
	if (expr.type == null) {
		if (isKeyValueExpr(expr.elts)) {
			var exprs = getKeyValueExpr(expr.elts, info);
			return (macro Go.setKeys($a{exprs})).expr;
		}
		getParams();
		return (macro Go.set($a{params})).expr;
	} else {
		type = typeExprType(expr.type, info);
		switch type {
			case TPath(tp):
				p = tp;
				if (p.name == "GoMap" && p.params != null && p.params.length == 2) {
					switch p.params[1] {
						case TPType(t):
							params.push(defaultValue(t, null, false));
							var e = getKeyValueExpr(expr.elts, info);
							params = params.concat(e);
							return (macro new $p($a{params})).expr;
						default:
					}
				}
				if (p.name == "Dynamic" && p.pack.length == 0)
					return (macro {}).expr;
			case TAnonymous(fields):
				if (isKeyValueExpr(expr.elts)) {
					return getKeyValueExpr(expr.elts, info)[0].expr;
				} else {
					getParams();
					return stdgo.Go.createAnonType(null, fields, params).expr;
				}
			default:
				throw "unknown type expr type: " + type;
		}
	}

	if (isKeyValueExpr(expr.elts)) {
		var e = getKeyValueExpr(expr.elts, info);
		if (e.length > 0)
			return (macro new $p($a{e})).expr;
		return (macro(${e[0]} : $type)).expr;
	}
	getParams();
	if (p == null)
		throw "type path new is null: " + expr;
	return (macro new $p($a{params})).expr;
}

private function isKeyValueExpr(elts:Array<Ast.Expr>) {
	return elts.length > 0 && elts[0].id == "KeyValueExpr";
}

private function getKeyValueExpr(elts:Array<Ast.Expr>, info:Info):Array<Expr> {
	var fields:Array<ObjectField> = [];
	var exprs:Array<Expr> = [];
	for (elt in elts) {
		var e = typeKeyValueData(elt, info);
		if (e.key == null)
			continue;
		if (e.kind == "") {
			fields.push({
				field: (e.key.charAt(0) == "_" || e.key.charAt(0) == e.key.charAt(0).toLowerCase() ? "_" : "") + nameIdent(e.key, info),
				expr: e.value,
			});
		} else {
			var key:Expr = null;
			switch e.kind {
				case "INT":
					key = toExpr(EConst(CInt(e.key)));
				case "FLOAT":
					key = toExpr(EConst(CFloat(e.key)));
				case "STRING":
					key = toExpr(EConst(CString(e.key)));
				default:
					throw "unknown key kind: " + e.kind;
			}
			exprs.push(macro {
				key: $key,
				value: ${e.value},
			});
		}
	}
	if (exprs.length > 0)
		return exprs;
	return [toExpr(EObjectDecl(fields))];
}

private function typeFuncLit(expr:Ast.FuncLit, info:Info):ExprDef {
	var ret = typeFieldListRes(expr.type.results, info, true);
	info.ret.unshift(ret);
	var args = typeFieldListArgs(expr.type.params, info);
	var block = typeBlockStmt(expr.body, info, true, true);
	// allows multiple nested values
	info.retValues = info.retValues.slice(1);
	info.ret = info.ret.slice(1); // has been used now remove it
	info.deferBool.remove(info.funcIndex + 1);
	info.recover.remove(info.funcIndex + 1);
	return EFunction(FAnonymous, {
		ret: null, // ret,
		args: args,
		expr: block != null ? toExpr(block) : null,
	});
}

private function typeBinaryExpr(expr:Ast.BinaryExpr, info:Info):ExprDef {
	var x = typeExpr(expr.x, info);
	var y = typeExpr(expr.y, info);
	switch expr.op { // operators that don't exist in haxe needle to be handled here
		case AND_NOT: // refrenced from Simon's Tardisgo
			return (macro $x & ($y ^ (-1 : IntegerType))).expr;
		default:
	}
	var op = typeOp(expr.op);
	function isNil() {
		switch x.expr {
			case EConst(c):
				switch c {
					case CIdent(s):
						if (s == "null") return y;
					default:
				}
			default:
		}
		switch y.expr {
			case EConst(c):
				switch c {
					case CIdent(s):
						if (s == "null") return x;
					default:
				}
			default:
		}
		return null;
	}
	switch op {
		case OpXor:
			return EBinop(op, x, y);
		case OpEq:
			var value = isNil();
			if (value != null)
				return (macro Go.isNull($value)).expr;
			return (macro Go.equals($x, $y)).expr;
		case OpNotEq:
			var value = isNil();
			if (value != null)
				return (macro !Go.isNull($value)).expr;
			return (macro !Go.equals($x, $y)).expr;
		default:
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
			error("unknown unop token: " + token);
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
			error("unknown op token: " + token);
			OpInterval;
	}
}

private function typeSelectorExpr(expr:Ast.SelectorExpr, info:Info):ExprDef { // EField
	var x = typeExpr(expr.x, info);
	var sel = expr.sel.name;
	switch x.expr {
		case EField(e, field):
			if (field.charAt(0) == field.charAt(0).toUpperCase() && field.charAt(0) != "_") {
				sel = nameIdent(sel, info);
			} else {
				sel = (sel.charAt(0) == sel.charAt(0).toLowerCase() ? "_" : "") + nameIdent(sel, info);
			}
		case EConst(c):
			switch c {
				case CIdent(s):
					var index = s.lastIndexOf(".");
					var field = s.substr(index + 1);
					if (field.charAt(0) == field.charAt(0).toUpperCase() && field.charAt(0) != "_") {
						sel = nameIdent(sel, info);
					} else {
						sel = (sel.charAt(0) == sel.charAt(0).toLowerCase() ? "_" : "") + nameIdent(sel, info);
					}
				default:
			}
		default:
			sel = (sel.charAt(0) == sel.charAt(0).toLowerCase() ? "_" : "") + nameIdent(sel, info);
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
						var e = defaultValue(type, null, true);
						return e.expr;
					}
				default:
			}
		default:
	}
	return (macro($e : $type)).expr;
}

private function typeIndexExpr(expr:Ast.IndexExpr, info:Info):ExprDef {
	var x = typeExpr(expr.x, info);
	var index = typeExpr(expr.index, info);
	return (macro $x[$index]).expr;
}

private function typeStarExpr(expr:Ast.StarExpr, info:Info):ExprDef {
	var x = typeExpr(expr.x, info);
	if (info.thisName != "") {
		switch x.expr {
			case EConst(c):
				switch c {
					case CIdent(s):
						if (s == info.thisName) return x.expr;
					default:
				}
			default:
		}
	}
	return (macro $x._value_).expr; // pointer code
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

private function typeFunction(decl:Ast.FuncDecl, info:Info):TypeDefinition {
	var list = [];
	for (retype in info.retypeList) {
		if (retype.index != 0)
			continue;
		list.push(retype);
	}
	info.retypeList = list;
	var list = [];
	for (type in info.types) {
		if (type.index != 0)
			continue;
		list.push(type);
	}
	info.types = list;
	// info.retypeMap.clear(); //clear renaming as it's a new function
	// layer index is 0 for initlization of module function, the body will be 1
	info.local = false;
	info.recover.clear();
	info.deferBool.clear();
	info.hasDefer = false;
	info.layerIndex = 0;
	info.funcIndex = 0;

	var name = nameIdent(decl.name.name, info);
	info.funcName = name;
	info.retValues = [];
	var ret = typeFieldListRes(decl.type.results, info, true);
	info.ret = [ret];
	var args = typeFieldListArgs(decl.type.params, info);
	info.thisName = "";
	var block:Expr = toExpr(typeBlockStmt(decl.body, info, true, true));
	var meta:Metadata = null;
	if (decl.recv != null) { // now is a static extension function
		if (decl.name.name.charAt(0) == decl.name.name.charAt(0).toLowerCase())
			name = "_" + name;
		var recvType = typeExprType(decl.recv.list[0].type, info);
		var recvInfo = getRecvInfo(recvType);
		for (def in info.data.defs) {
			switch def.kind {
				case TDClass(superClass, interfaces, isInterface, isFinal, isAbstract):
					if (def.name != recvInfo.name)
						continue;
					if (decl.recv.list[0].names.length > 0) {
						var varName = decl.recv.list[0].names[0].name;
						info.thisName = varName;
						block = toExpr(typeBlockStmt(decl.body, info, true, true)); // rerun so thisName system can be used
						switch block.expr {
							case EBlock(exprs):
								if (recvInfo.isPointer) {
									exprs.unshift(macro var $varName = this);
								} else {
									exprs.unshift(macro var $varName = this.__copy__());
								}
								block.expr = EBlock(exprs);
							default:
						}
					}
					// push field function to class
					def.fields.push({
						name: name,
						pos: null,
						meta: null,
						access: decl.recv != null ? [APublic] : typeAccess(decl.name.name),
						kind: FFun({
							args: args,
							ret: ret,
							expr: block,
						})
					});
					return null;
				case TDAlias(t):
					switch recvType {
						case TPath(p):
							if (p.name == def.name) {
								var extensionClass:TypeDefinition = null;
								var extensionClassName = "_" + p.name + "_" + "_extension";
								if (!info.aliasStaticExtensionMap.exists(p.name)) {
									if (def.meta == null)
										def.meta = [];
									def.meta.push({
										name: ":using",
										params: [toExpr(EField(toExpr(EConst(CIdent(info.data.name))), extensionClassName))],
										pos: null
									});
									extensionClass = {
										name: extensionClassName,
										pos: null,
										pack: [],
										fields: [],
										meta: [],
										kind: TDClass(),
									};
									info.data.defs.push(extensionClass);
								} else {
									for (def in info.data.defs) {
										switch def.kind {
											case TDClass(superClass, interfaces, isInterface, isFinal, isAbstract):
												if (def.name == extensionClassName) {
													extensionClass = def;
													break;
												}
											default:
										}
									}
								}
								if (decl.recv.list[0].names.length > 0) {
									var varName = decl.recv.list[0].names[0].name;
									args.unshift({
										name: varName,
										type: recvType,
									});
									switch block.expr {
										case EBlock(exprs):
											if (recvInfo.isPointer) {
												exprs.unshift(macro var $varName = new PointerWrapper($i{varName}));
											}
											block.expr = EBlock(exprs);
										default:
									}
								} else {
									args.unshift({ // to enable the static extension
										name: "___using",
										type: recvType,
									});
								}
								// add the function
								extensionClass.fields.push({
									name: name,
									pos: null,
									meta: null,
									access: [APublic, AStatic],
									kind: FFun({
										args: args,
										ret: ret,
										expr: block,
									})
								});
								return null;
							}
						default:
					}
				default:
			}
		}
	}
	var doc = getDoc(decl) + getSource(decl, info);
	return {
		name: name,
		pos: null,
		pack: [],
		fields: [],
		doc: doc,
		meta: meta,
		kind: TDField(FFun({
			ret: ret,
			params: null,
			expr: block,
			args: args
		}), typeAccess(decl.name.name))
	};
}

private function getRetValues(info:Info) {
	return toExpr(EVars([
		for (value in info.retValues[0])
			{
				name: value.name,
				type: value.type,
				expr: defaultValue(value.type, info, 0, false),
			}
	]));
}

private function defaultValue(type:ComplexType, info:Info, index:Int = 0, strict:Bool = true):Expr {
	switch type {
		case TPath(p):
			if (p.name == "GoArray") { // goarray generation
				for (param in p.params) {
					switch param {
						case TPType(t):
							var df = defaultValue(t, info, index + 1, false);
							var j = index;
							var len = macro(${info.lengths[j]} : GoInt);
							return macro new $p(...[for (i in 0...$len.toBasic()) $df]);
						default:
					}
				}
			}
		default:
	}
	return stdgo.Go.defaultValue(type, null, strict);
}

private function getRecvInfo(recvType:ComplexType):{name:String, isPointer:Bool} {
	switch recvType {
		case TPath(p):
			if (p.name == "Pointer" || p.name == "PointerWrapper") {
				switch p.params[0] {
					case TPType(t):
						switch t {
							case TPath(p):
								return {name: p.name, isPointer: true};
							default:
						}
					default:
				}
			}
			return {name: p.name, isPointer: false};
		default:
	}
	return {name: "", isPointer: false};
}

private function typeFieldListRes(fieldList:Ast.FieldList, info:Info, retValuesBool:Bool):ComplexType { // A single type or Anonymous struct type
	if (fieldList == null)
		return TPath({
			name: "Void",
			pack: [],
		});
	var list:Array<{name:String, type:ComplexType}> = [];
	var r:Array<{name:String, type:ComplexType}> = [];
	var i:Int = 0;
	for (group in fieldList.list) {
		var type = typeExprType(group.type, info);
		if (type == null)
			continue;
		if (group.names.length == 0) {
			list.push({
				name: "v" + (i++),
				type: type,
			});
		} else {
			for (name in group.names) {
				list.push({
					name: nameIdent(name.name, info),
					type: type,
				});
				r.push({name: name.name, type: type});
			}
		}
	}
	if (retValuesBool && r.length > 0)
		info.retValues.unshift(r);
	if (list.length > 1) {
		// anonymous
		return TAnonymous([
			for (field in list)
				{
					name: field.name,
					pos: null,
					kind: FVar(field.type)
				}
		]);
	} else {
		if (list.length == 0)
			return TPath({
				name: "Void",
				pack: [],
			});
		return list[0].type;
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
				name: nameIdent(name.name, info),
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
		/*for (name in field.names) {
			args.push(TNamed(name.name, type));
		}*/
		args.push(type);
	}
	return args;
}

private function typeFieldListMethods(list:Ast.FieldList, info:Info, underlineBool:Bool):Array<Field> {
	var fields:Array<Field> = [];
	for (field in list.list) {
		var expr:Ast.FuncType = field.type;

		var ret = typeFieldListRes(expr.results, info, false);
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
				name: nameIdent(name, info),
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
private function typeFieldListFields(list:Ast.FieldList, info:Info, access:Array<Access> = null, defaultBool:Bool, underlineBool:Bool):Array<Field> {
	var fields:Array<Field> = [];
	for (field in list.list) {
		var type = typeExprType(field.type, info);
		if (field.names.length == 0) {
			switch type {
				case TPath(p):
					var name:String = field.type.id == "SelectorExpr" ? field.type.sel.name : field.type.name;
					if (name == null)
						continue;
					if (underlineBool) {
						if (name.charAt(0) == name.charAt(0).toLowerCase())
							name = "_" + name;
					}
					fields.push({
						name: nameIdent(name, info),
						pos: null,
						access: access == null ? typeAccess(name, true) : access,
						kind: FVar(type, defaultBool ? defaultValue(type, info, 0, false) : null)
					});
				default:
			}
		}

		for (n in field.names) {
			var name = n.name;
			if (underlineBool) {
				if (name.charAt(0) == name.charAt(0).toLowerCase())
					name = "_" + name;
			}
			fields.push({
				name: nameIdent(name, info),
				pos: null,
				access: access == null ? typeAccess(n.name, true) : access,
				kind: FVar(type, defaultBool ? defaultValue(type, info, 0, false) : null),
			});
		}
	}
	return fields;
}

private function typeFieldListTypes(list:Ast.FieldList, info:Info):Array<TypeDefinition> {
	var defs:Array<TypeDefinition> = [];
	for (field in list.list) {
		var type = typeExprType(field.type, info);
		for (name in field.names) {
			defs.push({
				name: nameIdent(name.name, info),
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

private function typeType(spec:Ast.TypeSpec, info:Info):TypeDefinition {
	var name = className(title(spec.name.name));
	info.className = name;
	if (info.local) {
		var newName = renameDef(name, info);
		name = newName;
	}
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
					expr: macro {
						stdgo.internal.Macro.initLocals();
						_address_ = ++Go.addressIndex;
					},
				}),
			});
			var toStringValue = "{";
			for (field in fields) {
				switch field.kind {
					case FVar(t, e):
						toStringValue += "${Std.string(" + field.name + ")} ";
					default:
				}
			}
			toStringValue = toStringValue.substr(0, toStringValue.length - 1);
			toStringValue += "}";
			var toStringExpr = toExpr(EConst(CString(toStringValue, SingleQuotes)));
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
			fields.push({
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
			fields.push({
				name: "_is_pointer_",
				pos: null,
				access: [APublic],
				kind: FVar(null, macro false),
			});
			fields.push({
				name: "_typeName_",
				pos: null,
				access: [APublic, AFinal],
				kind: FVar(null, toExpr(EConst(CString(spec.name.name)))),
			});
			fields.push({
				name: "_address_",
				pos: null,
				access: [APublic],
				kind: FVar(null, macro 0),
			});
			var meta:Metadata = [{name: ":structInit", pos: null}, getAllow(info)];

			return {
				name: name,
				pos: null,
				fields: fields,
				pack: [],
				doc: doc,
				meta: meta,
				kind: TDClass(null, [{name: "StructType", pack: []}], false, true, false),
			}
		case "InterfaceType":
			// var interface:Ast.InterfaceType = spec.type;
			var struct:Ast.InterfaceType = spec.type;
			if (struct.methods.list.length == 0)
				return {
					name: name,
					pos: null,
					fields: [],
					pack: [],
					meta: [],
					kind: TDAlias(TPath({name: "AnyInterface", pack: []})),
				}
			var fields = typeFieldListMethods(struct.methods, info, true);
			return {
				name: name,
				pack: [],
				pos: null,
				doc: doc,
				fields: fields,
				meta: [getAllow(info)],
				kind: TDClass(null, [], true)
			};
		// error("unknown interface type spec"); null;
		default:
			var type = typeExprType(spec.type, info);
			if (type == null)
				return null;
			return {
				name: name,
				pack: [],
				pos: null,
				doc: doc,
				fields: [],
				meta: [],
				kind: TDAlias(type)
			}
	}
}

private function getAllow(info:Info) {
	return {name: ":allow", params: [toExpr(EConst(CIdent(info.path)))], pos: null};
}

private function typeImport(imp:Ast.ImportSpec, info:Info):ImportType {
	var path = normalizePath(imp.path.value).split("/");
	var alias = imp.name == null ? null : imp.name.name;
	if (alias == "_")
		alias = "";
	if (stdgoList.indexOf(path[0]) != -1)
		path.unshift("stdgo");
	var name = path[path.length - 1];
	path.push(title(name));
	info.types.push({name: name, rename: path.join("."), index: 0});
	return {
		path: path,
		alias: alias,
	}
}

private function typeValue(value:Ast.ValueSpec, info:Info):Array<TypeDefinition> {
	var type:ComplexType = null;
	info.hasType = false;
	info.lengths = [];
	if (value.type.id != null) {
		type = typeExprType(value.type, info);
		info.hasType = true;
	}
	var values:Array<TypeDefinition> = [];
	for (i in 0...value.names.length) {
		if (value.names[i] == "_")
			continue;
		var expr:Expr = null;
		if (value.values[i] == null) {
			if (type != null) {
				expr = defaultValue(type, info, 0, false);
			} else {
				// IOTA
				expr = iotaExpr(info); // toExpr(EConst(CInt(Std.string(info.iota++))));
			}
		} else {
			expr = typeExpr(value.values[i], info);
		}
		if (expr == null)
			continue;
		var name = nameIdent(value.names[i], info);
		var doc:String = getComment(value) + getDoc(value) + getSource(value, info);
		var access = typeAccess(value.names[i]);
		if (value.constants[i])
			access.push(AFinal);
		values.push({
			name: name,
			pos: null,
			pack: [],
			fields: [],
			doc: doc,
			kind: TDField(FVar(type, expr), access)
		});
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
	if (value.pos == value.end)
		return "";
	var source:String = "";
	source = File.getContent(info.data.location);
	source = source.substring(value.pos, value.end);
	// sanatize comments
	if (source != "") {
		source = StringTools.replace(source, "/*", "/|*");
		source = StringTools.replace(source, "*/", "*|/");
	}
	return source;
}

private function typeAccess(name:String, isField:Bool = false):Array<Access> {
	return isTitle(name) ? (isField ? [APublic] : []) : [APrivate];
}

private function nameIdent(name:String, info:Info):String {
	if (name == "nil")
		return "null";
	if (info.imports.exists(name))
		return info.imports[name];
	for (type in info.types) {
		// if (info.layerIndex < type.index || type.name == type.rename)
		//    continue;
		if (name == type.name) {
			name = type.rename;
			break;
		}
	}
	name = untitle(name);
	if (reserved.indexOf(name) != -1)
		name += "_";
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
	return string.charAt(0) == string.charAt(0).toUpperCase();
}

function title(string:String):String {
	return string.charAt(0).toUpperCase() + string.substr(1);
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

typedef Info = {
	recover:Map<Int, Bool>,
	hasType:Bool,
	lengths:Array<Expr>,
	iota:Int,
	aliasStaticExtensionMap:Map<String, Bool>,
	funcIndex:Int,
	layerIndex:Int,
	typeNames:Array<String>,
	thisName:String,
	retValues:Array<Array<{name:String, type:ComplexType}>>,
	deferBool:Map<Int, Bool>,
	hasDefer:Bool,
	className:String,
	funcName:String,
	path:String,
	types:Array<{name:String, rename:String, index:Int}>,
	imports:Map<String, String>,
	ret:Array<ComplexType>,
	data:FileType,
	local:Bool,
	retypeList:Array<{name:String, index:Int, type:ComplexType}>,
	print:Bool
};

typedef DataType = {args:Array<String>, pkgs:Array<PackageType>};
typedef PackageType = {path:String, name:String, files:Array<{path:String, location:String, decls:Array<Dynamic>}>}; // filepath of export.json also stored here
typedef Module = {path:String, files:Array<FileType>}
typedef ImportType = {path:Array<String>, alias:String}
typedef FileType = {name:String, imports:Array<ImportType>, defs:Array<TypeDefinition>, location:String}; // location is the global path to the file
