package stdgo.reflect;

import haxe.EnumTools;
import stdgo.GoArray.GoArray;
import stdgo.GoMap.GoMap;
import stdgo.GoString.GoString;
import stdgo.Pointer.PointerData;
import stdgo.Slice.Slice;
import stdgo.StdGoTypes;

#if go2hx_compiler
typedef Ref<T> = {
	function get():T;
}
#else
typedef Ref<T> = T;
#end

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
		case pointer(elem): isStruct(elem);
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
		case arrayType(#if go2hx_compiler _.get() => #end elem, _), sliceType(#if go2hx_compiler _.get() => #end elem), pointer(elem), refType(elem):
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
	#if go2hx_compiler
	return false;
	#else
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
	#end
}

function isPointer(type:GoType):Bool {
	if (type == null)
		return false;
	return switch type {
		case _var(_, elem):
			isPointer(elem);
		case named(_, _, elem):
			isPointer(elem);
		case pointer(_):
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

function isReflectTypeRef(type:Type):Bool {
	return isRef(type.common().value);
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
		case pointer(elem):
			pointerUnwrap(elem);
		default:
			type;
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
		#if go2hx_compiler
		return null;
		#else
		switch (@:privateAccess t.common().value) {
			case named(_, _, elem), pointer(elem):
				return findUnderlying(new _Type(elem));
			default:
				return t;
		}
		#end
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
		return @:privateAccess value.type.common().value != invalidType;
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

	public function int():GoInt64 {
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

	public function float():GoFloat64 {
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
		#if go2hx_compiler
		return null;
		#else
		var value = value.value;
		final gt = getUnderlying(@:privateAccess type().common().value);
		return switch gt {
			case arrayType(elem, _): @:privateAccess new Value(new AnyInterface((value : GoArray<Dynamic>)[i], new _Type(unroll(gt, elem))));
			case sliceType(elem): @:privateAccess new Value(new AnyInterface((value : Slice<Dynamic>)[i], new _Type(unroll(gt, elem))), value, i).setAddr();
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
		#end
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
		#if go2hx_compiler
		return null;
		#else
		var value = value.value;
		return switch @:privateAccess type().common().value {
			case mapType(_, mapValue):
				new Value(new AnyInterface((value : GoMap<Dynamic, Dynamic>)[key.value], new _Type(mapValue)));
			default:
				throw "not a map";
		}
		#end
	}

	public function mapKeys():Slice<Value> {
		#if go2hx_compiler
		return null;
		#else
		var value = value.value;
		var val:GoMap<Dynamic, Dynamic> = value;
		var gt:GoType = @:privateAccess type().common().value;
		switch gt {
			case mapType(key, valueType):
				var slice = new Slice<Value>(0, 0, ...[
					for (obj in val) {
						new Value(new AnyInterface(obj.key, new _Type(valueType)));
					}
				]);
				return slice;
			default:
				throw "map index incorrect type: " + gt;
		}
		#end
	}

	public function elem():Value {
		#if go2hx_compiler
		return null;
		#else
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
		#end
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

private function unroll(parent:GoType, child:GoType):GoType {
	#if go2hx_compiler
	return null;
	#else
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
		case pointer(elem):
			pointer(unroll(parent, elem));
		case mapType(key, value):
			mapType(unroll(parent, key), unroll(parent, value));
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
		case sliceType(elem):
			sliceType(unroll(parent, elem));
		default:
			throw "unsupported unroll gt type: " + child;
	}
	#end
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

function defaultValue(typ:Type):Any {
	final t:GoType = @:privateAccess typ.common().value;
	return switch t {
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
					defaultValue(new _Type(type));
			}
		case arrayType(#if go2hx_compiler _.get() => #end elem, len):
			new GoArray([for (i in 0...len) defaultValue(new _Type(elem))]);
		default: null;
	}
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
		#if go2hx_compiler
		return 0;
		#else
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
		#end
	}

	public function size():GoUIntptr {
		#if go2hx_compiler
		return 0;
		#else
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
					case arrayType(elem, len):
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
		#end
	}

	public function string():GoString {
		#if go2hx_compiler
		return "";
		#else
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
			case arrayType(typ, len):
				"[" + Std.string(len) + "]" + new _Type(typ).string();
			case sliceType(typ):
				"[]" + new _Type(typ).string();
			case mapType(key, value):
				"map[" + new _Type(key).string() + "]" + new _Type(value).string();
			case chanType(_, typ):
				"chan " + new _Type(typ).string();
			case signature(variadic, args, rets, recv):
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
					r += "; " + formatGoFieldName(method.name) + new _Type(method.type).string().__toString__().substr(4);
				}
				r = r.substr(1);
				"interface {" + r + " }";
			default:
				throw "not found enum toString " + gt; // should never get here
		}
		#end
	}

	public function elem():Type {
		#if go2hx_compiler
		return null;
		#else
		final gt:GoType = getUnderlying(common().value);
		switch (gt) {
			case chanType(_, elem), refType(elem), pointer(elem), sliceType(elem), arrayType(elem, _):
				return new _Type(elem);
			case interfaceType(_):
				return null;
			default:
				trace(gt);
				throw "reflect.Type.Elem not implemented for " + string();
		}
		#end
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
		#if go2hx_compiler
		return 0;
		#else
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
		#end
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
		#if go2hx_compiler
		return null;
		#else
		switch gt {
			case named(path, methods, _):
				final index = index.toBasic();
				if (index >= methods.length)
					throw "Method index out of range";
				var method = methods[index];
				path += "_static_extension";
				final cl = std.Type.resolveClass(path);
				final instance = std.Type.createEmptyInstance(cl);
				final t = new _Type(method.type);
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
		#end
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
		#if go2hx_compiler
		return false;
		#else
		return switch (gt) {
			case sliceType(_), signature(_, _, _, _), mapType(_, _):
				return false;
			case arrayType(elem, _):
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
		#end
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
	#if go2hx_compiler
	return null;
	#else
	return switch (@:privateAccess obj.type.common().value : GoType) {
		case named(_, _, type):
			new AnyInterface((obj.value : Dynamic).__t__, new _Type(type));
		default:
			obj;
	}
	#end
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

function directlyAssignable(t:Type, v:Type):Bool {
	#if go2hx_compiler
	return false;
	#else
	var tgt:GoType = @:privateAccess t.common().value;
	var vgt:GoType = @:privateAccess v.common().value;

	switch tgt {
		case named(path, _, _):
			switch vgt {
				case named(path2, _, _):
					return path == path2;
				default:
			}
		default:
	}
	tgt = getUnderlying(tgt);
	vgt = getUnderlying(vgt);
	return switch tgt {
		case chanType(_, elem), sliceType(elem):
			switch vgt {
				case chanType(_, elem2), sliceType(elem2): new _Type(elem).assignableTo(new _Type(elem2));
				default: false;
			}
		case arrayType(elem, len):
			switch vgt {
				case arrayType(elem2, len2):
					if (len != len2)
						return false;
					new _Type(elem).assignableTo(new _Type(elem2));
				default: false;
			}
		case mapType(key, value):
			switch vgt {
				case mapType(key2, value2):
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
		case signature(_, input, output, _):
			switch vgt {
				case signature(_, input2, output2, _):
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
	#end
}

function implementsMethod(t:Type, v:Type):Bool {
	#if go2hx_compiler
	return false;
	#else
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
							if (!new _Type(methods[i].type).assignableTo(new _Type(methods2[j].type))) {
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
	#end
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
