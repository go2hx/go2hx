package stdgo.reflect;

import haxe.EnumTools;
import stdgo.GoArray.GoArray;
import stdgo.GoMap.GoMap;
import stdgo.GoString.GoString;
import stdgo.Pointer.PointerData;
import stdgo.Slice.Slice;
import stdgo.StdGoTypes;

typedef Ref<T> = {
	function get():T;
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
	pointer(elem:GoType);
	arrayType(elem:Ref<GoType>, len:Int);
	mapType(key:Ref<GoType>, value:Ref<GoType>);
	chanType(dir:Int, elem:Ref<GoType>);
	refType(elem:GoType);
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

@:structInit
class Value {
	@:local
	var value:AnyInterface;
	@:local
	var underlyingValue:Dynamic;
	var underlyingIndex:GoInt = -1;
	@:local
	var underlyingKey:Dynamic = null;
	var canAddrBool:Bool = false;
	var notSetBool:Bool = false;

	public function __underlying__():AnyInterface
		return null;

	public function new(value:AnyInterface = null, underlyingValue:Dynamic = null, underlyingIndex:GoInt = -1, underlyingKey:Dynamic = null) {
		this.underlyingValue = underlyingValue;
		this.underlyingIndex = underlyingIndex;
		this.underlyingKey = underlyingKey;
		if (value == null)
			value = new AnyInterface(null, new _Type(invalidType));
		this.value = value;
	}

	function setSet(_bool:Bool = true) {
		notSetBool = _bool;
		return this;
	}

	public function canSet():Bool {
		if (!canAddr())
			return false;
		if (notSetBool)
			return false;
		return true;
	}

	private function setAddr(_bool:Bool = true) {
		canAddrBool = _bool;
		return this;
	}

	public function canAddr():Bool {
		return canAddrBool;
	}

	public function cap():GoInt {
		var value = value.value;
		if (isNamed(@:privateAccess type().common().value))
			value = (value : Dynamic);
		if (value == null)
			return 0;
		switch kind().toBasic() {
			case _array:
				return (value : GoArray<Any>).capacity;
			case _slice:
				return (value : Slice<Any>).capacity;
			case _chan:
				return (value : Chan<Any>).capacity;
			default:
				throw "not a cap type";
		}
	}

	public function set(x:Value) {
		var value = x.value.value;
		final gt = @:privateAccess x.type().common().value;
		if (value != null) {
			final cl = std.Type.getClassName(std.Type.getClass(value));
			if (StringTools.endsWith(cl, "_asInterface")) {
				value = (value : Dynamic).__underlying__().value;
			}
		}
		final k:Int = kind().toBasic();
		switch k {
			case _struct:
				switch getUnderlying(gt) {
					case structType(fields):
						for (field in fields) {
							final fieldValue = Reflect.field(value, field.name);
							Reflect.setField(this.value.value, field.name, fieldValue);
						}
					default:
				}
			case _int8:
				setInt((value : GoInt8));
			case _int16:
				setInt((value : GoInt16));
			case _int32:
				setInt((value : GoInt32));
			case _int64:
				setInt((value : GoInt64));
			case _int:
				setInt((value : GoInt));
			case _uint:
				setInt((value : GoUInt8));
			case _uint16:
				setInt((value : GoUInt16));
			case _uint32:
				setInt((value : GoUInt32));
			case _uint64:
				setInt((value : GoUInt64));
			case _float32:
				setFloat((value : GoFloat32));
			case _float64:
				setFloat((value : GoFloat64));
			default:
				this.value = x.value;
				_set();
		}
	}

	private function _set() {
		if (underlyingValue != null) {
			if (underlyingIndex == -1) {
				if (underlyingKey != null) {
					underlyingValue.set(underlyingKey, value.value);
				} else {
					underlyingValue.set(value.value); // set pointer
				}
			} else {
				// set array or slice
				underlyingValue.set(underlyingIndex, value.value);
			}
		}
	}

	public function setInt(x:GoInt64) {
		final k:Int = kind().toBasic();
		value.value = switch k {
			case _int8: (x : GoInt8);
			case _int16: (x : GoInt16);
			case _int32: (x : GoInt32);
			case _int64: (x : GoInt64);
			case _int: (x : GoInt);
			case _uint: (x : GoUInt);
			case _uint8: (x : GoUInt8);
			case _uint16: (x : GoUInt16);
			case _uint32: (x : GoUInt32);
			case _uint64: (x : GoUInt64);
			case _float32: (x : GoFloat32);
			case _float64: (x : GoFloat64);
			default: x;
		}
		_set();
	}

	public function setString(x:GoString) {
		value.value = x;
		_set();
	}

	public function setUint(x:GoUInt64) {
		final k:Int = kind().toBasic();
		value.value = switch k {
			case _int8: (x : GoInt8);
			case _int16: (x : GoInt16);
			case _int32: (x : GoInt32);
			case _int64: (x : GoInt64);
			case _int: (x : GoInt);
			case _uint: (x : GoUInt);
			case _uint8: (x : GoUInt8);
			case _uint16: (x : GoUInt16);
			case _uint32: (x : GoUInt32);
			case _uint64: (x : GoUInt64);
			case _float32: (x : GoFloat32);
			case _float64: (x : GoFloat64);
			default: x;
		}
		_set();
	}

	public function setComplex(x:GoComplex128) {
		switch kind() {
			case _complex64, _complex128:
				value.value = x;
			default:
				throw "not a complex kind: " + kind().string();
		}
		_set();
	}

	public function setFloat(x:GoFloat64) {
		value.value = x;
		_set();
	}

	public function setBytes(x:Slice<GoByte>) {
		value.value = x;
		_set();
	}

	public function setBool(x:Bool) {
		value.value = x;
		_set();
	}

	public function canInterface():Bool {
		return true; // TODO
	}

	public function __copy__() {
		return new Value(value, underlyingValue, underlyingIndex);
	}

	static function findUnderlying(t:Type):Type {
		switch (@:privateAccess t.common().value) {
			case named(_, _, elem), pointer(elem):
				return findUnderlying(new _Type(elem));
			default:
				return t;
		}
	}

	public inline function type()
		return value.type;

	public inline function kind()
		return value.type.kind();

	public inline function interface_(val:Dynamic = null):AnyInterface
		return value;

	public inline function isNil():Bool {
		var value = value.value;
		final k:Int = kind().toBasic();
		final gt:GoType = this.type().common().value;
		return switch k {
			case _ptr:
				switch gt {
					case GoType.refType(_):
						false;
					default:
						if (value == null) {
							true;
						} else {
							(value : Pointer<Dynamic>).hasSet();
						}
				}
			case _func:
				value == null;
			case _map, _slice, _chan:
				value == null;
			case _interface:
				value == null;
			case _array:
				false;
			case _struct:
				false;
			default:
				throw "nil check not supported kind: " + kind().string();
		}
	}

	public inline function isValid() {
		return @:privateAccess value.type.common() != invalidType;
	}

	public function bool_():Bool {
		var value = value.value;
		if (isNamed(@:privateAccess type().common().value))
			value = (value : Dynamic).__t__;
		final underlyingType = new _Type(getUnderlying(@:privateAccess type().common().value));
		switch underlyingType.gt {
			case basic(kind):
				switch kind {
					case bool_kind:
						return value;
					default:
						throw new ValueError("Bool", underlyingType.kind());
				}
			default:
				throw new ValueError("Bool", underlyingType.kind());
		}
	}

	public function slice(_i:GoInt, _j:GoInt):Value {
		final t = value.type;
		var value = value.value;
		if (isNamed(@:privateAccess type().common().value))
			value = (value : Dynamic);
		value = (value : Slice<Dynamic>).__slice__(_i, _j);
		return new Value(new AnyInterface(value, t));
	}

	public function int_():GoInt64 {
		var value = value.value;
		if (isNamed(@:privateAccess type().common().value))
			value = (value : Dynamic);
		final k:Int = kind().toBasic();
		return switch k {
			case _int8: (value : GoInt8);
			case _int16: (value : GoInt16);
			case _int32: (value : GoInt32);
			case _int64: (value : GoInt64);
			case _int: (value : GoInt);
			case _uint: (value : GoUInt);
			case _uint8: (value : GoUInt8);
			case _uint16: (value : GoUInt16);
			case _uint32: (value : GoUInt32);
			case _uint64: (value : GoUInt64);
			case _float32: (value : GoFloat32);
			case _float64: (value : GoFloat64);
			case _uintptr: (value : GoUIntptr);
			default: value;
		}
	}

	public function uint():GoUInt64 {
		var value = value.value;
		if (isNamed(@:privateAccess type().common().value))
			value = (value : Dynamic);
		final k:Int = kind().toBasic();
		var value:GoUInt64 = switch k {
			case _int8: (value : GoInt8);
			case _int16: (value : GoInt16);
			case _int32: (value : GoInt32);
			case _int64: (value : GoInt64);
			case _int: (value : GoInt);
			case _uint: (value : GoUInt);
			case _uint8: (value : GoUInt8);
			case _uint16: (value : GoUInt16);
			case _uint32: (value : GoUInt32);
			case _uint64: (value : GoUInt64);
			case _float32: (value : GoFloat32);
			case _float64: (value : GoFloat64);
			case _uintptr: (value : GoUIntptr);
			default: value;
		}
		return value;
	}

	public function float_():GoFloat64 {
		var value = value.value;
		if (isNamed(@:privateAccess type().common().value))
			value = (value : Dynamic);
		final k:Int = kind().toBasic();
		return switch k {
			case _int8: (value : GoInt8);
			case _int16: (value : GoInt16);
			case _int32: (value : GoInt32);
			case _int64: (value : GoInt64);
			case _int: (value : GoInt);
			case _uint: (value : GoUInt);
			case _uint8: (value : GoUInt8);
			case _uint16: (value : GoUInt16);
			case _uint32: (value : GoUInt32);
			case _uint64: (value : GoUInt64);
			case _float32: (value : GoFloat32);
			case _float64: (value : GoFloat64);
			case _uintptr: (value : GoUIntptr);
			default: value;
		}
	}

	public function complex():GoComplex128 {
		var value = value.value;
		if (isNamed(@:privateAccess type().common().value))
			value = (value : Dynamic).__t__;
		final underlyingType = new _Type(getUnderlying(@:privateAccess type().common().value));
		switch (underlyingType.gt) {
			case basic(kind):
				switch kind {
					case complex64_kind, complex128_kind:
						return value;
					default:
						throw new ValueError("Complex", underlyingType.kind());
				}
			default:
				throw new ValueError("Complex", underlyingType.kind());
		}
	}

	public function string():GoString {
		var value = value.value;
		final t = @:privateAccess type().common().value;
		final underlyingType = new _Type(getUnderlying(t));
		switch (underlyingType.gt) {
			case basic(kind):
				switch kind {
					case string_kind:
						return value;
					default:
				}
			default:
		}
		return "<" + type().string() + ">";
	}

	public function index(i:GoInt):Value {
		var value = value.value;
		final gt = getUnderlying(@:privateAccess type().common().value);
		return switch gt {
			case arrayType(_.get() => elem, _): @:privateAccess new Value(new AnyInterface((value : GoArray<Dynamic>)[i], new _Type(unroll(gt, elem))));
			case sliceType(_.get() => elem): @:privateAccess new Value(new AnyInterface((value : Slice<Dynamic>)[i], new _Type(unroll(gt, elem))), value,
					i).setAddr();
			/*case string:
				var value = value;
				if ((value is String))
					value = new GoString(value);
				new Value(new AnyInterface((value : GoString).get(i),new _Type(basic(uint8_kind)))); */
			case basic(kind):
				switch kind {
					case string_kind:
						var value = value;
						if ((value is String))
							value = new GoString(value);
						new Value(new AnyInterface((value : GoString)[i], new _Type(basic(uint8_kind))));
					default:
						throw "unsupported basic kind";
				}
			default: throw "not supported";
		}
	}

	public function numField():GoInt {
		var type:GoType = @:privateAccess type().common().value;
		type = getUnderlying(type);
		switch type {
			case structType(fields):
				return fields.length;
			default:
		}
		throw "unsupported";
	}

	public function field(i:GoInt):Value {
		// struct is never a named type internally
		final gt:GoType = @:privateAccess getUnderlying(type().common().value);
		switch gt {
			case structType(fields):
				var field = fields[i.toBasic()];
				var fieldValue = std.Reflect.field(value.value, field.name);
				var valueType = new Value(new AnyInterface(fieldValue, value.type.field(i).type));
				if (field.name.charAt(0) == "_")
					valueType.setSet(false);
				return valueType;
			default:
		}
		throw "unsupported: " + gt;
	}

	public function pointer():GoUIntptr {
		var value = value.value;
		if (isNamed(@:privateAccess type().common().value))
			value = (value : Dynamic);
		return value != null ? 1 : 0;
	}

	public function mapIndex(key:Value):Value {
		var value = value.value;
		return switch @:privateAccess type().common().value {
			case mapType(_, _.get() => mapValue):
				new Value(new AnyInterface((value : GoMap<Dynamic, Dynamic>)[key.value], new _Type(mapValue)));
			default:
				throw "not a map";
		}
	}

	public function mapKeys():Slice<Value> {
		var value = value.value;
		var val:GoMap<Dynamic, Dynamic> = value;
		var gt:GoType = @:privateAccess type().common().value;
		switch gt {
			case mapType(_.get() => key, _.get() => valueType):
				var slice = new Slice<Value>(0, 0, ...[
					for (obj in val) {
						new Value(new AnyInterface(obj.key, new _Type(valueType)));
					}
				]);
				return slice;
			default:
				throw "map index incorrect type: " + gt;
		}
	}

	public function elem():Value {
		var value = value.value;
		var k = kind();
		final t = @:privateAccess type().common().value;
		switch k {
			case ptr:
				switch getUnderlying(t) {
					case GoType.refType(elem):
						return new Value(new AnyInterface(value, new _Type(elem)), null).setAddr();
					case GoType.pointer(elem):
						if (value == null) {
							final value = new Value(new AnyInterface(null, new _Type(elem)), null).setAddr();
							return value;
						}
						return new Value(new AnyInterface((value : Pointer<Dynamic>).value, new _Type(elem)), value).setAddr();
					default:
				}
			case interface_:
				var value = this.__copy__().setAddr();
				return value;
		}
		throw new ValueError("reflect.Value.Elem", k);
	}

	public function len():GoInt {
		var value = value.value;
		final t = @:privateAccess type().common().value;
		if (isNamed(t))
			value = (value : Dynamic);
		final k:Int = kind().toBasic();
		return switch k {
			case _array:
				(value : GoArray<Dynamic>).length;
			case _chan:
				(value : Chan<Dynamic>).length;
			case _slice:
				(value : Slice<Dynamic>).length;
			case _map:
				(value : GoMap<Dynamic, Dynamic>).length;
			case _string: // string_:
				(value : Dynamic).length;
			default:
				throw "not supported";
		}
	}
}

class ValueError {
	var method:GoString;
	var kind:Kind;

	public function __underlying__():AnyInterface
		return null;

	public function new(m:GoString, k:Kind) {
		method = m;
		kind = k;
	}

	public function __copy__()
		return new ValueError(method, kind);

	public function string():GoString {
		return this.error();
	}

	public function error():GoString {
		if (this.kind == invalid) {
			return "reflect: call of " + this.method + " on zero Value";
		}
		return "reflect: call of " + this.method + " on " + this.kind.string() + " Value";
	}
}

function typeOf(iface:AnyInterface):Type {
	if (iface == null)
		return new _Type(basic(unsafepointer_kind));
	return iface.type;
}

function appendSlice(dst:Value, src:Value):Value {
	return @:privateAccess new Value(new AnyInterface((dst.value.value : Slice<Dynamic>).__append__(...(src.value.value : Slice<Dynamic>).__toArray__()),
		dst.type()));
}

function ptrTo(t:Type):Type {
	return new _Type(pointer(@:privateAccess t.common().value));
}

function sliceOf(t:Type):Type {
	return new _Type(sliceType(@:privateAccess t.common().value));
}

function zero(typ:Type):Value {
	return new Value(new AnyInterface(defaultValue(typ), typ), typ);
}

function new_(typ:Type):Value {
	var value = defaultValue(typ);
	var ptr = new PointerData(() -> value, (x) -> value = x);
	return new Value(new AnyInterface(ptr, new _Type(pointer(@:privateAccess typ.common().value))));
}

function valueOf(iface:AnyInterface):Value {
	if ((iface.type : Dynamic) == false)
		throw "issue";
	return new Value(iface);
}

@:named class ChanDir {
	public var __t__:GoInt;

	public function new(?t:GoInt) {
		__t__ = t == null ? 0 : t;
	}

	public function __underlying__():AnyInterface
		return #if !macro Go.toInterface(__t__) #else null #end;

	public function string():GoString
		return Go.string(__t__);

	public function __copy__():GoInt
		return __t__;
}

@:structInit class StringHeader {
	public var data:GoUIntptr = ((0 : GoUIntptr));
	public var len:GoInt = ((0 : GoInt));

	public function new(?data:GoUIntptr, ?len:GoInt) {
		if (data != null)
			this.data = data;
		if (len != null)
			this.len = len;
	}

	public function string():GoString {
		return '{' + Go.string(data) + " " + Go.string(len) + "}";
	}

	public function __underlying__():AnyInterface
		return #if !macro Go.toInterface(this) #else null #end;

	public function __copy__() {
		return new StringHeader(data, len);
	}

	public function __set__(__tmp__) {
		this.data = __tmp__.data;
		this.len = __tmp__.len;
		return this;
	}
}

@:structInit class SliceHeader {
	public var data:GoUIntptr = ((0 : GoUIntptr));
	public var len:GoInt = ((0 : GoInt));
	public var cap:GoInt = ((0 : GoInt));

	public function new(?data:GoUIntptr, ?len:GoInt, ?cap:GoInt) {
		if (data != null)
			this.data = data;
		if (len != null)
			this.len = len;
		if (cap != null)
			this.cap = cap;
	}

	public function string():GoString {
		return '{' + Go.string(data) + " " + Go.string(len) + " " + Go.string(cap) + "}";
	}

	public function __underlying__():AnyInterface
		return #if !macro Go.toInterface(this) #else null #end;

	public function __copy__() {
		return new SliceHeader(data, len, cap);
	}

	public function __set__(__tmp__) {
		this.data = __tmp__.data;
		this.len = __tmp__.len;
		this.cap = __tmp__.cap;
		return this;
	}
}

typedef Type = StructType & {
	public function align():GoInt;
	public function fieldAlign():GoInt;
	public function method(_0:GoInt):Method;
	public function methodByName(_0:GoString):{var _0:Method; var _1:Bool;};
	public function numMethod():GoInt;
	public function name():GoString;
	public function pkgPath():GoString;
	public function size():GoUIntptr;
	public function string():GoString;
	public function kind():Kind;
	public function implements_(u:Type):Bool;
	public function assignableTo(u:Type):Bool;
	public function convertibleTo(u:Type):Bool;
	public function comparable():Bool;
	public function bits():GoInt;
	public function chanDir():ChanDir;
	public function isVariadic():Bool;
	public function elem():Type;
	public function field(i:GoInt):StructField;
	public function fieldByIndex(index:Slice<GoInt>):StructField;
	public function fieldByName(name:GoString):{_0:StructField, _1:Bool};
	public function fieldByNameFunc(match:GoString->Bool):{_0:StructField, _1:Bool};
	public function in_(i:GoInt):Type;
	public function key():Type;
	public function len():GoInt;
	public function numField():GoInt;
	public function numIn():GoInt;
	public function numOut():GoInt;
	public function out(i:GoInt):Type;

	public function common():Pointer<Dynamic>;
	public function uncommon():Pointer<Dynamic>;
};

class _Type {
	@:local
	public var gt:GoType;

	@:local
	public var __t__(get, never):Type;

	function get___t__():Type {
		return this;
	}

	public function in_(i:GoInt):Type
		throw "not implemented"; // TODO

	public function out(i:GoInt):Type
		throw "not implemented"; // TODO

	public function numOut():GoInt
		throw "not implemented"; // TODO

	public function numIn():GoInt
		throw "not implemented"; // TODO

	public function key():Type
		throw "not implemented"; // TODO

	public function align():GoInt
		return 0; // TODO

	public function fieldAlign():GoInt
		return 0; // TODO

	public function convertibleTo(u:Type):Bool
		return false; // TODO

	public function chanDir():ChanDir
		return new ChanDir(0); // TODO

	public function fieldByIndex(index:Slice<GoInt>):StructField
		return null; // TODO

	public function fieldByName(name:GoString):{_0:StructField, _1:Bool} {
		throw "not implemeneted"; // TODO
	}

	public function fieldByNameFunc(match:GoString->Bool):{_0:StructField, _1:Bool} {
		throw "not implemented"; // TODO
	}

	public function methodByName(name:GoString):{_0:Method, _1:Bool} {
		throw "not implemented"; // TODO
	}

	public function uncommon():Pointer<Dynamic>
		return null;

	public function common():Pointer<Dynamic> {
		return new Pointer(() -> gt, v -> gt = v);
	}

	public inline function new(t:GoType = invalidType) {
		gt = t;
	}

	public function __copy__():Type
		return new _Type(gt);

	public function __underlying__()
		return null;

	public function bits():GoInt {
		final k:Int = kind().toBasic();
		return switch k {
			case _int8: 8;
			case _int16: 16;
			case _int32: 32;
			case _int64: 64;
			case _uint8: 8;
			case _uint16: 16;
			case _uint32: 32;
			case _uint64: 64;
			case _float32: 32;
			case _float64: 64;
			case _complex64: 64;
			case _complex128: 128;
			default: 0;
		}
	}

	public function kind():Kind {
		final gt = getUnderlying(gt);
		return switch gt {
			case typeParam(_, _):
				_invalid;
			case basic(kind):
				switch kind {
					case int_kind: int_;
					case int8_kind: int8;
					case int16_kind: int16;
					case int32_kind: int32;
					case int64_kind: int64;
					case uint_kind: uint;
					case uint8_kind: uint8;
					case uint16_kind: uint16;
					case uint32_kind: uint32;
					case uint64_kind: uint64;
					case float32_kind: float32;
					case float64_kind: float64;
					case complex64_kind: complex64;
					case complex128_kind: complex128;
					case invalid_kind: invalid;
					case bool_kind: bool_;
					case string_kind: __string;
					case uintptr_kind: uintptr;
					case unsafepointer_kind: unsafePointer;
					case untyped_bool_kind: bool_;
					case untyped_complex_kind: complex128;
					case untyped_float_kind: float64;
					case untyped_int_kind: int64;
					case untyped_nil_kind: invalid;
					case untyped_rune_kind: int32;
					case untyped_string_kind: __string;
				}
			case chanType(_, _): chan;
			case interfaceType(_, _): interface_;
			case arrayType(_, _): array;
			case invalidType: invalid;
			case mapType(_, _): map;
			case named(_, _, type), _var(_, type): new _Type(type).kind();
			case pointer(_), refType(_): ptr;
			case previouslyNamed(_): throw "previouslyNamed type to kind not supported should be unrolled before access";
			case sliceType(_): slice;
			case tuple(_, _): throw "tuple type to kind not supported";
			case signature(_, _, _, _): func;
			case structType(_): struct_;
		}
	}

	public function size():GoUIntptr {
		if (kind() == 0)
			return 0;
		final k:Int = kind().toBasic();
		return switch k {
			case _bool, _int8, _uint8: 1;
			case _int16, _uint16: 2;
			case _int32, _uint32, _int, _uint: 4;
			case _int64, _uint64: 8;
			case _float32: 4;
			case _float64: 8;
			case _complex64: 8;
			case _complex128: 16;
			case _string: 16; // TODO: this may be wrong
			// TODO
			case _slice: 0;
			case _interface: 0;
			case _func: 0;
			case _array:
				var gt = getUnderlying(gt);
				return switch gt {
					case arrayType(_.get() => elem, len):
						((new _Type(elem).size().toBasic() * len) : GoUIntptr);
					default:
						0;
				}
			case _struct: 0;
			case _ptr: 0;
			case _uintptr: 0;
			default:
				throw "unimplemented: size of type: " + kind();
		}
	}

	public function string():GoString {
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
			case pointer(elem), refType(elem):
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

	public function elem():Type {
		final gt:GoType = getUnderlying(common().value);
		switch (gt) {
			case chanType(_, _.get() => elem), refType(elem), pointer(elem), sliceType(_.get() => elem), arrayType(_.get() => elem, _):
				return new _Type(elem);
			case interfaceType(_):
				return null;
			default:
				trace(gt);
				throw "reflect.Type.Elem not implemented for " + string();
		}
	}

	public function len():GoInt {
		switch (gt) {
			case arrayType(_, len):
				return (len : GoInt);
			default:
				throw "reflect.Type.Len() not implemented for " + string();
		}
	}

	public function numMethod():GoInt {
		switch (gt) {
			case named(_, methods, _), interfaceType(_, methods):
				var count = 0;
				for (method in methods) {
					if (isExported(method.name))
						count++;
				}
				return count;
			case structType(_):
				return 0;
			case pointer(_), refType(_):
				return elem().numMethod();
			default:
				throw "reflect.NumMethod not implemented for " + string();
		}
	}

	public function hasName():Bool {
		switch gt {
			case named(_, _, _), previouslyNamed(_):
				return true;
			default:
		}
		return false;
	}

	public function name():GoString {
		switch gt {
			case named(name, _, _), previouslyNamed(name):
				return name;
			default:
				trace("gt: " + gt);
				return "";
		}
	}

	public function pkgPath():GoString {
		return switch gt {
			case named(path, _, _):
				var index = path.lastIndexOf(".");
				if (index == -1)
					return "";
				path.substr(0, index);
			case previouslyNamed(name): name.substr(0, name.lastIndexOf("."));
			default: "";
		}
	}

	public function isExported(name:String):Bool {
		return name.charCodeAt(0) != "_".code;
	}

	public function isVariadic():Bool {
		return switch gt {
			case signature(variadic, _, _, _):
				variadic;
			default: throw "not a function: " + gt;
		}
	}

	public function method(index:GoInt):Method {
		switch gt {
			case named(path, methods, _):
				final index = index.toBasic();
				if (index >= methods.length)
					throw "Method index out of range";
				var method = methods[index];
				path += "_static_extension";
				final cl = std.Type.resolveClass(path);
				final instance = std.Type.createEmptyInstance(cl);
				final t = new _Type(method.type.get());
				final f = Reflect.field(instance, method.name);
				return {
					name: method.name,
					pkgPath: path,
					type: t,
					func: new Value(new AnyInterface(f, t)),
					index: index,
				};
			default:
				throw "invalid type for method access: " + gt;
		}
	}

	function formatGoFieldName(name:String):String {
		return (name.charAt(0) == "_" ? "" : name.charAt(0).toUpperCase()) + name.substr(1);
	}

	public function field(index:GoInt):StructField {
		var module = "";
		final underlyingType:GoType = getUnderlying(gt);

		switch underlyingType {
			case structType(fields):
				var field = fields[index.toBasic()];
				var name = field.name;
				name = formatGoFieldName(name);
				return {
					name: name,
					pkgPath: module,
					type: new _Type(unroll(gt, field.type)),
					tag: field.tag,
					index: new Slice(index, index),
					anonymous: field.embedded,
				};
			default:
				throw "cannot get struct: " + gt;
		}
	}

	public function numField():GoInt {
		#if !go2hx_compiler
		switch (gt) {
			case named(_, _, type):
				return new _Type(type).numField();
			case structType(fields):
				return fields.length;
			default:
				throw "reflect.NumField not implemented for " + string();
		}
		#end
		return 0;
	}

	public function assignableTo(ot:Type):Bool {
		if (ot == null)
			throw "reflect: nil type passed to Type.AssignableTo";
		final b = directlyAssignable(ot, this) || this.implements_(ot);
		return b;
	}

	public function implements_(ot:Type):Bool {
		if (ot == null)
			throw "reflect: nil type passed to Type.Implements";
		if (ot.kind() != interface_)
			throw "reflect: non-interface type passed to Type.Implements: " + ot.kind();
		return implementsMethod(ot, this);
	}

	public function comparable():Bool {
		return switch (gt) {
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
}

@:structInit class Method {
	public var name:GoString = "";
	public var pkgPath:GoString = "";
	public var type:Type = new _Type(invalidType);
	public var func:Value = new Value();
	public var index:GoInt = 0;

	public function __underlying__():AnyInterface
		return null;

	public function new(?name:GoString, ?pkgPath:GoString, ?type, ?func, ?index) {
		if (name != null)
			this.name = name;
		if (pkgPath != null)
			this.pkgPath = pkgPath;
		if (type != null)
			this.type = type;
		if (func != null)
			this.func = func;
		if (index != null)
			this.index = index;
	}

	public function string() {
		return '{${Std.string(name)} ${Std.string(pkgPath)} ${Std.string(type)} ${Std.string(func)} ${Std.string(index)}}';
	}

	public function __copy__() {
		return null; // new Method(name, pkgPath, type, func, index);
	}
}

@:named class StructTag {
	public var __t__:GoString = "";

	public function __underlying__():AnyInterface
		return #if !macro Go.toInterface(__t__) #else null #end;

	public function string():GoString
		return Go.string(__t__);

	public function __copy__():GoString
		return __t__;

	public function new(str:GoString)
		this.__t__ = str;

	public function get(key:GoString):GoString {
		var obj = lookup(key);
		var v = obj._0;
		return v;
	}

	public function lookup(key:GoString):{_0:GoString, _1:Bool} {
		var tag = __t__;
		var value:GoString = (("" : GoString)), ok:Bool = false;
		while (tag != (("" : GoString))) {
			var i:GoInt64 = 0;
			while (i < tag.length && tag[i] == (" ".code : GoRune)) {
				i++;
			};
			tag = tag.__slice__(i);
			if (tag == (("" : GoString))) {
				break;
			};
			i = 0;
			while (i < tag.length && tag[i] > (" ".code : GoRune) && tag[i] != (":".code : GoRune) && tag[i] != ("\"".code : GoRune)
				&& tag[i] != ((127 : GoInt64))) {
				i++;
			};
			if (i == ((0 : GoInt64))
				|| i + ((1 : GoInt64)) >= tag.length
					|| tag[i] != (":".code : GoRune)
					|| tag[i + ((1 : GoInt64))] != ("\"".code : GoRune)) {
				break;
			};
			var name:GoString = tag.__slice__(0, i);
			tag = tag.__slice__(i + ((1 : GoInt64)));
			i = 1;
			while (i < tag.length && tag[i] != ("\"".code : GoRune)) {
				if (tag[i] == ("\\".code : GoRune)) {
					i++;
				};
				i++;
			};
			if (i >= tag.length) {
				break;
			};
			var qvalue:GoString = tag.__slice__(0, i + ((1 : GoInt64)));
			tag = tag.__slice__(i + ((1 : GoInt64)));
			if (key == name) {
				var __tmp__ = #if nolinkstd {_0: qvalue, _1: null} #elseif !macro Go.unquote(qvalue) #else {_0: null, _1: null} #end,
					value = __tmp__._0,
					err = __tmp__._1;
				if (err != null) {
					break;
				};
				return {_0: value, _1: true};
			};
		};
		return {_0: "", _1: false};
	}
}

@:structInit final class StructField {
	public var name:GoString = "";
	public var pkgPath:GoString = "";
	public var type:Type = new _Type(invalidType);
	public var tag:StructTag = new StructTag("");
	public var offset:GoUIntptr = (0 : GoUIntptr);
	public var index:Slice<GoInt> = new Slice<GoInt>(0, 0);
	public var anonymous:Bool = false;

	public function __underlying__():AnyInterface
		return null;

	public function new(?name:GoString, ?pkgPath:GoString, ?type, ?tag:GoString, ?offset, ?index, ?anonymous) {
		if (name != null)
			this.name = name;
		if (pkgPath != null)
			this.pkgPath = pkgPath;
		if (type != null)
			this.type = type;
		if (tag != null)
			this.tag = new StructTag(tag);
		if (offset != null)
			this.offset = offset;
		if (index != null)
			this.index = index;
		if (anonymous != null)
			this.anonymous = anonymous;
	}

	public function string():GoString {
		return
			'{${Std.string(name)} ${Std.string(pkgPath)} ${Std.string(type)} ${Std.string(tag)} ${Std.string(offset)} ${Std.string(index)} ${Std.string(anonymous)}}';
	}

	public function __copy__() {
		return new StructField(name, pkgPath, type, tag.__t__, 0, index, anonymous); // TODO set offset, stdgo.GoUIntptr should be Null<Int>
	}
}

private function namedUnderlying(obj:AnyInterface):AnyInterface {
	return switch (@:privateAccess obj.type.common() : GoType) {
		case named(_, _, type):
			new AnyInterface((obj.value : Dynamic).__t__, new _Type(type));
		default:
			obj;
	}
}

function directlyAssignable(t:Type, v:Type):Bool {
	var tgt:GoType = @:privateAccess t.common().value;
	var vgt:GoType = @:privateAccess v.common().value;
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
				case chanType(_, _.get() => elem2), sliceType(_.get() => elem2): new _Type(elem).assignableTo(new _Type(elem2));
				default: false;
			}
		case arrayType(_.get() => elem, len):
			switch vgt {
				case arrayType(_.get() => elem2, len2):
					if (len != len2)
						return false;
					new _Type(elem).assignableTo(new _Type(elem2));
				default: false;
			}
		case mapType(_.get() => key, _.get() => value):
			switch vgt {
				case mapType(_.get() => key2, _.get() => value2):
					if (!new _Type(key).assignableTo(new _Type(key2)))
						return false;
					if (!new _Type(value).assignableTo(new _Type(value2)))
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
						if (!directlyAssignable(new _Type(fields[i].type), new _Type(fields2[i].type)))
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
		case pointer(e), refType(e):
			switch vgt {
				case pointer(e2), refType(e2):
					directlyAssignable(new stdgo.reflect.Reflect._Type(e), new stdgo.reflect.Reflect._Type(e2));
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
	var gt:GoType = @:privateAccess t.common().value;
	var vgt:GoType = @:privateAccess v.common().value;
	if (isPointer(gt))
		gt = getElem(gt);
	if (isPointer(vgt))
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
							if (!new _Type(methods[i].type.get()).assignableTo(new _Type(methods2[j].type.get()))) {
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

@:using(Reflect.Kind_extension)
@:named
typedef Kind = GoUInt;

class Kind_asInterface {
	public var __t__:Pointer<Kind>;

	public function new(__t__)
		this.__t__ = __t__;

	public function string():GoString
		return "";
}

class Kind_extension {
	public static function string(kind:Kind):GoString {
		var idx:Int = kind.toBasic();
		return switch idx {
			case _invalid: "invalid";
			case _bool: "bool";
			case _int: "int";
			case _int8: "int8";
			case _int16: "int16";
			case _int32: "int32";
			case _int64: "int64";
			case _uint: "uint";
			case _uint8: "uint8";
			case _uint16: "uint16";
			case _uint32: "uint32";
			case _uint64: "uint64";
			case _uintptr: "uintptr";
			case _float32: "float32";
			case _float64: "float64";
			case _complex64: "complex64";
			case _complex128: "complex128";
			case _array: "array";
			case _chan: "chan";
			case _func: "func";
			case _interface: "interface";
			case _map: "map";
			case _ptr: "ptr";
			case _slice: "slice";
			case _string: "string";
			case _struct: "struct";
			case _unsafePointer: "unsafe.Pointer";
			default: throw "unknown kind string: " + idx;
		}
	}
}

final _invalid = 0;
final _bool = 1;
final _int = 2;
final _int8 = 3;
final _int16 = 4;
final _int32 = 5;
final _int64 = 6;
final _uint = 7;
final _uint8 = 8;
final _uint16 = 9;
final _uint32 = 10;
final _uint64 = 11;
final _uintptr = 12;
final _float32 = 13;
final _float64 = 14;
final _complex64 = 15;
final _complex128 = 16;
final _array = 17;
final _chan = 18;
final _func = 19;
final _interface = 20;
final _map = 21;
final _ptr = 22;
final _slice = 23;
final _string = 24;
final _struct = 25;
final _unsafePointer = 26;
final invalid:Kind = new Kind(_invalid);
final bool_:Kind = new Kind(_bool);
final int_:Kind = new Kind(_int);
final int8:Kind = new Kind(_int8);
final int16:Kind = new Kind(_int16);
final int32:Kind = new Kind(_int32);
final int64:Kind = new Kind(_int64);
final uint:Kind = new Kind(_uint);
final uint8:Kind = new Kind(_uint8);
final uint16:Kind = new Kind(_uint16);
final uint32:Kind = new Kind(_uint32);
final uint64:Kind = new Kind(_uint64);
final uintptr:Kind = new Kind(_uintptr);
final float32:Kind = new Kind(_float32);
final float64:Kind = new Kind(_float64);
final complex64:Kind = new Kind(_complex64);
final complex128:Kind = new Kind(_complex128);
final array:Kind = new Kind(_array);
final chan:Kind = new Kind(_chan);
final func:Kind = new Kind(_func);
final interface_:Kind = new Kind(_interface);
final map:Kind = new Kind(_map);
final ptr:Kind = new Kind(_ptr);
final slice:Kind = new Kind(_slice);
final toString:Kind = new Kind(_string);
final struct_:Kind = new Kind(_struct);
final unsafePointer:Kind = new Kind(_unsafePointer);
final __string = toString;

@:structInit final private class Visit {
	public var _typ:Type = null;

	public function new(?_typ) {}
}

function deepValueEqual(v1:Value, v2:Value, visited:GoMap<Visit, Bool>, depth:GoInt):Bool {
	if (!v1.isValid() || !v2.isValid()) {
		return v1.isValid() == v2.isValid();
	}
	if (v1.kind() == array) {
		for (i in 0...v1.len().toBasic()) {
			if (!deepValueEqual(v1.index(i), v2.index(i), visited, depth + (1 : GoInt64))) {
				return false;
			}
		}
		return true;
	} else if (v1.kind() == slice) {
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
	} else if (v1.kind() == interface_) {
		if (v1.isNil() || v2.isNil()) {
			return v1.isNil() == v2.isNil();
		}
		return true;
	} else if (v1.kind() == ptr) {
		if (v1.pointer() == v2.pointer()) {
			return true;
		};
		return deepValueEqual(v1.elem(), v2.elem(), visited, depth + (1 : GoInt64));
	} else if (v1.kind() == struct_) {
		for (i in 0...v1.numField().toBasic()) {
			if (!deepValueEqual(v1.field(i), v2.field(i), visited, depth + (1 : GoInt64))) {
				return false;
			}
		}
		return true;
	} else if (v1.kind() == map) {
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
	} else if (v1.kind() == func) {
		if (v1.isNil() && v2.isNil()) {
			return true;
		}
		return false;
	} else {
		return v1.interface_() == v2.interface_();
	}
}

function deepEqual(x:AnyInterface, y:AnyInterface):Bool {
	x = namedUnderlying(x);
	y = namedUnderlying(y);

	if (new Value(x).isNil() || new Value(y).isNil()) {
		return x == y;
	}
	var v1 = valueOf(x);
	var v2 = valueOf(y);
	return deepValueEqual(v1, v2, null, 0);
}

function indirect(v:Value):Value {
	if (v.kind() != ptr)
		return v;
	return v.elem();
}

class Value_asInterface {
	/**
		// CanConvert reports whether the value v can be converted to type t.
		// If v.CanConvert(t) returns true then v.Convert(t) will not panic.
	**/
	@:keep
	public function canConvert(_t:Type):Bool
		return __self__.value.canConvert(_t);

	/**
		// Convert returns the value v converted to type t.
		// If the usual Go conversion rules do not allow conversion
		// of the value v to type t, or if converting v to type t panics, Convert panics.
	**/
	@:keep
	public function convert(_t:Type):Value
		return __self__.value.convert(_t);

	/**
		// UnsafePointer returns v's value as a unsafe.Pointer.
		// It panics if v's Kind is not Chan, Func, Map, Pointer, Slice, or UnsafePointer.
		//
		// If v's Kind is Func, the returned pointer is an underlying
		// code pointer, but not necessarily enough to identify a
		// single function uniquely. The only guarantee is that the
		// result is zero if and only if v is a nil func Value.
		//
		// If v's Kind is Slice, the returned pointer is to the first
		// element of the slice. If the slice is nil the returned value
		// is nil.  If the slice is empty but non-nil the return value is non-nil.
	**/
	@:keep
	public function unsafePointer():stdgo.unsafe.Unsafe.UnsafePointer
		return __self__.value.unsafePointer();

	/**
		// UnsafeAddr returns a pointer to v's data, as a uintptr.
		// It is for advanced clients that also import the "unsafe" package.
		// It panics if v is not addressable.
		//
		// It's preferred to use uintptr(Value.Addr().UnsafePointer()) to get the equivalent result.
	**/
	@:keep
	public function unsafeAddr():GoUIntptr
		return __self__.value.unsafeAddr();

	/**
		// Uint returns v's underlying value, as a uint64.
		// It panics if v's Kind is not Uint, Uintptr, Uint8, Uint16, Uint32, or Uint64.
	**/
	@:keep
	public function uint():GoUInt64
		return __self__.value.uint();

	/**
		// CanUint reports whether Uint can be used without panicking.
	**/
	@:keep
	public function canUint():Bool
		return __self__.value.canUint();

	/**
		// Type returns v's type.
	**/
	@:keep
	public function type():Type
		return __self__.value.type();

	/**
		// TrySend attempts to send x on the channel v but will not block.
		// It panics if v's Kind is not Chan.
		// It reports whether the value was sent.
		// As in Go, x's value must be assignable to the channel's element type.
	**/
	@:keep
	public function trySend(_x:Value):Bool
		return __self__.value.trySend(_x);

	/**
		// TryRecv attempts to receive a value from the channel v but will not block.
		// It panics if v's Kind is not Chan.
		// If the receive delivers a value, x is the transferred value and ok is true.
		// If the receive cannot finish without blocking, x is the zero Value and ok is false.
		// If the channel is closed, x is the zero value for the channel's element type and ok is false.
	**/
	@:keep
	public function tryRecv():{var _0:Value; var _1:Bool;}
		return __self__.value.tryRecv();

	/**
		// String returns the string v's underlying value, as a string.
		// String is a special case because of Go's String method convention.
		// Unlike the other getters, it does not panic if v's Kind is not String.
		// Instead, it returns a string of the form "<T value>" where T is v's type.
		// The fmt package treats Values specially. It does not call their String
		// method implicitly but instead prints the concrete values they hold.
	**/
	@:keep
	public function string():GoString
		return __self__.value.string();

	/**
		// Slice3 is the 3-index form of the slice operation: it returns v[i:j:k].
		// It panics if v's Kind is not Array or Slice, or if v is an unaddressable array,
		// or if the indexes are out of bounds.
	**/
	@:keep
	public function slice3(_i:GoInt, _j:GoInt, _k:GoInt):Value
		return __self__.value.slice3(_i, _j, _k);

	/**
		// Slice returns v[i:j].
		// It panics if v's Kind is not Array, Slice or String, or if v is an unaddressable array,
		// or if the indexes are out of bounds.
	**/
	@:keep
	public function slice(_i:GoInt, _j:GoInt):Value
		return __self__.value.slice(_i, _j);

	/**
		// SetString sets v's underlying value to x.
		// It panics if v's Kind is not String or if CanSet() is false.
	**/
	@:keep
	public function setString(_x:GoString):Void
		__self__.value.setString(_x);

	/**
		// SetPointer sets the unsafe.Pointer value v to x.
		// It panics if v's Kind is not UnsafePointer.
	**/
	@:keep
	public function setPointer(_x:stdgo.unsafe.Unsafe.UnsafePointer):Void
		__self__.value.setPointer(_x);

	/**
		// SetUint sets v's underlying value to x.
		// It panics if v's Kind is not Uint, Uintptr, Uint8, Uint16, Uint32, or Uint64, or if CanSet() is false.
	**/
	@:keep
	public function setUint(_x:GoUInt64):Void
		__self__.value.setUint(_x);

	/**
		// SetMapIndex sets the element associated with key in the map v to elem.
		// It panics if v's Kind is not Map.
		// If elem is the zero Value, SetMapIndex deletes the key from the map.
		// Otherwise if v holds a nil map, SetMapIndex will panic.
		// As in Go, key's elem must be assignable to the map's key type,
		// and elem's value must be assignable to the map's elem type.
	**/
	@:keep
	public function setMapIndex(_key:Value, _elem:Value):Void
		__self__.value.setMapIndex(_key, _elem);

	/**
		// SetCap sets v's capacity to n.
		// It panics if v's Kind is not Slice or if n is smaller than the length or
		// greater than the capacity of the slice.
	**/
	@:keep
	public function setCap(_n:GoInt):Void
		__self__.value.setCap(_n);

	/**
		// SetLen sets v's length to n.
		// It panics if v's Kind is not Slice or if n is negative or
		// greater than the capacity of the slice.
	**/
	@:keep
	public function setLen(_n:GoInt):Void
		__self__.value.setLen(_n);

	/**
		// SetInt sets v's underlying value to x.
		// It panics if v's Kind is not Int, Int8, Int16, Int32, or Int64, or if CanSet() is false.
	**/
	@:keep
	public function setInt(_x:GoInt64):Void
		__self__.value.setInt(_x);

	/**
		// SetFloat sets v's underlying value to x.
		// It panics if v's Kind is not Float32 or Float64, or if CanSet() is false.
	**/
	@:keep
	public function setFloat(_x:GoFloat64):Void
		__self__.value.setFloat(_x);

	/**
		// SetComplex sets v's underlying value to x.
		// It panics if v's Kind is not Complex64 or Complex128, or if CanSet() is false.
	**/
	@:keep
	public function setComplex(_x:GoComplex128):Void
		__self__.value.setComplex(_x);

	/**
		// SetBytes sets v's underlying value.
		// It panics if v's underlying value is not a slice of bytes.
	**/
	@:keep
	public function setBytes(_x:Slice<GoByte>):Void
		__self__.value.setBytes(_x);

	/**
		// SetBool sets v's underlying value.
		// It panics if v's Kind is not Bool or if CanSet() is false.
	**/
	@:keep
	public function setBool(_x:Bool):Void
		__self__.value.setBool(_x);

	/**
		// Set assigns x to the value v.
		// It panics if CanSet returns false.
		// As in Go, x's value must be assignable to v's type.
	**/
	@:keep
	public function set(_x:Value):Void
		__self__.value.set(_x);

	/**
		// Send sends x on the channel v.
		// It panics if v's kind is not Chan or if x's type is not the same type as v's element type.
		// As in Go, x's value must be assignable to the channel's element type.
	**/
	@:keep
	public function send(_x:Value):Void
		__self__.value.send(_x);

	/**
		// Recv receives and returns a value from the channel v.
		// It panics if v's Kind is not Chan.
		// The receive blocks until a value is ready.
		// The boolean value ok is true if the value x corresponds to a send
		// on the channel, false if it is a zero value received because the channel is closed.
	**/
	@:keep
	public function recv():{var _0:Value; var _1:Bool;}
		return __self__.value.recv();

	/**
		// Pointer returns v's value as a uintptr.
		// It returns uintptr instead of unsafe.Pointer so that
		// code using reflect cannot obtain unsafe.Pointers
		// without importing the unsafe package explicitly.
		// It panics if v's Kind is not Chan, Func, Map, Pointer, Slice, or UnsafePointer.
		//
		// If v's Kind is Func, the returned pointer is an underlying
		// code pointer, but not necessarily enough to identify a
		// single function uniquely. The only guarantee is that the
		// result is zero if and only if v is a nil func Value.
		//
		// If v's Kind is Slice, the returned pointer is to the first
		// element of the slice. If the slice is nil the returned value
		// is 0.  If the slice is empty but non-nil the return value is non-zero.
		//
		// It's preferred to use uintptr(Value.UnsafePointer()) to get the equivalent result.
	**/
	@:keep
	public function pointer():GoUIntptr
		return __self__.value.pointer();

	/**
		// OverflowUint reports whether the uint64 x cannot be represented by v's type.
		// It panics if v's Kind is not Uint, Uintptr, Uint8, Uint16, Uint32, or Uint64.
	**/
	@:keep
	public function overflowUint(_x:GoUInt64):Bool
		return __self__.value.overflowUint(_x);

	/**
		// OverflowInt reports whether the int64 x cannot be represented by v's type.
		// It panics if v's Kind is not Int, Int8, Int16, Int32, or Int64.
	**/
	@:keep
	public function overflowInt(_x:GoInt64):Bool
		return __self__.value.overflowInt(_x);

	/**
		// OverflowFloat reports whether the float64 x cannot be represented by v's type.
		// It panics if v's Kind is not Float32 or Float64.
	**/
	@:keep
	public function overflowFloat(_x:GoFloat64):Bool
		return __self__.value.overflowFloat(_x);

	/**
		// OverflowComplex reports whether the complex128 x cannot be represented by v's type.
		// It panics if v's Kind is not Complex64 or Complex128.
	**/
	@:keep
	public function overflowComplex(_x:GoComplex128):Bool
		return __self__.value.overflowComplex(_x);

	/**
		// NumField returns the number of fields in the struct v.
		// It panics if v's Kind is not Struct.
	**/
	@:keep
	public function numField():GoInt
		return __self__.value.numField();

	/**
		// MethodByName returns a function value corresponding to the method
		// of v with the given name.
		// The arguments to a Call on the returned function should not include
		// a receiver; the returned function will always use v as the receiver.
		// It returns the zero Value if no method was found.
	**/
	@:keep
	public function methodByName(_name:GoString):Value
		return __self__.value.methodByName(_name);

	/**
		// NumMethod returns the number of methods in the value's method set.
		//
		// For a non-interface type, it returns the number of exported methods.
		//
		// For an interface type, it returns the number of exported and unexported methods.
	**/
	@:keep
	public function numMethod():GoInt
		return __self__.value.numMethod();

	/**
		// Method returns a function value corresponding to v's i'th method.
		// The arguments to a Call on the returned function should not include
		// a receiver; the returned function will always use v as the receiver.
		// Method panics if i is out of range or if v is a nil interface value.
	**/
	@:keep
	public function method(_i:GoInt):Value
		return __self__.value.method(_i);

	/**
		// MapRange returns a range iterator for a map.
		// It panics if v's Kind is not Map.
		//
		// Call Next to advance the iterator, and Key/Value to access each entry.
		// Next returns false when the iterator is exhausted.
		// MapRange follows the same iteration semantics as a range statement.
		//
		// Example:
		//
		//	iter := reflect.ValueOf(m).MapRange()
		//	for iter.Next() {
		//		k := iter.Key()
		//		v := iter.Value()
		//		...
		//	}
	**/
	@:keep
	public function mapRange():Ref<MapIter>
		return __self__.value.mapRange();

	/**
		// SetIterValue assigns to v the value of iter's current map entry.
		// It is equivalent to v.Set(iter.Value()), but it avoids allocating a new Value.
		// As in Go, the value must be assignable to v's type.
	**/
	@:keep
	public function setIterValue(_iter:Ref<MapIter>):Void
		__self__.value.setIterValue(_iter);

	/**
		// SetIterKey assigns to v the key of iter's current map entry.
		// It is equivalent to v.Set(iter.Key()), but it avoids allocating a new Value.
		// As in Go, the key must be assignable to v's type.
	**/
	@:keep
	public function setIterKey(_iter:Ref<MapIter>):Void
		__self__.value.setIterKey(_iter);

	/**
		// MapKeys returns a slice containing all the keys present in the map,
		// in unspecified order.
		// It panics if v's Kind is not Map.
		// It returns an empty slice if v represents a nil map.
	**/
	@:keep
	public function mapKeys():Slice<Value>
		return __self__.value.mapKeys();

	/**
		// MapIndex returns the value associated with key in the map v.
		// It panics if v's Kind is not Map.
		// It returns the zero Value if key is not found in the map or if v represents a nil map.
		// As in Go, the key's value must be assignable to the map's key type.
	**/
	@:keep
	public function mapIndex(_key:Value):Value
		return __self__.value.mapIndex(_key);

	/**
		// Len returns v's length.
		// It panics if v's Kind is not Array, Chan, Map, Slice, String, or pointer to Array.
	**/
	@:keep
	public function len():GoInt
		return __self__.value.len();

	/**
		// Kind returns v's Kind.
		// If v is the zero Value (IsValid returns false), Kind returns Invalid.
	**/
	@:keep
	public function kind():Kind
		return __self__.value.kind();

	/**
		// IsZero reports whether v is the zero value for its type.
		// It panics if the argument is invalid.
	**/
	@:keep
	public function isZero():Bool
		return __self__.value.isZero();

	/**
		// IsValid reports whether v represents a value.
		// It returns false if v is the zero Value.
		// If IsValid returns false, all other methods except String panic.
		// Most functions and methods never return an invalid Value.
		// If one does, its documentation states the conditions explicitly.
	**/
	@:keep
	public function isValid():Bool
		return __self__.value.isValid();

	/**
		// IsNil reports whether its argument v is nil. The argument must be
		// a chan, func, interface, map, pointer, or slice value; if it is
		// not, IsNil panics. Note that IsNil is not always equivalent to a
		// regular comparison with nil in Go. For example, if v was created
		// by calling ValueOf with an uninitialized interface variable i,
		// i==nil will be true but v.IsNil will panic as v will be the zero
		// Value.
	**/
	@:keep
	public function isNil():Bool
		return __self__.value.isNil();

	/**
		// InterfaceData returns a pair of unspecified uintptr values.
		// It panics if v's Kind is not Interface.
		//
		// In earlier versions of Go, this function returned the interface's
		// value as a uintptr pair. As of Go 1.4, the implementation of
		// interface values precludes any defined use of InterfaceData.
		//
		// Deprecated: The memory representation of interface values is not
		// compatible with InterfaceData.
	**/
	@:keep
	public function interfaceData():GoArray<GoUIntptr>
		return __self__.value.interfaceData();

	/**
		// Interface returns v's current value as an interface{}.
		// It is equivalent to:
		//
		//	var i interface{} = (v's underlying value)
		//
		// It panics if the Value was obtained by accessing
		// unexported struct fields.
	**/
	@:keep
	public function interface_():AnyInterface
		return __self__.value.interface_();

	/**
		// CanInterface reports whether Interface can be used without panicking.
	**/
	@:keep
	public function canInterface():Bool
		return __self__.value.canInterface();

	/**
		// Int returns v's underlying value, as an int64.
		// It panics if v's Kind is not Int, Int8, Int16, Int32, or Int64.
	**/
	@:keep
	public function int_():GoInt64
		return __self__.value.int_();

	/**
		// CanInt reports whether Int can be used without panicking.
	**/
	@:keep
	public function canInt():Bool
		return __self__.value.canInt();

	/**
		// Index returns v's i'th element.
		// It panics if v's Kind is not Array, Slice, or String or i is out of range.
	**/
	@:keep
	public function index(_i:GoInt):Value
		return __self__.value.index(_i);

	/**
		// Float returns v's underlying value, as a float64.
		// It panics if v's Kind is not Float32 or Float64
	**/
	@:keep
	public function float_():GoFloat64
		return __self__.value.float_();

	/**
		// CanFloat reports whether Float can be used without panicking.
	**/
	@:keep
	public function canFloat():Bool
		return __self__.value.canFloat();

	/**
		// FieldByNameFunc returns the struct field with a name
		// that satisfies the match function.
		// It panics if v's Kind is not struct.
		// It returns the zero Value if no field was found.
	**/
	@:keep
	public function fieldByNameFunc(_match:GoString->Bool):Value
		return __self__.value.fieldByNameFunc(_match);

	/**
		// FieldByName returns the struct field with the given name.
		// It returns the zero Value if no field was found.
		// It panics if v's Kind is not struct.
	**/
	@:keep
	public function fieldByName(_name:GoString):Value
		return __self__.value.fieldByName(_name);

	/**
		// FieldByIndexErr returns the nested field corresponding to index.
		// It returns an error if evaluation requires stepping through a nil
		// pointer, but panics if it must step through a field that
		// is not a struct.
	**/
	@:keep
	public function fieldByIndexErr(_index:Slice<GoInt>):{var _0:Value; var _1:Error;}
		return __self__.value.fieldByIndexErr(_index);

	/**
		// FieldByIndex returns the nested field corresponding to index.
		// It panics if evaluation requires stepping through a nil
		// pointer or a field that is not a struct.
	**/
	@:keep
	public function fieldByIndex(_index:Slice<GoInt>):Value
		return __self__.value.fieldByIndex(_index);

	/**
		// Field returns the i'th field of the struct v.
		// It panics if v's Kind is not Struct or i is out of range.
	**/
	@:keep
	public function field(_i:GoInt):Value
		return __self__.value.field(_i);

	/**
		// Elem returns the value that the interface v contains
		// or that the pointer v points to.
		// It panics if v's Kind is not Interface or Pointer.
		// It returns the zero Value if v is nil.
	**/
	@:keep
	public function elem():Value
		return __self__.value.elem();

	/**
		// Complex returns v's underlying value, as a complex128.
		// It panics if v's Kind is not Complex64 or Complex128
	**/
	@:keep
	public function complex():GoComplex128
		return __self__.value.complex();

	/**
		// CanComplex reports whether Complex can be used without panicking.
	**/
	@:keep
	public function canComplex():Bool
		return __self__.value.canComplex();

	/**
		// Close closes the channel v.
		// It panics if v's Kind is not Chan.
	**/
	@:keep
	public function close():Void
		__self__.value.close();

	/**
		// Cap returns v's capacity.
		// It panics if v's Kind is not Array, Chan, Slice or pointer to Array.
	**/
	@:keep
	public function cap():GoInt
		return __self__.value.cap();

	/**
		// CallSlice calls the variadic function v with the input arguments in,
		// assigning the slice in[len(in)-1] to v's final variadic argument.
		// For example, if len(in) == 3, v.CallSlice(in) represents the Go call v(in[0], in[1], in[2]...).
		// CallSlice panics if v's Kind is not Func or if v is not variadic.
		// It returns the output results as Values.
		// As in Go, each input argument must be assignable to the
		// type of the function's corresponding input parameter.
	**/
	@:keep
	public function callSlice(_in:Slice<Value>):Slice<Value>
		return __self__.value.callSlice(_in);

	/**
		// Call calls the function v with the input arguments in.
		// For example, if len(in) == 3, v.Call(in) represents the Go call v(in[0], in[1], in[2]).
		// Call panics if v's Kind is not Func.
		// It returns the output results as Values.
		// As in Go, each input argument must be assignable to the
		// type of the function's corresponding input parameter.
		// If v is a variadic function, Call creates the variadic slice parameter
		// itself, copying in the corresponding values.
	**/
	@:keep
	public function call(_in:Slice<Value>):Slice<Value>
		return __self__.value.call(_in);

	/**
		// CanSet reports whether the value of v can be changed.
		// A Value can be changed only if it is addressable and was not
		// obtained by the use of unexported struct fields.
		// If CanSet returns false, calling Set or any type-specific
		// setter (e.g., SetBool, SetInt) will panic.
	**/
	@:keep
	public function canSet():Bool
		return __self__.value.canSet();

	/**
		// CanAddr reports whether the value's address can be obtained with Addr.
		// Such values are called addressable. A value is addressable if it is
		// an element of a slice, an element of an addressable array,
		// a field of an addressable struct, or the result of dereferencing a pointer.
		// If CanAddr returns false, calling Addr will panic.
	**/
	@:keep
	public function canAddr():Bool
		return __self__.value.canAddr();

	/**
		// Bytes returns v's underlying value.
		// It panics if v's underlying value is not a slice of bytes or
		// an addressable array of bytes.
	**/
	@:keep
	public function bytes():Slice<GoByte>
		return __self__.value.bytes();

	/**
		// Bool returns v's underlying value.
		// It panics if v's kind is not Bool.
	**/
	@:keep
	public function bool_():Bool
		return __self__.value.bool_();

	/**
		// Addr returns a pointer value representing the address of v.
		// It panics if CanAddr() returns false.
		// Addr is typically used to obtain a pointer to a struct field
		// or slice element in order to call a method that requires a
		// pointer receiver.
	**/
	@:keep
	public function addr():Value
		return __self__.value.addr();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<Value>;
	var __type__:stdgo.reflect.Reflect.Type;
}

class MapIter {
	var value:Value = null;

	public function new(value) {
		this.value = value;
	}

	public function key():Value {
		return null;
	}

	public function next():Bool {
		return false;
	}

	public function reset(v:Value) {}

	public function value():Value {
		return null;
	}
}
