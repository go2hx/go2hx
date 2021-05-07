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
	GT_interface;
	GT_ptr(elem:GT_enum);
	GT_slice(elem:GT_enum);
	GT_array(elem:GT_enum, len:Int);
	GT_func(input:Array<GT_enum>, output:Array<GT_enum>);
	GT_map(key:GT_enum, value:GT_enum);
	GT_struct(fields:Array<StructField>);
	// go2hx Type system internal enum, no Kind equivalent
	GT_namedType;
}


// TODO - make a go2hx standard class, so that it can be accurately reflected upon
typedef Method = {
	// Name is the method name.
	name:GoString,
	// PkgPath is the package path that qualifies a lower case (unexported)
	// method name. It is empty for upper case (exported) method names.
	// The combination of PkgPath and Name uniquely identifies a method
	// in a method set.
	// See https://golang.org/ref/spec#Uniqueness_of_identifiers
	pkgPath:GoString,
	type:Type,
	// func with receiver as first argument
	func:Value,
	// index for Type.Method
	index:GoInt
}

typedef MethodInfo = {
	m:Method,
	haxeName:GoString
}

typedef NamedTypeData = {
	typeName:GoString,
	haxeTypeName:GoString,
	packPath:GoString,
	methods:Array<MethodInfo>,
	underlying:Type,
	isInterface:Bool,
	interfaces:Array<GoString>
};

class StructField implements StructType {
	public var name:GoString;
	public var pkgPath:GoString;
	public var type:Type;
	public var tag:StructTag;
	public var offset:GoUIntptr;
	public var index:Slice<GoInt>;
	public var anonymous:Bool;
	public var _address_:Int;
	public function new(?name:GoString,?pkgPath:GoString,?type:Type,?tag:StructTag,?offset:GoUIntptr,?index:Slice<GoInt>,?anonymous:Bool) {
		stdgo.internal.Macro.initLocals();
		_address_ = ++Go.addressIndex;
	}
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

	public function new(?v:Any = null, ?t:Type) {
		if (t == null)
			t = new Type();
		_address_ = ++Go.addressIndex;
		val = v;
		surfaceType = t;
		underlyingType = findUnderlying(t);
	}

	public function __copy__()
		return new Value(val, surfaceType);

	public function toString() {
		return (this.toString() : String);
	}

	static function findUnderlying(t:Type):Type {
		switch (t.gt) {
			case GT_namedType:
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


class Type {
	public var gt:GT_enum;
	public inline function new(?t:GT_enum= GT_invalid) {
		gt = t;
	}
	public function serialize():String {
		var serializer = new Serializer();
		serializer.serialize(gt);
		return serializer.toString();
	}

	public function kind():Kind {
		switch (gt) {
			case GT_namedType:
				return new Kind(0); //TODO
			default:
				return new Kind(EnumValueTools.getIndex(gt));
		}
	}

	public function toString():GoString {
		var p = EnumValueTools.getParameters(gt);
		if (p.length == 0)
			return (kind().toString() : GoString);

		switch (gt) {
			case GT_namedType, GT_interface:
				//TODO 
                return null;
			case GT_ptr(elem):
				return ("*" : GoString) + new Type(elem).toString();
			case GT_struct(fields):
                return ""; //TODO
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
			default:
				return (Std.string(gt) : GoString); // should not get here
		}
		return "???"; // should never get here!
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
			case GT_namedType, GT_interface:
				//var nti = getNamedTypeInfo(haxeClassPath);
				//return nti.methods.length;
                return 0; //TODO
			default:
				throw new Error("reflect.NumMethod not implemented for " + toString());
		}
		return 0;
	}

	public function method(idx:GoInt):Method {
		var i:Int = idx.toBasic();
		switch (gt) {
			case GT_namedType, GT_interface:
                return null;
				//var nti = getNamedTypeInfo(haxeClassPath);
				//return nti.methods[i].m; //TODO
			default:
				throw new Error("reflect.Method not implemented for " + toString());
		}
		return null;
	}

	public function numField():GoInt {
		switch (gt) {
			case GT_namedType:
				return 0; //TODO
			case GT_struct(fieldsInfo):
				return fieldsInfo.length;
			default:
				throw new Error("reflect.NumField not implemented for " + toString());
		}
		return 0;
	}

	public function field(idx:GoInt):StructField {
		var i:Int = idx.toBasic();
		switch (gt) {
			case GT_namedType, GT_interface:
                //TODO
				return null;
			case GT_struct(fields):
                //TODO
				return null;
			default:
				throw new Error("reflect.Field not implemented for " + toString());
		}
		return null;
	}

	public function assignableTo(ot:Type):Bool {
		var gtP = EnumValueTools.getParameters(gt);
		var otP = EnumValueTools.getParameters(ot.gt);
		if (gtP.length == 0 && otP.length == 0)
			return kind() == ot.kind();

		switch (gt) {
			case GT_struct(gtFlds):
				switch (ot.gt) {
					case GT_struct(otFlds):
                        //TODO
						/*if (gtFlds.length != otFlds.length)
							return false;
						for (idx in 0...gtFlds.length)
							if (!gtFlds[idx].t.assignableTo(otFlds[idx].t))
								return false;*/
						return true;

					default:
						return false;
				}
			case GT_namedType:
                //TODO
				/*switch (ot.gt) {
					case GT_namedType(otRef):
						return gtRef == otRef;
					default:
						return false;
				}*/
			case GT_interface:
                //TODO
				/*switch (ot.gt) {
					case GT_interface(otRef):
						return gtRef == otRef;
					default:
						return false;
				}*/
			case GT_func(gtArgs, gtRets):
				switch (ot.gt) {
					case GT_func(otArgs, otRets):
						for (gtArg in gtArgs)
							for (otArg in otArgs)
								if (!new Type(gtArg).assignableTo(new Type(otArg)))
									return false;
						for (gtRet in gtRets)
							for (otRet in otRets)
								if (!new Type(gtRet).assignableTo(new Type(otRet)))
									return false;
						return true;
					default:
						return false;
				}
			default:
				throw new Error("refelect.AssignableTo not implemented for ( " + Std.string(gt) + " , " + Std.string(gt) + " )");
		}
		return false;
	}

	public function implements_(ot:Type):Bool {
		switch (gt) {
			case GT_namedType:
                //TODO
                return false;
				/*switch (ot.gt) {
					case GT_interface(iref):
						// check shortcut of rtti implements list
						var NTI = getNamedTypeInfo(ref);
						if (NTI.interfaces.contains(iref))
							return true;
						// otherwise check the individual methodslong-hand, needed for non go2hx classes
						var found = 0;
						for (i in 0...ot.numMethod().toBasic()) {
							var ifM = ot.method(i);
							for (j in 0...numMethod().toBasic()) {
								var ntM = method(j);
								if (ifM.name == ntM.name)
									if (ifM.type.assignableTo(ntM.type))
										found++;
							}
						}
						return found == ot.numMethod().toBasic();
					case GT_namedType(ntRef):
						return ref == ntRef;
					default:
						return false;
				}*/
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

function unserializeType(s:String):Type {
	var unserializer = new Unserializer(s);
	var ret = unserializer.unserialize();
	if (Reflect.isEnumValue(ret)) {
		return ret;
	}
	return new Type(GT_invalid);
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