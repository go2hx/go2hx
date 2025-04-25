package typer;

// @:formatter off
import haxe.DynamicAccess; 
import haxe.io.Path; 
import haxe.macro.Expr; 
import shared.Util; 
import sys.io.File; 
import typer.GoAst.BasicKind;

// @:formatter on

function typeAST(data:GoAst.DataType, instance:Compiler.CompilerInstanceData):Array<HaxeAst.Module> {
	final noCommentsBool = instance.noComments;
	var list:Array<HaxeAst.Module> = [];
	final hashMap:Map<UInt, Dynamic> = [];
	for (obj in data.typeList)
		hashMap[obj.hash] = obj;
	// module system
	for (pkg in data.pkgs) {
		if (pkg.files == null)
			continue;
		list.push(Package.typePackage(pkg, instance, hashMap));
	}
	return list;
}

function createTempVars(vars:Array<Var>, short:Bool):Expr {
	final vars2:Array<Var> = [];
	if (vars.length <= 1)
		return {expr: EVars(vars), pos: null};
	final names:Map<String, String> = [];
	function createTempName(i:Int):String
		return "__" + i;
	for (i in 0...vars.length) {
		final tempName = createTempName(i);
		final name = vars[i].name;
		names[tempName] = name;
		vars2.unshift({
			name: name,
			// type: v.type,
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
	// return vars2;
} function replaceIdent(names:Map<String, String>, e:Expr):Expr {

	return switch e.expr {
		case EConst(CIdent(s)):
			if (names.exists(s)) {
				macro $i{names[s]};
			} else {
				e;
			}
		default:
			mapExprWithData(e, names, replaceIdent);
	}
} 
function createNamedObjectDecl(fields:Array<typer.exprtypes.ExprType.FieldType>, f:(field:String, type:GoType) -> Expr, info:Info):Expr {

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
} // This is for implicit conversion

// explicit conversion: assignTranslate
function checkType(e:Expr, ct:ComplexType, fromType:GoType, toType:GoType, info:Info):Expr {
	// trace(fromType, toType);
	if (e != null) {
		switch e.expr {
			case EBinop(_, _, _):
				e = macro($e);
			case EConst(c):
				switch c {
					case CIdent(i):
						if (i == "null") {
							var value = HaxeAst.defaultValue(toType, info);
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
		return HaxeAst.translateStruct(e, fromType, toType, info);
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
				e = macro(new stdgo.GoUIntptr($e) : $ct);
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


function translateEquals(x:Expr, y:Expr, typeX:GoType, typeY:GoType, op:Binop, info:Info):Expr {
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
						return macro({
							final value = $value;
							(value == null || (value : Dynamic).__nil__);
						});
					default:
						return macro({
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

function hasBreak(expr:Expr):Bool {

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
} function continueInsideSwitch(expr:Expr):Bool {

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
} function cforPostContinue(post:Expr, e:Expr):Expr {

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
} function castTranslate(obj:GoAst.Expr, e:Expr, info:Info):{expr:Expr, ok:Bool} {

	return switch obj.id {
		case "TypeAssertExpr":
			var obj:GoAst.TypeAssertExpr = obj;
			final t = typeof(obj.type, info, false);
			var value = HaxeAst.defaultValue(t, info);
			{
				ok: true,
				expr: macro try {
					{_0: $e, _1: true};
				} catch (_) {
					{_0: $value, _1: false};
				}
			};
		case "UnaryExpr":
			var obj:GoAst.UnaryExpr = obj;
			var x = typer.exprs.Expr.typeExpr(obj.x, info);
			{expr: macro $x.__smartGet__(), ok: true};
		case "IndexExpr":
			var obj:GoAst.IndexExpr = obj;
			var index = typer.exprs.Expr.typeExpr(obj.index, info);
			var x = typer.exprs.Expr.typeExpr(obj.x, info);
			final ut = getUnderlying(typeof(obj.x, info, false));
			switch ut {
				case mapType(_.get() => var keyType, _):
					// something strange is not working here try assign translate instead
					index = assignTranslate(typeof(obj.index, info, false), keyType, index, info);
				// index = checkType(index, toComplexType(keyType, info), typeof(obj.index, info, false), keyType, info);
				default:
			}
			final t = getUnderlying(typeof(obj, info, false));
			final value = switch t {
				case tuple(_, _.get() => vars):
					HaxeAst.defaultValue(vars[0], info);
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

function argsTranslate(args:Array<FunctionArg>, block:Expr, argsFields:GoAst.FieldList, info:Info, recvArg):Expr {

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
} function escapeCheckType(e:Expr):Expr {

	return switch e.expr {
		case ECheckType(e, _), EParenthesis(e):
			escapeCheckType(e);
		default:
			e;
	}
} function passByCopy(fromType:GoType, y:Expr, info:Info):Expr {

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
							return switch HaxeAst.escapeParens(x).expr {
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
} function isRestType(t:ComplexType):Bool {

	return switch t {
		case TPath(p): p.name == "Rest" && p.pack != null && p.pack.length == 1 && p.pack[0] == "haxe";
		default:
			false;
	}
} function isRestExpr(expr:Expr):Bool {

	if (expr == null)
		return false;
	return switch expr.expr {
		case EUnop(op, _, _):
			op == OpSpread;
		default:
			false;
	}
} function getReturnTupleType(type:GoType):Array<GoType> {

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
} function getReturnTupleNames(type:GoType):Array<String> {

	return switch type {
		case tuple(_, _.get() => vars):
			[
				for (i in 0...vars.length)
					"_" + i
			];
		default:
			throw "type is not a tuple: " + type;
	}
} function goTypesEqual(a:GoType, b:GoType, depth:Int) {

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
							if (fields[i].name != fields2[i].name
								|| !goTypesEqual(fields[i].type.get(), fields2[i].type.get(), depth + 1)) {
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
								if (!goTypesEqual(results[i], results[i], depth + 1)) {
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
						elem2, depth
						+ 1);
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
} // This is for explicit conversion

// implicit conversion: checkType
function assignTranslate(fromType:GoType, toType:GoType, expr:Expr, info:Info, passCopy:Bool = true):Expr {
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
						return HaxeAst.defaultValue(toType, info);
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
	// trace(fromType, toType);
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
			return HaxeAst.translateStruct(expr, fromType, toType, info);
	}
	// trace(toType);
	// trace(getUnderlying(getUnderlying(fromType)));
	// trace(fromType);
	// trace(isNamed(fromType), !isInterface(fromType), isInterface(toType), !isAnyInterface(toType));
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
					return macro({
						@:assignTranslate final __tmp__ = $y;
						$obj;
					});
				default:
			}
		default:
	}
	return y;
} function wrapperExpr(t:GoType, y:Expr, info:Info):Expr {

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


function nonAssignToken(tok:GoAst.Token):GoAst.Token {

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

function orderOperations(inits:Array<Expr>, exprs:Array<Expr>):Array<Expr> {

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
} function isSelfAssignValue(x:Expr, y:Expr):Bool {

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
} function removeStrParens(s:String):String {

	if (s.charAt(0) == "(")
		s = s.substr(1);
	if (s.charAt(s.length - 1) == ")")
		s = s.substr(0, s.length - 1);
	return s;
}

function resultsToReturnValue(results:Array<GoType>, info:Info):Expr {

	if (results.length == 0)
		return macro return;
	if (results.length == 1)
		return macro return ${HaxeAst.defaultValue(results[0], info)};
	// multireturn
	final expr = toExpr(EObjectDecl([
		for (i in 0...results.length) {
			{
				field: "_" + i,
				expr: HaxeAst.defaultValue(results[i], info),
			};
		}
	]));
	return expr;
} 

function exprToString(fromType:GoType, toType:GoType, expr:Expr, info:Info):Expr {

	switch toType {
		case basic(string_kind):
			switch fromType {
				case basic(float32_kind), basic(float64_kind), basic(untyped_float_kind):
					return macro Std.string($expr);
				case basic(uint32_kind), basic(uint_kind), basic(untyped_int_kind):
					return macro Std.string((($expr : UInt) : Float));
				case basic(uint64_kind):
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
// @:formatter off
function genSlice(p:TypePath, elem:GoType, size:Expr, cap:Expr, returnExpr:Expr->Expr, info:Info, sets:Array<Expr>):Expr {

	var param = toComplexType(elem, info);
	var value = HaxeAst.defaultValue(elem, info);
	if (value == null)
		value = macro stdgo.Go.expectedValue();
	if (size == null)
		return returnExpr(macro new $p(0, 0));

	function createArgs(len:Expr, cap:Expr, sets:Array<Expr>):Array<Expr> {
		if (sets == null)
			return [len, cap];
		return [len, cap, macro...$a{sets}];
	}
	switch getUnderlying(elem) {
		case structType(_), arrayType(_):
			if (sets == null) {
				sets = [
					macro for (i in 0...($size > $cap ? $size : $cap : stdgo.GoInt).toBasic()) $value
				];
			} else {
				return macro new $p($size, $cap, ...$a{sets}.concat([
					for (i in ${makeExpr(sets.length)}...($size > $cap ? $size : $cap : stdgo.GoInt).toBasic()
				) $value]));
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

// @:formatter on

function genericIndices(indices:Array<GoAst.Expr>, params:Array<GoType>, typeParams:Array<GoType>, info:Info):Array<Expr> {
	var genericExprs:Array<GoAst.Expr> = indices; // genericTypes but exprs
	var removalGenericExprs:Array<GoAst.Expr> = [];
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
								break; */
					}
				default:
			}
		}
	}
	final args:Array<Expr> = [];
	/*if (genericExprs.length > 0) {
		for (genericExpr in genericExprs) {
			final t = typeof(genericExpr, info, false);
			final defaultType = HaxeAst.defaultValue(t, info);
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
	if (!HaxeAst.isVoid(ret))
		expr = macro return $expr;
	return toExpr(EFunction(FAnonymous, {
		ret: ret,
		args: funcArgs,
		expr: expr,
	}));
}

function toAnyInterface(x:Expr, t:GoType, info:Info, needWrapping:Bool = true):Expr {
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

function toReflectType(t:GoType, info:Info, paths:Array<String>, equalityBool:Bool):Expr {
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

function toGoType(expr:Expr):Expr {
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

function typeRest(expr:Expr, t:GoType, info:Info):Expr {
	expr = toGoType(expr);
	t = getArrayElem(t);
	final ct = toComplexType(t, info);
	return macro...($expr : Array<$ct>);
}


function rawEscapeSequences(value:String):String {
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

function getRune(value:String):String {
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
			// case "$".code:
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



/**
 *	For struct literals the following rules apply:
 *
 *	A key must be a field name declared in the struct type.
 *	An element list that does not contain any keys must list an element for each struct field in the order in which the fields are declared.
 *	If any element has a key, every element must have a key.
 *	An element list that contains keys does not need to have an element for each struct field. Omitted fields get the zero value for that field.
 *	A literal may omit the element list; such a literal evaluates to the zero value for its type.
 *	It is an error to specify an element for a non-exported field of a struct belonging to a different package.
 *
 *	For array and slice literals the following rules apply:
 *
 *	Each element has an associated integer index marking its position in the array.
 *	An element with a key uses the key as its index. The key must be a non-negative constant representable by a value of type int; and if it is typed it must be of integer type.
 *	An element without a key uses the previous element's index plus one. If the first element has no key, its index is zero.
 */
function hasKeyValueExpr(elts:Array<GoAst.Expr>) {
	for (e in elts) {
		if (e.id == "KeyValueExpr")
			return true;
	}
	return false;
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
	final defaultValueExpr = HaxeAst.defaultValue(v, info, true);
	var isObjectMap = false;
	var isUIntptrMap = false;
	function createRefPointerMap(name:String) {
		final keyElemComplexType = keyComplexType;
		final p:TypePath = {
			name: "GoMap",
			sub: name,
			pack: ["stdgo"],
			params: [TPType(keyComplexType), TPType(valueComplexType)]
		};
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
				// case unsafepointer_kind: KindType.unsafePointer;
				case unsafepointer_kind: isObjectMap = true;
				default: throw info.panic() + 'Unknown BasicKind: $kind';
			}
		case chanType(_, _):
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

function compositeLitList(elem:GoType, keyValueBool:Bool, len:Int, underlying:GoType, ct:ComplexType, expr:GoAst.CompositeLit, info:Info):Expr {
	final p = getTypePath(toComplexType(underlying, info), info);
	var value = HaxeAst.defaultValue(elem, info, false);
	if (keyValueBool) {
		var exprs:Array<{expr:Expr, index:Int}> = [];
		function run(elt:GoAst.Expr, index:Int) {
			if (elt.id == "CompositeLit") {
				if (elt.type == null)
					return {index: index, expr: toExpr(typer.exprs.CompositeLiteral.compositeLit(elem, complexTypeElem(ct), elt, info))};
			}
			return {index: index, expr: typer.exprs.Expr.typeExpr(elt, info)};
		}
		var index:Int = 0;
		for (elt in expr.elts) {
			if (elt.id == "KeyValueExpr") { // array expansion syntax uses KeyValue, value being a string word representation of the number
				var elt:GoAst.KeyValueExpr = elt;
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
			// final e = macro new $p($length, $length, ...([for (i in 0...$length) $value]));
			final e = genSlice(p, elem, length, macro 0, e -> e, info, null);
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
					var e = toExpr(typer.exprs.CompositeLiteral.compositeLit(elem, toComplexType(elem, info), elt, info));
					e = assignTranslate(typeof(elt, info, false), elem, e, info);
					exprs.push(e);
					continue;
				}
			}
			var e = typer.exprs.Expr.typeExpr(elt, info);
			e = assignTranslate(typeof(elt, info, false), elem, e, info);
			exprs.push(e);
		}
		final len = makeExpr(len != -1 ? len : exprs.length);
		final e = genSlice(p, elem, len, len, e -> e, info, exprs);
		// return e;
		return macro($e : $ct);
	}
}


function funcReset(info:Info) {
	info.global.deferBool = false;
	info.global.recoverBool = false;
	info.global.gotoSystem = false;
}


function walkBinary(e:Expr):Expr {
	switch e.expr {
		case EBinop(op, e1, c): // (A op2 B) op C
			final p = HaxeAst.opPrecedence(op);
			e1 = walkBinary(e1);
			c = walkBinary(c);
			switch e1.expr {
				case EBinop(op2, a, b):
					final p2 = HaxeAst.opPrecedence(op2);
					if (p2 >= p) e1 = macro(${e1});
				default:
			}
			switch c.expr {
				case EBinop(op2, a, b):
					final p2 = HaxeAst.opPrecedence(op2);
					if (p2 >= p) c = macro(${c});
				default:
			}
			e = toExpr(EBinop(op, e1, c));
		default:
	}
	return e;
}

function typeUnOp(token:GoAst.Token):Unop {
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

function typeOp(token:GoAst.Token):Binop {
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



// SPECS

function mapExprArrayWithData<T>(el:Array<Expr>, data:T, f:(data:T, e:Expr) -> Expr):Array<Expr> {
	var ret = [];
	for (e in el)
		ret.push(f(data, e));
	return ret;
}

function mapExprWithData<T>(e:Expr, data:T, f:(data:T, e:Expr) -> Expr):Expr {
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

function opt<T>(e:Null<Expr>, data:T, f:(data:T, Expr) -> Expr):Expr
	return e == null ? null : f(data, e);

function opt2<T>(e:Null<Expr>, data:T, f:(data:T, Expr) -> Void):Void
	if (e != null)
		f(data, e);

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

function getId(e:GoAst.Expr, info:Info):String {
	final e = hashTypeToExprType(e, info);
	return switch e.id {
		default:
			trace(e.id);
			e.id;
	}
}


function typeFieldListComplexTypes(list:GoAst.FieldList, info:Info):Array<ComplexType> {
	var args:Array<ComplexType> = [];
	for (field in list.list) {
		var type = typeExprType(field.type, info);
		if (field.names.length > 0) {
			for (name in field.names) {
				final name = typer.exprs.Ident.nameIdent(name.name, false, true, info);
				args.push(TNamed(name, type));
			}
		} else {
			args.push(type);
		}
	}
	return args;
}

function typeFieldListMethods(list:GoAst.FieldList, info:Info):Array<Field> {
	var fields:Array<Field> = [];
	final oldRenameIdents = info.renameIdents.copy();
	for (field in list.list) {
		var expr:GoAst.FuncType = field.type;

		var ret = typer.decls.Function.typeFieldListReturn(expr.results, info, false);
		var params = typer.decls.Function.typeFieldListArgs(expr.params, info);
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
function typeFields(list:Array<typer.exprtypes.ExprType.FieldType>, info:Info, access:Array<Access>, defaultBool:Bool, ?docs:Array<GoAst.CommentGroup>,
		?comments:Array<GoAst.CommentGroup>):Array<Field> {
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
			kind: FVar(toComplexType(field.type.get(), info), defaultBool ? HaxeAst.defaultValue(field.type.get(), info, false) : null)
		});
	}
	return fields;
}

function typeFieldListFieldTypes(list:GoAst.FieldList, info:Info, access:Array<Access> = null, defaultBool:Bool = false,
		docs:Array<GoAst.CommentGroup> = null, comments:Array<GoAst.CommentGroup> = null):Array<typer.exprtypes.ExprType.FieldType> {
	var fields:Array<Field> = [];
	var fieldList:Array<typer.exprtypes.ExprType.FieldType> = [];
	function getName(type:GoAst.Expr) {
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

function typeFieldListFields(list:GoAst.FieldList, info:Info, access:Array<Access> = null, defaultBool:Bool):Array<Field> {
	final docs:Array<GoAst.CommentGroup> = [];
	final comments:Array<GoAst.CommentGroup> = [];
	final fieldList = typeFieldListFieldTypes(list, info, access, defaultBool, docs, comments);
	return typeFields(fieldList, info, access, defaultBool, docs, comments);
}

function addAbstractToField(ct:ComplexType, wrapperType:TypePath):Field {
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


function typeParamDeclsToTypeParams(list:Array<TypeParamDecl>):Array<TypeParam> {
	return list.map(p -> TPType(TPath({name: p.name, pack: []})));
}

function refToPointerWrapper(t:GoType):GoType {
	return switch t {
		case refType(_.get() => elem):
			pointerType({get: () -> refToPointerWrapper(elem)});
		default:
			t;
	}
}

function complexTypeToExpr(t:ComplexType):Expr {
	switch t {
		case TPath(p):
			final pack = p.pack == null ? macro [] : macro $a{p.pack.map(p -> makeExpr(p))};
			return macro haxe.macro.Expr.ComplexType.TPath({
				name: ${makeExpr(p.name)},
				pack: $pack,
				sub: ${p.sub == null ? macro @:complextype_to_expr null : makeExpr(p.sub)}
			});
		default:
			throw "unsupported complexTypeToExpr: " + t;
	}
}

function getParams(params:GoAst.FieldList, info:Info, allowNonGeneric:Bool = false):Array<TypeParamDecl> {
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

function makeString(str:String, ?kind):Expr {
	return toExpr(EConst(CString(str, kind)));
}

function makeStringLit(values:Array<{?s:String, ?code:Int}>):Expr {
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

function typeImport(imp:GoAst.ImportSpec, info:Info) {
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

function alreadyExistsTypeDef(td:TypeDefinition, info:Info):Bool {
	for (def in info.data.defs) {
		if (def.name == td.name) {
			return true;
		}
	}
	return false;
}

function getDocComment(doc:{doc:GoAst.CommentGroup}, ?comment:{comment:GoAst.CommentGroup}):String {
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

function getSource(value:{pos:Int, end:Int}, info:Info):String {
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

function sanatizeComment(source:String):String {
	// sanatize comments
	if (source == "")
		return source;
	source = StringTools.replace(source, "/*", "");
	source = StringTools.replace(source, "*/", "");
	var lines = normalizeCLRF(source).split("\n");
	for (i in 0...lines.length) {
		if (lines[i].substr(0, 3) == "// ")
			lines[i] = lines[i].substr(3);
		if (lines[i].substr(0, 2) == "//")
			lines[i] = lines[i].substr(2);
	}
	lines = lines.map(line -> '* $line');
	return lines.join("\n");
}

function typeAccess(name:String, isField:Bool = false):Array<Access> {
	return StringTools.startsWith(name, "_") ? [] : (isField ? [APublic] : []);
}

function getRestrictedName(name:String, info:Info):String { // all function defs are restricted names
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

class Global {
	public var localSpecs:Map<String, Array<GoAst.Spec>> = [];
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
	public var module:HaxeAst.Module = null;
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
	public var lastValue:GoAst.Expr = null;
	public var lastType:GoType = null;
	public var data:HaxeAst.HaxeFileType;
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
		info.global = global; // .copy(); // imports, types
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

 // filepath of export.json also stored here


// @:formatter off

var printer = new codegen.Printer();