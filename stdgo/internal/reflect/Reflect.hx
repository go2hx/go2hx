package stdgo.internal.reflect;

import stdgo.Pointer;
import stdgo.StdGoTypes;
import stdgo.reflect.Reflect;

enum abstract KindType(stdgo.reflect.Reflect.Kind) from Int from stdgo.reflect.Reflect.Kind to stdgo.reflect.Reflect.Kind {
	var invalid = 0;
	var bool = 1;
	var int = 2;
	var int8 = 3;
	var int16 = 4;
	var int32 = 5;
	var int64 = 6;
	var uint = 7;
	var uint8 = 8;
	var uint16 = 9;
	var uint32 = 10;
	var uint64 = 11;
	var uintptr = 12;
	var float32 = 13;
	var float64 = 14;
	var complex64 = 15;
	var complex128 = 16;
	var array = 17;
	var chan = 18;
	var func = 19;
	var interface_ = 20;
	var map = 21;
	var pointer = 22;
	var slice = 23;
	var string = 24;
	var struct = 25;
	var unsafePointer = 26;
}

function isExported(name:String):Bool {
	return name.charCodeAt(0) != "_".code;
}

function formatGoFieldName(name:String):String {
	return (name.charAt(0) == "_" ? "" : name.charAt(0).toUpperCase()) + name.substr(1);
}

function namedUnderlying(obj:AnyInterface):AnyInterface {
	return switch @:privateAccess obj.type._common() {
		case named(_, _, type):
			new AnyInterface((obj.value : Dynamic).__t__, new _Type(type));
		default:
			obj;
	}
}

@:structInit final private class Visit {
	public var _typ:Type = null;

	public function new(?_typ) {}
}

function deepValueEqual(v1:Value, v2:Value, visited:GoMap<Visit, Bool>, depth:GoInt):Bool {
	if (!v1.isValid() || !v2.isValid()) {
		return v1.isValid() == v2.isValid();
	}
	if (v1.kind() == KindType.array) {
		for (i in 0...v1.len().toBasic()) {
			if (!deepValueEqual(v1.index(i), v2.index(i), visited, depth + (1 : GoInt64))) {
				return false;
			}
		}
		return true;
	} else if (v1.kind() == KindType.slice) {
		if (v1.isNil() != v2.isNil()) {
			return false;
		}
		if (v1.len() != v2.len()) {
			return false;
		}
		if (v1.pointer() != v2.pointer()) {
			return true;
		}
		for (i in 0...v1.len().toBasic()) {
			if (!deepValueEqual(v1.index(i), v2.index(i), visited, depth + (1 : GoInt64))) {
				return false;
			}
		}
		return true;
	} else if (v1.kind() == KindType.interface_) {
		if (v1.isNil() || v2.isNil()) {
			return v1.isNil() == v2.isNil();
		}
		return true;
	} else if (v1.kind() == KindType.pointer) {
		if (v1.pointer() == v2.pointer()) {
			return true;
		};
		return deepValueEqual(v1.elem(), v2.elem(), visited, depth + (1 : GoInt64));
	} else if (v1.kind() == KindType.struct) {
		for (i in 0...v1.numField().toBasic()) {
			if (!deepValueEqual(v1.field(i), v2.field(i), visited, depth + (1 : GoInt64))) {
				return false;
			}
		}
		return true;
	} else if (v1.kind() == KindType.map) {
		if (v1.isNil() != v2.isNil()) {
			return false;
		}
		if (v1.len() != v2.len()) {
			return false;
		}
		if (v1.pointer() == v2.pointer()) {
			return true;
		}
		for (k in v1.mapKeys()) {
			var val1 = v1.mapIndex(k);
			var val2 = v2.mapIndex(k);
			if (!val1.isValid() || !val2.isValid() || !deepValueEqual(val1, val2, visited, depth + (1 : GoInt64))) {
				return false;
			}
		}
		return true;
	} else if (v1.kind() == KindType.func) {
		if (v1.isNil() && v2.isNil()) {
			return true;
		}
		return false;
	} else {
		// trace(v1.kind().string(), v2.kind().string());
		return v1.interface_() == v2.interface_();
	}
}

function directlyAssignable(t:Type, v:Type):Bool {
	var tgt:GoType = (t : Dynamic)._common();
	var vgt:GoType = (v : Dynamic)._common();
	switch vgt {
		case named(path, _, _):
			switch tgt {
				case named(path2, _, _):
					return path == path2;
				default:
					return false;
			}
		default:
	}
	tgt = getUnderlying(tgt);
	vgt = getUnderlying(vgt);
	return switch tgt {
		case chanType(_, _.get() => elem), sliceType(_.get() => elem):
			switch vgt {
				case chanType(_,
					_.get() => elem2), sliceType(_.get() => elem2): new _Type(elem).assignableTo(new _Type_asInterface(Go.pointer(new _Type(elem2)),
						new _Type(elem2)));
				default: false;
			}
		case arrayType(_.get() => elem, len):
			switch vgt {
				case arrayType(_.get() => elem2, len2):
					if (len != len2)
						return false;
					final i = new _Type_asInterface(Go.pointer(new _Type(elem2)), new _Type(elem2));
					new _Type(elem).assignableTo(i);
				default: false;
			}
		case mapType(_.get() => key, _.get() => value):
			switch vgt {
				case mapType(_.get() => key2, _.get() => value2):
					final i = new _Type_asInterface(Go.pointer(new _Type(key2)), new _Type(key2));
					if (!new _Type(key).assignableTo(i))
						return false;
					final i2 = new _Type_asInterface(Go.pointer(new _Type(value2)), new _Type(value2));
					if (!new _Type(value).assignableTo(i2))
						return false;
					true;
				default: false;
			}
		case structType(fields):
			switch vgt {
				case structType(fields2):
					if (fields.length != fields2.length)
						return false;
					for (i in 0...fields.length) {
						final i2 = new _Type_asInterface(Go.pointer(new _Type(fields[i].type)), new _Type(fields[i].type));
						final i3 = new _Type_asInterface(Go.pointer(new _Type(fields2[i].type)), new _Type(fields2[i].type));
						if (!directlyAssignable(i2, i3))
							return false;
					}
					true;
				default:
					false;
			}
		case interfaceType(_):
			false; // checked by implements instead
		case signature(_, _.get() => input, _.get() => output, _):
			switch vgt {
				case signature(_, _.get() => input2, _.get() => output2, _):
					if (input.length != input2.length)
						return false;
					if (output.length != output2.length)
						return false;

					true;
				default:
					false;
			}
		case basic(kind):
			switch vgt {
				case basic(kind2):
					function untype(kind:BasicKind, kind2:BasicKind):Bool {
						final index = kind2.getIndex();
						var min = 0;
						var max = 0;
						switch kind {
							case untyped_int_kind:
								min = int_kind.getIndex();
								max = int64_kind.getIndex();
							case untyped_float_kind:
								min = float32_kind.getIndex();
								max = float64_kind.getIndex();
							case untyped_complex_kind:
								min = complex64_kind.getIndex();
								max = complex128_kind.getIndex();
							default:
								return false;
						}
						return min <= index && max >= index;
					}
					if (untype(kind, kind2))
						return true;
					if (untype(kind2, kind))
						return true;
					kind.getIndex() == kind2.getIndex();
				default:
					false;
			}
		case pointerType(e), refType(e):
			switch vgt {
				case pointerType(e2), refType(e2):
					final i = new _Type_asInterface(Go.pointer(new _Type(e)), new _Type(e));
					final i2 = new _Type_asInterface(Go.pointer(new _Type(e2)), new _Type(e2));
					directlyAssignable(i, i2);
				default:
					false;
			}
		case previouslyNamed(path):
			switch vgt {
				case previouslyNamed(path2):
					path == path2;
				default:
					false;
			}
		default:
			throw "unable to check for assignability: " + tgt;
	}
}

function implementsMethod(t:Type, v:Type):Bool {
	var interfacePath = "";
	var gt:GoType = (t : Dynamic)._common();
	var vgt:GoType = (v : Dynamic)._common();
	if (isPointer(gt) || isRef(gt))
		gt = getElem(gt);
	if (isPointer(vgt) || isRef(vgt))
		vgt = getElem(vgt);
	return switch gt {
		case interfaceType(_, methods), named(_, methods, _):
			if (methods == null || methods.length == 0)
				return true;
			switch vgt {
				case interfaceType(_, methods2), named(_, methods2, _):
					if (methods.length > methods2.length) {
						return false;
					}
					var found = false;
					for (i in 0...methods.length) {
						found = false;
						for (j in 0...methods2.length) {
							if (methods[i].name != methods2[j].name)
								continue;
							if (!new _Type(methods[i].type.get()).assignableTo(new _Type_asInterface(Go.pointer(new _Type(methods2[j].type.get())),
								new _Type(methods2[j].type.get())))) {
								return false;
							}
							found = true;
							break;
						}
						if (!found) {
							return false;
						}
					}
					true;
				default:
					false;
			}
		default:
			false;
	}
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

	function string():GoString
		return name;

	public function toString()
		return '$name: $type';
}

@:structInit
class FieldType {
	public var name:String;
	public var type:GoType;
	public var tag:String;
	public var embedded:Bool;

	public function new(name, type, tag, embedded) {
		this.name = name;
		this.type = type;
		this.tag = tag;
		this.embedded = embedded;
	}
}

enum GoType {
	typeParam(name:String, params:Array<GoType>);
	invalidType;
	signature(variadic:Bool, params:Ref<Array<GoType>>, results:Ref<Array<GoType>>, recv:Ref<GoType>, ?typeParams:Ref<Array<GoType>>);
	basic(kind:BasicKind);
	_var(name:String, type:GoType);
	tuple(len:Int, vars:Array<GoType>);
	interfaceType(empty:Bool, methods:Array<MethodType>);
	sliceType(elem:Ref<GoType>);
	named(path:String, methods:Array<MethodType>, type:GoType, ?alias:Bool, ?params:Array<GoType>);
	previouslyNamed(path:String);
	structType(fields:Array<FieldType>);
	pointerType(elem:GoType);
	arrayType(elem:Ref<GoType>, len:Int);
	mapType(key:Ref<GoType>, value:Ref<GoType>);
	chanType(dir:Int, elem:Ref<GoType>);
	refType(elem:GoType);
}

function isSignature(type:GoType, underlyingBool:Bool = true):Bool {
	if (type == null)
		return false;
	return switch type {
		case signature(_, _, _):
			true;
		case named(_, _, underlying):
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
		case refType(underlying):
			isNamed(underlying);
		case named(_, _, underlying):
			switch underlying {
				case structType(_): true;
				case interfaceType(_, _): false;
				case named(_, _, underlying): isNamed(underlying);
				default:
					true;
			}
		default: false;
	}
}

private typedef Ref<T> = {
	function get():T;
}

function isTitle(string:String):Bool {
	return string.charAt(0) == "_" ? false : string.charAt(0) == string.charAt(0).toUpperCase();
}

function isStruct(type:GoType):Bool {
	if (type == null)
		return false;
	return switch type {
		case refType(type):
			isStruct(type);
		case named(_, _, underlying):
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
		case pointerType(elem): isStruct(elem);
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
				case invalid_kind:
					true;
				default:
					false;
			}
		case named(_, _, underlying):
			isInvalid(underlying);
		default:
			false;
	}
}

function getElem(type:GoType):GoType {
	if (type == null)
		return type;
	return switch type {
		case named(_, _, type):
			type;
		case _var(_, type):
			getElem(type);
		case arrayType(_.get() => elem, _), sliceType(_.get() => elem), pointerType(elem), refType(elem):
			elem;
		default:
			type;
	}
}

function getVar(type:GoType):GoType {
	if (type == null)
		return type;
	return switch type {
		case _var(_, type):
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
		case named(_, _, underlying):
			getSignature(underlying);
		default:
			null;
	}
}

function isUnsafePointer(type:GoType):Bool {
	if (type == null)
		return false;
	return switch type {
		case named(_, _, elem):
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
		case _var(_, elem):
			isPointer(elem);
		case named(_, _, elem):
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
	return switch type {
		case refType(_):
			true;
		default:
			false;
	}
}

function isReflectTypeRef(type:_Type):Bool {
	return isRef((type : Dynamic)._common());
}

function isRefValue(type:GoType):Bool {
	return switch type {
		case named(_, _, t, _):
			isRefValue(t);
		case basic(_): // , pointer(_):
			false;
		default:
			true;
	}
}

function pointerUnwrap(type:GoType):GoType {
	if (type == null)
		return type;
	return switch type {
		case pointerType(elem):
			pointerUnwrap(elem);
		default:
			type;
	}
}

function isAnyInterface(type:GoType):Bool {
	if (type == null)
		return false;
	return switch type {
		case named(_, _, elem):
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
		case refType(elem):
			isInterface(elem);
		case named(_, _, elem):
			isInterface(elem);
		case interfaceType(_):
			true;
		default:
			false;
	}
}

private function unroll(parent:GoType, child:GoType):GoType {
	var parentName = "";
	var parentType:GoType = null;
	switch parent {
		case named(path, _, _):
			parentName = path;
		default:
			return child;
	}
	return switch child {
		case previouslyNamed(childName):
			childName == parentName ? parent : child;
		case pointerType(elem):
			pointerType(unroll(parent, elem));
		case mapType(_.get() => key, _.get() => value):
			mapType({get: () -> unroll(parent, key)}, {get: () -> unroll(parent, value)});
		case basic(_):
			child;
		case interfaceType(_): child;
		case named(path, methods, type):
			named(path, methods, unroll(parent, type));
		case structType(fields):
			structType([
				for (field in fields)
					{
						name: field.name,
						type: unroll(parent, field.type),
						tag: field.tag,
						embedded: field.embedded,
					}
			]);
		case sliceType(_.get() => elem):
			sliceType({get: () -> unroll(parent, elem)});
		default:
			throw "unsupported unroll gt type: " + child;
	}
}

function getUnderlying(gt:GoType, once:Bool = false) {
	return switch gt {
		case named(_, _, type):
			if (once) {
				type;
			} else {
				getUnderlying(type);
			}
		default:
			gt;
	}
}

enum BasicKind {
	invalid_kind;
	bool_kind;
	int_kind;
	int8_kind;
	int16_kind;
	int32_kind;
	int64_kind;
	uint_kind;
	uint8_kind;
	uint16_kind;
	uint32_kind;
	uint64_kind;
	uintptr_kind;
	float32_kind;
	float64_kind;
	complex64_kind;
	complex128_kind;
	string_kind;
	unsafepointer_kind;

	untyped_bool_kind;
	untyped_int_kind;
	untyped_rune_kind;
	untyped_float_kind;
	untyped_complex_kind;
	untyped_string_kind;
	untyped_nil_kind;
	// aliases
	// byte = uint8
	// rune = int32
}

function defaultValue(typ:Type):Any {
	final t:GoType = @:privateAccess (typ : Dynamic)._common();
	return switch (t : stdgo.internal.reflect.Reflect.GoType) {
		case basic(kind):
			switch kind {
				case string_kind: ("" : GoString);
				case bool_kind: false;
				case int64_kind: (0 : GoInt64);
				case uint64_kind: (0 : GoUInt64);
				case uint_kind: (0 : GoUInt);
				case uint32_kind: (0 : GoUInt32);
				case complex64_kind: (0 : GoComplex64);
				case complex128_kind: (0 : GoComplex128);
				default: 0;
			}
		case named(path, methods, type):
			switch type {
				case structType(_):
					var cl = std.Type.resolveClass(path);
					std.Type.createInstance(cl, []);
				default:
					var t = new _Type(type);
					defaultValue(new _Type_asInterface(Go.pointer(t), t));
			}
		case arrayType(_.get() => elem, len):
			var t = new _Type(elem);
			final value = defaultValue(new _Type_asInterface(Go.pointer(t), t));
			new GoArray([for (i in 0...len) value]);
		default: null;
	}
}

function _set(value:Value) {
	if (@:privateAccess value.underlyingValue != null) {
		if (@:privateAccess value.underlyingIndex == -1) {
			if (@:privateAccess value.underlyingKey != null) {
				@:privateAccess value.underlyingValue.set(@:privateAccess value.underlyingKey, @:privateAccess value.value.value);
			} else {
				@:privateAccess value.underlyingValue.set(@:privateAccess value.value.value); // set pointer
			}
		} else {
			// set array or slice
			@:privateAccess value.underlyingValue.set(@:privateAccess value.underlyingIndex, @:privateAccess value.value.value);
		}
	}
}

function defaultValueInternal(typ:_Type):Any {
	final t:GoType = @:privateAccess typ._common();
	return switch (t : stdgo.internal.reflect.Reflect.GoType) {
		case basic(kind):
			switch kind {
				case string_kind: ("" : GoString);
				case bool_kind: false;
				case int64_kind: (0 : GoInt64);
				case uint64_kind: (0 : GoUInt64);
				case uint_kind: (0 : GoUInt);
				case uint32_kind: (0 : GoUInt32);
				case complex64_kind: (0 : GoComplex64);
				case complex128_kind: (0 : GoComplex128);
				default: 0;
			}
		case named(path, methods, type):
			switch type {
				case structType(_):
					var cl = std.Type.resolveClass(path);
					std.Type.createInstance(cl, []);
				default:
					var t = new _Type(type);
					defaultValue(new _Type_asInterface(Go.pointer(t), t));
			}
		case arrayType(_.get() => elem, len):
			var t = new _Type(elem);
			final value = defaultValue(new _Type_asInterface(Go.pointer(t), t));
			new GoArray([for (i in 0...len) value]);
		default: null;
	}
}

// go2hx's internal impl of Type

@:structInit
@:using(stdgo.internal.reflect.Reflect._Type_static_extension)
@:named
class _Type {
	@:local
	var gt:GoType;

	public function new(gt:GoType) {
		this.gt = gt;
	}

	@:local
	public function _common():GoType
		return cast gt;
}

@:keep @:allow(github_com.go2hx.go4hx.rnd.Rnd._Type_asInterface) class _Type_static_extension {
	static public function _uncommon(t:_Type):Ref<Dynamic>
		throw "not implemented";

	static public function _common(t:_Type):Ref<Dynamic>
		throw "not implemented";

	static public function out(t:_Type, _i:GoInt):Type
		throw "not implemented";

	static public function numOut(t:_Type):GoInt
		throw "not implemented";

	static public function numIn(t:_Type):GoInt
		throw "not implemented";

	static public function numField(t:_Type):GoInt
		throw "not implemented";

	static public function len(t:_Type):GoInt
		throw "not implemented";

	static public function key(t:_Type):Type
		throw "not implemented";

	static public function in_(t:_Type, _i:GoInt):Type
		throw "not implemented";

	static public function fieldByNameFunc(t:_Type, _match:GoString->Bool):{var _0:StructField; var _1:Bool;}
		throw "not implemented";

	static public function fieldByName(t:_Type, _name:GoString):{var _0:StructField; var _1:Bool;}
		throw "not implemented";

	static public function fieldByIndex(t:_Type, _index:Slice<GoInt>):StructField
		throw "not implemented";

	static public function field(t:_Type, _i:GoInt):StructField
		throw "not implemented";

	static public function elem(t:_Type):Type {
		final gt:GoType = getUnderlying(cast t._common());
		switch (gt) {
			case chanType(_, _.get() => elem), refType(elem), pointerType(elem), sliceType(_.get() => elem), arrayType(_.get() => elem, _):
				var t = new _Type(elem);
				// set internal Type
				return new _Type_asInterface(new Pointer(() -> t, value -> t = value), t);
			case interfaceType(_):
				return null;
			default:
				trace(gt);
				throw "reflect.Type.Elem not implemented for " + t.string();
		}
	}

	static public function isVariadic(t:_Type):Bool
		throw "not implemented";

	static public function chanDir(t:_Type):ChanDir
		throw "not implemented";

	static public function bits(t:_Type):GoInt
		throw "not implemented";

	static public function comparable(t:_Type):Bool {
		return switch (t._common()) {
			case sliceType(_), signature(_, _, _, _), mapType(_, _):
				return false;
			case arrayType(_.get() => elem, _):
				return new _Type(elem).comparable();
			case structType(fields):
				for (field in fields) {
					if (!new _Type(field.type).comparable())
						return false;
				}
				return true;
			case named(_, _, type):
				return new _Type(type).comparable();
			default:
				return true;
		}
	}

	static public function convertibleTo(t:_Type, _u:Type):Bool
		throw "not implemented";

	static public function assignableTo(t:_Type, _u:Type):Bool {
		if (_u == null)
			throw "reflect: nil type passed to Type.AssignableTo";
		final i = new _Type_asInterface(Go.pointer(t), t);
		final b = directlyAssignable(_u, i) || t.implements_(_u);
		return b;
	}

	static public function implements_(t:_Type, _u:Type):Bool {
		if (_u == null)
			throw "reflect: nil type passed to Type.Implements";
		// interface check
		// trace(t.kind().string(), _u.kind().string());
		// if (_u.kind() != KindType.interface_)
		//	throw "reflect: non-interface type passed to Type.Implements: " + _u.kind().string();
		return implementsMethod(_u, new _Type_asInterface(Go.pointer(t), t));
	}

	static public function kind(t:_Type):Kind {
		final gt:GoType = getUnderlying(cast t._common());
		return switch gt {
			case typeParam(_, _):
				0;
			case basic(kind):
				switch kind {
					case invalid_kind, untyped_nil_kind: KindType.invalid;
					case bool_kind, untyped_bool_kind: KindType.bool;
					case int_kind: KindType.int;
					case int8_kind: KindType.int8;
					case int16_kind: KindType.int16;
					case int32_kind, untyped_rune_kind: KindType.int32;
					case int64_kind, untyped_int_kind: KindType.int64;
					case uint_kind: KindType.uint;
					case uint8_kind: KindType.uint8;
					case uint16_kind: KindType.uint16;
					case uint32_kind: KindType.uint32;
					case uint64_kind: KindType.uint64;
					case uintptr_kind: KindType.uintptr;
					case float32_kind: KindType.float32;
					case float64_kind, untyped_float_kind: KindType.float64;
					case complex64_kind: KindType.complex64;
					case complex128_kind, untyped_complex_kind: KindType.complex128;
					case string_kind, untyped_string_kind: KindType.string;
					case unsafepointer_kind: KindType.unsafePointer;
				}
			case chanType(_, _): 18;
			case interfaceType(_, _): 20;
			case arrayType(_, _): 17;
			case invalidType: 0;
			case mapType(_, _): 21;
			case named(_, _, type), _var(_, type): new _Type(type).kind();
			case pointerType(_), refType(_): 22;
			case previouslyNamed(_): throw "previouslyNamed type to kind not supported should be unrolled before access";
			case sliceType(_): 23;
			case tuple(_, _): throw "tuple type to kind not supported";
			case signature(_, _, _, _): 19;
			case structType(_): 25;
		}
	}

	static public function string(t:_Type):GoString {
		final gt:GoType = (t : Dynamic)._common();
		return switch (gt) {
			case basic(kind):
				if (kind == untyped_int_kind)
					kind = int_kind;
				var name = kind.getName();
				name = name.substr(0, name.length - 5);
				name;
			case previouslyNamed(name):
				name;
			case named(path, _, type, alias):
				if (alias) {
					new _Type(type).string();
				} else {
					path;
				}
			case pointerType(elem), refType(elem):
				"*" + new _Type(elem).string();
			case structType(fields):
				"struct { " + [
					for (field in fields)
						formatGoFieldName(field.name) + " " + new _Type(field.type).string()
				].join("; ") + " }";
			case arrayType(_.get() => typ, len):
				"[" + Std.string(len) + "]" + new _Type(typ).string();
			case sliceType(_.get() => typ):
				"[]" + new _Type(typ).string();
			case mapType(_.get() => key, _.get() => value):
				"map[" + new _Type(key).string() + "]" + new _Type(value).string();
			case chanType(_, _.get() => typ):
				"chan " + new _Type(typ).string();
			case signature(variadic, _.get() => args, _.get() => rets, _.get() => recv):
				var r:GoString = "func(";
				var preface = "";
				switch recv {
					case invalidType:
					default:
						r += new _Type(recv).string();
						r += ", ";
				}
				for (i in 0...args.length) {
					r += preface;
					preface = ", ";
					final isVariadic = variadic && i == args.length - 1;
					var str:GoString = new _Type(args[i]).string();
					if (isVariadic)
						str = "..." + str.__slice__(2);
					r += str;
				}
				r += ")";
				if (rets != null) {
					if (rets.length > 0) {
						r += " ";
						if (rets.length > 1)
							r += "(";
						preface = "";
						for (ret in rets) {
							r += preface;
							preface = ", ";
							r += new _Type(ret).string();
						}
						if (rets.length > 1)
							r += ")";
					}
				}
				r;
			case invalidType:
				return "<null>";
			case interfaceType(empty, methods):
				var r = "";
				if (empty)
					return "interface {}";
				for (method in methods) {
					r += "; " + formatGoFieldName(method.name) + new _Type(method.type.get()).string().__toString__().substr(4);
				}
				r = r.substr(1);
				"interface {" + r + " }";
			default:
				throw "not found enum toString " + gt; // should never get here
		}
	}

	static public function size(t:_Type):GoUIntptr
		throw "not implemented";

	static public function pkgPath(t:_Type):GoString
		throw "not implemented";

	static public function name(t:_Type):GoString
		throw "not implemented";

	static public function numMethod(t:_Type):GoInt {
		switch t._common() {
			case named(_, methods, _), interfaceType(_, methods):
				var count = 0;
				for (method in methods) {
					if (isExported(method.name))
						count++;
				}
				return count;
			case structType(_):
				return 0;
			case pointerType(_), refType(_):
				return t.elem().numMethod();
			default:
				throw "reflect.NumMethod not implemented for " + t.string();
		}
	}

	static public function methodByName(t:_Type, _0:GoString):{var _0:Method; var _1:Bool;}
		throw "not implemented";

	static public function method(t:_Type, _0:GoInt):Method
		throw "not implemented";

	static public function fieldAlign(t:_Type):GoInt
		throw "not implemented";

	static public function align(t:_Type):GoInt
		throw "not implemented";
}

class _Type_asInterface {
	public function _uncommon():Dynamic
		return cast __self__.value._uncommon();

	public function _common():Dynamic
		return cast __self__.value._common();

	public function out(_i:GoInt):Type
		return __self__.value.out(_i);

	public function numOut():GoInt
		return __self__.value.numOut();

	public function numIn():GoInt
		return __self__.value.numIn();

	public function numField():GoInt
		return __self__.value.numField();

	public function len():GoInt
		return __self__.value.len();

	public function key():Type
		return __self__.value.key();

	public function in_(_i:GoInt):Type
		return __self__.value.in_(_i);

	public function fieldByNameFunc(_match:GoString->Bool):{var _0:StructField; var _1:Bool;}
		return __self__.value.fieldByNameFunc(_match);

	public function fieldByName(_name:GoString):{var _0:StructField; var _1:Bool;}
		return __self__.value.fieldByName(_name);

	public function fieldByIndex(_index:Slice<GoInt>):StructField
		return __self__.value.fieldByIndex(_index);

	public function field(_i:GoInt):StructField
		return __self__.value.field(_i);

	public function elem():Type
		return __self__.value.elem();

	public function isVariadic():Bool
		return __self__.value.isVariadic();

	public function chanDir():ChanDir
		return __self__.value.chanDir();

	public function bits():GoInt
		return __self__.value.bits();

	public function comparable():Bool
		return __self__.value.comparable();

	public function convertibleTo(_u:Type):Bool
		return __self__.value.convertibleTo(_u);

	public function assignableTo(_u:Type):Bool
		return __self__.value.assignableTo(_u);

	public function implements_(_u:Type):Bool
		return __self__.value.implements_(_u);

	public function kind():Kind
		return __self__.value.kind();

	public function string():GoString
		return __self__.value.string();

	public function size():GoUIntptr
		return __self__.value.size();

	public function pkgPath():GoString
		return __self__.value.pkgPath();

	public function name():GoString
		return __self__.value.name();

	public function numMethod():GoInt
		return __self__.value.numMethod();

	public function methodByName(_0:GoString):{var _0:Method; var _1:Bool;}
		return __self__.value.methodByName(_0);

	public function method(_0:GoInt):Method
		return __self__.value.method(_0);

	public function fieldAlign():GoInt
		return __self__.value.fieldAlign();

	public function align():GoInt
		return __self__.value.align();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<_Type>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}
