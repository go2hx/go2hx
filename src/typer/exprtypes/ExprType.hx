package typer.exprtypes;

function typeExprType(expr:Dynamic, info:Info):ComplexType { // get the type of an expr
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
		case "UnaryExpr": UnaryType.unaryType(expr, info);
		case "MapType": MapType.mapTypeExpr(expr, info);
		case "ChanType": ChanType.chanTypeExpr(expr, info);
		case "InterfaceType": InterfaceType.interfaceTypeExpr(expr, info);
		case "StructType": StructType.structTypeExpr(expr, info);
		case "FuncType": FuncType.funcType(expr, info);
		case "ArrayType": ArrayType.arrayTypeExpr(expr, info);
		case "StarExpr": StarType.starType(expr, info); // pointer
		case "Ident": IdentType.identType(expr, info); // identifier type
		case "SelectorExpr": SelectorType.selectorType(expr, info); // path
		case "Ellipsis": EllipsisType.ellipsisType(expr, info); // Rest arg
		case "ParenExpr": return typeExprType(expr.x, info);
		case "IndexExpr": return IndexType.indexType(expr, info); // t type
		case "IndexListExpr": return IndexListType.indexListType(expr, info);
		case "BinaryExpr": return BinaryType.binaryType(expr, info); // Union type
		case "HashType": return typeExprType(hashTypeToExprType(expr, info), info);
		case "BasicLit": return toComplexType(typeof(expr.type, info, false, []), info);
		default:
			throw info.panic() + "Type expr unknown: " + expr.id;
			null;
	}
	// if (type == null)
	//	throw "Type expr is null: " + expr.id;
	return type;
}

function typeof(e:GoAst.Expr, info:Info, isNamed:Bool, paths:Array<String> = null):GoType {
	if (e == null)
		return invalidType;
	if (paths == null)
		paths = [];
	var t = switch e.id {
		case "HashType":
			typeof(info.global.hashMapTypes[e.hash], info, isNamed, paths.copy());
		case "TypeParam":
			var constraint = hashTypeToExprType(e.constraint, info);
			if (constraint != null && constraint.embeds == null) {
				constraint = hashTypeToExprType(constraint.underlying, info);
			}
			if (info.typeParamMap.exists(e.name))
				return info.typeParamMap[e.name];
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
			final params = {get: () -> getTuple(hashTypeToExprType(e.params, info)?.vars, info)};
			final results = {get: () -> getTuple(hashTypeToExprType(e.results, info)?.vars, info)};
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
				var kind:GoAst.BasicKind = e.kind;
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
			_var(e.name, {get: () -> typeof(e.type, info, false, paths.copy())}, {get: () -> typeof(e.origin, info, false, paths.copy())});
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
			final e:GoAst.CallExpr = e;
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
			final e:GoAst.Ident = e;
			if (e.name == "comparable" && !info.renameIdents.exists(e.name) && info.localIdents.indexOf(untitle(e.name)) == -1) {
				typeParam("", [named("comparable", [], invalidType, true, {get: () -> []})]);
				// typeParam("comparable", [interfaceType(true, [])]);
			} else {
				typeof(e.type, info, false, paths.copy());
			}
		case "CompositeLit":
			final e:GoAst.CompositeLit = e;
			final t = typeof(e.type, info, false, paths.copy());
			t;
		case "SelectorExpr":
			final e:GoAst.SelectorExpr = e;
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
			final e:GoAst.IndexExpr = e;
			typeof(e.type, info, false, paths.copy());
		case "IndexListExpr":
			final e:GoAst.IndexListExpr = e;
			typeof(e.type, info, false, paths.copy());
		case "BinaryExpr":
			final e:GoAst.BinaryExpr = e;
			typeof(e.type, info, false, paths.copy());
		case "StarExpr":
			final e:GoAst.StarExpr = e;
			typeof(e.type, info, false, paths.copy());
		case "UnaryExpr":
			final e:GoAst.UnaryExpr = e;
			switch e.op {
				case ARROW:
					getElem(typeof(e.x, info, false, paths.copy()));
				case AND:
					pointerType({get: () -> typeof(e.x, info, false, paths.copy())});
				case TILDE:
					// trace(typer.exprtypes.ExprType.hashTypeToExprType(e.x, info).id);
					final t = typeof(e.x, info, false, paths.copy());
					t;
				default:
					typeof(e.x, info, false, paths.copy());
			}
		case "TypeAssertExpr":
			final e:GoAst.TypeAssertExpr = e;
			typeof(e.type, info, false, paths.copy());
		case "FuncLit":
			var e:GoAst.FuncLit = e;
			typeof(e.type.type, info, false, paths.copy());
		case "KeyValueExpr":
			final e:GoAst.KeyValueExpr = e;
			mapType({get: () -> typeof(e.key, info, false, paths.copy())}, {get: () -> typeof(e.value, info, false, paths.copy())});
		case "SliceExpr":
			final e:GoAst.SliceExpr = e;
			typeof(e.type, info, false, paths.copy());
		case "ParenExpr":
			final e:GoAst.ParenExpr = e;
			typeof(e.x, info, false, paths.copy());
		case "InterfaceType":
			typeof(e.type, info, false, paths.copy());
		case "ArrayType":
			final e:GoAst.ArrayType = e;
			final elem = typeof(e.elt, info, false, paths.copy());
			// trace(elem);
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
			final e:GoAst.MapType = e;
			final keyType = typeof(e.key, info, false, paths.copy());
			final valueType = typeof(e.value, info, false, paths.copy());
			mapType({get: () -> keyType}, {get: () -> valueType});
		case "ChanType":
			final e:GoAst.ChanType = e;
			chanType(e.type.dir, {get: () -> typeof(e.value, info, false, paths.copy())});
		case "StructType":
			final e:GoAst.StructType = e;
			structType(typer.fields.FieldList.typeFieldListFieldTypes(e.fields, info));
		case "FuncType":
			final e:GoAst.FuncType = e;
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
		case "Union":
			if (e.terms == null) {
				throw "e.terms is NULL: " + info.global.path;
			}else{
				final terms = e.terms.map(term -> typeof(term.type, info, false, paths.copy()));
				typeParam("", terms);
			}
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

enum GoType {
	typeParam(name:String, params:Array<GoType>);
	invalidType;
	signature(variadic:Bool, params:Ref<Array<GoType>>, results:Ref<Array<GoType>>, recv:Ref<GoType>, ?typeParams:Ref<Array<GoType>>);
	basic(kind:GoAst.BasicKind);
	_var(name:String, type:Ref<GoType>, ?origin:Ref<GoType>);
	tuple(len:Int, vars:Ref<Array<GoType>>);
	interfaceType(empty:Bool, methods:Array<MethodType>);
	sliceType(elem:Ref<GoType>);
	named(path:String, methods:Array<MethodType>, type:GoType, alias:Bool, params:Ref<Array<GoType>>);
	previouslyNamed(path:String);
	structType(fields:Array<FieldType>);
	pointerType(elem:Ref<GoType>);
	arrayType(elem:Ref<GoType>, len:Int);
	mapType(key:Ref<GoType>, value:Ref<GoType>);
	chanType(dir:Int, elem:Ref<GoType>);
	refType(elem:Ref<GoType>); // can hold named type therefore will ref the TypeInfo map
}

@:structInit
class MethodType {
	public var name:String;
	public var type:Ref<GoType>;
	public var recv:Ref<GoType>;

	public function new(name, type, recv) {
		this.name = name;
		this.type = type;
		this.recv = recv;
	}

	public function toString()
		return '$name: $type';
}

@:structInit
class FieldType {
	public var name:String;
	public var type:Ref<GoType>;
	public var tag:String;
	public var embedded:Bool;
	public var optional:Bool;

	public function new(name, type, tag, embedded, optional) {
		this.name = name;
		this.type = type;
		this.tag = tag;
		this.embedded = embedded;
		this.optional = optional;
	}

	public function toString():String {
		return '$name opt: $optional';
	}
}

private typedef Ref<T> = {
	function get():T;
}

// modular functions

function removeTypeParam(t:GoType) {
	if (t == null)
		return t;
	return switch t {
		case typeParam(_, _[0] => t):
			t;
		default:
			t;
	}
}

function isStruct(type:GoType):Bool {
	if (type == null)
		return false;
	return switch type {
		case refType(_.get() => type):
			isStruct(type);
		case named(_, _, underlying, _, _):
			isStruct(underlying);
		case structType(_):
			true;
		default: false;
	}
}

function isPointerStruct(type:GoType):Bool {
	if (type == null)
		return false;
	return switch type {
		case pointerType(_.get() => elem): isStruct(elem);
		default: false;
	}
}

function isInvalid(type:GoType):Bool {
	if (type == null)
		return true;
	return switch type {
		case invalidType:
			true;
		case basic(kind):
			switch kind {
				case untyped_nil_kind:
					true;
				default:
					false;
			}
		case named(_, _, underlying, _, _):
			isInvalid(underlying);
		default:
			false;
	}
}

function getArrayElem(type:GoType):GoType {
	if (type == null)
		return type;
	return switch type {
		case named(_, _, elem, _, _):
			getArrayElem(elem);
		case arrayType(_.get() => elem, _), sliceType(_.get() => elem):
			elem;
		default:
			type;
	}
}

function getElem(type:GoType):GoType {
	if (type == null)
		return type;
	return switch type {
		case named(_, _, underlying, _, _):
			final newUnderlying = getElem(underlying);
			if (newUnderlying == underlying) {
				return type;
			} else {
				newUnderlying;
			}
		case _var(_, _.get() => type):
			getElem(type);
		case arrayType(_.get() => elem, _), sliceType(_.get() => elem), pointerType(_.get() => elem), refType(_.get() => elem):
			elem;
		case chanType(_, _.get() => elem):
			elem;
		default:
			type;
	}
}

function getVar(type:GoType):GoType {
	if (type == null)
		return type;
	return switch type {
		case _var(_, _.get() => type):
			type;
		default:
			type;
	}
}

function getSignature(type:GoType):GoType {
	if (type == null)
		return type;
	return switch type {
		case signature(_, _, _):
			type;
		case named(_, _, underlying, _, _):
			getSignature(underlying);
		default:
			null;
	}
}

function isUnsafePointer(type:GoType):Bool {
	if (type == null)
		return false;
	return switch type {
		case named(_, _, elem, _, _):
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

function isPointer(type:GoType):Bool {
	if (type == null)
		return false;
	return switch type {
		case _var(_, _.get() => elem):
			isPointer(elem);
		case named(_, _, elem, _, _):
			isPointer(elem);
		case pointerType(_):
			true;
		case refType(_):
			false;
		default:
			false;
	}
}

function isRef(type:GoType):Bool {
	if (type == null)
		return false;
	return switch type {
		case refType(_):
			true;
		default:
			false;
	}
}

function isRefValue(type:GoType):Bool {
	if (type == null)
		return false;
	return switch type {
		case named(_, _, t, _):
			isRefValue(t);
		case refType(_):
			false;
		case refType(_.get() => t):
			switch t {
				case refType(_):
					false;
				default:
					true;
			}
		case pointerType(_):
			false;
		case basic(_):
			false;
		case interfaceType(empty, _):
			!empty;
		case signature(_, _, _, _, _):
			false;
		case typeParam(_, _):
			false;
		default:
			true;
	}
}

function pointerUnwrap(type:GoType):GoType {
	if (type == null)
		return type;
	return switch type {
		case pointerType(_.get() => elem):
			pointerUnwrap(elem);
		default:
			type;
	}
}

function getUnderlyingRefNamed(gt:GoType, once:Bool = false):GoType {
	if (gt == null)
		return null;
	return switch gt {
		case named(_, _, type, _, _), refType(_.get() => type):
			if (once) {
				type;
			} else {
				getUnderlyingRefNamed(type);
			}
		default:
			gt;
	}
}

function getUnderlying(gt:GoType, once:Bool = false) {
	if (gt == null)
		return null;
	return switch gt {
		case named(_, _, type, _, _):
			if (once) {
				type;
			} else {
				getUnderlying(type);
			}
		default:
			gt;
	}
}

function isAnyInterface(type:GoType):Bool {
	if (type == null)
		return false;
	return switch type {
		case named(_, _, elem, _, _):
			isAnyInterface(elem);
		case interfaceType(empty, _):
			empty;
		default:
			false;
	}
}

function isInterface(type:GoType):Bool {
	if (type == null)
		return false;
	return switch type {
		case refType(_.get() => elem):
			isInterface(elem);
		case named(_, _, elem, _, _):
			isInterface(elem);
		case interfaceType(_):
			true;
		default:
			false;
	}
}

function isSignature(type:GoType, underlyingBool:Bool = true):Bool {
	if (type == null)
		return false;
	return switch type {
		case signature(_, _, _):
			true;
		case named(_, _, underlying, _, _):
			if (underlyingBool) {
				isSignature(underlying, underlyingBool);
			} else {
				false;
			}
		default:
			false;
	}
}

// named doesn't count for interfaces
function isNamed(type:GoType):Bool {
	if (type == null)
		return false;
	return switch type {
		case refType(_.get() => underlying):
			isNamed(underlying);
		case named(_, _, underlying, _, _):
			isNamedUnderlying(underlying);
		default: false;
	}
}

// named doesn't count for interfaces
function isNamedUnderlying(type:GoType):Bool {
	if (type == null)
		return false;
	return switch type {
		case refType(_.get() => underlying):
			isNamed(underlying);
		case named(_, _, underlying, _, _):
			isNamedUnderlying(underlying);
		case structType(_): true;
		case interfaceType(_, _): false;
		default: true;
	}
}

function cleanType(type:GoType):GoType {
	if (type == null)
		return type;
	return switch type {
		case _var(_, _.get() => type):
			cleanType(type);
		default:
			type;
	}
}

function iterGoType(t:GoType, f:GoType->Void) {
	return switch t {
		case _var(name, _.get() => type):
			f(type);
		case pointerType(_.get() => elem):
			f(elem);
		case refType(_.get() => elem):
			f(elem);
		case named(path, methods, type, alias, _.get() => params):
			f(type);
			for (param in params)
				f(param);
		case invalidType:
		default:
	}
}

function replaceNumber(t:GoType):GoType {
	return switch t {
		case _var(name, _.get() => type):
			final type = replaceNumber(type);
			_var(name, {get: () -> type});
		case pointerType(_.get() => elem):
			final elem = replaceNumber(elem);
			pointerType({get: () -> elem});
		case refType(_.get() => elem):
			final elem = replaceNumber(elem);
			refType({get: () -> elem});
		case named(path, methods, type, alias, params):
			type = replaceNumber(type);
			named(path, methods, type, alias, params);
		case basic(kind):
			switch kind {
				case int_kind:
					basic(int32_kind);
				case uint_kind:
					basic(uint32_kind);
				default:
					t;
			}
		default:
			t;
	}
}

function replaceInvalidType(t:GoType, replace:GoType):GoType {
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

function isTypeParam(t:GoType):Bool {
	return switch t {
		case _var(_, _.get() => t):
			isTypeParam(t);
		case typeParam(_, _):
			true;
		default:
			false;
	}
}

function getLocalType(hash:UInt, underlying:GoType, info:Info):GoType {
	return info.locals.exists(hash) ? info.locals.get(hash) : underlying;
}

function getTuple(vars:Array<Dynamic>, info:Info):Array<GoType> {
	var tuples:Array<GoType> = [];
	if (vars == null)
		return [];
	var index = 0;
	for (v in vars) {
		final t = typeof(v.type, info, false);
		final origin = typeof(v.origin, info, false);
		if (v.names != null) {
			if (v.names.length == 0) {
				tuples.push(t);
				continue;
			}
			for (name in (v.names : Array<String>)) {
				tuples.push(_var(name, {get: () -> t}, {get: () -> origin}));
			}
		} else {
			if (t == invalidType)
				trace("v:", v.type.id, "\n", t);
			if (v.name == "_" || v.name == "") {
				tuples.push(_var("_" + index, {get: () -> t}, {get: () -> origin}));
				index++;
				continue;
			}
			tuples.push(_var(v.name, {get: () -> t}, {get: () -> origin}));
		}
	}
	return tuples;
}

function hashTypeToExprType(e:GoAst.Expr, info:Info):GoAst.Expr {
	if (e == null)
		return null;
	return switch e.id {
		case "HashType":
			info.global.hashMapTypes[e.hash];
		default:
			e;
	}
}

function toComplexType(e:GoType, info:Info):ComplexType {
	if (e == null)
		return null;
	// return invalidComplexType();
	return switch e {
		case refType(_.get() => elem):
			final ct = toComplexType(elem, info);
			TPath({pack: ["stdgo"], name: "Ref", params: [TPType(ct)]});
		case basic(kind):
			switch kind {
				case int64_kind: TPath({pack: ["stdgo"], name: "GoInt64"});
				case int32_kind: TPath({pack: ["stdgo"], name: "GoInt32"});
				case int16_kind: TPath({pack: ["stdgo"], name: "GoInt16"});
				case int8_kind: TPath({pack: ["stdgo"], name: "GoInt8"});

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

				case untyped_int_kind, untyped_bool_kind, untyped_float_kind, untyped_rune_kind, untyped_complex_kind, untyped_string_kind: throw info.panic()
						+ "untyped kind: " + kind;
				case untyped_nil_kind: null;
				case unsafepointer_kind: TPath({pack: ["stdgo", "_internal", "unsafe", "Unsafe"], name: "UnsafePointer"});
				default:
					throw info.panic() + "unknown kind to complexType: " + kind;
			}
		case interfaceType(empty, methods):
			if (empty)
				return HaxeAst.anyInterfaceType();
			// trace("methods: " + methods.length, methods.map(method -> method.name));
			// return TPath({pack: [], name: "FailType"});
			// only being triggered on extern packages (stdgoExterns.json) in limited circumstances so it's not important.
			return HaxeAst.anyInterfaceType();
		// throw info.panic() + "non empty interface";
		case named(path, _, underlying, _, _.get() => params):
			// trace(path);
			// trace(info.renameClasses);
			if (path == "comparable")
				return TPath({name: "Comparable", pack: ["stdgo"]});
			if (path == null) {
				trace("underlying null path: " + new codegen.Printer().printComplexType(toComplexType(underlying, info)));
				throw info.panic() + path;
			}
			final p = namedTypePath(path, info);
			if (params != null)
				p.params = params.map(param -> TPType(toComplexType(param, info)));
			TPath(p);
		case sliceType(_.get() => elem):
			final ct = toComplexType(elem, info);
			var params = [TPType(ct)];
			if (HaxeAst.isInvalidComplexType(ct)) {
				params = [TPType(TPath({name: "Dynamic", pack: []}))];
			}
			TPath({pack: ["stdgo"], name: "Slice", params: params});
		case arrayType(_.get() => elem, len):
			final ct = toComplexType(elem, info);
			TPath({pack: ["stdgo"], name: "GoArray", params: [TPType(ct)]});
		case mapType(_.get() => key, _.get() => value):
			final ctKey = toComplexType(key, info);
			final ctValue = toComplexType(value, info);
			TPath({pack: ["stdgo"], name: "GoMap", params: [TPType(ctKey), TPType(ctValue)]});
		case invalidType:
			HaxeAst.invalidComplexType();
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
		case typeParam(name, params):
			if (info.typeParamMap.exists(name))
				return toComplexType(info.typeParamMap[name], info);
			return TPath({pack: [], name: className(name, info)});
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

function getReturn(results:Array<GoType>, info:Info):ComplexType {
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

function isTuple(type:GoType):Bool {
	return switch type {
		case tuple(_, _):
			true;
		default:
			false;
	}
}

function getStructFields(type:GoType, restrictedFields:Array<String>, onlyEmbeds:Bool = false):Array<typer.exprtypes.ExprType.FieldType> {
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
			} else {
				final fields = fields.copy();
				fields.sort((a, b) -> a.embedded == b.embedded ? 0 : (!a.embedded ? 1 : -1));
				fields;
			}
		default:
			[];
	}
}

function addPointerSuffix(ct:ComplexType, info:Info) {
	switch ct {
		case TPath(p):
			if (p.name.indexOf(".") != -1) {
				if (p.pack.length == 0) {
					final parts = p.name.split(".");
					final last = parts.pop() + "Pointer";
					final lastPackPart = parts.pop();
					final isLocal = io.Path.isPackLocal(parts, info);
					if (!info.data.isMain || !isLocal) {
						final lastPack = lastPackPart + "pointer";
						parts.push(lastPack);
					}
					parts.push(last);
					p.name = parts.join(".");
				}
			} else {
				p.name += "Pointer";
				if (!info.data.isMain || !io.Path.isPackLocal(p.pack, info)) {
					p.pack.push(p.pack.pop() + "pointer");
				}
			}
		default:
	}
}

function toReflectType(t:GoType, info:Info, paths:Array<String>, equalityBool:Bool):MacroExpr {
	return switch t {
		case typeParam(name, params):
			final name = HaxeAst.makeString(name);
			final params = macro [];
			macro stdgo._internal.internal.reflect.GoType.typeParam($name, {get: () -> params});
		case refType(_.get() => elem):
			final elem = toReflectType(elem, info, paths.copy(), equalityBool);
			macro stdgo._internal.internal.reflect.GoType.refType({get: () -> $elem});
		case mapType(_.get() => key, _.get() => value):
			final key = toReflectType(key, info, paths.copy(), equalityBool);
			final value = toReflectType(value, info, paths.copy(), equalityBool);
			macro stdgo._internal.internal.reflect.GoType.mapType({get: () -> $key}, {get: () -> $value});
		case pointerType(_.get() => elem):
			final elem = toReflectType(elem, info, paths.copy(), equalityBool);
			macro stdgo._internal.internal.reflect.GoType.pointerType({get: () -> $elem});
		case arrayType(_.get() => elem, len):
			final elem = toReflectType(elem, info, paths.copy(), equalityBool);
			final len = toExpr(EConst(CInt('$len')));
			macro stdgo._internal.internal.reflect.GoType.arrayType({get: () -> $elem}, $len);
		case sliceType(_.get() => elem):
			final elem = toReflectType(elem, info, paths.copy(), equalityBool);
			macro stdgo._internal.internal.reflect.GoType.sliceType({get: () -> $elem});
		case basic(kind):
			final kind:String = kind;
			macro stdgo._internal.internal.reflect.GoType.basic($i{kind});
		case _var(name, _.get() => type):
			toReflectType(type, info, paths.copy(), equalityBool);
		case chanType(dir, _.get() => elem):
			final dir = toExpr(EConst(CInt('$dir')));
			final elem = toReflectType(elem, info, paths.copy(), equalityBool);
			macro stdgo._internal.internal.reflect.GoType.chanType($dir, {get: () -> $elem});
		case interfaceType(empty, methods):
			final empty = empty ? macro true : macro false;
			final methodExprs:Array<Expr> = [];
			/*for (method in methods) {
				final name = HaxeAst.makeString(method.name);
				final t = toReflectType(method.type.get(), info, paths.copy(), equalityBool);
				final recv = macro stdgo._internal.internal.reflect.GoType.invalidType; // toReflectType(method.recv.get(), info, paths.copy());
				methodExprs.push(macro new stdgo._internal.internal.reflect.Reflect.MethodType($name, {get: () -> $t}, {get: () -> $recv}));
			}*/
			final e = macro stdgo._internal.internal.reflect.GoType.interfaceType($empty, ${macro $a{methodExprs}});
			e;
		case invalidType:
			macro stdgo._internal.internal.reflect.GoType.invalidType;
		case named(path2, methods, type, _, _):
			final namedPath = namedTypePath(path2, info);
			namedPath.pack.push(namedPath.name);
			final path = HaxeAst.makeString(namedPath.pack.join("."));
			final methodExprs:Array<Expr> = [];
			var t = macro stdgo._internal.internal.reflect.GoType.invalidType;
			if (!paths.contains(path2)) {
				paths.push(path2);
				t = toReflectType(type, info, paths.copy(), equalityBool);
			}
			final e = macro stdgo._internal.internal.reflect.GoType.named($path, ${macro $a{methodExprs}}, $t, false, {get: () -> null});
			e;
		case previouslyNamed(path):
			final path = HaxeAst.makeString(path);
			macro stdgo._internal.internal.reflect.GoType.previousNamed($path);
		case signature(variadic, params, results, _.get() => recv):
			if (equalityBool)
				return macro stdgo._internal.internal.reflect.GoType.signature(false, {get: () -> null}, {get: () -> null}, {get: () -> null});
			final variadic = variadic ? macro true : macro false;
			final params = macro $a{params.get().map(param -> toReflectType(param, info, paths.copy(), equalityBool))};
			final results = macro $a{results.get().map(result -> toReflectType(result, info, paths.copy(), equalityBool))};
			final recv = macro stdgo._internal.internal.reflect.GoType.invalidType; // toReflectType(recv, info, paths.copy());
			macro stdgo._internal.internal.reflect.GoType.signature($variadic, {get: () -> $params}, {get: () -> $results}, {get: () -> $recv});
		case structType(fields):
			var exprs:Array<Expr> = [];
			for (field in fields) {
				final name = HaxeAst.makeString(field.name);
				final embedded = field.embedded ? macro true : macro false;
				final tag = HaxeAst.makeString(field.tag);
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
			macro stdgo._internal.internal.reflect.GoType.structType($expr);
		case tuple(len, _.get() => vars):
			final len = toExpr(EConst(CInt('$len')));
			final vars = [for (v in vars) toReflectType(v, info, paths.copy(), equalityBool)];
			macro stdgo._internal.internal.reflect.GoType.tuple($len, $a{vars});
	}
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
			final tag = HaxeAst.makeString(typer.exprs.BasicLit.rawEscapeSequences(field.tag));
			meta.push({name: ":tag", pos: null, params: [tag]});
		}
		if (field.optional)
			meta.push({name: ":optional", pos: null});
		var doc:String = codegen.Doc.getDocComment({doc: docs == null ? null : docs[i]}, {comment: comments == null ? null : comments[i]});
		// trace(name);
		// trace(field.type.get());
		// trace(toComplexType(field.type.get(), info));
		fields.push({
			name: name,
			pos: null,
			meta: meta,
			doc: doc,
			access: access == null ? HaxeAst.typeAccess(name, true) : access,
			kind: FVar(toComplexType(field.type.get(), info), defaultBool ? typer.exprs.Expr.defaultValue(field.type.get(), info, false) : null)
		});
	}
	return fields;
}

function createNamedObjectDecl(fields:Array<typer.exprtypes.ExprType.FieldType>, f:(field:String, type:GoType) -> Expr, info:Info):MacroExpr {
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

function goTypesEqual(a:GoType, b:GoType, depth:Int):Bool {
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
}

function refToPointerWrapper(t:GoType):GoType {
	return switch t {
		case refType(_.get() => elem):
			pointerType({get: () -> refToPointerWrapper(elem)});
		default:
			t;
	}
}
