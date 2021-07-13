package stdgo.reflect;

import stdgo.Pointer.PointerData;
import stdgo.StdGoTypes;
import haxe.EnumTools;
import stdgo.StdGoTypes.AnyInterface;

enum GT_enum {
	GT_invalid;
	GT_bool;
	GT_int;
	GT_int8;
	GT_int16;
	GT_int32;
	GT_int64;
	GT_uint;
	GT_uint8;
	GT_uint16;
	GT_uint32;
	GT_uint64;
	GT_uintptr;
	GT_float32;
	GT_float64;
	GT_complex64;
	GT_complex128;
	GT_array(elem:GT_enum, len:Int);

	GT_chan(elem:GT_enum);
	GT_func(input:Array<GT_enum>, output:Array<GT_enum>);
	GT_interface(pack:String, module:String, name:String, methods:Array<GT_enum>);
	GT_map(key:GT_enum, value:GT_enum);
	GT_ptr(elem:GT_enum);
	GT_slice(elem:GT_enum);
	GT_string;
	GT_struct(fields:Array<GT_enum>);
	GT_unsafePointer;
	GT_field(name:String, type:GT_enum, tag:String);
	GT_namedType(pack:String, module:String, name:String, methods:Array<GT_enum>, interfaces:Array<GT_enum>, type:GT_enum);
	GT_previouslyNamed(name:String);
	GT_variadic(type:GT_enum);
}

class Error implements StructType implements stdgo.StdGoTypes.Error {
	var message:GoString;

	public function new(m:GoString) {
		message = m;
	}

	public function __underlying__():AnyInterface
		return null;

	public function __copy__()
		return new Error(message);

	public function error()
		return message;

	public function toString()
		return (this.error() : String);
}

class Value implements StructType {
	var value:AnyInterface;
	var underlyingValue:Dynamic;
	var underlyingIndex:GoInt = -1;
	var underlyingType:Type = null;

	public function __underlying__():AnyInterface
		return null;

	public function new(value:AnyInterface=null,underlyingValue:Dynamic=null,underlyingIndex:GoInt=-1) {
		this.underlyingValue = underlyingValue;
		this.underlyingIndex = underlyingIndex;
		if (value == null)
			value = new AnyInterface(null,new Type(GT_invalid));
		this.value = value;
		underlyingType = findUnderlying(value.type);
	}

	public function canSet():Bool {
		return underlyingValue != null; //TODO add check for use of unexported fields
	}

	public function canAddr():Bool {
		return underlyingValue != null;
	}

	public function cap():GoInt {
		if (value.value == null)
			return 0;
		switch kind() {
			case array:
				return (value.value : GoArray<Any>).cap();
			case slice:
				return (value.value : Slice<Any>).cap();
			case chan:
				return (value.value : Chan<Any>).cap();
			default:
				throw "not a cap type";
		}
	}

	public function set(x:Value) {
		switch x.kind() {
			case int8: setInt((x.value.value : GoInt8));
			case int16: setInt((x.value.value : GoInt16));
			case int32: setInt((x.value.value : GoInt32));
			case int64: setInt((x.value.value : GoInt64));
			case _int: setInt((x.value.value : GoInt));
			case _uint: setInt((x.value.value : GoUInt8));
			case uint16: setInt((x.value.value : GoUInt16));
			case uint32: setInt((x.value.value : GoUInt32));
			case uint64: setInt((x.value.value : GoUInt64));
			case float32: setFloat((x.value.value : GoFloat32));
			case float64: setFloat((x.value.value : GoFloat64));
			default: value.value = x.value.value;
		}
		_set();
	}

	private function _set() {
		if (underlyingValue != null) {
			if (underlyingIndex == -1) {
				underlyingValue.set(value.value); //set pointer
			}else{
				//set array or slice
				underlyingValue.set(underlyingIndex,value.value); 
			}
		}
	}

	public function setInt(x:GoInt64) {
		value.value = switch kind() {
			case int8: (x : GoInt8);
			case int16: (x : GoInt16);
			case int32: (x : GoInt32);
			case int64: (x : GoInt64);
			case _int: (x : GoInt);
			case _uint: (x : GoUInt);
			case uint8: (x : GoUInt8);
			case uint16: (x : GoUInt16);
			case uint32: (x : GoUInt32);
			case uint64: (x : GoUInt64);
			case float32: (x : GoFloat32);
			case float64: (x : GoFloat64);
			default: x;
		}
		_set();
	}

	public function setString(x:GoString) {
		value.value = x;
		_set();
	}

	public function setUint(x:GoUInt64) {
		value.value = switch kind() {
			case int8: (x : GoInt8);
			case int16: (x : GoInt16);
			case int32: (x : GoInt32);
			case int64: (x : GoInt64);
			case _int: (x : GoInt);
			case _uint: (x : GoUInt);
			case uint8: (x : GoUInt8);
			case uint16: (x : GoUInt16);
			case uint32: (x : GoUInt32);
			case uint64: (x : GoUInt64);
			case float32: (x : GoFloat32);
			case float64: (x : GoFloat64);
			default: x;
		}
		_set();
	}

	public function setComplex(x:GoComplex128) {
		switch kind() {
			case complex64, complex128:
				value.value = x;
			default:
				throw "not a complex kind";
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

	public function __copy__()
		return new Value(value.value,underlyingValue,underlyingIndex);

	public function toString() {
		return Std.string(value.value);
	}

	static function findUnderlying(t:Type):Type {
		switch (t.gt) {
			case GT_namedType(_, _, _, _, _, elem), GT_ptr(elem):
				return findUnderlying(new Type(elem));
			default:
				return t;
		}
	}

	public inline function type()
		return value.type;

	public inline function kind()
		return value.type.kind();

	public inline function interface_():AnyInterface
		return value;

	public inline function isNil()
		return value.value == null;

	public inline function isValid()
		return value.type.gt != GT_invalid;

	public function bool():Bool {
		switch (underlyingType.gt) {
			case GT_bool:
				return value.value;
			default:
				throw new ValueError("Bool", underlyingType.kind());
		}
		return false;
	}

	public function int():GoInt64 {
		return switch kind() {
			case int8: (value.value : GoInt8);
			case int16: (value.value : GoInt16);
			case int32: (value.value : GoInt32);
			case int64: (value.value : GoInt64);
			case _int: (value.value : GoInt);
			case _uint: (value.value : GoUInt);
			case uint8: (value.value : GoUInt8);
			case uint16: (value.value : GoUInt16);
			case uint32: (value.value : GoUInt32);
			case uint64: (value.value : GoUInt64);
			case float32: (value.value : GoFloat32);
			case float64: (value.value : GoFloat64);
			default: value.value;
		}
	}

	public function uint():GoUInt64 {
		return switch kind() {
			case int8: (value.value : GoInt8);
			case int16: (value.value : GoInt16);
			case int32: (value.value : GoInt32);
			case int64: (value.value : GoInt64);
			case _int: (value.value : GoInt);
			case _uint: (value.value : GoUInt);
			case uint8: (value.value : GoUInt8);
			case uint16: (value.value : GoUInt16);
			case uint32: (value.value : GoUInt32);
			case uint64: (value.value : GoUInt64);
			case float32: (value.value : GoFloat32);
			case float64: (value.value : GoFloat64);
			default: value.value;
		}
	}

	public function float():GoFloat64 {
		return switch kind() {
			case int8: (value.value : GoInt8);
			case int16: (value.value : GoInt16);
			case int32: (value.value : GoInt32);
			case int64: (value.value : GoInt64);
			case _int: (value.value : GoInt);
			case _uint: (value.value : GoUInt);
			case uint8: (value.value : GoUInt8);
			case uint16: (value.value : GoUInt16);
			case uint32: (value.value : GoUInt32);
			case uint64: (value.value : GoUInt64);
			case float32: (value.value : GoFloat32);
			case float64: (value.value : GoFloat64);
			default: value.value;
		}
	}

	public function complex():GoComplex128 {
		switch (underlyingType.gt) {
			case GT_complex128, GT_complex64:
				return value.value;
			default:
				throw new ValueError("Complex", underlyingType.kind());
		}
		return 0;
	}

	public function string():GoString {
		switch (underlyingType.gt) {
			case GT_string:
				return value.value;
			default:
				throw new ValueError("String", underlyingType.kind());
		}
		return "";
	}

	public function index(i:GoInt):Value {
		return switch type().gt {
			case GT_array(elem, _), GT_slice(elem): new Value(new AnyInterface((value.value : Dynamic).get(i),new Type(elem)), value.value,i);
			case GT_string:
				new Value(new AnyInterface((value.value : GoString).get(i),new Type(GT_int)),value.value,i);
			default: throw "not supported";
		}
	}

	public function numField():GoInt {
		var type = type().gt;
		switch type {
			case GT_namedType(_, _, _, _, _, t):
				type = t;
			default:
		}
		switch type {
			case GT_struct(fields):
				return fields.length;
			default:
		}
		throw "unsupported";
	}

	public function field(i:GoInt):Value {
		var type = type().gt;
		switch type {
			case GT_namedType(_, _, _, _, _, t):
				type = t;
			default:
		}
		switch type {
			case GT_struct(fields):
				var t = fields[i.toBasic()];
				switch t {
					case GT_field(name, type, _):
						var value = Reflect.field(value.value, name);
						return new Value(new AnyInterface(value, new Type(t)));
					default:
				}
			default:
		}
		throw "unsupported";
	}

	public function pointer():GoUIntptr {
		return value.value != null ? 1 : 0;
	}

	public function mapIndex(key:Value):Value {
		return switch type().gt {
			case GT_map(_, mapValue):
				new Value(new AnyInterface((value.value : GoMap<Dynamic, Dynamic>).get(key.value.value), new Type(mapValue)));
			default:
				throw "not a map";
		}
	}

	public function mapKeys():Slice<Value> {
		var val:GoMap<Dynamic, Dynamic> = value.value;
		var gt = type().gt;
		switch gt {
			case GT_map(key, valueType):
				var slice = new Slice<Value>(...[
					for (obj in val.toSlice())
						new Value(new AnyInterface(obj.key, new Type(valueType)))
				]);
				return slice;
			default:
				throw "map index incorrect type: " + gt;
		}
	}

	public function elem():Value {
		var k = kind();
		switch k {
			case ptr:
				if (value.value == null)
					return new Value();
				switch type().gt {
					case GT_ptr(elem):
						return new Value(new AnyInterface((value.value : Pointer<Dynamic>).value, new Type(elem)));
					default:
				}
			case interface_:
				return this;
		}
		throw new ValueError("reflect.Value.Elem", k);
	}

	public function len():GoInt {
		var k = kind();
		switch k {
			case array, chan, slice, map:
				return (value.value : Dynamic).length;
			case _string:
				return (value.value : Dynamic).length;
		}
		throw "not supported";
	}
}

class ValueError implements StructType implements stdgo.StdGoTypes.Error {
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

	public function toString() {
		return (this.error() : String);
	}

	public function error():GoString {
		if (this.kind == invalid) {
			return "reflect: call of " + this.method + " on zero Value";
		}
		return "reflect: call of " + this.method + " on " + this.kind.toString() + " Value";
	}
}

function typeOf(iface:AnyInterface):Type {
	if (iface == null)
		return new Type(GT_unsafePointer);
	return iface.type;
}

function ptrTo(t:Type):Type {
	return new Type(GT_ptr(t.gt));
}

function sliceOf(t:Type):Type {
	return new Type(GT_slice(t.gt));
}

function zero(typ:Type):Value {
	return new Value(defaultValue(typ), typ);
}

function new_(typ:Type):Value {
	var value = defaultValue(typ);
	return new Value(new AnyInterface(new Pointer(new PointerData(() -> value,(x) -> value = x)),new Type(GT_ptr(typ.gt))));
}

function defaultValue(typ:Type):Any {
	return switch typ.gt {
		case GT_bool: false;
		case GT_int, GT_int8, GT_int16, GT_int32, GT_int64: 0;
		case GT_uint, GT_uint8, GT_uint16, GT_uint32, GT_uint64: 0;
		case GT_float32, GT_float64: 0;
		case GT_complex64, GT_complex128: 0;
		case GT_string: 0;
		case GT_namedType(pack, module, name, methods, interfaces, type):
			var path = pack + "." + name;
			var cl = std.Type.resolveClass(path);
			std.Type.createInstance(cl, []);
		case GT_map(_, _): null;
		case GT_slice(elem): new Slice();
		case GT_array(elem, len): new GoArray([for (i in 0...len) defaultValue(new Type(elem))]);
		default: null;
	}
}

function valueOf(iface:AnyInterface):Value {
	return new Value(iface);
}

typedef Type_ = Type;

class Type {
	public var gt:GT_enum;
	public var stringValue:GoString = "";

	public inline function new(t:GT_enum) {
		gt = t;
		stringValue = toString();
	}

	public function bits():GoInt {
		return switch kind() {
			case int8: 8;
			case int16: 16;
			case int32: 32;
			case int64: 64;
			case uint8: 8;
			case uint16: 16;
			case uint32: 32;
			case uint64: 64;
			case float32: 32;
			case float64: 64;
			case complex64: 64;
			case complex128: 128;
			default: 0;
		}
	}

	public function kind():Kind {
		function getUnderlying(gt) {
			return switch gt {
				case GT_namedType(_, _, _, _, _, type):
					getUnderlying(type);
				default:
					gt;
			}
		}
		gt = getUnderlying(gt);
		return new Kind(EnumValueTools.getIndex(gt));
	}

	public function size():GoUIntptr {
		return switch kind() {
			case bool, int8, uint8: 1;
			case int16, uint16: 2;
			case int32, uint32, int, uint: 4;
			case int64, uint64: 8;
			case float32: 4;
			case float64: 8;
			case complex64: 8;
			case complex128: 16;
			case string: 16;
			// TODO
			case slice: 0;
			case interface_: 0;
			case func: 0;
			case array: 0;
			case struct: 0;
			case ptr: 0;
			default:
				throw "unimplemented: size of type: " + kind();
		}
	}

	public function toString():GoString {
		switch (gt) {
			case GT_previouslyNamed(name):
				return name;
			case GT_int:
				return "int";
			case GT_int8:
				return "int8";
			case GT_int16:
				return "int16";
			case GT_int32:
				return "int32";
			case GT_int64:
				return "int64";
			case GT_uint:
				return "uint";
			case GT_uint8:
				return "uint8";
			case GT_uint16:
				return "uint16";
			case GT_uint32:
				return "uint32";
			case GT_uint64:
				return "uint64";
			case GT_float32:
				return "float32";
			case GT_float64:
				return "float64";
			case GT_complex64:
				return "complex64";
			case GT_complex128:
				return "complex128";
			case GT_bool:
				return "bool";
			case GT_string:
				return "string";
			case GT_field(name, type, tag):
				return new Type(type).toString();
			case GT_namedType(_, module, name, _, _, _):
				return module + "." + name;
			case GT_ptr(elem):
				return "*" + new Type(elem).toString();
			case GT_struct(fields):
				return "struct { " + [
					for (field in fields)
						switch field {
							case GT_field(name, type, tag):
								(name.charAt(0) == "_" ? name.substr(1) : name.toUpperCase()) + " " + new Type(type).toString();
							default:
								"invalid field";
						}
				].join("; ") + " }"; // TODO
			case GT_array(typ, len):
				return "[" + Std.string(len) + "]" + new Type(typ).toString();
			case GT_slice(typ):
				return "[]" + new Type(typ).toString();
			case GT_map(key, value):
				return "map[" + new Type(key).toString() + "]" + new Type(value).toString();
			case GT_chan(typ):
				return "chan " + new Type(typ).toString();
			case GT_func(args, rets):
				var r:GoString = "func(";
				var preface = "";
				for (arg in args) {
					r += preface;
					preface = ", ";
					r += new Type(arg).toString();
				}
				r += ")";
				if (rets != null) {
					r += " ";
					if (rets.length > 1)
						r += "(";
					preface = "";
					for (ret in rets) {
						r += preface;
						preface = ", ";
						r += new Type(ret).toString();
					}
					if (rets.length > 1)
						r += ")";
				}
				return r;
			case GT_invalid:
				return "invalid";
			case GT_variadic(type):
				return "..." + new Type(type).toString();
			case GT_unsafePointer:
				return "unsafe.Pointer";
			case GT_interface(_, _, _, methods):
				var r = "";
				for (method in methods) {
					r += " " + new Type(method).toString();
				}
				r = r.substr(1);
				return "interface {" + r + "}";
			default:
				throw "not found enum toString " + gt; // should never get here!!!
		}
	}

	public function elem():Type {
		switch (gt) {
			case GT_chan(elem), GT_ptr(elem), GT_slice(elem), GT_array(elem, _):
				return new Type(elem);
			default:
				throw new Error("reflect.Type.Elem not implemented for " + toString());
		}
	}

	public function len():GoInt {
		switch (gt) {
			case GT_array(_, len):
				return (len : GoInt);
			default:
				throw new Error("reflect.Type.Len() not implemented for " + toString());
		}
	}

	public function numMethod():GoInt {
		switch (gt) {
			case GT_namedType(_, _, _, methods, _, _), GT_interface(_, _, _, methods):
				return methods.length;
			default:
				throw new Error("reflect.NumMethod not implemented for " + toString());
		}
		return 0;
	}

	public function hasName():Bool {
		switch gt {
			case GT_namedType(_, _, _, _, _), GT_interface(_, _, _, _), GT_field(_, _, _), GT_previouslyNamed(_):
				return true;
			default:
		}
		return false;
	}

	public function name():GoString {
		switch gt {
			case GT_namedType(_, _, name, _, _, _), GT_interface(_, _, name, _), GT_field(name, _, _), GT_previouslyNamed(name):
				return name;
			default:
				trace("gt: " + gt);
				return "";
		}
	}

	public function pkgPath():GoString {
		return switch gt {
			case GT_namedType(pack, _, _, _, _), GT_interface(pack, _, _, _): pack;
			case GT_previouslyNamed(name): name.substr(0, name.lastIndexOf("."));
			default: "";
		}
	}

	public function isVariadic():Bool {
		return switch gt {
			case GT_func(inputs, _):
				if (inputs.length == 0)
					return false;
				return switch inputs[inputs.length - 1] {
					case GT_variadic(_): true;
					default: false;
				}
			case GT_namedType(_, _, _, _, _, type):
				if (type == null || type == GT_invalid)
					throw "not an alias type: " + type;
				new Type(type).isVariadic();
			default: throw "not a function: " + gt;
		}
	}

	public function method(index:GoInt):Method {
		switch gt {
			case GT_namedType(pack, module, name, methods, _, _), GT_interface(pack, module, name, methods):
				var method = methods[index.toBasic()];
				switch method {
					case GT_field(name2, type, tag):
						var path = pack + "." + name;
						var cl = std.Type.resolveClass(path);
						var f = Reflect.field(cl, name2);
						var t = new Type(type);
						return {
							name: name2,
							pkgPath: pack,
							type: t,
							func: new Value(f, t),
							index: index,
						};
					default:
						throw "method is not a field: " + method;
				}
			default:
				throw "invalid type for method access: " + gt;
		}
	}

	public function field(index:GoInt):StructField {
		var module = "";
		switch gt {
			case GT_namedType(_, m, _, _, _, type):
				gt = type;
				module = m;
			default:
		}
		switch gt {
			case GT_struct(fields):
				var field = fields[index.toBasic()];
				switch field {
					case GT_field(name, type, tag):
						return {
							name: name,
							pkgPath: module,
							type: new Type(type),
							tag: tag,
							offset: 0,
							index: new Slice(index),
							anonymous: name == "" || name == "_",
						};
					default:
						throw "not a valid field: " + field;
				}
			default:
				throw "cannot get field";
		}
	}

	public function numField():GoInt {
		switch (gt) {
			case GT_namedType(_, _, _, _, _, type):
				return new Type(type).numField();
			case GT_struct(fields):
				return fields.length;
			default:
				throw new Error("reflect.NumField not implemented for " + toString());
		}
		return 0;
	}

	public function assignableTo(ot:Type):Bool {
		if (ot == null)
			throw "reflect: nil type passed to Type.AssignableTo";
		return directlyAssignable(ot, this) || implementsMethod(ot, this);
	}

	public function implements_(ot:Type):Bool {
		if (ot == null)
			throw "reflect: nil type passed to Type.Implements";
		if (ot.kind() != interface_)
			throw "reflect: non-interface type passed to Type.Implements: " + ot.kind();
		return implementsMethod(ot, this);
	}

	public function comparable():Bool {
		switch (gt) {
			case GT_slice(_), GT_func(_, _), GT_map(_, _):
				return false;
			case GT_array(elem, _):
				return new Type(elem).comparable();
			case GT_struct(fields):
				for (field in fields)
					if (!new Type(field).comparable())
						return false;
				return true;
			case GT_field(name, type, tag):
				return new Type(type).comparable();
			case GT_namedType(pack, module, name, methods, interfaces, type):
				return new Type(type).comparable();
			default:
				return true;
		}
	}
}

@:structInit @:allow(github_com.go2hx.go4hx.rnd.pkg) final class Method implements StructType {
	public var name:GoString = "";
	public var pkgPath:GoString = "";
	public var type:Type = new Type(GT_invalid);
	public var func:Value = new Value();
	public var index:GoInt = 0;

	public function __underlying__():AnyInterface
		return null;

	public function new(?name, ?pkgPath, ?type, ?func, ?index) {
		stdgo.internal.Macro.initLocals();
	}

	public function toString() {
		return '{${Std.string(name)} ${Std.string(pkgPath)} ${Std.string(type)} ${Std.string(func)} ${Std.string(index)}}';
	}

	public function __copy__() {
		return new Method(name, pkgPath, type, func, index);
	}
}

@:forward @:forward.new @:callable @:transitive abstract StructTag(GoString) from GoString to GoString {
	@:op(A++)
	static function __postInc(a:StructTag):StructTag;

	@:op(A--)
	static function __postDec(a:StructTag):StructTag;

	@:op([])
	inline function __get(i:GoInt)
		return untyped this[i];

	public inline function __elem__():GoString
		return this;

	inline public function get(key:GoString):GoString {
		function __block__() {
			var obj = lookup(key);
			var v = obj.value;
			return v;
		};
		return __block__();
	}

	inline public function lookup(key:GoString):MultiReturn<{var value:GoString; var ok:Bool;}> {
		function __block__() {
			var tag = this;
			var value:GoString = (("" : GoString)), ok:Bool = false;
			while (tag != "") {
				var i:GoInt64 = (0 : GoInt64);
				while (i < tag.length && tag[i] == (" ".code : GoRune)) {
					i++;
				};
				tag = tag.slice(i);
				if (tag == "") {
					break;
				};
				i = (0 : GoInt64);
				while (i < tag.length && tag[i] > (" ".code : GoRune) && tag[i] != (":".code : GoRune) && tag[i] != ("\"".code : GoRune)
					&& tag[i] != (127 : GoInt64)) {
					i++;
				};
				if (i == (0 : GoInt64)
					|| i + (1 : GoInt64) >= tag.length
						|| tag[i] != (":".code : GoRune)
						|| tag[i + (1 : GoInt64)] != ("\"".code : GoRune)) {
					break;
				};
				var name:GoString = ((((tag.slice(0, i) : GoString)) : GoString));
				tag = tag.slice(i + (1 : GoInt64));
				i = (1 : GoInt64);
				while (i < tag.length && tag[i] != ("\"".code : GoRune)) {
					if (tag[i] == ("\\".code : GoRune)) {
						i++;
					};
					i++;
				};
				if (i >= tag.length) {
					break;
				};
				var qvalue:GoString = ((((tag.slice(0, i + (1 : GoInt64)) : GoString)) : GoString));
				tag = tag.slice(i + (1 : GoInt64));
				if (key == name) {
					var obj = stdgo.strconv.Strconv.unquote(qvalue);
					var value = obj.value;
					var err = obj.error;
					if (err != null) {
						break;
					};
					return {value: value, ok: true};
				};
			};
			return {value: "", ok: false};
		};
		return __block__();
	}
}

@:structInit @:allow(github_com.go2hx.go4hx.rnd.pkg) final class StructField implements StructType {
	public var name:GoString = "";
	public var pkgPath:GoString = "";
	public var type:Type = new Type(GT_invalid);
	public var tag:StructTag = {}; // new StructTag();
	public var offset:GoUIntptr = new GoUIntptr();
	public var index:Slice<GoInt> = new Slice<GoInt>(0);
	public var anonymous:Bool = false;

	public function __underlying__():AnyInterface
		return null;

	public function new(?name, ?pkgPath, ?type, ?tag, ?offset, ?index, ?anonymous) {
		stdgo.internal.Macro.initLocals();
	}

	public function toString() {
		return
			'{${Std.string(name)} ${Std.string(pkgPath)} ${Std.string(type)} ${Std.string(tag)} ${Std.string(offset)} ${Std.string(index)} ${Std.string(anonymous)}}';
	}

	public function __copy__() {
		return new StructField(name, pkgPath, type, tag, 0, index, anonymous); // TODO set offset, stdgo.GoUIntptr should be Null<Int>
	}
}

private function directlyAssignable(t:Type, v:Type):Bool {
	function getUnderlying(t:GT_enum) {
		return switch t {
			case GT_namedType(_, _, _, _, _, type):
				getUnderlying(type);
			default:
				t;
		}
	}
	t.gt = getUnderlying(t.gt);
	v.gt = getUnderlying(v.gt);

	switch t.gt {
		case GT_chan(elem), GT_slice(elem):
			return switch v.gt {
				case GT_chan(elem2), GT_slice(elem2): new Type(elem).assignableTo(new Type(elem2));
				default: false;
			}
		case GT_array(elem, len):
			return switch v.gt {
				case GT_array(elem2, len2):
					if (len != len2)
						return false;
					new Type(elem).assignableTo(new Type(elem2));
				default: false;
			}
		case GT_map(key, value):
			return switch v.gt {
				case GT_map(key2, value2):
					if (!new Type(key).assignableTo(new Type(key2)))
						return false;
					if (!new Type(value).assignableTo(new Type(value2)))
						return false;
					true;
				default: false;
			}
		case GT_struct(fields):
			switch v.gt {
				case GT_struct(fields2):
					if (fields.length != fields2.length)
						return false;
					for (i in 0...fields.length) {
						switch fields[i] {
							case GT_field(name, type, tag):
								switch fields2[i] {
									case GT_field(name2, type2, tag2):
										if (!directlyAssignable(new Type(type), new Type(type2))) return false;
									default:
								}
							default:
						}
					}
					return true;
				default:
					return false;
			}
		case GT_interface(pack, module, name, methods):
			return false; // checked by implements instead
		case GT_func(input, output):
			switch v.gt {
				case GT_func(input2, output2):
					if (input.length != input2.length)
						return false;
					if (output.length != output2.length)
						return false;

					return true;
				default:
					return false;
			}
		default:
			if (t.gt.getParameters().length != v.gt.getParameters().length)
				return false;
			if (t.gt.getParameters().length == 0 && v.gt.getParameters().length == 0) {
				var t = t.gt.getIndex();
				var v = v.gt.getIndex();
				if (t == GT_int.getIndex()) {
					if (v == GT_int32.getIndex() || v == GT_int64.getIndex())
						return true;
				}
				if (v == GT_int.getIndex()) {
					if (t == GT_int32.getIndex() || t == GT_int64.getIndex())
						return true;
				}
				if (t == v)
					return true;
			} else {
				trace("unknown gt type: " + t.gt + " " + v.gt);
			}
	}
	return false;
}

private function sortMethods(methods:Array<GT_enum>) {
	methods.sort((a, b) -> {
		switch a {
			case GT_field(name, type, tag):
				switch b {
					case GT_field(name2, type2, tag2):
						return name > name2 ? 1 : -1;
					default:
				}
			default:
		}
		return 0;
	});
}

private function implementsMethod(t:Type, v:Type):Bool {
	var interfaceModule:String = "";
	var interfaceName:String = "";
	switch t.gt {
		case GT_interface(pack, module, name, methods):
			if (methods.length == 0)
				return true;
			interfaceModule = module;
			interfaceName = name;
		default:
			return false;
	}
	switch v.gt {
		case GT_namedType(_, _, _, _, interfaces, _):
			for (i in interfaces) {
				switch i {
					case GT_interface(_, module, name, _):
						if (interfaceModule == module && interfaceName == name) return true;
					default:
						throw "not an interface: " + i;
				}
			}
		case GT_interface(pack, module, name, methods):
			if (interfaceModule == module && interfaceName == name)
				return true;
		default:
			throw "not a named type " + t.gt;
	}
	return false;
}

@:forward @:forward.new @:callable @:transitive abstract Kind(GoUInt) from GoUInt to GoUInt {
	@:op(A++)
	static function __postInc(a:Kind):Kind;

	@:op(A--)
	static function __postDec(a:Kind):Kind;

	@:op([])
	inline function __get(i:GoInt)
		return untyped this.get(i);

	@:op([])
	inline function __set(i:GoInt, value)
		return untyped this.set(i, value);

	public function toString():GoString {
		var idx:UInt = this.toBasic();
		var r = EnumTools.getConstructors(GT_enum)[idx].substr(3);
		if (r == "unsafePointer")
			return "unsafe.Pointer";
		return r;
	}
}

final invalid:Kind = (0 : GoInt64);
final bool:Kind = (1 : GoInt64);
final int:Kind = (2 : GoInt64);
final int8:Kind = (3 : GoInt64);
final int16:Kind = (4 : GoInt64);
final int32:Kind = (5 : GoInt64);
final int64:Kind = (6 : GoInt64);
final uint:Kind = (7 : GoInt64);
final uint8:Kind = (8 : GoInt64);
final uint16:Kind = (9 : GoInt64);
final uint32:Kind = (10 : GoInt64);
final uint64:Kind = (11 : GoInt64);
final uintptr:Kind = (12 : GoInt64);
final float32:Kind = (13 : GoInt64);
final float64:Kind = (14 : GoInt64);
final complex64:Kind = (15 : GoInt64);
final complex128:Kind = (16 : GoInt64);
final array:Kind = (17 : GoInt64);
final chan:Kind = (18 : GoInt64);
final func:Kind = (19 : GoInt64);
final interface_:Kind = (20 : GoInt64);
final map:Kind = (21 : GoInt64);
final ptr:Kind = (22 : GoInt64);
final slice:Kind = (23 : GoInt64);
final toString:Kind = (24 : GoInt64);
final struct:Kind = (25 : GoInt64);
final unsafePointer:Kind = (26 : GoInt64);
final string:Kind = (24 : GoInt64);


private final _int = int;
private final _uint = uint;

@:structInit @:allow(github_com.go2hx.go4hx.rnd) final private class Visit {
	// public var _a1:stdgo.unsafe.Unsafe.Pointer = null;
	// public var _a2:stdgo.unsafe.Unsafe.Pointer = null;
	public var _typ:Type_ = null;

	public function new(/*?_a1, ?_a2,*/ ?_typ) {
		
	}
}

function deepValueEqual(v1:Value, v2:Value, visited:GoMap<Visit, Bool>, depth:GoInt):Bool {
	if (!v1.isValid() || !v2.isValid()) {
		return v1.isValid() == v2.isValid();
	};
	/*if (!v1.type().implements_(v2.type()))
		return false; */
	var hard = function(v1:Value, v2:Value):Bool {
		if (v1.kind() == ptr) {
			if ((v1.interface_().value : Pointer<Dynamic>) == (v2.interface_().value : Pointer<Dynamic>))
				return false;
		}
		if (v1.kind() == map || v1.kind() == slice || v1.kind() == interface_) {
			return !v1.isNil() && !v2.isNil();
		};
		return false;
	};
	if (hard(v1, v2)) {};
	if (v1.kind() == array) {
		{
			var i:GoInt = (0 : GoInt64);
			Go.cfor(i < v1.len(), i++, {
				if (!deepValueEqual(v1.index(i), v2.index(i), visited, depth + (1 : GoInt64))) {
					return false;
				};
			});
		};
		return true;
	} else if (v1.kind() == slice) {
		if (v1.isNil() != v2.isNil()) {
			return false;
		};
		if (v1.len() != v2.len()) {
			return false;
		};
		if (v1.pointer() != v2.pointer()) {
			return true;
		};
		{
			var i:GoInt = (0 : GoInt64);
			Go.cfor(i < v1.len(), i++, {
				if (!deepValueEqual(v1.index(i), v2.index(i), visited, depth + (1 : GoInt64))) {
					return false;
				};
			});
		};
		return true;
	} else if (v1.kind() == interface_) {
		if (v1.isNil() || v2.isNil()) {
			return v1.isNil() == v2.isNil();
		};
		return deepValueEqual(v1.elem(), v2.elem(), visited, depth + (1 : GoInt64));
	} else if (v1.kind() == ptr) {
		if (v1.pointer() == v2.pointer()) {
			return true;
		};
		return deepValueEqual(v1.elem(), v2.elem(), visited, depth + (1 : GoInt64));
	} else if (v1.kind() == struct) {
		{
			var i:GoInt = (0 : GoInt64), n:GoInt = v1.numField();
			Go.cfor(i < n, i++, {
				if (!deepValueEqual(v1.field(i), v2.field(i), visited, depth + (1 : GoInt64))) {
					return false;
				};
			});
		};
		return true;
	} else if (v1.kind() == map) {
		if (v1.isNil() != v2.isNil()) {
			return false;
		};
		if (v1.len() != v2.len()) {
			return false;
		};
		if (v1.pointer() == v2.pointer()) {
			return true;
		};
		for (k in v1.mapKeys()) {
			var val1 = v1.mapIndex(k);
			var val2 = v2.mapIndex(k);
			if (!val1.isValid() || !val2.isValid() || !deepValueEqual(val1, val2, visited, depth + (1 : GoInt64))) {
				return false;
			};
		};
		return true;
	} else if (v1.kind() == func) {
		if (v1.isNil() && v2.isNil()) {
			return true;
		};
		return false;
	} else {
		// TODO
		return v1.interface_() == v2.interface_();
	};
}

function deepEqual(x:AnyInterface, y:AnyInterface):Bool {
	if (new Value(y.value, y.type).isNil() || new Value(x.value, x.type).isNil()) {
		return x == y;
	};
	var v1 = valueOf(x);
	var v2 = valueOf(y);
	/*if (!v1.type().implements_(v2.type())) {
		return false;
	};*/
	return deepValueEqual(v1, v2, null, 0);
}
