package stdgo.reflect;
import haxe.Unserializer;
import haxe.Serializer;
import stdgo.StdGoTypes;
import haxe.EnumTools;

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
	GT_string;
	GT_unsafePointer;
	GT_chan(elem:GT_enum);
	GT_interface(name:String,methods:Array<GT_enum>);
	GT_ptr(elem:GT_enum);
	GT_slice(elem:GT_enum);
	GT_array(elem:GT_enum, len:Int);
	GT_func(input:Array<GT_enum>, output:Array<GT_enum>);
	GT_map(key:GT_enum, value:GT_enum);
	GT_struct(fields:Array<GT_enum>);
	GT_field(name:String,type:GT_enum,tag:String);
	GT_namedType(name:String,methods:Array<GT_enum>,fields:Array<GT_enum>,interfaces:Array<GT_enum>,type:GT_enum);
	GT_previouslyNamed(name:String,prev:GT_enum);
}

class Error implements StructType implements stdgo.StdGoTypes.Error {
	var message:GoString;
	public var _address_:Int;
	public function new(m:GoString) {
		_address_ = ++Go.addressIndex;
		message = m;
	}

	public function __copy__()
		return new Error(message);

	public function error()
		return message;

	public function toString()
		return (this.error() : String);
}

class Value implements StructType {
	var val:Any;
	var surfaceType:Type;
	var underlyingType:Type;
	public var _address_:Int;

	public function new(v:Any = null, t:Type=null) {
		if (t == null)
			t = new Type(GT_invalid);
		_address_ = ++Go.addressIndex;
		val = v;
		surfaceType = t;
		underlyingType = findUnderlying(t);
	}

	public function __copy__()
		return new Value(val, surfaceType);

	public function toString() {
		return '$val';
	}

	static function findUnderlying(t:Type):Type {
		switch (t.gt) {
			case GT_namedType(name, methods, fields, interfaces, type):
                return null; //TODO
			default:
				return t;
		}
	}

	public inline function type()
		return surfaceType;

	public inline function kind()
		return surfaceType.kind();

	public inline function interface_()
		return (val : AnyInterface);

	public inline function isNil()
		return val == null;

	public inline function isValid()
		return surfaceType.gt != GT_invalid;

	public function bool():Bool {
		switch (underlyingType.gt) {
			case GT_bool:
				return (val : Bool);
			default:
				throw new ValueError("Bool", underlyingType.kind());
		}
		return false;
	}

	public function int():GoInt64 {
		switch (underlyingType.gt) {
			case GT_int, GT_int8, GT_int16, GT_int32, GT_int64:
				return (val : GoInt64);
			default:
				throw new ValueError("Int", underlyingType.kind());
		}
		return 0;
	}

	public function uint():GoUInt64 {
		switch (underlyingType.gt) {
			case GT_uint, GT_uint8, GT_uint16, GT_uint32, GT_uint64:
				return (val : GoUInt64);
			default:
				throw new ValueError("Uint", underlyingType.kind());
		}
		return 0;
	}

	public function float():GoFloat64 {
		switch (underlyingType.gt) {
			case GT_float32, GT_float64:
				return (val : GoFloat64);
			default:
				throw new ValueError("Float", underlyingType.kind());
		}
		return 0;
	}

	public function complex():GoComplex128 {
		switch (underlyingType.gt) {
			case GT_complex128, GT_complex64:
				return (val : GoComplex128);
			default:
				throw new ValueError("Complex", underlyingType.kind());
		}
		return 0;
	}

	public function string():GoString {
		switch (underlyingType.gt) {
			case GT_string:
				return (val : GoString);
			default:
				throw new ValueError("String", underlyingType.kind());
		}
		return "";
	}
}

class ValueError implements StructType implements stdgo.StdGoTypes.Error {
	var method:GoString;
	var kind:Kind;
	public var _address_:Int;

	public function new(m:GoString, k:Kind) {
		_address_ = ++Go.addressIndex;
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

function deepEqual(a1:AnyInterface,a2:AnyInterface):Bool {
	return false; //TODO
}

function typeOf(iface:AnyInterface):Type {
	if (iface == null)
		return new Type(GT_unsafePointer);
	return iface.type;
}

function valueOf(iface:AnyInterface):Value {
	return new Value(iface.value,iface.type);
}

private function gtParams(params:Array<haxe.macro.Type>):Array<GT_enum> {
	// trace("gtLookupParameters", params);
	var pTypes = new Array<GT_enum>();
	for (i in 0...params.length)
		pTypes.push(gtDecode(params[i]));
	return pTypes;
}

function gtDecode(t:haxe.macro.Type):GT_enum {
	// trace("gtDecode:", t);
	var ret = GT_invalid;
	switch (t) {
		case TMono(ref):
			trace("not implemented mono gtDecode");
		case TType(ref, params):
			var ref = ref.get();
			ret = GT_namedType(ref.name, [], [], [],GT_invalid);
		case TAbstract(ref, params):
			// trace("TAbstract:", ref, params);
			var sref:String = ref.toString();
			switch (sref) {
				case "stdgo.Slice":
					ret = GT_slice(gtParams(params)[0]);
				case "stdgo.GoArray":
					ret = GT_array(gtParams(params)[0], -1); // TODO go2hx does not store the length in the type
				case "stdgo.Pointer", "stdgo.PointerWrapper", "stdgo.GoArrayPointer":
					ret = GT_ptr(gtParams(params)[0]);
				case "stdgo.GoMap":
					var ps = gtParams(params);
					ret = GT_map(ps[0], ps[1]);
				case "stdgo.IntegerType":
					ret = GT_int;
				case "stdgo.GoInt8":
					ret = GT_int8;
				case "stdgo.GoInt16":
					ret = GT_int16;
				case "stdgo.GoInt32":
					ret = GT_int32;
				case "stdgo.GoInt", "Int":
					ret = GT_int;
				case "stdgo.GoInt64":
					ret = GT_int64;
				case "stdgo.GoUInt8":
					ret = GT_uint8;
				case "stdgo.GoUInt16":
					ret = GT_uint16;
				case "stdgo.GoUInt":
					ret = GT_uint;
				case "stdgo.GoUInt32":
					ret = GT_uint32;
				case "stdgo.GoUInt64":
					ret = GT_uint64;
				case "stdgo.GoString":
					ret = GT_string;
				case "stdgo.GoComplex64":
					ret = GT_complex64;
				case "stdgo.GoComplex128":
					ret = GT_complex128;
				case "stdgo.ComplexType":
					ret = GT_complex128;
				case "stdgo.GoFloat32":
					ret = GT_float32;
				case "stdgo.GoFloat64":
					ret = GT_float64;
				case "stdgo.FloatType":
					ret = GT_float64;
				case "Bool":
					ret = GT_bool;
				case "stdgo.AnyInterface":
					ret = GT_interface("",null);
				case "Void":
					ret = GT_invalid; // Currently no value is supported for Void however in the future, there will be a runtime value to match to it. HaxeFoundation/haxe-evolution#76
				default:
					trace("unknown abstract name: " + sref);
			}
		case TInst(ref, params):
			var ref = ref.get();
			var methods:Array<GT_enum> = [];
			var fields:Array<GT_enum> = [];
			var interfaces:Array<GT_enum> = [];
			for (field in ref.fields.get()) {
				
				switch field.kind {
					case FMethod(k):
						switch field.name {
							case "new", "__copy__":
								continue;
						}
						switch field.type {
							case TFun(args, ret):
								var params:Array<GT_enum> = [];
								var rets:Array<GT_enum> = [];
								for (arg in args) {
									params.push(gtDecode(arg.t));
								}
								switch ret {
									case TAnonymous(a):
										var fs = a.get().fields;
										for (f in fs) {
											rets.push(GT_field(f.name,gtDecode(f.type),""));
										}
									default:
										if (field.name == "toString") {
											switch ret {
												case TInst(t, params):
													var t = t.get();
													if (t.name == "String")
														continue;
												default:
											}
										}
										trace(ret);
										rets.push(gtDecode(ret));
								}
								methods.push(GT_field(field.name,GT_func(params,rets),""));
							default:
								throw "method needs to be a function";
						}
					default:
				}
			}
			GT_namedType(ref.name,methods,fields,interfaces,GT_invalid);
		case TAnonymous(a):
			var a = a.get();
			a.fields.sort((a,b) -> {
				return haxe.macro.Context.getPosInfos(a.pos).min - haxe.macro.Context.getPosInfos(b.pos).min;
			});
			ret = GT_struct([
				for (field in a.fields) 
					GT_field(field.name,gtDecode(field.type),"")
			]);
		case TFun(args, result):


		case TDynamic(t):
			ret = GT_interface("",[]);
		default:
			throw "reflect.cast_AnyInterface - unhandled typeof " + t;
	}
	return ret;
}


class Type {
	public var gt:GT_enum;
	public inline function new(t:GT_enum) {
		gt = t;
	}
	public function serialize():String {
		Serializer.USE_CACHE = true;
		Serializer.USE_ENUM_INDEX = true;
		var str = Serializer.run(gt);
		return str;
	}

	public function kind():Kind {
		switch (gt) {
			case GT_namedType(name, methods, fields, interfaces, type):
				return new Kind(0); //TODO
			default:
				return new Kind(EnumValueTools.getIndex(gt));
		}
	}

	public function toString():GoString {
		switch (gt) {
			case GT_int: return "int";
			case GT_int8: return "int8";
			case GT_int16: return "int16";
			case GT_int32: return "int32";
			case GT_int64: return "int64";
			case GT_uint8: return "uint8";
			case GT_uint16: return "uint16";
			case GT_uint32: return "uint32";
			case GT_uint64: return "uint64";
			case GT_float32: return "float32";
			case GT_float64: return "float64";
			case GT_complex64: return "complex64";
			case GT_complex128: return "complex128";
			case GT_bool: return "bool";
			case GT_string: return "string";
			case GT_namedType(name, methods, fields, interfaces, type):
				//TODO
				return "";
			case GT_ptr(elem):
				return "*" + new Type(elem).toString();
			case GT_struct(fields):
                return "struct { " + [for (field in fields) switch field {
					case GT_field(name, type, tag):
						(name.charAt(0) == "_" ? name.substr(1) : name.toUpperCase()) + " " + new Type(type).toString();
					default:
						"invalid field";
				}].join("; ") + " }"; //TODO
			case GT_array(typ, len):
				return "[" + Std.string(len) + "]" + new Type(typ).toString();
			case GT_slice(typ):
				return "[]" + new Type(typ).toString();
			case GT_map(key, value):
				return "map[" + new Type(key).toString() + "]" + new Type(value).toString();
			case GT_chan(typ):
				return "chan " + new Type(typ).toString();
			case GT_func(args, rets):
				var r:GoString = "func (";
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
			default:
				throw "not found enum toString " + gt; //should never get here!!!
		}
	}

	public function elem():Type {
		switch (gt) {
			case GT_chan(elem), GT_ptr(elem), GT_slice(elem), GT_array(elem, _):
				return new Type(elem);
			default:
				throw new Error("reflect.Type.Elem not implemented for " + toString());
		}
		return new Type(GT_invalid);
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
			case GT_namedType(name, methods,_,_,_), GT_interface(name,methods):
				return 0; //TODO
			default:
				throw new Error("reflect.NumMethod not implemented for " + toString());
		}
		return 0;
	}

	public function numField():GoInt {
		switch (gt) {
			case GT_namedType(name, methods, fields, interfaces, type):
				return methods.length + fields.length;
			case GT_struct(fields):
				return fields.length;
			default:
				throw new Error("reflect.NumField not implemented for " + toString());
		}
		return 0;
	}

	public function assignableTo(ot:Type):Bool {
		return false;
	}

	public function implements_(ot:Type):Bool {
		switch (gt) {
			case GT_namedType(name, methods, fields, interfaces, type):
                //TODO
                return false;
			default:
				return assignableTo(ot);
		}
		return false;
	}

	public function comparable():Bool {
		switch (gt) {
			case GT_slice(_), GT_func(_, _), GT_map(_, _):
				return false;
			case GT_array(elem, _):
				return new Type(elem).comparable();
			case GT_struct(fields):
                //TODO
				/*var sfs = new StructFieldSet(path, fields);
				for (fld in sfs)
					if (!fld.type.comparable())
						return false;*/
				return true;
			default:
				// TODO named types
				return true;
		}
	}
}

function unserializeType(str:String,expr:Dynamic):stdgo.reflect.Reflect.Type {
	var ret:GT_enum = Unserializer.run(str);
	switch ret { //add array length
		case GT_array(elem, len):
			ret = GT_array(elem,expr.length);
		default:
	}
	return new Type(ret);
}

function ptrTo(t:Type):Type {
	return new Type(GT_ptr(t.gt));
}

typedef StructTag = GoString; // TODO methods on this type



@:enum abstract Kind(stdgo.StdGoTypes.GoUInt) from stdgo.StdGoTypes.GoUInt {
	public inline function new(i:stdgo.StdGoTypes.GoUInt)
		this = i;
	public function toString() {
		var idx:UInt = this.toBasic();
		var r = EnumTools.getConstructors(GT_enum)[idx].substr(3);
		if (r == "unsafePointer")
			return "unsafe.Pointer";
		return r;
	}
	final invalid = 0;
	final bool = 1;
	final int = 2;
	final int8 = 3;
	final int16 = 4;
	final int32 = 5;
	final int64 = 6;
	final uint = 7;
	final uint8 = 8;
	final uint16 = 9;
	final uint32 = 10;
	final uint64 = 11;
	final uintptr = 12;
	final float32 = 13;
	final float64 = 14;
	final complex64 = 15;
	final complex128 = 16;
	final _string = 17;
	final unsafePointer = 18;
	final chan = 19;
	final interface_ = 20;
	final ptr = 21;
	final slice = 22;
	final array = 23;
	final func = 24;
	final map = 25;
	final struct = 26;
}