package stdgo.internal.abi;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

/**
	// IntArgRegs is the number of registers dedicated
	// to passing integer argument values. Result registers are identical
	// to argument registers, so this number is used for those too.
**/
final intArgRegs:GoUInt64 = (0 : GoUInt64);

/**
	// FloatArgRegs is the number of registers dedicated
	// to passing floating-point argument values. Result registers are
	// identical to argument registers, so this number is used for
	// those too.
**/
final floatArgRegs:GoUInt64 = (0 : GoUInt64);

/**
	// EffectiveFloatRegSize describes the width of floating point
	// registers on the current platform from the ABI's perspective.
	//
	// Since Go only supports 32-bit and 64-bit floating point primitives,
	// this number should be either 0, 4, or 8. 0 indicates no floating
	// point registers for the ABI or that floating point values will be
	// passed via the softfloat ABI.
	//
	// For platforms that support larger floating point register widths,
	// such as x87's 80-bit "registers" (not that we support x87 currently),
	// use 8.
**/
final effectiveFloatRegSize:GoUInt64 = (0 : GoUInt64);

/**
	// RegArgs is a struct that has space for each argument
	// and return value register on the current architecture.
	//
	// Assembly code knows the layout of the first two fields
	// of RegArgs.
	//
	// RegArgs also contains additional space to hold pointers
	// when it may not be safe to keep them only in the integer
	// register space otherwise.
**/
@:structInit @:using(internal.abi.Abi.RegArgs_static_extension) class RegArgs {
	/**
		// Values in these slots should be precisely the bit-by-bit
		// representation of how they would appear in a register.
		//
		// This means that on big endian arches, integer values should
		// be in the top bits of the slot. Floats are usually just
		// directly represented, but some architectures treat narrow
		// width floating point values specially (e.g. they're promoted
		// first, or they need to be NaN-boxed).// untyped integer registers
	**/
	public var ints:GoArray<GoUIntptr> = new GoArray<GoUIntptr>(...[for (i in 0...0) (0 : GoUIntptr)]);

	/**
		// untyped float registers
	**/
	public var floats:GoArray<GoUInt64> = new GoArray<GoUInt64>(...[for (i in 0...0) (0 : GoUInt64)]);

	/**
		// Ptrs is a space that duplicates Ints but with pointer type,
		// used to make pointers passed or returned  in registers
		// visible to the GC by making the type unsafe.Pointer.
	**/
	public var ptrs:GoArray<stdgo.unsafe.Unsafe.UnsafePointer> = new GoArray<stdgo.unsafe.Unsafe.UnsafePointer>(...[for (i in 0...0) null]);

	/**
		// ReturnIsPtr is a bitmap that indicates which registers
		// contain or will contain pointers on the return path from
		// a reflectcall. The i'th bit indicates whether the i'th
		// register contains or will contain a valid Go pointer.
	**/
	public var returnIsPtr:IntArgRegBitmap = new IntArgRegBitmap();

	public function new(?ints:GoArray<GoUIntptr>, ?floats:GoArray<GoUInt64>, ?ptrs:GoArray<stdgo.unsafe.Unsafe.UnsafePointer>, ?returnIsPtr:IntArgRegBitmap) {
		if (ints != null)
			this.ints = ints;
		if (floats != null)
			this.floats = floats;
		if (ptrs != null)
			this.ptrs = ptrs;
		if (returnIsPtr != null)
			this.returnIsPtr = returnIsPtr;
	}

	public function __copy__() {
		return new RegArgs(ints, floats, ptrs, returnIsPtr);
	}
}

/**
	// IntArgRegBitmap is a bitmap large enough to hold one bit per
	// integer argument/return register.
**/
@:named @:using(internal.abi.Abi.IntArgRegBitmap_static_extension) typedef IntArgRegBitmap = GoArray<GoUInt8>;

/**
	// FuncPCABI0 returns the entry PC of the function f, which must be a
	// direct reference of a function defined as ABI0. Otherwise it is a
	// compile-time error.
	//
	// Implemented as a compile intrinsic.
**/
function funcPCABI0(_f:AnyInterface):GoUIntptr
	throw "internal.abi.funcPCABI0 is not yet implemented";

/**
	// FuncPCABIInternal returns the entry PC of the function f. If f is a
	// direct reference of a function, it must be defined as ABIInternal.
	// Otherwise it is a compile-time error. If f is not a direct reference
	// of a defined function, it assumes that f is a func value. Otherwise
	// the behavior is undefined.
	//
	// Implemented as a compile intrinsic.
**/
function funcPCABIInternal(_f:AnyInterface):GoUIntptr
	throw "internal.abi.funcPCABIInternal is not yet implemented";

class RegArgs_asInterface {
	/**
		// IntRegArgAddr returns a pointer inside of r.Ints[reg] that is appropriately
		// offset for an argument of size argSize.
		//
		// argSize must be non-zero, fit in a register, and a power-of-two.
		//
		// This method is a helper for dealing with the endianness of different CPU
		// architectures, since sub-word-sized arguments in big endian architectures
		// need to be "aligned" to the upper edge of the register to be interpreted
		// by the CPU correctly.
	**/
	@:keep
	public function intRegArgAddr(_reg:GoInt, _argSize:GoUIntptr):stdgo.unsafe.Unsafe.UnsafePointer
		return __self__.value.intRegArgAddr(_reg, _argSize);

	@:keep
	public function dump():Void
		__self__.value.dump();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<RegArgs>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(internal.abi.Abi.RegArgs_asInterface) class RegArgs_static_extension {
	/**
		// IntRegArgAddr returns a pointer inside of r.Ints[reg] that is appropriately
		// offset for an argument of size argSize.
		//
		// argSize must be non-zero, fit in a register, and a power-of-two.
		//
		// This method is a helper for dealing with the endianness of different CPU
		// architectures, since sub-word-sized arguments in big endian architectures
		// need to be "aligned" to the upper edge of the register to be interpreted
		// by the CPU correctly.
	**/
	@:keep
	static public function intRegArgAddr(_r:Ref<RegArgs>, _reg:GoInt, _argSize:GoUIntptr):stdgo.unsafe.Unsafe.UnsafePointer
		throw "internal.abi.intRegArgAddr is not yet implemented";

	@:keep
	static public function dump(_r:Ref<RegArgs>):Void
		throw "internal.abi.dump is not yet implemented";
}

class IntArgRegBitmap_asInterface {
	/**
		// Get returns whether the i'th bit of the bitmap is set.
		//
		// nosplit because it's called in extremely sensitive contexts, like
		// on the reflectcall return path.
		//
		//go:nosplit
	**/
	@:keep
	public function get(_i:GoInt):Bool
		return __self__.value.get(_i);

	/**
		// Set sets the i'th bit of the bitmap to 1.
	**/
	@:keep
	public function set(_i:GoInt):Void
		__self__.value.set(_i);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<IntArgRegBitmap>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(internal.abi.Abi.IntArgRegBitmap_asInterface) class IntArgRegBitmap_static_extension {
	/**
		// Get returns whether the i'th bit of the bitmap is set.
		//
		// nosplit because it's called in extremely sensitive contexts, like
		// on the reflectcall return path.
		//
		//go:nosplit
	**/
	@:keep
	static public function get(_b:Ref<IntArgRegBitmap>, _i:GoInt):Bool
		throw "internal.abi.get is not yet implemented";

	/**
		// Set sets the i'th bit of the bitmap to 1.
	**/
	@:keep
	static public function set(_b:Ref<IntArgRegBitmap>, _i:GoInt):Void
		throw "internal.abi.set is not yet implemented";
}
