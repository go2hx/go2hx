package typer;

import typer.GoAst.BasicKind;

enum GoType {
	typeParam(name:String, params:Array<GoType>);
	invalidType;
	signature(variadic:Bool, params:Ref<Array<GoType>>, results:Ref<Array<GoType>>, recv:Ref<GoType>, ?typeParams:Ref<Array<GoType>>);
	basic(kind:GoAst.BasicKind);
	_var(name:String, type:Ref<GoType>);
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

function isTitle(string:String):Bool {
	if (string.charAt(0) == "_")
		return false;
	return string.charAt(0) == string.charAt(0).toUpperCase();
}

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
		case signature(_, _, _, _, _):
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

function typeof(e:GoAst.Expr, info:Info, isNamed:Bool, paths:Array<String> = null):GoType {
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
			typeof(e.type, info, false, paths.copy());
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
			structType(typeFieldListFieldTypes(e.fields, info));
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