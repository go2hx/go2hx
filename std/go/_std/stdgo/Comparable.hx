package stdgo;

import stdgo.AnyInterface;
import stdgo.GoInt;

abstract Comparable(Dynamic) from Dynamic to Dynamic to stdgo.GoInt {
	@:op(A == B)
	// public static inline function equals(lhs:Comparable, rhs:Dynamic):Bool
	//	return (lhs : AnyInterface) == new AnyInterface(rhs, (lhs : AnyInterface).value);
	@:access(stdgo.GoString.GoStringData)
	public static function equals(lhs:Comparable, rhs:Dynamic):Bool {
		if (lhs is Int) {
			return (lhs : Int) == (rhs : Int);
		}
		if (lhs is Float) {
			return (lhs : Float) == (rhs : Float);
		}
		if (haxe.Int64.isInt64(lhs)) {
			return (lhs : haxe.Int64) == (rhs : haxe.Int64);
		}
		if (stdgo.GoString.isString(lhs)) {
			return (lhs : stdgo.GoString) == (rhs : stdgo.GoString);
		}
		if (stdgo.AnyInterface.isAnyInterface(lhs)) {
			return (lhs : stdgo.AnyInterface) == (rhs : stdgo.AnyInterface);
		}
		// array
		if (stdgo.GoArray.isArray(lhs)) {
			final lhs:GoArray<Comparable> = lhs;
			final rhs:GoArray<Comparable> = rhs;
			if (lhs.length != rhs.length)
				return false;
			for (i in 0...lhs.length) {
				if (notEquals(lhs[i], rhs[i]))
					return false;
			}
			return true;
		}
		// struct

		// unknown
		trace(std.Type.typeof(lhs));
		return (lhs : Dynamic) == rhs;
	}

	@:op(A != B)
	public static inline function notEquals(lhs:Comparable, rhs:Dynamic):Bool {
		return !equals(lhs, rhs);
	}
}
