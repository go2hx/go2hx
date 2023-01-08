package stdgo.sync.atomic;

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
	// Package atomic provides low-level atomic memory primitives
	// useful for implementing synchronization algorithms.
	//
	// These functions require great care to be used correctly.
	// Except for special, low-level applications, synchronization is better
	// done with channels or the facilities of the sync package.
	// Share memory by communicating;
	// don't communicate by sharing memory.
	//
	// The swap operation, implemented by the SwapT functions, is the atomic
	// equivalent of:
	//
	//	old = *addr
	//	*addr = new
	//	return old
	//
	// The compare-and-swap operation, implemented by the CompareAndSwapT
	// functions, is the atomic equivalent of:
	//
	//	if *addr == old {
	//		*addr = new
	//		return true
	//	}
	//	return false
	//
	// The add operation, implemented by the AddT functions, is the atomic
	// equivalent of:
	//
	//	*addr += delta
	//	return *addr
	//
	// The load and store operations, implemented by the LoadT and StoreT
	// functions, are the atomic equivalents of "return *addr" and
	// "*addr = val".
	//
	// In the terminology of the Go memory model, if the effect of
	// an atomic operation A is observed by atomic operation B,
	// then A “synchronizes before” B.
	// Additionally, all the atomic operations executed in a program
	// behave as though executed in some sequentially consistent order.
	// This definition provides the same semantics as
	// C++'s sequentially consistent atomics and Java's volatile variables.
**/
private var __go2hxdoc__package:Bool;

private var _firstStoreInProgress:GoByte = (0 : GoUInt8);

/**
	// A Bool is an atomic boolean value.
	// The zero value is false.
**/
@:structInit @:using(stdgo.sync.atomic.Atomic.Bool__static_extension) class Bool_ {
	@:optional
	public var _1:T_noCopy = ({} : T_noCopy);
	public var _v:GoUInt32 = 0;

	public function new(?_1:T_noCopy, ?_v:GoUInt32) {
		if (_1 != null)
			this._1 = _1;
		if (_v != null)
			this._v = _v;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new Bool_(_1, _v);
	}
}

/**
	// A Pointer is an atomic pointer of type *T. The zero value is a nil *T.
**/
@:structInit @:using(stdgo.sync.atomic.Atomic.Pointer__static_extension) class Pointer_<T> {
	@:optional
	public var _3:T_noCopy = ({} : T_noCopy);
	public var _v:stdgo.unsafe.Unsafe.UnsafePointer = null;

	public function new(?_3:T_noCopy, ?_v:stdgo.unsafe.Unsafe.UnsafePointer) {
		if (_3 != null)
			this._3 = _3;
		if (_v != null)
			this._v = _v;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new Pointer_(_3, _v);
	}
}

/**
	// An Int32 is an atomic int32. The zero value is zero.
**/
@:structInit @:using(stdgo.sync.atomic.Atomic.Int32_static_extension) class Int32 {
	@:optional
	public var _5:T_noCopy = ({} : T_noCopy);
	public var _v:GoInt32 = 0;

	public function new(?_5:T_noCopy, ?_v:GoInt32) {
		if (_5 != null)
			this._5 = _5;
		if (_v != null)
			this._v = _v;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new Int32(_5, _v);
	}
}

/**
	// An Int64 is an atomic int64. The zero value is zero.
**/
@:structInit @:using(stdgo.sync.atomic.Atomic.Int64__static_extension) class Int64_ {
	@:optional
	public var _8:T_noCopy = ({} : T_noCopy);
	@:optional
	public var _9:T_align64 = ({} : T_align64);
	public var _v:GoInt64 = 0;

	public function new(?_8:T_noCopy, ?_9:T_align64, ?_v:GoInt64) {
		if (_8 != null)
			this._8 = _8;
		if (_9 != null)
			this._9 = _9;
		if (_v != null)
			this._v = _v;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new Int64_(_8, _9, _v);
	}
}

/**
	// An Uint32 is an atomic uint32. The zero value is zero.
**/
@:structInit @:using(stdgo.sync.atomic.Atomic.Uint32_static_extension) class Uint32 {
	@:optional
	public var _10:T_noCopy = ({} : T_noCopy);
	public var _v:GoUInt32 = 0;

	public function new(?_10:T_noCopy, ?_v:GoUInt32) {
		if (_10 != null)
			this._10 = _10;
		if (_v != null)
			this._v = _v;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new Uint32(_10, _v);
	}
}

/**
	// An Uint64 is an atomic uint64. The zero value is zero.
**/
@:structInit @:using(stdgo.sync.atomic.Atomic.Uint64_static_extension) class Uint64 {
	@:optional
	public var _13:T_noCopy = ({} : T_noCopy);
	@:optional
	public var _14:T_align64 = ({} : T_align64);
	public var _v:GoUInt64 = 0;

	public function new(?_13:T_noCopy, ?_14:T_align64, ?_v:GoUInt64) {
		if (_13 != null)
			this._13 = _13;
		if (_14 != null)
			this._14 = _14;
		if (_v != null)
			this._v = _v;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new Uint64(_13, _14, _v);
	}
}

/**
	// An Uintptr is an atomic uintptr. The zero value is zero.
**/
@:structInit @:using(stdgo.sync.atomic.Atomic.Uintptr_static_extension) class Uintptr {
	@:optional
	public var _16:T_noCopy = ({} : T_noCopy);
	public var _v:GoUIntptr = 0;

	public function new(?_16:T_noCopy, ?_v:GoUIntptr) {
		if (_16 != null)
			this._16 = _16;
		if (_v != null)
			this._v = _v;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new Uintptr(_16, _v);
	}
}

/**
	// noCopy may be added to structs which must not be copied
	// after the first use.
	//
	// See https://golang.org/issues/8005#issuecomment-190753527
	// for details.
	//
	// Note that it must not be embedded, due to the Lock and Unlock methods.
**/
@:structInit @:using(stdgo.sync.atomic.Atomic.T_noCopy_static_extension) private class T_noCopy {
	public function new() {}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_noCopy();
	}
}

/**
	// align64 may be added to structs that must be 64-bit aligned.
	// This struct is recognized by a special case in the compiler
	// and will not work if copied to any other package.
**/
@:structInit private class T_align64 {
	public function new() {}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_align64();
	}
}

/**
	// A Value provides an atomic load and store of a consistently typed value.
	// The zero value for a Value returns nil from Load.
	// Once Store has been called, a Value must not be copied.
	//
	// A Value must not be copied after first use.
**/
@:structInit @:using(stdgo.sync.atomic.Atomic.Value_static_extension) class Value {
	public var _v:AnyInterface = (null : AnyInterface);

	public function new(?_v:AnyInterface) {
		if (_v != null)
			this._v = _v;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new Value(_v);
	}
}

/**
	// ifaceWords is interface{} internal representation.
**/
@:structInit private class T_ifaceWords {
	public var _typ:stdgo.unsafe.Unsafe.UnsafePointer = null;
	public var _data:stdgo.unsafe.Unsafe.UnsafePointer = null;

	public function new(?_typ:stdgo.unsafe.Unsafe.UnsafePointer, ?_data:stdgo.unsafe.Unsafe.UnsafePointer) {
		if (_typ != null)
			this._typ = _typ;
		if (_data != null)
			this._data = _data;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_ifaceWords(_typ, _data);
	}
}

/**
	// SwapInt32 atomically stores new into *addr and returns the previous *addr value.
**/
function swapInt32(_addr:Pointer<GoInt32>, _new:GoInt32):GoInt32
	throw "sync.atomic.swapInt32 is not yet implemented";

/**
	// SwapInt64 atomically stores new into *addr and returns the previous *addr value.
**/
function swapInt64(_addr:Pointer<GoInt64>, _new:GoInt64):GoInt64
	throw "sync.atomic.swapInt64 is not yet implemented";

/**
	// SwapUint32 atomically stores new into *addr and returns the previous *addr value.
**/
function swapUint32(_addr:Pointer<GoUInt32>, _new:GoUInt32):GoUInt32
	throw "sync.atomic.swapUint32 is not yet implemented";

/**
	// SwapUint64 atomically stores new into *addr and returns the previous *addr value.
**/
function swapUint64(_addr:Pointer<GoUInt64>, _new:GoUInt64):GoUInt64
	throw "sync.atomic.swapUint64 is not yet implemented";

/**
	// SwapUintptr atomically stores new into *addr and returns the previous *addr value.
**/
function swapUintptr(_addr:Pointer<GoUIntptr>, _new:GoUIntptr):GoUIntptr
	throw "sync.atomic.swapUintptr is not yet implemented";

/**
	// SwapPointer atomically stores new into *addr and returns the previous *addr value.
**/
function swapPointer(_addr:Pointer<stdgo.unsafe.Unsafe.UnsafePointer>, _new:stdgo.unsafe.Unsafe.UnsafePointer):stdgo.unsafe.Unsafe.UnsafePointer
	throw "sync.atomic.swapPointer is not yet implemented";

/**
	// CompareAndSwapInt32 executes the compare-and-swap operation for an int32 value.
**/
function compareAndSwapInt32(_addr:Pointer<GoInt32>, _old:GoInt32, _new:GoInt32):Bool
	throw "sync.atomic.compareAndSwapInt32 is not yet implemented";

/**
	// CompareAndSwapInt64 executes the compare-and-swap operation for an int64 value.
**/
function compareAndSwapInt64(_addr:Pointer<GoInt64>, _old:GoInt64, _new:GoInt64):Bool
	throw "sync.atomic.compareAndSwapInt64 is not yet implemented";

/**
	// CompareAndSwapUint32 executes the compare-and-swap operation for a uint32 value.
**/
function compareAndSwapUint32(_addr:Pointer<GoUInt32>, _old:GoUInt32, _new:GoUInt32):Bool
	throw "sync.atomic.compareAndSwapUint32 is not yet implemented";

/**
	// CompareAndSwapUint64 executes the compare-and-swap operation for a uint64 value.
**/
function compareAndSwapUint64(_addr:Pointer<GoUInt64>, _old:GoUInt64, _new:GoUInt64):Bool
	throw "sync.atomic.compareAndSwapUint64 is not yet implemented";

/**
	// CompareAndSwapUintptr executes the compare-and-swap operation for a uintptr value.
**/
function compareAndSwapUintptr(_addr:Pointer<GoUIntptr>, _old:GoUIntptr, _new:GoUIntptr):Bool
	throw "sync.atomic.compareAndSwapUintptr is not yet implemented";

/**
	// CompareAndSwapPointer executes the compare-and-swap operation for a unsafe.Pointer value.
**/
function compareAndSwapPointer(_addr:Pointer<stdgo.unsafe.Unsafe.UnsafePointer>, _old:stdgo.unsafe.Unsafe.UnsafePointer,
		_new:stdgo.unsafe.Unsafe.UnsafePointer):Bool
	throw "sync.atomic.compareAndSwapPointer is not yet implemented";

/**
	// AddInt32 atomically adds delta to *addr and returns the new value.
**/
function addInt32(_addr:Pointer<GoInt32>, _delta:GoInt32):GoInt32
	throw "sync.atomic.addInt32 is not yet implemented";

/**
	// AddUint32 atomically adds delta to *addr and returns the new value.
	// To subtract a signed positive constant value c from x, do AddUint32(&x, ^uint32(c-1)).
	// In particular, to decrement x, do AddUint32(&x, ^uint32(0)).
**/
function addUint32(_addr:Pointer<GoUInt32>, _delta:GoUInt32):GoUInt32
	throw "sync.atomic.addUint32 is not yet implemented";

/**
	// AddInt64 atomically adds delta to *addr and returns the new value.
**/
function addInt64(_addr:Pointer<GoInt64>, _delta:GoInt64):GoInt64
	throw "sync.atomic.addInt64 is not yet implemented";

/**
	// AddUint64 atomically adds delta to *addr and returns the new value.
	// To subtract a signed positive constant value c from x, do AddUint64(&x, ^uint64(c-1)).
	// In particular, to decrement x, do AddUint64(&x, ^uint64(0)).
**/
function addUint64(_addr:Pointer<GoUInt64>, _delta:GoUInt64):GoUInt64
	throw "sync.atomic.addUint64 is not yet implemented";

/**
	// AddUintptr atomically adds delta to *addr and returns the new value.
**/
function addUintptr(_addr:Pointer<GoUIntptr>, _delta:GoUIntptr):GoUIntptr
	throw "sync.atomic.addUintptr is not yet implemented";

/**
	// LoadInt32 atomically loads *addr.
**/
function loadInt32(_addr:Pointer<GoInt32>):GoInt32
	throw "sync.atomic.loadInt32 is not yet implemented";

/**
	// LoadInt64 atomically loads *addr.
**/
function loadInt64(_addr:Pointer<GoInt64>):GoInt64
	throw "sync.atomic.loadInt64 is not yet implemented";

/**
	// LoadUint32 atomically loads *addr.
**/
function loadUint32(_addr:Pointer<GoUInt32>):GoUInt32
	throw "sync.atomic.loadUint32 is not yet implemented";

/**
	// LoadUint64 atomically loads *addr.
**/
function loadUint64(_addr:Pointer<GoUInt64>):GoUInt64
	throw "sync.atomic.loadUint64 is not yet implemented";

/**
	// LoadUintptr atomically loads *addr.
**/
function loadUintptr(_addr:Pointer<GoUIntptr>):GoUIntptr
	throw "sync.atomic.loadUintptr is not yet implemented";

/**
	// LoadPointer atomically loads *addr.
**/
function loadPointer(_addr:Pointer<stdgo.unsafe.Unsafe.UnsafePointer>):stdgo.unsafe.Unsafe.UnsafePointer
	throw "sync.atomic.loadPointer is not yet implemented";

/**
	// StoreInt32 atomically stores val into *addr.
**/
function storeInt32(_addr:Pointer<GoInt32>, _val:GoInt32):Void
	throw "sync.atomic.storeInt32 is not yet implemented";

/**
	// StoreInt64 atomically stores val into *addr.
**/
function storeInt64(_addr:Pointer<GoInt64>, _val:GoInt64):Void
	throw "sync.atomic.storeInt64 is not yet implemented";

/**
	// StoreUint32 atomically stores val into *addr.
**/
function storeUint32(_addr:Pointer<GoUInt32>, _val:GoUInt32):Void
	throw "sync.atomic.storeUint32 is not yet implemented";

/**
	// StoreUint64 atomically stores val into *addr.
**/
function storeUint64(_addr:Pointer<GoUInt64>, _val:GoUInt64):Void
	throw "sync.atomic.storeUint64 is not yet implemented";

/**
	// StoreUintptr atomically stores val into *addr.
**/
function storeUintptr(_addr:Pointer<GoUIntptr>, _val:GoUIntptr):Void
	throw "sync.atomic.storeUintptr is not yet implemented";

/**
	// StorePointer atomically stores val into *addr.
**/
function storePointer(_addr:Pointer<stdgo.unsafe.Unsafe.UnsafePointer>, _val:stdgo.unsafe.Unsafe.UnsafePointer):Void
	throw "sync.atomic.storePointer is not yet implemented";

/**
	// b32 returns a uint32 0 or 1 representing b.
**/
function _b32(_b:Bool):GoUInt32
	throw "sync.atomic._b32 is not yet implemented";

/**
	// Disable/enable preemption, implemented in runtime.
**/
function _runtime_procPin():Void
	throw "sync.atomic._runtime_procPin is not yet implemented";

function _runtime_procUnpin():Void
	throw "sync.atomic._runtime_procUnpin is not yet implemented";

class Bool__asInterface {
	/**
		// CompareAndSwap executes the compare-and-swap operation for the boolean value x.
	**/
	@:keep
	public function compareAndSwap(_old:Bool, _new:Bool):Bool
		return __self__.value.compareAndSwap(_old, _new);

	/**
		// Swap atomically stores new into x and returns the previous value.
	**/
	@:keep
	public function swap(_new:Bool):Bool
		return __self__.value.swap(_new);

	/**
		// Store atomically stores val into x.
	**/
	@:keep
	public function store(_val:Bool):Void
		__self__.value.store(_val);

	/**
		// Load atomically loads and returns the value stored in x.
	**/
	@:keep
	public function load():Bool
		return __self__.value.load();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<Bool_>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sync.atomic.Atomic.Bool__asInterface) class Bool__static_extension {
	/**
		// CompareAndSwap executes the compare-and-swap operation for the boolean value x.
	**/
	@:keep
	static public function compareAndSwap(_x:Ref<Bool_>, _old:Bool, _new:Bool):Bool
		throw "sync.atomic.compareAndSwap is not yet implemented";

	/**
		// Swap atomically stores new into x and returns the previous value.
	**/
	@:keep
	static public function swap(_x:Ref<Bool_>, _new:Bool):Bool
		throw "sync.atomic.swap is not yet implemented";

	/**
		// Store atomically stores val into x.
	**/
	@:keep
	static public function store(_x:Ref<Bool_>, _val:Bool):Void
		throw "sync.atomic.store is not yet implemented";

	/**
		// Load atomically loads and returns the value stored in x.
	**/
	@:keep
	static public function load(_x:Ref<Bool_>):Bool
		throw "sync.atomic.load is not yet implemented";
}

class Pointer__asInterface<T> {
	/**
		// CompareAndSwap executes the compare-and-swap operation for x.
	**/
	@:keep
	public var compareAndSwap:(Ref<T>, Ref<T>) -> Bool;

	/**
		// Swap atomically stores new into x and returns the previous value.
	**/
	@:keep
	public var swap:Ref<T>->Ref<T>;

	/**
		// Store atomically stores val into x.
	**/
	@:keep
	public var store:Ref<T>->Void;

	/**
		// Load atomically loads and returns the value stored in x.
	**/
	@:keep
	public var load:() -> Ref<T>;

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<Pointer_<T>>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sync.atomic.Atomic.Pointer__asInterface) class Pointer__static_extension {
	/**
		// CompareAndSwap executes the compare-and-swap operation for x.
	**/
	@:keep
	macro static public function compareAndSwap<T>(_x:haxe.macro.Expr.ExprOf<Ref<Pointer_<T>>>, _old:haxe.macro.Expr.ExprOf<Ref<T>>,
			_new:haxe.macro.Expr.ExprOf<Ref<T>>):haxe.macro.Expr.ExprOf<Bool> {
		final tds = [];
		final block = macro throw "sync.atomic.compareAndSwap is not yet implemented";
		var className = "T__compareAndSwap_";
		{
			className += haxe.macro.Context.signature(haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(_x))) + "_";
			className += haxe.macro.Context.signature(haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(_old))) + "_";
			className += haxe.macro.Context.signature(haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(_new))) + "_";
		};
		final pack = ["stdgo", "internal", "generic", className.toLowerCase()];
		try {
			haxe.macro.Context.getType(className);
		} catch (____exec____) {
			final td:haxe.macro.Expr.TypeDefinition = {
				name: className,
				pos: haxe.macro.Context.currentPos(),
				pack: [],
				fields: [
					{
						name: "compareAndSwap",
						pos: haxe.macro.Context.currentPos(),
						kind: FFun({
							expr: block,
							args: [
								{
									var ct = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(_x));
									switch ct {
										case TPath(p):
											if (p.name == "StdTypes" && p.sub == "Null" && p.pack.length == 0) {
												switch p.params[0] {
													case TPType(t):
														ct = t;
													default:
														var _ = false;
												};
											};
										default:
											var _ = false;
									};
									{name: "_x", type: ct};
								},
								{
									var ct = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(_old));
									switch ct {
										case TPath(p):
											if (p.name == "StdTypes" && p.sub == "Null" && p.pack.length == 0) {
												switch p.params[0] {
													case TPType(t):
														ct = t;
													default:
														var _ = false;
												};
											};
										default:
											var _ = false;
									};
									{name: "_old", type: ct};
								},
								{
									var ct = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(_new));
									switch ct {
										case TPath(p):
											if (p.name == "StdTypes" && p.sub == "Null" && p.pack.length == 0) {
												switch p.params[0] {
													case TPType(t):
														ct = t;
													default:
														var _ = false;
												};
											};
										default:
											var _ = false;
									};
									{name: "_new", type: ct};
								}
							],
							ret: haxe.macro.Context.getExpectedType() == null ? null : haxe.macro.Context.toComplexType(haxe.macro.Context.getExpectedType())
						}),
						access: [APublic, AStatic]
					}
				],
				kind: TDClass()
			};
			{
				{
					final t:haxe.macro.Expr.ComplexType = switch haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(_x)) {
						case TPath(p):
							switch p.params[0] {
								case TPType(t):
									t;
								default:
									throw "invalid param t";
							};
						default:
							throw "invalid e";
					};
					final pos = haxe.macro.Context.currentPos();
					final td:haxe.macro.Expr.TypeDefinition = {
						name: "T",
						pos: pos,
						pack: [],
						fields: [],
						meta: [{name: ":follow", pos: pos}],
						kind: TDAlias(t)
					};
					tds.push(td);
				};
			};
			{};
			tds.push(td);
			haxe.macro.Context.defineModule(pack.concat([className]).join("."), tds, haxe.macro.Context.getLocalImports());
		};
		return macro $p{pack.concat([className])}.compareAndSwap($_x, $_old, $_new);
	}

	/**
		// Swap atomically stores new into x and returns the previous value.
	**/
	@:keep
	macro static public function swap<T>(_x:haxe.macro.Expr.ExprOf<Ref<Pointer_<T>>>, _new:haxe.macro.Expr.ExprOf<Ref<T>>):haxe.macro.Expr.ExprOf<Ref<T>> {
		final tds = [];
		final block = macro throw "sync.atomic.swap is not yet implemented";
		var className = "T__swap_";
		{
			className += haxe.macro.Context.signature(haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(_x))) + "_";
			className += haxe.macro.Context.signature(haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(_new))) + "_";
		};
		final pack = ["stdgo", "internal", "generic", className.toLowerCase()];
		try {
			haxe.macro.Context.getType(className);
		} catch (____exec____) {
			final td:haxe.macro.Expr.TypeDefinition = {
				name: className,
				pos: haxe.macro.Context.currentPos(),
				pack: [],
				fields: [
					{
						name: "swap",
						pos: haxe.macro.Context.currentPos(),
						kind: FFun({
							expr: block,
							args: [
								{
									var ct = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(_x));
									switch ct {
										case TPath(p):
											if (p.name == "StdTypes" && p.sub == "Null" && p.pack.length == 0) {
												switch p.params[0] {
													case TPType(t):
														ct = t;
													default:
														var _ = false;
												};
											};
										default:
											var _ = false;
									};
									{name: "_x", type: ct};
								},
								{
									var ct = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(_new));
									switch ct {
										case TPath(p):
											if (p.name == "StdTypes" && p.sub == "Null" && p.pack.length == 0) {
												switch p.params[0] {
													case TPType(t):
														ct = t;
													default:
														var _ = false;
												};
											};
										default:
											var _ = false;
									};
									{name: "_new", type: ct};
								}
							],
							ret: haxe.macro.Context.getExpectedType() == null ? null : haxe.macro.Context.toComplexType(haxe.macro.Context.getExpectedType())
						}),
						access: [APublic, AStatic]
					}
				],
				kind: TDClass()
			};
			{
				{
					final t:haxe.macro.Expr.ComplexType = switch haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(_x)) {
						case TPath(p):
							switch p.params[0] {
								case TPType(t):
									t;
								default:
									throw "invalid param t";
							};
						default:
							throw "invalid e";
					};
					final pos = haxe.macro.Context.currentPos();
					final td:haxe.macro.Expr.TypeDefinition = {
						name: "T",
						pos: pos,
						pack: [],
						fields: [],
						meta: [{name: ":follow", pos: pos}],
						kind: TDAlias(t)
					};
					tds.push(td);
				};
			};
			{};
			tds.push(td);
			haxe.macro.Context.defineModule(pack.concat([className]).join("."), tds, haxe.macro.Context.getLocalImports());
		};
		return macro $p{pack.concat([className])}.swap($_x, $_new);
	}

	/**
		// Store atomically stores val into x.
	**/
	@:keep
	macro static public function store<T>(_x:haxe.macro.Expr.ExprOf<Ref<Pointer_<T>>>, _val:haxe.macro.Expr.ExprOf<Ref<T>>):haxe.macro.Expr.ExprOf<Void> {
		final tds = [];
		final block = macro throw "sync.atomic.store is not yet implemented";
		var className = "T__store_";
		{
			className += haxe.macro.Context.signature(haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(_x))) + "_";
			className += haxe.macro.Context.signature(haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(_val))) + "_";
		};
		final pack = ["stdgo", "internal", "generic", className.toLowerCase()];
		try {
			haxe.macro.Context.getType(className);
		} catch (____exec____) {
			final td:haxe.macro.Expr.TypeDefinition = {
				name: className,
				pos: haxe.macro.Context.currentPos(),
				pack: [],
				fields: [
					{
						name: "store",
						pos: haxe.macro.Context.currentPos(),
						kind: FFun({
							expr: block,
							args: [
								{
									var ct = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(_x));
									switch ct {
										case TPath(p):
											if (p.name == "StdTypes" && p.sub == "Null" && p.pack.length == 0) {
												switch p.params[0] {
													case TPType(t):
														ct = t;
													default:
														var _ = false;
												};
											};
										default:
											var _ = false;
									};
									{name: "_x", type: ct};
								},
								{
									var ct = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(_val));
									switch ct {
										case TPath(p):
											if (p.name == "StdTypes" && p.sub == "Null" && p.pack.length == 0) {
												switch p.params[0] {
													case TPType(t):
														ct = t;
													default:
														var _ = false;
												};
											};
										default:
											var _ = false;
									};
									{name: "_val", type: ct};
								}
							],
							ret: haxe.macro.Context.getExpectedType() == null ? null : haxe.macro.Context.toComplexType(haxe.macro.Context.getExpectedType())
						}),
						access: [APublic, AStatic]
					}
				],
				kind: TDClass()
			};
			{
				{
					final t:haxe.macro.Expr.ComplexType = switch haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(_x)) {
						case TPath(p):
							switch p.params[0] {
								case TPType(t):
									t;
								default:
									throw "invalid param t";
							};
						default:
							throw "invalid e";
					};
					final pos = haxe.macro.Context.currentPos();
					final td:haxe.macro.Expr.TypeDefinition = {
						name: "T",
						pos: pos,
						pack: [],
						fields: [],
						meta: [{name: ":follow", pos: pos}],
						kind: TDAlias(t)
					};
					tds.push(td);
				};
			};
			{};
			tds.push(td);
			haxe.macro.Context.defineModule(pack.concat([className]).join("."), tds, haxe.macro.Context.getLocalImports());
		};
		return macro $p{pack.concat([className])}.store($_x, $_val);
	}

	/**
		// Load atomically loads and returns the value stored in x.
	**/
	@:keep
	macro static public function load<T>(_x:haxe.macro.Expr.ExprOf<Ref<Pointer_<T>>>):haxe.macro.Expr.ExprOf<Ref<T>> {
		final tds = [];
		final block = macro throw "sync.atomic.load is not yet implemented";
		var className = "T__load_";
		{
			className += haxe.macro.Context.signature(haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(_x))) + "_";
		};
		final pack = ["stdgo", "internal", "generic", className.toLowerCase()];
		try {
			haxe.macro.Context.getType(className);
		} catch (____exec____) {
			final td:haxe.macro.Expr.TypeDefinition = {
				name: className,
				pos: haxe.macro.Context.currentPos(),
				pack: [],
				fields: [
					{
						name: "load",
						pos: haxe.macro.Context.currentPos(),
						kind: FFun({
							expr: block,
							args: [
								{
									var ct = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(_x));
									switch ct {
										case TPath(p):
											if (p.name == "StdTypes" && p.sub == "Null" && p.pack.length == 0) {
												switch p.params[0] {
													case TPType(t):
														ct = t;
													default:
														var _ = false;
												};
											};
										default:
											var _ = false;
									};
									{name: "_x", type: ct};
								}
							],
							ret: haxe.macro.Context.getExpectedType() == null ? null : haxe.macro.Context.toComplexType(haxe.macro.Context.getExpectedType())
						}),
						access: [APublic, AStatic]
					}
				],
				kind: TDClass()
			};
			{
				{
					final t:haxe.macro.Expr.ComplexType = switch haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(_x)) {
						case TPath(p):
							switch p.params[0] {
								case TPType(t):
									t;
								default:
									throw "invalid param t";
							};
						default:
							throw "invalid e";
					};
					final pos = haxe.macro.Context.currentPos();
					final td:haxe.macro.Expr.TypeDefinition = {
						name: "T",
						pos: pos,
						pack: [],
						fields: [],
						meta: [{name: ":follow", pos: pos}],
						kind: TDAlias(t)
					};
					tds.push(td);
				};
			};
			{};
			tds.push(td);
			haxe.macro.Context.defineModule(pack.concat([className]).join("."), tds, haxe.macro.Context.getLocalImports());
		};
		return macro $p{pack.concat([className])}.load($_x);
	}
}

class Int32_asInterface {
	/**
		// Add atomically adds delta to x and returns the new value.
	**/
	@:keep
	public function add(_delta:GoInt32):GoInt32
		return __self__.value.add(_delta);

	/**
		// CompareAndSwap executes the compare-and-swap operation for x.
	**/
	@:keep
	public function compareAndSwap(_old:GoInt32, _new:GoInt32):Bool
		return __self__.value.compareAndSwap(_old, _new);

	/**
		// Swap atomically stores new into x and returns the previous value.
	**/
	@:keep
	public function swap(_new:GoInt32):GoInt32
		return __self__.value.swap(_new);

	/**
		// Store atomically stores val into x.
	**/
	@:keep
	public function store(_val:GoInt32):Void
		__self__.value.store(_val);

	/**
		// Load atomically loads and returns the value stored in x.
	**/
	@:keep
	public function load():GoInt32
		return __self__.value.load();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<Int32>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sync.atomic.Atomic.Int32_asInterface) class Int32_static_extension {
	/**
		// Add atomically adds delta to x and returns the new value.
	**/
	@:keep
	static public function add(_x:Ref<Int32>, _delta:GoInt32):GoInt32
		throw "sync.atomic.add is not yet implemented";

	/**
		// CompareAndSwap executes the compare-and-swap operation for x.
	**/
	@:keep
	static public function compareAndSwap(_x:Ref<Int32>, _old:GoInt32, _new:GoInt32):Bool
		throw "sync.atomic.compareAndSwap is not yet implemented";

	/**
		// Swap atomically stores new into x and returns the previous value.
	**/
	@:keep
	static public function swap(_x:Ref<Int32>, _new:GoInt32):GoInt32
		throw "sync.atomic.swap is not yet implemented";

	/**
		// Store atomically stores val into x.
	**/
	@:keep
	static public function store(_x:Ref<Int32>, _val:GoInt32):Void
		throw "sync.atomic.store is not yet implemented";

	/**
		// Load atomically loads and returns the value stored in x.
	**/
	@:keep
	static public function load(_x:Ref<Int32>):GoInt32
		throw "sync.atomic.load is not yet implemented";
}

class Int64__asInterface {
	/**
		// Add atomically adds delta to x and returns the new value.
	**/
	@:keep
	public function add(_delta:GoInt64):GoInt64
		return __self__.value.add(_delta);

	/**
		// CompareAndSwap executes the compare-and-swap operation for x.
	**/
	@:keep
	public function compareAndSwap(_old:GoInt64, _new:GoInt64):Bool
		return __self__.value.compareAndSwap(_old, _new);

	/**
		// Swap atomically stores new into x and returns the previous value.
	**/
	@:keep
	public function swap(_new:GoInt64):GoInt64
		return __self__.value.swap(_new);

	/**
		// Store atomically stores val into x.
	**/
	@:keep
	public function store(_val:GoInt64):Void
		__self__.value.store(_val);

	/**
		// Load atomically loads and returns the value stored in x.
	**/
	@:keep
	public function load():GoInt64
		return __self__.value.load();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<Int64_>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sync.atomic.Atomic.Int64__asInterface) class Int64__static_extension {
	/**
		// Add atomically adds delta to x and returns the new value.
	**/
	@:keep
	static public function add(_x:Ref<Int64_>, _delta:GoInt64):GoInt64
		throw "sync.atomic.add is not yet implemented";

	/**
		// CompareAndSwap executes the compare-and-swap operation for x.
	**/
	@:keep
	static public function compareAndSwap(_x:Ref<Int64_>, _old:GoInt64, _new:GoInt64):Bool
		throw "sync.atomic.compareAndSwap is not yet implemented";

	/**
		// Swap atomically stores new into x and returns the previous value.
	**/
	@:keep
	static public function swap(_x:Ref<Int64_>, _new:GoInt64):GoInt64
		throw "sync.atomic.swap is not yet implemented";

	/**
		// Store atomically stores val into x.
	**/
	@:keep
	static public function store(_x:Ref<Int64_>, _val:GoInt64):Void
		throw "sync.atomic.store is not yet implemented";

	/**
		// Load atomically loads and returns the value stored in x.
	**/
	@:keep
	static public function load(_x:Ref<Int64_>):GoInt64
		throw "sync.atomic.load is not yet implemented";
}

class Uint32_asInterface {
	/**
		// Add atomically adds delta to x and returns the new value.
	**/
	@:keep
	public function add(_delta:GoUInt32):GoUInt32
		return __self__.value.add(_delta);

	/**
		// CompareAndSwap executes the compare-and-swap operation for x.
	**/
	@:keep
	public function compareAndSwap(_old:GoUInt32, _new:GoUInt32):Bool
		return __self__.value.compareAndSwap(_old, _new);

	/**
		// Swap atomically stores new into x and returns the previous value.
	**/
	@:keep
	public function swap(_new:GoUInt32):GoUInt32
		return __self__.value.swap(_new);

	/**
		// Store atomically stores val into x.
	**/
	@:keep
	public function store(_val:GoUInt32):Void
		__self__.value.store(_val);

	/**
		// Load atomically loads and returns the value stored in x.
	**/
	@:keep
	public function load():GoUInt32
		return __self__.value.load();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<Uint32>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sync.atomic.Atomic.Uint32_asInterface) class Uint32_static_extension {
	/**
		// Add atomically adds delta to x and returns the new value.
	**/
	@:keep
	static public function add(_x:Ref<Uint32>, _delta:GoUInt32):GoUInt32
		throw "sync.atomic.add is not yet implemented";

	/**
		// CompareAndSwap executes the compare-and-swap operation for x.
	**/
	@:keep
	static public function compareAndSwap(_x:Ref<Uint32>, _old:GoUInt32, _new:GoUInt32):Bool
		throw "sync.atomic.compareAndSwap is not yet implemented";

	/**
		// Swap atomically stores new into x and returns the previous value.
	**/
	@:keep
	static public function swap(_x:Ref<Uint32>, _new:GoUInt32):GoUInt32
		throw "sync.atomic.swap is not yet implemented";

	/**
		// Store atomically stores val into x.
	**/
	@:keep
	static public function store(_x:Ref<Uint32>, _val:GoUInt32):Void
		throw "sync.atomic.store is not yet implemented";

	/**
		// Load atomically loads and returns the value stored in x.
	**/
	@:keep
	static public function load(_x:Ref<Uint32>):GoUInt32
		throw "sync.atomic.load is not yet implemented";
}

class Uint64_asInterface {
	/**
		// Add atomically adds delta to x and returns the new value.
	**/
	@:keep
	public function add(_delta:GoUInt64):GoUInt64
		return __self__.value.add(_delta);

	/**
		// CompareAndSwap executes the compare-and-swap operation for x.
	**/
	@:keep
	public function compareAndSwap(_old:GoUInt64, _new:GoUInt64):Bool
		return __self__.value.compareAndSwap(_old, _new);

	/**
		// Swap atomically stores new into x and returns the previous value.
	**/
	@:keep
	public function swap(_new:GoUInt64):GoUInt64
		return __self__.value.swap(_new);

	/**
		// Store atomically stores val into x.
	**/
	@:keep
	public function store(_val:GoUInt64):Void
		__self__.value.store(_val);

	/**
		// Load atomically loads and returns the value stored in x.
	**/
	@:keep
	public function load():GoUInt64
		return __self__.value.load();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<Uint64>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sync.atomic.Atomic.Uint64_asInterface) class Uint64_static_extension {
	/**
		// Add atomically adds delta to x and returns the new value.
	**/
	@:keep
	static public function add(_x:Ref<Uint64>, _delta:GoUInt64):GoUInt64
		throw "sync.atomic.add is not yet implemented";

	/**
		// CompareAndSwap executes the compare-and-swap operation for x.
	**/
	@:keep
	static public function compareAndSwap(_x:Ref<Uint64>, _old:GoUInt64, _new:GoUInt64):Bool
		throw "sync.atomic.compareAndSwap is not yet implemented";

	/**
		// Swap atomically stores new into x and returns the previous value.
	**/
	@:keep
	static public function swap(_x:Ref<Uint64>, _new:GoUInt64):GoUInt64
		throw "sync.atomic.swap is not yet implemented";

	/**
		// Store atomically stores val into x.
	**/
	@:keep
	static public function store(_x:Ref<Uint64>, _val:GoUInt64):Void
		throw "sync.atomic.store is not yet implemented";

	/**
		// Load atomically loads and returns the value stored in x.
	**/
	@:keep
	static public function load(_x:Ref<Uint64>):GoUInt64
		throw "sync.atomic.load is not yet implemented";
}

class Uintptr_asInterface {
	/**
		// Add atomically adds delta to x and returns the new value.
	**/
	@:keep
	public function add(_delta:GoUIntptr):GoUIntptr
		return __self__.value.add(_delta);

	/**
		// CompareAndSwap executes the compare-and-swap operation for x.
	**/
	@:keep
	public function compareAndSwap(_old:GoUIntptr, _new:GoUIntptr):Bool
		return __self__.value.compareAndSwap(_old, _new);

	/**
		// Swap atomically stores new into x and returns the previous value.
	**/
	@:keep
	public function swap(_new:GoUIntptr):GoUIntptr
		return __self__.value.swap(_new);

	/**
		// Store atomically stores val into x.
	**/
	@:keep
	public function store(_val:GoUIntptr):Void
		__self__.value.store(_val);

	/**
		// Load atomically loads and returns the value stored in x.
	**/
	@:keep
	public function load():GoUIntptr
		return __self__.value.load();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<Uintptr>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sync.atomic.Atomic.Uintptr_asInterface) class Uintptr_static_extension {
	/**
		// Add atomically adds delta to x and returns the new value.
	**/
	@:keep
	static public function add(_x:Ref<Uintptr>, _delta:GoUIntptr):GoUIntptr
		throw "sync.atomic.add is not yet implemented";

	/**
		// CompareAndSwap executes the compare-and-swap operation for x.
	**/
	@:keep
	static public function compareAndSwap(_x:Ref<Uintptr>, _old:GoUIntptr, _new:GoUIntptr):Bool
		throw "sync.atomic.compareAndSwap is not yet implemented";

	/**
		// Swap atomically stores new into x and returns the previous value.
	**/
	@:keep
	static public function swap(_x:Ref<Uintptr>, _new:GoUIntptr):GoUIntptr
		throw "sync.atomic.swap is not yet implemented";

	/**
		// Store atomically stores val into x.
	**/
	@:keep
	static public function store(_x:Ref<Uintptr>, _val:GoUIntptr):Void
		throw "sync.atomic.store is not yet implemented";

	/**
		// Load atomically loads and returns the value stored in x.
	**/
	@:keep
	static public function load(_x:Ref<Uintptr>):GoUIntptr
		throw "sync.atomic.load is not yet implemented";
}

class T_noCopy_asInterface {
	@:keep
	public function unlock():Void
		__self__.value.unlock();

	/**
		// Lock is a no-op used by -copylocks checker from `go vet`.
	**/
	@:keep
	public function lock():Void
		__self__.value.lock();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_noCopy>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sync.atomic.Atomic.T_noCopy_asInterface) class T_noCopy_static_extension {
	@:keep
	static public function unlock(_:Ref<T_noCopy>):Void
		throw "sync.atomic.unlock is not yet implemented";

	/**
		// Lock is a no-op used by -copylocks checker from `go vet`.
	**/
	@:keep
	static public function lock(_:Ref<T_noCopy>):Void
		throw "sync.atomic.lock is not yet implemented";
}

class Value_asInterface {
	/**
		// CompareAndSwap executes the compare-and-swap operation for the Value.
		//
		// All calls to CompareAndSwap for a given Value must use values of the same
		// concrete type. CompareAndSwap of an inconsistent type panics, as does
		// CompareAndSwap(old, nil).
	**/
	@:keep
	public function compareAndSwap(_old:AnyInterface, _new:AnyInterface):Bool
		return __self__.value.compareAndSwap(_old, _new);

	/**
		// Swap stores new into Value and returns the previous value. It returns nil if
		// the Value is empty.
		//
		// All calls to Swap for a given Value must use values of the same concrete
		// type. Swap of an inconsistent type panics, as does Swap(nil).
	**/
	@:keep
	public function swap(_new:AnyInterface):AnyInterface
		return __self__.value.swap(_new);

	/**
		// Store sets the value of the Value to x.
		// All calls to Store for a given Value must use values of the same concrete type.
		// Store of an inconsistent type panics, as does Store(nil).
	**/
	@:keep
	public function store(_val:AnyInterface):Void
		__self__.value.store(_val);

	/**
		// Load returns the value set by the most recent Store.
		// It returns nil if there has been no call to Store for this Value.
	**/
	@:keep
	public function load():AnyInterface
		return __self__.value.load();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<Value>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sync.atomic.Atomic.Value_asInterface) class Value_static_extension {
	/**
		// CompareAndSwap executes the compare-and-swap operation for the Value.
		//
		// All calls to CompareAndSwap for a given Value must use values of the same
		// concrete type. CompareAndSwap of an inconsistent type panics, as does
		// CompareAndSwap(old, nil).
	**/
	@:keep
	static public function compareAndSwap(_v:Ref<Value>, _old:AnyInterface, _new:AnyInterface):Bool
		throw "sync.atomic.compareAndSwap is not yet implemented";

	/**
		// Swap stores new into Value and returns the previous value. It returns nil if
		// the Value is empty.
		//
		// All calls to Swap for a given Value must use values of the same concrete
		// type. Swap of an inconsistent type panics, as does Swap(nil).
	**/
	@:keep
	static public function swap(_v:Ref<Value>, _new:AnyInterface):AnyInterface
		throw "sync.atomic.swap is not yet implemented";

	/**
		// Store sets the value of the Value to x.
		// All calls to Store for a given Value must use values of the same concrete type.
		// Store of an inconsistent type panics, as does Store(nil).
	**/
	@:keep
	static public function store(_v:Ref<Value>, _val:AnyInterface):Void
		throw "sync.atomic.store is not yet implemented";

	/**
		// Load returns the value set by the most recent Store.
		// It returns nil if there has been no call to Store for this Value.
	**/
	@:keep
	static public function load(_v:Ref<Value>):AnyInterface
		throw "sync.atomic.load is not yet implemented";
}
