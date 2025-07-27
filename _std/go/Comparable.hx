package go;

import go.AnyInterface;
import go.GoInt;

abstract Comparable(Dynamic) from Dynamic to Dynamic to go.GoInt to go.GoInt8 to go.GoInt16 to go.GoInt32 to go.GoInt64 to go.GoUInt8
	to go.GoUInt16 to go.GoUInt32 to go.GoUInt64 to go.GoFloat32 to go.GoFloat64 to go.GoString to go.GoComplex64 to go.GoComplex128
	to go.Chan<Dynamic> to go.GoMap<Dynamic, Dynamic> to go.GoArray<Dynamic> {
	@:op(A == B)
	// public static inline function equals(lhs:Comparable, rhs:Dynamic):Bool
	//	return (lhs : AnyInterface) == new AnyInterface(rhs, (lhs : AnyInterface).value);
	@:access(go.GoString.GoStringData)
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
		if (go.GoString.isString(lhs)) {
			return (lhs : go.GoString) == (rhs : go.GoString);
		}
		if (go.AnyInterface.isAnyInterface(lhs)) {
			return (lhs : go.AnyInterface) == (rhs : go.AnyInterface);
		}
		// array
		if (go.GoArray.isArray(lhs)) {
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
