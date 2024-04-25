package stdgo;

@:structInit
class AnyInterfaceData {
	public var value:Any;
	public var type:stdgo._internal.internal.reflect.Reflect._Type;
	public var __nil__:Bool = false;

	public function new(value, type) {
		this.value = value;
		this.type = type;
	}

	public function toString():String
		return '$value';
}

@:forward
@:forward.new
abstract AnyInterface(AnyInterfaceData) from AnyInterfaceData {
	public function __underlying__():AnyInterface
		return this;

	public inline function __setNil__():AnyInterface {
		this.__nil__ = true;
		return this;
	}

	public inline function __setData__(data:AnyInterface) {
		this.type = data.type;
		this.value = data.value;
		this.__nil__ = data.__nil__;
	}

	@:op(A != b) public static function notEquals(a:AnyInterface, b:AnyInterface):Bool {
		return !equals(a, b);
	}

	@:op(A == B) public static function equals(a:AnyInterface, b:AnyInterface):Bool {
		if (a == null || b == null) // null check
			return a == null && b == null;
		var gt:stdgo._internal.internal.reflect.Reflect.GoType = @:privateAccess (a.type : Dynamic)._common();
		var gt2:stdgo._internal.internal.reflect.Reflect.GoType = @:privateAccess (b.type : Dynamic)._common();

		if (gt.match(invalidType) || gt2.match(invalidType))
			return gt.match(invalidType) && gt2.match(invalidType);
		if (gt.match(basic(untyped_nil_kind)) || gt2.match(basic(untyped_nil_kind)))
			return gt.match(basic(untyped_nil_kind)) && gt2.match(basic(untyped_nil_kind));
		// set internal Type
		if (!a.type.assignableTo(cast new stdgo._internal.internal.reflect.Reflect._Type_asInterface(new Pointer(() -> b.type, value -> b.type = value), b.type))) {
			return false;
		}
		var aValue = a.value;
		var bValue = b.value;
		switch gt {
			case named(path, _, _, _):
				if (aValue != null) {
					switch std.Type.typeof(aValue) {
						case TClass(c):
							final cl = std.Type.getClassName(c);
							if (StringTools.endsWith(cl, "_asInterface")) {
								aValue = (aValue : Dynamic).__underlying__().value;
							}
						default:
					}
				}
			default:
		}
		switch gt2 {
			case named(path, _, _, _):
				if (bValue != null) {
					switch std.Type.typeof(bValue) {
						case TClass(c):
							final cl = std.Type.getClassName(c);
							if (StringTools.endsWith(cl, "_asInterface")) {
								bValue = (bValue : Dynamic).__underlying__().value;
							}
						default:
					}
				}
			default:
		}

		gt = stdgo._internal.internal.reflect.Reflect.getUnderlying(gt);
		gt2 = stdgo._internal.internal.reflect.Reflect.getUnderlying(gt2);
		return switch gt {
			case refType(_):
				aValue == bValue;
			case basic(kind):
				switch kind {
					case string_kind:
						(aValue : GoString) == (bValue : GoString);
					case uint_kind:
						(aValue : GoUInt) == (bValue : GoUInt);
					case int_kind:
						(aValue : GoInt) == (bValue : GoInt);
					case uint64_kind:
						(aValue : GoUInt64) == (bValue : GoUInt64);
					case int64_kind:
						(aValue : GoInt64) == (bValue : GoInt64);
					case complex64_kind:
						(aValue : GoComplex64) == (bValue : GoComplex64);
					case complex128_kind:
						(aValue : GoComplex128) == (bValue : GoComplex128);
					case untyped_int_kind, untyped_float_kind, untyped_complex_kind:
						throw "untyped kind";
					default:
						aValue == bValue;
				}
			case structType(fields):
				if (aValue == null)
					throw "struct equals a value null, b value: " + bValue;
				if (bValue == null)
					throw "struct equals b value null, a value: " + aValue;
				for (i in 0...fields.length) {
					final name = fields[i].name;
					if (StringTools.startsWith(name, "__blank__"))
						continue;
					if (!std.Reflect.hasField(bValue,name))
						return false;
					final type = fields[i].type.get();
					final fieldValue = std.Reflect.field(aValue, name);
					final fieldValue2 = std.Reflect.field(bValue, name);

					if (fieldValue == null || fieldValue2 == null) {
						if (fieldValue == null && fieldValue2 == null)
							return true;
						trace(fieldValue, fieldValue2);
						trace(aValue, bValue);
						throw "struct issue with field name1: " + name;
					}

					final type = @:privateAccess new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.unroll(gt, type));
					final a = new AnyInterface(fieldValue, type);
					final b = new AnyInterface(fieldValue2, type);
					if (AnyInterface.notEquals(a, b))
						return false;
				}
				true;
			case invalidType:
				switch @:privateAccess ((b.type : Dynamic)._common() : stdgo._internal.internal.reflect.Reflect.GoType) {
					case invalidType: true;
					default: false;
				}
			case sliceType(_.get() => elem):
				var a:Slice<Any> = aValue;
				var b:Slice<Any> = bValue;
				var t:Dynamic = new stdgo._internal.internal.reflect.Reflect._Type(elem);
				if (a.length != b.length)
					return false;
				if (a == null || b == null) {
					a == b;
				}else{
					a == b;
				}
			case interfaceType(_, _):
				aValue == bValue;
			case arrayType(_.get() => elem, _):
				var a:GoArray<Any> = aValue;
				var b:GoArray<Any> = bValue;
				var t:Dynamic = new stdgo._internal.internal.reflect.Reflect._Type(elem);
				for (i in 0...a.length.toBasic()) {
					if (AnyInterface.notEquals(new AnyInterface(a[i], t), new AnyInterface(b[i], t)))
						return false;
				}
				true;
			case pointerType(_):
				(aValue : Pointer<Dynamic>) == (bValue : Pointer<Dynamic>);
			default:
				throw "unknown type equals: " + gt;
		}
	}
}