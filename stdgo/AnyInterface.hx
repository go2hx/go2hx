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
/**
 * Simulated any/interface{} type in Haxe.
 * Made up of an `Any` value and a `Reflect._Type` 
 * The type information is filled in using ``stdgo.Go.toInterface`` at macro compile time.
 * 
 * This allows go2hx to have stronger reflection support then normal Haxe reflection.
 * This is required because of the `reflect` stdlib
 */
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
		var aValue = a.value;
		var bValue = b.value;
		switch gt {
			case named(_, _, _, _), refType(_):
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
			case named(_, _, _, _), refType(_):
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
		// set internal Type
		var aType = new stdgo._internal.internal.reflect.Reflect._Type(gt);
		var bType = new stdgo._internal.internal.reflect.Reflect._Type(gt2);
		if (!aType.assignableTo(cast new stdgo._internal.internal.reflect.Reflect._Type_asInterface(new Pointer(() -> bType, value -> bType = value), bType))) {
			return false;
		}
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
				switch gt2 {
					case structType(fields2):
						for (i in 0...fields.length) {
							final name = fields[i].name;
							if (name != fields2[i].name)
								return false;
							if (StringTools.startsWith(name, "__blank__"))
								continue;
							final type2 = fields2[i].type.get();
							final type = fields[i].type.get();
							// trace(fields2[i].toString());
							// trace(fields[i].toString());
							// trace(fields2);
							// trace(fields);
							// trace(type);
							// trace(type2);
							final fieldValue = std.Reflect.field(aValue, name);
							final fieldValue2 = std.Reflect.field(bValue, name);

							/*if (fieldValue == null || fieldValue2 == null) {
								if (fieldValue == null && fieldValue2 == null)
									return true;
								trace(fieldValue, fieldValue2);
								trace(aValue, bValue);
								throw "struct issue with field name1: " + name;
							}*/

							final type = @:privateAccess new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.unroll(gt, type));
							final type2 = @:privateAccess new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.unroll(gt, type2));
							final a = new AnyInterface(fieldValue, type);
							final b = new AnyInterface(fieldValue2, type2);
							try {
								if (AnyInterface.notEquals(a, b)) {
									return false;
								}
							}catch(_) {
								throw errorString("comparing uncomparable type " + new stdgo._internal.internal.reflect.Reflect._Type(gt).string().toString());
							}
						}
					default:
				}
				true;
			case invalidType:
				switch @:privateAccess ((b.type : Dynamic)._common() : stdgo._internal.internal.reflect.Reflect.GoType) {
					case invalidType: true;
					default: false;
				}
			case interfaceType(empty, _):
				//return aValue == bValue;
				if (empty) {
					equals(aValue, bValue);
				}else{
					aValue == bValue;
				}
			case arrayType(_.get() => elem, _):
				var a:GoArray<Any> = aValue;
				var b:GoArray<Any> = bValue;
				var t = new stdgo._internal.internal.reflect.Reflect._Type(elem);
				for (i in 0...a.length.toBasic()) {
					if (AnyInterface.notEquals(new AnyInterface(a[i], t), new AnyInterface(b[i], t)))
						return false;
				}
				true;
			case pointerType(_):
				(aValue : Pointer<Dynamic>) == (bValue : Pointer<Dynamic>);
			case mapType(_, _), signature(_, _, _, _, _), sliceType(_):
				throw errorString("comparing uncomparable type " + new stdgo._internal.internal.reflect.Reflect._Type(gt).string().toString());
			default:
				throw "unknown type equals: " + gt;
		}
	}
}

function errorString(s:stdgo.GoString) {
	#if no_linkerr
	return s;
	#else
	return stdgo.Go.toInterface(stdgo.Go.asInterface((s : stdgo._internal.math.bits.Bits_t_errorstring.T_errorString)));
	#end
}