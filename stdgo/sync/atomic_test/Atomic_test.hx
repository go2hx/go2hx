package stdgo.sync.atomic_test;

import stdgo.sync.atomic.Atomic;
import stdgo.sync.atomic.Atomic;
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
	// Do the 64-bit functions panic? If so, don't bother testing.
**/
private var _test64err:AnyInterface = (null : AnyInterface);

private var _hammer32:GoMap<GoString, (Pointer<GoUInt32>, GoInt) -> Void> = (null : GoMap<GoString, (Pointer<GoUInt32>, GoInt) -> Void>);
private var _hammer64:GoMap<GoString, (Pointer<GoUInt64>, GoInt) -> Void> = (null : GoMap<GoString, (Pointer<GoUInt64>, GoInt) -> Void>);
var value_SwapTests:Slice<T__struct_14> = (null : Slice<T__struct_14>);
private var _heapA:T__struct_15 = ({_uint: (0 : GoUInt)} : T__struct_15);
private var _heapB:T__struct_15 = ({_uint: (0 : GoUInt)} : T__struct_15);
var value_CompareAndSwapTests:Slice<T__struct_16> = (null : Slice<T__struct_16>);
private final _magic32:GoUInt64 = (0 : GoUInt64);
private final _magic64:GoUInt64 = (0 : GoUInt64);
private var _global:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...1024) (0 : GoUInt8)]);
private final _arch32:InvalidType = null;

@:structInit @:local private class T__struct_0 {
	public var _before:GoInt32 = 0;
	public var _i:GoInt32 = 0;
	public var _after:GoInt32 = 0;

	public function string():String
		return "{" + Go.string(_before) + " " + Go.string(_i) + " " + Go.string(_after) + "}";

	public function new(?_before:GoInt32, ?_i:GoInt32, ?_after:GoInt32, ?string) {
		if (_before != null)
			this._before = _before;
		if (_i != null)
			this._i = _i;
		if (_after != null)
			this._after = _after;
	}

	public function __copy__() {
		return new T__struct_0(_before, _i, _after);
	}
}

@:structInit @:local private class T__struct_1 {
	public var _before:GoInt32 = 0;
	public var _i:Int32 = ({} : Int32);
	public var _after:GoInt32 = 0;

	public function string():String
		return "{" + Go.string(_before) + " " + Go.string(_i) + " " + Go.string(_after) + "}";

	public function new(?_before:GoInt32, ?_i:Int32, ?_after:GoInt32, ?string) {
		if (_before != null)
			this._before = _before;
		if (_i != null)
			this._i = _i;
		if (_after != null)
			this._after = _after;
	}

	public function __copy__() {
		return new T__struct_1(_before, _i, _after);
	}
}

@:structInit @:local private class T__struct_2 {
	public var _before:GoUInt32 = 0;
	public var _i:GoUInt32 = 0;
	public var _after:GoUInt32 = 0;

	public function string():String
		return "{" + Go.string(_before) + " " + Go.string(_i) + " " + Go.string(_after) + "}";

	public function new(?_before:GoUInt32, ?_i:GoUInt32, ?_after:GoUInt32, ?string) {
		if (_before != null)
			this._before = _before;
		if (_i != null)
			this._i = _i;
		if (_after != null)
			this._after = _after;
	}

	public function __copy__() {
		return new T__struct_2(_before, _i, _after);
	}
}

@:structInit @:local private class T__struct_3 {
	public var _before:GoUInt32 = 0;
	public var _i:Uint32 = ({} : Uint32);
	public var _after:GoUInt32 = 0;

	public function string():String
		return "{" + Go.string(_before) + " " + Go.string(_i) + " " + Go.string(_after) + "}";

	public function new(?_before:GoUInt32, ?_i:Uint32, ?_after:GoUInt32, ?string) {
		if (_before != null)
			this._before = _before;
		if (_i != null)
			this._i = _i;
		if (_after != null)
			this._after = _after;
	}

	public function __copy__() {
		return new T__struct_3(_before, _i, _after);
	}
}

@:structInit @:local private class T__struct_4 {
	public var _before:GoInt64 = 0;
	public var _i:GoInt64 = 0;
	public var _after:GoInt64 = 0;

	public function string():String
		return "{" + Go.string(_before) + " " + Go.string(_i) + " " + Go.string(_after) + "}";

	public function new(?_before:GoInt64, ?_i:GoInt64, ?_after:GoInt64, ?string) {
		if (_before != null)
			this._before = _before;
		if (_i != null)
			this._i = _i;
		if (_after != null)
			this._after = _after;
	}

	public function __copy__() {
		return new T__struct_4(_before, _i, _after);
	}
}

@:structInit @:local private class T__struct_5 {
	public var _before:GoInt64 = 0;
	public var _i:Int64_ = ({} : Int64_);
	public var _after:GoInt64 = 0;

	public function string():String
		return "{" + Go.string(_before) + " " + Go.string(_i) + " " + Go.string(_after) + "}";

	public function new(?_before:GoInt64, ?_i:Int64_, ?_after:GoInt64, ?string) {
		if (_before != null)
			this._before = _before;
		if (_i != null)
			this._i = _i;
		if (_after != null)
			this._after = _after;
	}

	public function __copy__() {
		return new T__struct_5(_before, _i, _after);
	}
}

@:structInit @:local private class T__struct_6 {
	public var _before:GoUInt64 = 0;
	public var _i:GoUInt64 = 0;
	public var _after:GoUInt64 = 0;

	public function string():String
		return "{" + Go.string(_before) + " " + Go.string(_i) + " " + Go.string(_after) + "}";

	public function new(?_before:GoUInt64, ?_i:GoUInt64, ?_after:GoUInt64, ?string) {
		if (_before != null)
			this._before = _before;
		if (_i != null)
			this._i = _i;
		if (_after != null)
			this._after = _after;
	}

	public function __copy__() {
		return new T__struct_6(_before, _i, _after);
	}
}

@:structInit @:local private class T__struct_7 {
	public var _before:GoUInt64 = 0;
	public var _i:Uint64 = ({} : Uint64);
	public var _after:GoUInt64 = 0;

	public function string():String
		return "{" + Go.string(_before) + " " + Go.string(_i) + " " + Go.string(_after) + "}";

	public function new(?_before:GoUInt64, ?_i:Uint64, ?_after:GoUInt64, ?string) {
		if (_before != null)
			this._before = _before;
		if (_i != null)
			this._i = _i;
		if (_after != null)
			this._after = _after;
	}

	public function __copy__() {
		return new T__struct_7(_before, _i, _after);
	}
}

@:structInit @:local private class T__struct_8 {
	public var _before:GoUIntptr = 0;
	public var _i:GoUIntptr = 0;
	public var _after:GoUIntptr = 0;

	public function string():String
		return "{" + Go.string(_before) + " " + Go.string(_i) + " " + Go.string(_after) + "}";

	public function new(?_before:GoUIntptr, ?_i:GoUIntptr, ?_after:GoUIntptr, ?string) {
		if (_before != null)
			this._before = _before;
		if (_i != null)
			this._i = _i;
		if (_after != null)
			this._after = _after;
	}

	public function __copy__() {
		return new T__struct_8(_before, _i, _after);
	}
}

@:structInit @:local private class T__struct_9 {
	public var _before:GoUIntptr = 0;
	public var _i:Uintptr = ({} : Uintptr);
	public var _after:GoUIntptr = 0;

	public function string():String
		return "{" + Go.string(_before) + " " + Go.string(_i) + " " + Go.string(_after) + "}";

	public function new(?_before:GoUIntptr, ?_i:Uintptr, ?_after:GoUIntptr, ?string) {
		if (_before != null)
			this._before = _before;
		if (_i != null)
			this._i = _i;
		if (_after != null)
			this._after = _after;
	}

	public function __copy__() {
		return new T__struct_9(_before, _i, _after);
	}
}

@:structInit @:local private class T__struct_10 {
	public var _before:GoUIntptr = 0;
	public var _i:stdgo.unsafe.Unsafe.UnsafePointer = null;
	public var _after:GoUIntptr = 0;

	public function string():String
		return "{" + Go.string(_before) + " " + Go.string(_i) + " " + Go.string(_after) + "}";

	public function new(?_before:GoUIntptr, ?_i:stdgo.unsafe.Unsafe.UnsafePointer, ?_after:GoUIntptr, ?string) {
		if (_before != null)
			this._before = _before;
		if (_i != null)
			this._i = _i;
		if (_after != null)
			this._after = _after;
	}

	public function __copy__() {
		return new T__struct_10(_before, _i, _after);
	}
}

@:structInit @:local private class T__struct_11 {
	public var _before:GoUIntptr = 0;
	public var _i:Pointer_<T> = {};
	public var _after:GoUIntptr = 0;

	public function string():String
		return "{" + Go.string(_before) + " " + Go.string(_i) + " " + Go.string(_after) + "}";

	public function new(?_before:GoUIntptr, ?_i:Pointer_<T>, ?_after:GoUIntptr, ?string) {
		if (_before != null)
			this._before = _before;
		if (_i != null)
			this._i = _i;
		if (_after != null)
			this._after = _after;
	}

	public function __copy__() {
		return new T__struct_11(_before, _i, _after);
	}
}

@:structInit @:local private class T__struct_12 {
	@:optional
	public var _19:GoUInt32 = 0;
	public var _i:Int64_ = ({} : Int64_);

	public function string():String
		return "{" + Go.string(_19) + " " + Go.string(_i) + "}";

	public function new(?_19:GoUInt32, ?_i:Int64_, ?string) {
		if (_19 != null)
			this._19 = _19;
		if (_i != null)
			this._i = _i;
	}

	public function __copy__() {
		return new T__struct_12(_19, _i);
	}
}

@:structInit @:local private class T__struct_13 {
	@:optional
	public var _25:GoUInt32 = 0;
	public var _i:Uint64 = ({} : Uint64);

	public function string():String
		return "{" + Go.string(_25) + " " + Go.string(_i) + "}";

	public function new(?_25:GoUInt32, ?_i:Uint64, ?string) {
		if (_25 != null)
			this._25 = _25;
		if (_i != null)
			this._i = _i;
	}

	public function __copy__() {
		return new T__struct_13(_25, _i);
	}
}

@:structInit @:local private class T__struct_14 {
	public var _init:AnyInterface = (null : AnyInterface);
	public var _new:AnyInterface = (null : AnyInterface);
	public var _want:AnyInterface = (null : AnyInterface);
	public var _err:AnyInterface = (null : AnyInterface);

	public function string():String
		return "{" + Go.string(_init) + " " + Go.string(_new) + " " + Go.string(_want) + " " + Go.string(_err) + "}";

	public function new(?_init:AnyInterface, ?_new:AnyInterface, ?_want:AnyInterface, ?_err:AnyInterface, ?string) {
		if (_init != null)
			this._init = _init;
		if (_new != null)
			this._new = _new;
		if (_want != null)
			this._want = _want;
		if (_err != null)
			this._err = _err;
	}

	public function __copy__() {
		return new T__struct_14(_init, _new, _want, _err);
	}
}

@:structInit @:local @:using(stdgo.sync.atomic_test.Atomic_test.T__struct_15_static_extension) private class T__struct_15 {
	@:embedded
	public var _uint:GoUInt = 0;

	public function string():String
		return "{" + Go.string(_uint) + "}";

	public function new(?_uint:GoUInt, ?string) {
		if (_uint != null)
			this._uint = _uint;
	}

	public function __copy__() {
		return new T__struct_15(_uint);
	}
}

@:structInit @:local private class T__struct_16 {
	public var _init:AnyInterface = (null : AnyInterface);
	public var _new:AnyInterface = (null : AnyInterface);
	public var _old:AnyInterface = (null : AnyInterface);
	public var _want:Bool = false;
	public var _err:AnyInterface = (null : AnyInterface);

	public function string():String
		return "{"
			+ Go.string(_init)
			+ " "
			+ Go.string(_new)
			+ " "
			+ Go.string(_old)
			+ " "
			+ Go.string(_want)
			+ " "
			+ Go.string(_err)
			+ "}";

	public function new(?_init:AnyInterface, ?_new:AnyInterface, ?_old:AnyInterface, ?_want:Bool, ?_err:AnyInterface, ?string) {
		if (_init != null)
			this._init = _init;
		if (_new != null)
			this._new = _new;
		if (_old != null)
			this._old = _old;
		if (_want != null)
			this._want = _want;
		if (_err != null)
			this._err = _err;
	}

	public function __copy__() {
		return new T__struct_16(_init, _new, _old, _want, _err);
	}
}

function testSwapInt32(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _x:T__struct_0 = ({_before: (0 : GoInt32), _i: (0 : GoInt32), _after: (0 : GoInt32)} : T__struct_0);
	_x._before = (233684719 : GoInt32);
	_x._after = (233684719 : GoInt32);
	var _j:GoInt32 = (0 : GoInt32);
	{
		var _delta:GoInt32 = (1 : GoInt32);
		Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
			var _k:GoInt32 = swapInt32(Go.pointer(_x._i), _delta);
			if ((_x._i != _delta) || (_k != _j)) {
				_t.fatalf(Go.str("delta=%d i=%d j=%d k=%d"), Go.toInterface(_delta), Go.toInterface(_x._i), Go.toInterface(_j), Go.toInterface(_k));
			};
			_j = _delta;
		});
	};
	if ((_x._before != (233684719 : GoInt32)) || (_x._after != (233684719 : GoInt32))) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface((233684719 : GoInt)),
			Go.toInterface((233684719 : GoInt)));
	};
}

function testSwapInt32Method(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _x:T__struct_1 = ({_before: (0 : GoInt32), _i: ({} : Int32), _after: (0 : GoInt32)} : T__struct_1);
	_x._before = (233684719 : GoInt32);
	_x._after = (233684719 : GoInt32);
	var _j:GoInt32 = (0 : GoInt32);
	{
		var _delta:GoInt32 = (1 : GoInt32);
		Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
			var _k:GoInt32 = _x._i.swap(_delta);
			if ((_x._i.load() != _delta) || (_k != _j)) {
				_t.fatalf(Go.str("delta=%d i=%d j=%d k=%d"), Go.toInterface(_delta), Go.toInterface(_x._i.load()), Go.toInterface(_j), Go.toInterface(_k));
			};
			_j = _delta;
		});
	};
	if ((_x._before != (233684719 : GoInt32)) || (_x._after != (233684719 : GoInt32))) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface((233684719 : GoInt)),
			Go.toInterface((233684719 : GoInt)));
	};
}

function testSwapUint32(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _x:T__struct_2 = ({_before: (0 : GoUInt32), _i: (0 : GoUInt32), _after: (0 : GoUInt32)} : T__struct_2);
	_x._before = ("233684719" : GoUInt32);
	_x._after = ("233684719" : GoUInt32);
	var _j:GoUInt32 = (0 : GoUInt32);
	{
		var _delta:GoUInt32 = (("1" : GoUInt32) : GoUInt32);
		Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
			var _k:GoUInt32 = swapUint32(Go.pointer(_x._i), _delta);
			if ((_x._i != _delta) || (_k != _j)) {
				_t.fatalf(Go.str("delta=%d i=%d j=%d k=%d"), Go.toInterface(_delta), Go.toInterface(_x._i), Go.toInterface(_j), Go.toInterface(_k));
			};
			_j = _delta;
		});
	};
	if ((_x._before != ("233684719" : GoUInt32)) || (_x._after != ("233684719" : GoUInt32))) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface((233684719 : GoInt)),
			Go.toInterface((233684719 : GoInt)));
	};
}

function testSwapUint32Method(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _x:T__struct_3 = ({_before: (0 : GoUInt32), _i: ({} : Uint32), _after: (0 : GoUInt32)} : T__struct_3);
	_x._before = ("233684719" : GoUInt32);
	_x._after = ("233684719" : GoUInt32);
	var _j:GoUInt32 = (0 : GoUInt32);
	{
		var _delta:GoUInt32 = (("1" : GoUInt32) : GoUInt32);
		Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
			var _k:GoUInt32 = _x._i.swap(_delta);
			if ((_x._i.load() != _delta) || (_k != _j)) {
				_t.fatalf(Go.str("delta=%d i=%d j=%d k=%d"), Go.toInterface(_delta), Go.toInterface(_x._i.load()), Go.toInterface(_j), Go.toInterface(_k));
			};
			_j = _delta;
		});
	};
	if ((_x._before != ("233684719" : GoUInt32)) || (_x._after != ("233684719" : GoUInt32))) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface((233684719 : GoInt)),
			Go.toInterface((233684719 : GoInt)));
	};
}

function testSwapInt64(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (_test64err != null) {
		_t.skipf(Go.str("Skipping 64-bit tests: %v"), _test64err);
	};
	var _x:T__struct_4 = ({_before: (0 : GoInt64), _i: (0 : GoInt64), _after: (0 : GoInt64)} : T__struct_4);
	var _magic64:GoInt64 = (("1003703129787580143" : GoInt64) : GoInt64);
	_x._before = _magic64;
	_x._after = _magic64;
	var _j:GoInt64 = (0 : GoInt64);
	{
		var _delta:GoInt64 = (("1" : GoInt64) : GoInt64);
		Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
			var _k:GoInt64 = swapInt64(Go.pointer(_x._i), _delta);
			if ((_x._i != _delta) || (_k != _j)) {
				_t.fatalf(Go.str("delta=%d i=%d j=%d k=%d"), Go.toInterface(_delta), Go.toInterface(_x._i), Go.toInterface(_j), Go.toInterface(_k));
			};
			_j = _delta;
		});
	};
	if ((_x._before != _magic64) || (_x._after != _magic64)) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface(_magic64),
			Go.toInterface(_magic64));
	};
}

function testSwapInt64Method(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (_test64err != null) {
		_t.skipf(Go.str("Skipping 64-bit tests: %v"), _test64err);
	};
	var _x:T__struct_5 = ({_before: (0 : GoInt64), _i: ({} : Int64_), _after: (0 : GoInt64)} : T__struct_5);
	var _magic64:GoInt64 = (("1003703129787580143" : GoInt64) : GoInt64);
	_x._before = _magic64;
	_x._after = _magic64;
	var _j:GoInt64 = (0 : GoInt64);
	{
		var _delta:GoInt64 = (("1" : GoInt64) : GoInt64);
		Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
			var _k:GoInt64 = _x._i.swap(_delta);
			if ((_x._i.load() != _delta) || (_k != _j)) {
				_t.fatalf(Go.str("delta=%d i=%d j=%d k=%d"), Go.toInterface(_delta), Go.toInterface(_x._i.load()), Go.toInterface(_j), Go.toInterface(_k));
			};
			_j = _delta;
		});
	};
	if ((_x._before != _magic64) || (_x._after != _magic64)) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface(_magic64),
			Go.toInterface(_magic64));
	};
}

function testSwapUint64(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (_test64err != null) {
		_t.skipf(Go.str("Skipping 64-bit tests: %v"), _test64err);
	};
	var _x:T__struct_6 = ({_before: (0 : GoUInt64), _i: (0 : GoUInt64), _after: (0 : GoUInt64)} : T__struct_6);
	var _magic64:GoUInt64 = (("1003703129787580143" : GoUInt64) : GoUInt64);
	_x._before = _magic64;
	_x._after = _magic64;
	var _j:GoUInt64 = (0 : GoUInt64);
	{
		var _delta:GoUInt64 = (("1" : GoUInt64) : GoUInt64);
		Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
			var _k:GoUInt64 = swapUint64(Go.pointer(_x._i), _delta);
			if ((_x._i != _delta) || (_k != _j)) {
				_t.fatalf(Go.str("delta=%d i=%d j=%d k=%d"), Go.toInterface(_delta), Go.toInterface(_x._i), Go.toInterface(_j), Go.toInterface(_k));
			};
			_j = _delta;
		});
	};
	if ((_x._before != _magic64) || (_x._after != _magic64)) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface(_magic64),
			Go.toInterface(_magic64));
	};
}

function testSwapUint64Method(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (_test64err != null) {
		_t.skipf(Go.str("Skipping 64-bit tests: %v"), _test64err);
	};
	var _x:T__struct_7 = ({_before: (0 : GoUInt64), _i: ({} : Uint64), _after: (0 : GoUInt64)} : T__struct_7);
	var _magic64:GoUInt64 = (("1003703129787580143" : GoUInt64) : GoUInt64);
	_x._before = _magic64;
	_x._after = _magic64;
	var _j:GoUInt64 = (0 : GoUInt64);
	{
		var _delta:GoUInt64 = (("1" : GoUInt64) : GoUInt64);
		Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
			var _k:GoUInt64 = _x._i.swap(_delta);
			if ((_x._i.load() != _delta) || (_k != _j)) {
				_t.fatalf(Go.str("delta=%d i=%d j=%d k=%d"), Go.toInterface(_delta), Go.toInterface(_x._i.load()), Go.toInterface(_j), Go.toInterface(_k));
			};
			_j = _delta;
		});
	};
	if ((_x._before != _magic64) || (_x._after != _magic64)) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface(_magic64),
			Go.toInterface(_magic64));
	};
}

function testSwapUintptr(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _x:T__struct_8 = ({_before: (0 : GoUIntptr), _i: (0 : GoUIntptr), _after: (0 : GoUIntptr)} : T__struct_8);
	var _m:GoUInt64 = ("1003703129787580143" : GoUInt64);
	var _magicptr:GoUIntptr = (_m : GoUIntptr);
	_x._before = _magicptr;
	_x._after = _magicptr;
	var _j:GoUIntptr = (0 : GoUIntptr);
	{
		var _delta:GoUIntptr = (1 : GoUIntptr);
		Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
			var _k:GoUIntptr = swapUintptr(Go.pointer(_x._i), _delta);
			if ((_x._i != _delta) || (_k != _j)) {
				_t.fatalf(Go.str("delta=%d i=%d j=%d k=%d"), Go.toInterface(_delta), Go.toInterface(_x._i), Go.toInterface(_j), Go.toInterface(_k));
			};
			_j = _delta;
		});
	};
	if ((_x._before != _magicptr) || (_x._after != _magicptr)) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface(_magicptr),
			Go.toInterface(_magicptr));
	};
}

function testSwapUintptrMethod(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _x:T__struct_9 = ({_before: (0 : GoUIntptr), _i: ({} : Uintptr), _after: (0 : GoUIntptr)} : T__struct_9);
	var _m:GoUInt64 = ("1003703129787580143" : GoUInt64);
	var _magicptr:GoUIntptr = (_m : GoUIntptr);
	_x._before = _magicptr;
	_x._after = _magicptr;
	var _j:GoUIntptr = (0 : GoUIntptr);
	{
		var _delta:GoUIntptr = (1 : GoUIntptr);
		Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
			var _k:GoUIntptr = _x._i.swap(_delta);
			if ((_x._i.load() != _delta) || (_k != _j)) {
				_t.fatalf(Go.str("delta=%d i=%d j=%d k=%d"), Go.toInterface(_delta), Go.toInterface(_x._i.load()), Go.toInterface(_j), Go.toInterface(_k));
			};
			_j = _delta;
		});
	};
	if ((_x._before != _magicptr) || (_x._after != _magicptr)) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface(_magicptr),
			Go.toInterface(_magicptr));
	};
}

function _testPointers():Slice<stdgo.unsafe.Unsafe.UnsafePointer> {
	var _pointers:Slice<stdgo.unsafe.Unsafe.UnsafePointer> = (null : Slice<stdgo.unsafe.Unsafe.UnsafePointer>);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (10:GoInt), _i++, {
			_pointers = _pointers.__appendref__((Go.toInterface(Go.pointer(_global[((1 : GoInt) << _i) - (1 : GoInt)])) : stdgo.unsafe.Unsafe.UnsafePointer));
		});
	};
	_pointers = _pointers.__appendref__((Go.toInterface(Go.pointer((0 : GoUInt8))) : stdgo.unsafe.Unsafe.UnsafePointer));
	_pointers = _pointers.__appendref__(null);
	return _pointers;
}

function testSwapPointer(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _x:T__struct_10 = ({_before: (0 : GoUIntptr), _i: null, _after: (0 : GoUIntptr)} : T__struct_10);
	var _m:GoUInt64 = ("1003703129787580143" : GoUInt64);
	var _magicptr:GoUIntptr = (_m : GoUIntptr);
	_x._before = _magicptr;
	_x._after = _magicptr;
	var _j:stdgo.unsafe.Unsafe.UnsafePointer = null;
	for (_0 => _p in _testPointers()) {
		var _k:stdgo.unsafe.Unsafe.UnsafePointer = swapPointer(Go.pointer(_x._i), _p);
		if ((_x._i != _p) || (_k != _j)) {
			_t.fatalf(Go.str("p=%p i=%p j=%p k=%p"), Go.toInterface(_p), Go.toInterface(_x._i), Go.toInterface(_j), Go.toInterface(_k));
		};
		_j = _p;
	};
	if ((_x._before != _magicptr) || (_x._after != _magicptr)) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface(_magicptr),
			Go.toInterface(_magicptr));
	};
}

function testSwapPointerMethod(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _x:T__struct_11 = ({_before: (0 : GoUIntptr), _i: {}, _after: (0 : GoUIntptr)} : T__struct_11);
	var _m:GoUInt64 = ("1003703129787580143" : GoUInt64);
	var _magicptr:GoUIntptr = (_m : GoUIntptr);
	_x._before = _magicptr;
	_x._after = _magicptr;
	var _j:Pointer<GoByte> = (null : Pointer<GoUInt8>);
	for (_4 => _p in _testPointers()) {
		var _p = (_p.__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType(stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind))) : Pointer<GoByte>);
		var _k = #if !macro _x._i.swap(_p) #else null #end;
		if ((#if !macro _x._i.load() #else null #end != _p) || (_k != _j)) {
			_t.fatalf(Go.str("p=%p i=%p j=%p k=%p"), Go.toInterface(_p), Go.toInterface(#if !macro _x._i.load() #else null #end), Go.toInterface(_j),
				Go.toInterface(_k));
		};
		_j = _p;
	};
	if ((_x._before != _magicptr) || (_x._after != _magicptr)) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface(_magicptr),
			Go.toInterface(_magicptr));
	};
}

function testAddInt32(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _x:T__struct_0 = ({_before: (0 : GoInt32), _i: (0 : GoInt32), _after: (0 : GoInt32)} : T__struct_0);
	_x._before = (233684719 : GoInt32);
	_x._after = (233684719 : GoInt32);
	var _j:GoInt32 = (0 : GoInt32);
	{
		var _delta:GoInt32 = (1 : GoInt32);
		Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
			var _k:GoInt32 = addInt32(Go.pointer(_x._i), _delta);
			_j = _j + (_delta);
			if ((_x._i != _j) || (_k != _j)) {
				_t.fatalf(Go.str("delta=%d i=%d j=%d k=%d"), Go.toInterface(_delta), Go.toInterface(_x._i), Go.toInterface(_j), Go.toInterface(_k));
			};
		});
	};
	if ((_x._before != (233684719 : GoInt32)) || (_x._after != (233684719 : GoInt32))) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface((233684719 : GoInt)),
			Go.toInterface((233684719 : GoInt)));
	};
}

function testAddInt32Method(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _x:T__struct_1 = ({_before: (0 : GoInt32), _i: ({} : Int32), _after: (0 : GoInt32)} : T__struct_1);
	_x._before = (233684719 : GoInt32);
	_x._after = (233684719 : GoInt32);
	var _j:GoInt32 = (0 : GoInt32);
	{
		var _delta:GoInt32 = (1 : GoInt32);
		Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
			var _k:GoInt32 = _x._i.add(_delta);
			_j = _j + (_delta);
			if ((_x._i.load() != _j) || (_k != _j)) {
				_t.fatalf(Go.str("delta=%d i=%d j=%d k=%d"), Go.toInterface(_delta), Go.toInterface(_x._i.load()), Go.toInterface(_j), Go.toInterface(_k));
			};
		});
	};
	if ((_x._before != (233684719 : GoInt32)) || (_x._after != (233684719 : GoInt32))) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface((233684719 : GoInt)),
			Go.toInterface((233684719 : GoInt)));
	};
}

function testAddUint32(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _x:T__struct_2 = ({_before: (0 : GoUInt32), _i: (0 : GoUInt32), _after: (0 : GoUInt32)} : T__struct_2);
	_x._before = ("233684719" : GoUInt32);
	_x._after = ("233684719" : GoUInt32);
	var _j:GoUInt32 = (0 : GoUInt32);
	{
		var _delta:GoUInt32 = (("1" : GoUInt32) : GoUInt32);
		Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
			var _k:GoUInt32 = addUint32(Go.pointer(_x._i), _delta);
			_j = _j + (_delta);
			if ((_x._i != _j) || (_k != _j)) {
				_t.fatalf(Go.str("delta=%d i=%d j=%d k=%d"), Go.toInterface(_delta), Go.toInterface(_x._i), Go.toInterface(_j), Go.toInterface(_k));
			};
		});
	};
	if ((_x._before != ("233684719" : GoUInt32)) || (_x._after != ("233684719" : GoUInt32))) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface((233684719 : GoInt)),
			Go.toInterface((233684719 : GoInt)));
	};
}

function testAddUint32Method(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _x:T__struct_3 = ({_before: (0 : GoUInt32), _i: ({} : Uint32), _after: (0 : GoUInt32)} : T__struct_3);
	_x._before = ("233684719" : GoUInt32);
	_x._after = ("233684719" : GoUInt32);
	var _j:GoUInt32 = (0 : GoUInt32);
	{
		var _delta:GoUInt32 = (("1" : GoUInt32) : GoUInt32);
		Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
			var _k:GoUInt32 = _x._i.add(_delta);
			_j = _j + (_delta);
			if ((_x._i.load() != _j) || (_k != _j)) {
				_t.fatalf(Go.str("delta=%d i=%d j=%d k=%d"), Go.toInterface(_delta), Go.toInterface(_x._i.load()), Go.toInterface(_j), Go.toInterface(_k));
			};
		});
	};
	if ((_x._before != ("233684719" : GoUInt32)) || (_x._after != ("233684719" : GoUInt32))) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface((233684719 : GoInt)),
			Go.toInterface((233684719 : GoInt)));
	};
}

function testAddInt64(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (_test64err != null) {
		_t.skipf(Go.str("Skipping 64-bit tests: %v"), _test64err);
	};
	var _x:T__struct_4 = ({_before: (0 : GoInt64), _i: (0 : GoInt64), _after: (0 : GoInt64)} : T__struct_4);
	var _magic64:GoInt64 = (("1003703129787580143" : GoInt64) : GoInt64);
	_x._before = _magic64;
	_x._after = _magic64;
	var _j:GoInt64 = (0 : GoInt64);
	{
		var _delta:GoInt64 = (("1" : GoInt64) : GoInt64);
		Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
			var _k:GoInt64 = addInt64(Go.pointer(_x._i), _delta);
			_j = _j + (_delta);
			if ((_x._i != _j) || (_k != _j)) {
				_t.fatalf(Go.str("delta=%d i=%d j=%d k=%d"), Go.toInterface(_delta), Go.toInterface(_x._i), Go.toInterface(_j), Go.toInterface(_k));
			};
		});
	};
	if ((_x._before != _magic64) || (_x._after != _magic64)) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface(_magic64),
			Go.toInterface(_magic64));
	};
}

function testAddInt64Method(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (_test64err != null) {
		_t.skipf(Go.str("Skipping 64-bit tests: %v"), _test64err);
	};
	var _x:T__struct_5 = ({_before: (0 : GoInt64), _i: ({} : Int64_), _after: (0 : GoInt64)} : T__struct_5);
	var _magic64:GoInt64 = (("1003703129787580143" : GoInt64) : GoInt64);
	_x._before = _magic64;
	_x._after = _magic64;
	var _j:GoInt64 = (0 : GoInt64);
	{
		var _delta:GoInt64 = (("1" : GoInt64) : GoInt64);
		Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
			var _k:GoInt64 = _x._i.add(_delta);
			_j = _j + (_delta);
			if ((_x._i.load() != _j) || (_k != _j)) {
				_t.fatalf(Go.str("delta=%d i=%d j=%d k=%d"), Go.toInterface(_delta), Go.toInterface(_x._i.load()), Go.toInterface(_j), Go.toInterface(_k));
			};
		});
	};
	if ((_x._before != _magic64) || (_x._after != _magic64)) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface(_magic64),
			Go.toInterface(_magic64));
	};
}

function testAddUint64(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (_test64err != null) {
		_t.skipf(Go.str("Skipping 64-bit tests: %v"), _test64err);
	};
	var _x:T__struct_6 = ({_before: (0 : GoUInt64), _i: (0 : GoUInt64), _after: (0 : GoUInt64)} : T__struct_6);
	var _magic64:GoUInt64 = (("1003703129787580143" : GoUInt64) : GoUInt64);
	_x._before = _magic64;
	_x._after = _magic64;
	var _j:GoUInt64 = (0 : GoUInt64);
	{
		var _delta:GoUInt64 = (("1" : GoUInt64) : GoUInt64);
		Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
			var _k:GoUInt64 = addUint64(Go.pointer(_x._i), _delta);
			_j = _j + (_delta);
			if ((_x._i != _j) || (_k != _j)) {
				_t.fatalf(Go.str("delta=%d i=%d j=%d k=%d"), Go.toInterface(_delta), Go.toInterface(_x._i), Go.toInterface(_j), Go.toInterface(_k));
			};
		});
	};
	if ((_x._before != _magic64) || (_x._after != _magic64)) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface(_magic64),
			Go.toInterface(_magic64));
	};
}

function testAddUint64Method(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (_test64err != null) {
		_t.skipf(Go.str("Skipping 64-bit tests: %v"), _test64err);
	};
	var _x:T__struct_7 = ({_before: (0 : GoUInt64), _i: ({} : Uint64), _after: (0 : GoUInt64)} : T__struct_7);
	var _magic64:GoUInt64 = (("1003703129787580143" : GoUInt64) : GoUInt64);
	_x._before = _magic64;
	_x._after = _magic64;
	var _j:GoUInt64 = (0 : GoUInt64);
	{
		var _delta:GoUInt64 = (("1" : GoUInt64) : GoUInt64);
		Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
			var _k:GoUInt64 = _x._i.add(_delta);
			_j = _j + (_delta);
			if ((_x._i.load() != _j) || (_k != _j)) {
				_t.fatalf(Go.str("delta=%d i=%d j=%d k=%d"), Go.toInterface(_delta), Go.toInterface(_x._i.load()), Go.toInterface(_j), Go.toInterface(_k));
			};
		});
	};
	if ((_x._before != _magic64) || (_x._after != _magic64)) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface(_magic64),
			Go.toInterface(_magic64));
	};
}

function testAddUintptr(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _x:T__struct_8 = ({_before: (0 : GoUIntptr), _i: (0 : GoUIntptr), _after: (0 : GoUIntptr)} : T__struct_8);
	var _m:GoUInt64 = ("1003703129787580143" : GoUInt64);
	var _magicptr:GoUIntptr = (_m : GoUIntptr);
	_x._before = _magicptr;
	_x._after = _magicptr;
	var _j:GoUIntptr = (0 : GoUIntptr);
	{
		var _delta:GoUIntptr = (1 : GoUIntptr);
		Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
			var _k:GoUIntptr = addUintptr(Go.pointer(_x._i), _delta);
			_j = _j + (_delta);
			if ((_x._i != _j) || (_k != _j)) {
				_t.fatalf(Go.str("delta=%d i=%d j=%d k=%d"), Go.toInterface(_delta), Go.toInterface(_x._i), Go.toInterface(_j), Go.toInterface(_k));
			};
		});
	};
	if ((_x._before != _magicptr) || (_x._after != _magicptr)) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface(_magicptr),
			Go.toInterface(_magicptr));
	};
}

function testAddUintptrMethod(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _x:T__struct_9 = ({_before: (0 : GoUIntptr), _i: ({} : Uintptr), _after: (0 : GoUIntptr)} : T__struct_9);
	var _m:GoUInt64 = ("1003703129787580143" : GoUInt64);
	var _magicptr:GoUIntptr = (_m : GoUIntptr);
	_x._before = _magicptr;
	_x._after = _magicptr;
	var _j:GoUIntptr = (0 : GoUIntptr);
	{
		var _delta:GoUIntptr = (1 : GoUIntptr);
		Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
			var _k:GoUIntptr = _x._i.add(_delta);
			_j = _j + (_delta);
			if ((_x._i.load() != _j) || (_k != _j)) {
				_t.fatalf(Go.str("delta=%d i=%d j=%d k=%d"), Go.toInterface(_delta), Go.toInterface(_x._i.load()), Go.toInterface(_j), Go.toInterface(_k));
			};
		});
	};
	if ((_x._before != _magicptr) || (_x._after != _magicptr)) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface(_magicptr),
			Go.toInterface(_magicptr));
	};
}

function testCompareAndSwapInt32(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _x:T__struct_0 = ({_before: (0 : GoInt32), _i: (0 : GoInt32), _after: (0 : GoInt32)} : T__struct_0);
	_x._before = (233684719 : GoInt32);
	_x._after = (233684719 : GoInt32);
	{
		var _val:GoInt32 = (1 : GoInt32);
		Go.cfor((_val + _val) > _val, _val = _val + (_val), {
			_x._i = _val;
			if (!compareAndSwapInt32(Go.pointer(_x._i), _val, _val + (1 : GoInt32))) {
				_t.fatalf(Go.str("should have swapped %#x %#x"), Go.toInterface(_val), Go.toInterface(_val + (1 : GoInt32)));
			};
			if (_x._i != (_val + (1 : GoInt32))) {
				_t.fatalf(Go.str("wrong x.i after swap: x.i=%#x val+1=%#x"), Go.toInterface(_x._i), Go.toInterface(_val + (1 : GoInt32)));
			};
			_x._i = _val + (1 : GoInt32);
			if (compareAndSwapInt32(Go.pointer(_x._i), _val, _val + (2 : GoInt32))) {
				_t.fatalf(Go.str("should not have swapped %#x %#x"), Go.toInterface(_val), Go.toInterface(_val + (2 : GoInt32)));
			};
			if (_x._i != (_val + (1 : GoInt32))) {
				_t.fatalf(Go.str("wrong x.i after swap: x.i=%#x val+1=%#x"), Go.toInterface(_x._i), Go.toInterface(_val + (1 : GoInt32)));
			};
		});
	};
	if ((_x._before != (233684719 : GoInt32)) || (_x._after != (233684719 : GoInt32))) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface((233684719 : GoInt)),
			Go.toInterface((233684719 : GoInt)));
	};
}

function testCompareAndSwapInt32Method(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _x:T__struct_1 = ({_before: (0 : GoInt32), _i: ({} : Int32), _after: (0 : GoInt32)} : T__struct_1);
	_x._before = (233684719 : GoInt32);
	_x._after = (233684719 : GoInt32);
	{
		var _val:GoInt32 = (1 : GoInt32);
		Go.cfor((_val + _val) > _val, _val = _val + (_val), {
			_x._i.store(_val);
			if (!_x._i.compareAndSwap(_val, _val + (1 : GoInt32))) {
				_t.fatalf(Go.str("should have swapped %#x %#x"), Go.toInterface(_val), Go.toInterface(_val + (1 : GoInt32)));
			};
			if (_x._i.load() != (_val + (1 : GoInt32))) {
				_t.fatalf(Go.str("wrong x.i after swap: x.i=%#x val+1=%#x"), Go.toInterface(_x._i.load()), Go.toInterface(_val + (1 : GoInt32)));
			};
			_x._i.store(_val + (1 : GoInt32));
			if (_x._i.compareAndSwap(_val, _val + (2 : GoInt32))) {
				_t.fatalf(Go.str("should not have swapped %#x %#x"), Go.toInterface(_val), Go.toInterface(_val + (2 : GoInt32)));
			};
			if (_x._i.load() != (_val + (1 : GoInt32))) {
				_t.fatalf(Go.str("wrong x.i after swap: x.i=%#x val+1=%#x"), Go.toInterface(_x._i.load()), Go.toInterface(_val + (1 : GoInt32)));
			};
		});
	};
	if ((_x._before != (233684719 : GoInt32)) || (_x._after != (233684719 : GoInt32))) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface((233684719 : GoInt)),
			Go.toInterface((233684719 : GoInt)));
	};
}

function testCompareAndSwapUint32(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _x:T__struct_2 = ({_before: (0 : GoUInt32), _i: (0 : GoUInt32), _after: (0 : GoUInt32)} : T__struct_2);
	_x._before = ("233684719" : GoUInt32);
	_x._after = ("233684719" : GoUInt32);
	{
		var _val:GoUInt32 = (("1" : GoUInt32) : GoUInt32);
		Go.cfor((_val + _val) > _val, _val = _val + (_val), {
			_x._i = _val;
			if (!compareAndSwapUint32(Go.pointer(_x._i), _val, _val + ("1" : GoUInt32))) {
				_t.fatalf(Go.str("should have swapped %#x %#x"), Go.toInterface(_val), Go.toInterface(_val + ("1" : GoUInt32)));
			};
			if (_x._i != (_val + (("1" : GoUInt32) : GoUInt32))) {
				_t.fatalf(Go.str("wrong x.i after swap: x.i=%#x val+1=%#x"), Go.toInterface(_x._i), Go.toInterface(_val + ("1" : GoUInt32)));
			};
			_x._i = _val + ("1" : GoUInt32);
			if (compareAndSwapUint32(Go.pointer(_x._i), _val, _val + ("2" : GoUInt32))) {
				_t.fatalf(Go.str("should not have swapped %#x %#x"), Go.toInterface(_val), Go.toInterface(_val + ("2" : GoUInt32)));
			};
			if (_x._i != (_val + (("1" : GoUInt32) : GoUInt32))) {
				_t.fatalf(Go.str("wrong x.i after swap: x.i=%#x val+1=%#x"), Go.toInterface(_x._i), Go.toInterface(_val + ("1" : GoUInt32)));
			};
		});
	};
	if ((_x._before != ("233684719" : GoUInt32)) || (_x._after != ("233684719" : GoUInt32))) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface((233684719 : GoInt)),
			Go.toInterface((233684719 : GoInt)));
	};
}

function testCompareAndSwapUint32Method(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _x:T__struct_3 = ({_before: (0 : GoUInt32), _i: ({} : Uint32), _after: (0 : GoUInt32)} : T__struct_3);
	_x._before = ("233684719" : GoUInt32);
	_x._after = ("233684719" : GoUInt32);
	{
		var _val:GoUInt32 = (("1" : GoUInt32) : GoUInt32);
		Go.cfor((_val + _val) > _val, _val = _val + (_val), {
			_x._i.store(_val);
			if (!_x._i.compareAndSwap(_val, _val + ("1" : GoUInt32))) {
				_t.fatalf(Go.str("should have swapped %#x %#x"), Go.toInterface(_val), Go.toInterface(_val + ("1" : GoUInt32)));
			};
			if (_x._i.load() != (_val + (("1" : GoUInt32) : GoUInt32))) {
				_t.fatalf(Go.str("wrong x.i after swap: x.i=%#x val+1=%#x"), Go.toInterface(_x._i.load()), Go.toInterface(_val + ("1" : GoUInt32)));
			};
			_x._i.store(_val + ("1" : GoUInt32));
			if (_x._i.compareAndSwap(_val, _val + ("2" : GoUInt32))) {
				_t.fatalf(Go.str("should not have swapped %#x %#x"), Go.toInterface(_val), Go.toInterface(_val + ("2" : GoUInt32)));
			};
			if (_x._i.load() != (_val + (("1" : GoUInt32) : GoUInt32))) {
				_t.fatalf(Go.str("wrong x.i after swap: x.i=%#x val+1=%#x"), Go.toInterface(_x._i.load()), Go.toInterface(_val + ("1" : GoUInt32)));
			};
		});
	};
	if ((_x._before != ("233684719" : GoUInt32)) || (_x._after != ("233684719" : GoUInt32))) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface((233684719 : GoInt)),
			Go.toInterface((233684719 : GoInt)));
	};
}

function testCompareAndSwapInt64(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (_test64err != null) {
		_t.skipf(Go.str("Skipping 64-bit tests: %v"), _test64err);
	};
	var _x:T__struct_4 = ({_before: (0 : GoInt64), _i: (0 : GoInt64), _after: (0 : GoInt64)} : T__struct_4);
	var _magic64:GoInt64 = (("1003703129787580143" : GoInt64) : GoInt64);
	_x._before = _magic64;
	_x._after = _magic64;
	{
		var _val:GoInt64 = (("1" : GoInt64) : GoInt64);
		Go.cfor((_val + _val) > _val, _val = _val + (_val), {
			_x._i = _val;
			if (!compareAndSwapInt64(Go.pointer(_x._i), _val, _val + ("1" : GoInt64))) {
				_t.fatalf(Go.str("should have swapped %#x %#x"), Go.toInterface(_val), Go.toInterface(_val + ("1" : GoInt64)));
			};
			if (_x._i != (_val + (("1" : GoInt64) : GoInt64))) {
				_t.fatalf(Go.str("wrong x.i after swap: x.i=%#x val+1=%#x"), Go.toInterface(_x._i), Go.toInterface(_val + ("1" : GoInt64)));
			};
			_x._i = _val + ("1" : GoInt64);
			if (compareAndSwapInt64(Go.pointer(_x._i), _val, _val + ("2" : GoInt64))) {
				_t.fatalf(Go.str("should not have swapped %#x %#x"), Go.toInterface(_val), Go.toInterface(_val + ("2" : GoInt64)));
			};
			if (_x._i != (_val + (("1" : GoInt64) : GoInt64))) {
				_t.fatalf(Go.str("wrong x.i after swap: x.i=%#x val+1=%#x"), Go.toInterface(_x._i), Go.toInterface(_val + ("1" : GoInt64)));
			};
		});
	};
	if ((_x._before != _magic64) || (_x._after != _magic64)) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface(_magic64),
			Go.toInterface(_magic64));
	};
}

function testCompareAndSwapInt64Method(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (_test64err != null) {
		_t.skipf(Go.str("Skipping 64-bit tests: %v"), _test64err);
	};
	var _x:T__struct_5 = ({_before: (0 : GoInt64), _i: ({} : Int64_), _after: (0 : GoInt64)} : T__struct_5);
	var _magic64:GoInt64 = (("1003703129787580143" : GoInt64) : GoInt64);
	_x._before = _magic64;
	_x._after = _magic64;
	{
		var _val:GoInt64 = (("1" : GoInt64) : GoInt64);
		Go.cfor((_val + _val) > _val, _val = _val + (_val), {
			_x._i.store(_val);
			if (!_x._i.compareAndSwap(_val, _val + ("1" : GoInt64))) {
				_t.fatalf(Go.str("should have swapped %#x %#x"), Go.toInterface(_val), Go.toInterface(_val + ("1" : GoInt64)));
			};
			if (_x._i.load() != (_val + (("1" : GoInt64) : GoInt64))) {
				_t.fatalf(Go.str("wrong x.i after swap: x.i=%#x val+1=%#x"), Go.toInterface(_x._i.load()), Go.toInterface(_val + ("1" : GoInt64)));
			};
			_x._i.store(_val + ("1" : GoInt64));
			if (_x._i.compareAndSwap(_val, _val + ("2" : GoInt64))) {
				_t.fatalf(Go.str("should not have swapped %#x %#x"), Go.toInterface(_val), Go.toInterface(_val + ("2" : GoInt64)));
			};
			if (_x._i.load() != (_val + (("1" : GoInt64) : GoInt64))) {
				_t.fatalf(Go.str("wrong x.i after swap: x.i=%#x val+1=%#x"), Go.toInterface(_x._i.load()), Go.toInterface(_val + ("1" : GoInt64)));
			};
		});
	};
	if ((_x._before != _magic64) || (_x._after != _magic64)) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface(_magic64),
			Go.toInterface(_magic64));
	};
}

function _testCompareAndSwapUint64(_t:Ref<stdgo.testing.Testing.T>, _cas:(Pointer<GoUInt64>, GoUInt64, GoUInt64) -> Bool):Void {
	if (_test64err != null) {
		_t.skipf(Go.str("Skipping 64-bit tests: %v"), _test64err);
	};
	var _x:T__struct_6 = ({_before: (0 : GoUInt64), _i: (0 : GoUInt64), _after: (0 : GoUInt64)} : T__struct_6);
	var _magic64:GoUInt64 = (("1003703129787580143" : GoUInt64) : GoUInt64);
	_x._before = _magic64;
	_x._after = _magic64;
	{
		var _val:GoUInt64 = (("1" : GoUInt64) : GoUInt64);
		Go.cfor((_val + _val) > _val, _val = _val + (_val), {
			_x._i = _val;
			if (!_cas(Go.pointer(_x._i), _val, _val + ("1" : GoUInt64))) {
				_t.fatalf(Go.str("should have swapped %#x %#x"), Go.toInterface(_val), Go.toInterface(_val + ("1" : GoUInt64)));
			};
			if (_x._i != (_val + (("1" : GoUInt64) : GoUInt64))) {
				_t.fatalf(Go.str("wrong x.i after swap: x.i=%#x val+1=%#x"), Go.toInterface(_x._i), Go.toInterface(_val + ("1" : GoUInt64)));
			};
			_x._i = _val + ("1" : GoUInt64);
			if (_cas(Go.pointer(_x._i), _val, _val + ("2" : GoUInt64))) {
				_t.fatalf(Go.str("should not have swapped %#x %#x"), Go.toInterface(_val), Go.toInterface(_val + ("2" : GoUInt64)));
			};
			if (_x._i != (_val + (("1" : GoUInt64) : GoUInt64))) {
				_t.fatalf(Go.str("wrong x.i after swap: x.i=%#x val+1=%#x"), Go.toInterface(_x._i), Go.toInterface(_val + ("1" : GoUInt64)));
			};
		});
	};
	if ((_x._before != _magic64) || (_x._after != _magic64)) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface(_magic64),
			Go.toInterface(_magic64));
	};
}

function testCompareAndSwapUint64(_t:Ref<stdgo.testing.Testing.T>):Void {
	_testCompareAndSwapUint64(_t, compareAndSwapUint64);
}

function testCompareAndSwapUint64Method(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (_test64err != null) {
		_t.skipf(Go.str("Skipping 64-bit tests: %v"), _test64err);
	};
	var _x:T__struct_7 = ({_before: (0 : GoUInt64), _i: ({} : Uint64), _after: (0 : GoUInt64)} : T__struct_7);
	var _magic64:GoUInt64 = (("1003703129787580143" : GoUInt64) : GoUInt64);
	_x._before = _magic64;
	_x._after = _magic64;
	{
		var _val:GoUInt64 = (("1" : GoUInt64) : GoUInt64);
		Go.cfor((_val + _val) > _val, _val = _val + (_val), {
			_x._i.store(_val);
			if (!_x._i.compareAndSwap(_val, _val + ("1" : GoUInt64))) {
				_t.fatalf(Go.str("should have swapped %#x %#x"), Go.toInterface(_val), Go.toInterface(_val + ("1" : GoUInt64)));
			};
			if (_x._i.load() != (_val + (("1" : GoUInt64) : GoUInt64))) {
				_t.fatalf(Go.str("wrong x.i after swap: x.i=%#x val+1=%#x"), Go.toInterface(_x._i.load()), Go.toInterface(_val + ("1" : GoUInt64)));
			};
			_x._i.store(_val + ("1" : GoUInt64));
			if (_x._i.compareAndSwap(_val, _val + ("2" : GoUInt64))) {
				_t.fatalf(Go.str("should not have swapped %#x %#x"), Go.toInterface(_val), Go.toInterface(_val + ("2" : GoUInt64)));
			};
			if (_x._i.load() != (_val + (("1" : GoUInt64) : GoUInt64))) {
				_t.fatalf(Go.str("wrong x.i after swap: x.i=%#x val+1=%#x"), Go.toInterface(_x._i.load()), Go.toInterface(_val + ("1" : GoUInt64)));
			};
		});
	};
	if ((_x._before != _magic64) || (_x._after != _magic64)) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface(_magic64),
			Go.toInterface(_magic64));
	};
}

function testCompareAndSwapUintptr(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _x:T__struct_8 = ({_before: (0 : GoUIntptr), _i: (0 : GoUIntptr), _after: (0 : GoUIntptr)} : T__struct_8);
	var _m:GoUInt64 = ("1003703129787580143" : GoUInt64);
	var _magicptr:GoUIntptr = (_m : GoUIntptr);
	_x._before = _magicptr;
	_x._after = _magicptr;
	{
		var _val:GoUIntptr = (1 : GoUIntptr);
		Go.cfor((_val + _val) > _val, _val = _val + (_val), {
			_x._i = _val;
			if (!compareAndSwapUintptr(Go.pointer(_x._i), _val, _val + (1 : GoUIntptr))) {
				_t.fatalf(Go.str("should have swapped %#x %#x"), Go.toInterface(_val), Go.toInterface(_val + (1 : GoUIntptr)));
			};
			if (_x._i != (_val + (1 : GoUIntptr))) {
				_t.fatalf(Go.str("wrong x.i after swap: x.i=%#x val+1=%#x"), Go.toInterface(_x._i), Go.toInterface(_val + (1 : GoUIntptr)));
			};
			_x._i = _val + (1 : GoUIntptr);
			if (compareAndSwapUintptr(Go.pointer(_x._i), _val, _val + (2 : GoUIntptr))) {
				_t.fatalf(Go.str("should not have swapped %#x %#x"), Go.toInterface(_val), Go.toInterface(_val + (2 : GoUIntptr)));
			};
			if (_x._i != (_val + (1 : GoUIntptr))) {
				_t.fatalf(Go.str("wrong x.i after swap: x.i=%#x val+1=%#x"), Go.toInterface(_x._i), Go.toInterface(_val + (1 : GoUIntptr)));
			};
		});
	};
	if ((_x._before != _magicptr) || (_x._after != _magicptr)) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface(_magicptr),
			Go.toInterface(_magicptr));
	};
}

function testCompareAndSwapUintptrMethod(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _x:T__struct_9 = ({_before: (0 : GoUIntptr), _i: ({} : Uintptr), _after: (0 : GoUIntptr)} : T__struct_9);
	var _m:GoUInt64 = ("1003703129787580143" : GoUInt64);
	var _magicptr:GoUIntptr = (_m : GoUIntptr);
	_x._before = _magicptr;
	_x._after = _magicptr;
	{
		var _val:GoUIntptr = (1 : GoUIntptr);
		Go.cfor((_val + _val) > _val, _val = _val + (_val), {
			_x._i.store(_val);
			if (!_x._i.compareAndSwap(_val, _val + (1 : GoUIntptr))) {
				_t.fatalf(Go.str("should have swapped %#x %#x"), Go.toInterface(_val), Go.toInterface(_val + (1 : GoUIntptr)));
			};
			if (_x._i.load() != (_val + (1 : GoUIntptr))) {
				_t.fatalf(Go.str("wrong x.i after swap: x.i=%#x val+1=%#x"), Go.toInterface(_x._i.load()), Go.toInterface(_val + (1 : GoUIntptr)));
			};
			_x._i.store(_val + (1 : GoUIntptr));
			if (_x._i.compareAndSwap(_val, _val + (2 : GoUIntptr))) {
				_t.fatalf(Go.str("should not have swapped %#x %#x"), Go.toInterface(_val), Go.toInterface(_val + (2 : GoUIntptr)));
			};
			if (_x._i.load() != (_val + (1 : GoUIntptr))) {
				_t.fatalf(Go.str("wrong x.i after swap: x.i=%#x val+1=%#x"), Go.toInterface(_x._i.load()), Go.toInterface(_val + (1 : GoUIntptr)));
			};
		});
	};
	if ((_x._before != _magicptr) || (_x._after != _magicptr)) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after),
			Go.toInterface((_magicptr : GoUIntptr)), Go.toInterface((_magicptr : GoUIntptr)));
	};
}

function testCompareAndSwapPointer(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _x:T__struct_10 = ({_before: (0 : GoUIntptr), _i: null, _after: (0 : GoUIntptr)} : T__struct_10);
	var _m:GoUInt64 = ("1003703129787580143" : GoUInt64);
	var _magicptr:GoUIntptr = (_m : GoUIntptr);
	_x._before = _magicptr;
	_x._after = _magicptr;
	var _q:stdgo.unsafe.Unsafe.UnsafePointer = (Go.toInterface(Go.pointer((0 : GoUInt8))) : stdgo.unsafe.Unsafe.UnsafePointer);
	for (_0 => _p in _testPointers()) {
		_x._i = _p;
		if (!compareAndSwapPointer(Go.pointer(_x._i), _p, _q)) {
			_t.fatalf(Go.str("should have swapped %p %p"), Go.toInterface(_p), Go.toInterface(_q));
		};
		if (_x._i != (_q)) {
			_t.fatalf(Go.str("wrong x.i after swap: x.i=%p want %p"), Go.toInterface(_x._i), Go.toInterface(_q));
		};
		if (compareAndSwapPointer(Go.pointer(_x._i), _p, null)) {
			_t.fatalf(Go.str("should not have swapped %p nil"), Go.toInterface(_p));
		};
		if (_x._i != (_q)) {
			_t.fatalf(Go.str("wrong x.i after swap: x.i=%p want %p"), Go.toInterface(_x._i), Go.toInterface(_q));
		};
	};
	if ((_x._before != _magicptr) || (_x._after != _magicptr)) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface(_magicptr),
			Go.toInterface(_magicptr));
	};
}

function testCompareAndSwapPointerMethod(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _x:T__struct_11 = ({_before: (0 : GoUIntptr), _i: {}, _after: (0 : GoUIntptr)} : T__struct_11);
	var _m:GoUInt64 = ("1003703129787580143" : GoUInt64);
	var _magicptr:GoUIntptr = (_m : GoUIntptr);
	_x._before = _magicptr;
	_x._after = _magicptr;
	var _q = Go.pointer((0 : GoUInt8));
	for (_4 => _p in _testPointers()) {
		var _p = (_p.__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType(stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind))) : Pointer<GoByte>);
		#if !macro _x._i.store(_p) #else null #end;
		if (!#if !macro _x._i.compareAndSwap(_p, _q) #else null #end) {
			_t.fatalf(Go.str("should have swapped %p %p"), Go.toInterface(_p), Go.toInterface(_q));
		};
		if (#if !macro _x._i.load() #else null #end != (_q)) {
			_t.fatalf(Go.str("wrong x.i after swap: x.i=%p want %p"), Go.toInterface(#if !macro _x._i.load() #else null #end), Go.toInterface(_q));
		};
		if (#if !macro _x._i.compareAndSwap(_p, (null : Pointer<GoUInt8>)) #else null #end) {
			_t.fatalf(Go.str("should not have swapped %p nil"), Go.toInterface(_p));
		};
		if (#if !macro _x._i.load() #else null #end != (_q)) {
			_t.fatalf(Go.str("wrong x.i after swap: x.i=%p want %p"), Go.toInterface(#if !macro _x._i.load() #else null #end), Go.toInterface(_q));
		};
	};
	if ((_x._before != _magicptr) || (_x._after != _magicptr)) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface(_magicptr),
			Go.toInterface(_magicptr));
	};
}

function testLoadInt32(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _x:T__struct_0 = ({_before: (0 : GoInt32), _i: (0 : GoInt32), _after: (0 : GoInt32)} : T__struct_0);
	_x._before = (233684719 : GoInt32);
	_x._after = (233684719 : GoInt32);
	{
		var _delta:GoInt32 = (1 : GoInt32);
		Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
			var _k:GoInt32 = loadInt32(Go.pointer(_x._i));
			if (_k != (_x._i)) {
				_t.fatalf(Go.str("delta=%d i=%d k=%d"), Go.toInterface(_delta), Go.toInterface(_x._i), Go.toInterface(_k));
			};
			_x._i = _x._i + (_delta);
		});
	};
	if ((_x._before != (233684719 : GoInt32)) || (_x._after != (233684719 : GoInt32))) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface((233684719 : GoInt)),
			Go.toInterface((233684719 : GoInt)));
	};
}

function testLoadInt32Method(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _x:T__struct_1 = ({_before: (0 : GoInt32), _i: ({} : Int32), _after: (0 : GoInt32)} : T__struct_1);
	_x._before = (233684719 : GoInt32);
	_x._after = (233684719 : GoInt32);
	var _want:GoInt32 = (0 : GoInt32);
	{
		var _delta:GoInt32 = (1 : GoInt32);
		Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
			var _k:GoInt32 = _x._i.load();
			if (_k != (_want)) {
				_t.fatalf(Go.str("delta=%d i=%d k=%d want=%d"), Go.toInterface(_delta), Go.toInterface(_x._i.load()), Go.toInterface(_k),
					Go.toInterface(_want));
			};
			_x._i.store(_k + _delta);
			_want = _k + _delta;
		});
	};
	if ((_x._before != (233684719 : GoInt32)) || (_x._after != (233684719 : GoInt32))) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface((233684719 : GoInt)),
			Go.toInterface((233684719 : GoInt)));
	};
}

function testLoadUint32(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _x:T__struct_2 = ({_before: (0 : GoUInt32), _i: (0 : GoUInt32), _after: (0 : GoUInt32)} : T__struct_2);
	_x._before = ("233684719" : GoUInt32);
	_x._after = ("233684719" : GoUInt32);
	{
		var _delta:GoUInt32 = (("1" : GoUInt32) : GoUInt32);
		Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
			var _k:GoUInt32 = loadUint32(Go.pointer(_x._i));
			if (_k != (_x._i)) {
				_t.fatalf(Go.str("delta=%d i=%d k=%d"), Go.toInterface(_delta), Go.toInterface(_x._i), Go.toInterface(_k));
			};
			_x._i = _x._i + (_delta);
		});
	};
	if ((_x._before != ("233684719" : GoUInt32)) || (_x._after != ("233684719" : GoUInt32))) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface((233684719 : GoInt)),
			Go.toInterface((233684719 : GoInt)));
	};
}

function testLoadUint32Method(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _x:T__struct_3 = ({_before: (0 : GoUInt32), _i: ({} : Uint32), _after: (0 : GoUInt32)} : T__struct_3);
	_x._before = ("233684719" : GoUInt32);
	_x._after = ("233684719" : GoUInt32);
	var _want:GoUInt32 = (("0" : GoUInt32) : GoUInt32);
	{
		var _delta:GoUInt32 = (("1" : GoUInt32) : GoUInt32);
		Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
			var _k:GoUInt32 = _x._i.load();
			if (_k != (_want)) {
				_t.fatalf(Go.str("delta=%d i=%d k=%d want=%d"), Go.toInterface(_delta), Go.toInterface(_x._i.load()), Go.toInterface(_k),
					Go.toInterface(_want));
			};
			_x._i.store(_k + _delta);
			_want = _k + _delta;
		});
	};
	if ((_x._before != ("233684719" : GoUInt32)) || (_x._after != ("233684719" : GoUInt32))) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface((233684719 : GoInt)),
			Go.toInterface((233684719 : GoInt)));
	};
}

function testLoadInt64(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (_test64err != null) {
		_t.skipf(Go.str("Skipping 64-bit tests: %v"), _test64err);
	};
	var _x:T__struct_4 = ({_before: (0 : GoInt64), _i: (0 : GoInt64), _after: (0 : GoInt64)} : T__struct_4);
	var _magic64:GoInt64 = (("1003703129787580143" : GoInt64) : GoInt64);
	_x._before = _magic64;
	_x._after = _magic64;
	{
		var _delta:GoInt64 = (("1" : GoInt64) : GoInt64);
		Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
			var _k:GoInt64 = loadInt64(Go.pointer(_x._i));
			if (_k != (_x._i)) {
				_t.fatalf(Go.str("delta=%d i=%d k=%d"), Go.toInterface(_delta), Go.toInterface(_x._i), Go.toInterface(_k));
			};
			_x._i = _x._i + (_delta);
		});
	};
	if ((_x._before != _magic64) || (_x._after != _magic64)) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface(_magic64),
			Go.toInterface(_magic64));
	};
}

function testLoadInt64Method(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (_test64err != null) {
		_t.skipf(Go.str("Skipping 64-bit tests: %v"), _test64err);
	};
	var _x:T__struct_5 = ({_before: (0 : GoInt64), _i: ({} : Int64_), _after: (0 : GoInt64)} : T__struct_5);
	var _magic64:GoInt64 = (("1003703129787580143" : GoInt64) : GoInt64);
	_x._before = _magic64;
	_x._after = _magic64;
	var _want:GoInt64 = (("0" : GoInt64) : GoInt64);
	{
		var _delta:GoInt64 = (("1" : GoInt64) : GoInt64);
		Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
			var _k:GoInt64 = _x._i.load();
			if (_k != (_want)) {
				_t.fatalf(Go.str("delta=%d i=%d k=%d want=%d"), Go.toInterface(_delta), Go.toInterface(_x._i.load()), Go.toInterface(_k),
					Go.toInterface(_want));
			};
			_x._i.store(_k + _delta);
			_want = _k + _delta;
		});
	};
	if ((_x._before != _magic64) || (_x._after != _magic64)) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface(_magic64),
			Go.toInterface(_magic64));
	};
}

function testLoadUint64(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (_test64err != null) {
		_t.skipf(Go.str("Skipping 64-bit tests: %v"), _test64err);
	};
	var _x:T__struct_6 = ({_before: (0 : GoUInt64), _i: (0 : GoUInt64), _after: (0 : GoUInt64)} : T__struct_6);
	var _magic64:GoUInt64 = (("1003703129787580143" : GoUInt64) : GoUInt64);
	_x._before = _magic64;
	_x._after = _magic64;
	{
		var _delta:GoUInt64 = (("1" : GoUInt64) : GoUInt64);
		Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
			var _k:GoUInt64 = loadUint64(Go.pointer(_x._i));
			if (_k != (_x._i)) {
				_t.fatalf(Go.str("delta=%d i=%d k=%d"), Go.toInterface(_delta), Go.toInterface(_x._i), Go.toInterface(_k));
			};
			_x._i = _x._i + (_delta);
		});
	};
	if ((_x._before != _magic64) || (_x._after != _magic64)) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface(_magic64),
			Go.toInterface(_magic64));
	};
}

function testLoadUint64Method(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (_test64err != null) {
		_t.skipf(Go.str("Skipping 64-bit tests: %v"), _test64err);
	};
	var _x:T__struct_7 = ({_before: (0 : GoUInt64), _i: ({} : Uint64), _after: (0 : GoUInt64)} : T__struct_7);
	var _magic64:GoUInt64 = (("1003703129787580143" : GoUInt64) : GoUInt64);
	_x._before = _magic64;
	_x._after = _magic64;
	var _want:GoUInt64 = (("0" : GoUInt64) : GoUInt64);
	{
		var _delta:GoUInt64 = (("1" : GoUInt64) : GoUInt64);
		Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
			var _k:GoUInt64 = _x._i.load();
			if (_k != (_want)) {
				_t.fatalf(Go.str("delta=%d i=%d k=%d want=%d"), Go.toInterface(_delta), Go.toInterface(_x._i.load()), Go.toInterface(_k),
					Go.toInterface(_want));
			};
			_x._i.store(_k + _delta);
			_want = _k + _delta;
		});
	};
	if ((_x._before != _magic64) || (_x._after != _magic64)) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface(_magic64),
			Go.toInterface(_magic64));
	};
}

function testLoadUintptr(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _x:T__struct_8 = ({_before: (0 : GoUIntptr), _i: (0 : GoUIntptr), _after: (0 : GoUIntptr)} : T__struct_8);
	var _m:GoUInt64 = ("1003703129787580143" : GoUInt64);
	var _magicptr:GoUIntptr = (_m : GoUIntptr);
	_x._before = _magicptr;
	_x._after = _magicptr;
	{
		var _delta:GoUIntptr = (1 : GoUIntptr);
		Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
			var _k:GoUIntptr = loadUintptr(Go.pointer(_x._i));
			if (_k != (_x._i)) {
				_t.fatalf(Go.str("delta=%d i=%d k=%d"), Go.toInterface(_delta), Go.toInterface(_x._i), Go.toInterface(_k));
			};
			_x._i = _x._i + (_delta);
		});
	};
	if ((_x._before != _magicptr) || (_x._after != _magicptr)) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface(_magicptr),
			Go.toInterface(_magicptr));
	};
}

function testLoadUintptrMethod(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _x:T__struct_9 = ({_before: (0 : GoUIntptr), _i: ({} : Uintptr), _after: (0 : GoUIntptr)} : T__struct_9);
	var _m:GoUInt64 = ("1003703129787580143" : GoUInt64);
	var _magicptr:GoUIntptr = (_m : GoUIntptr);
	_x._before = _magicptr;
	_x._after = _magicptr;
	var _want:GoUIntptr = (0 : GoUIntptr);
	{
		var _delta:GoUIntptr = (1 : GoUIntptr);
		Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
			var _k:GoUIntptr = _x._i.load();
			if (_k != (_want)) {
				_t.fatalf(Go.str("delta=%d i=%d k=%d want=%d"), Go.toInterface(_delta), Go.toInterface(_x._i.load()), Go.toInterface(_k),
					Go.toInterface(_want));
			};
			_x._i.store(_k + _delta);
			_want = _k + _delta;
		});
	};
	if ((_x._before != _magicptr) || (_x._after != _magicptr)) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface(_magicptr),
			Go.toInterface(_magicptr));
	};
}

function testLoadPointer(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _x:T__struct_10 = ({_before: (0 : GoUIntptr), _i: null, _after: (0 : GoUIntptr)} : T__struct_10);
	var _m:GoUInt64 = ("1003703129787580143" : GoUInt64);
	var _magicptr:GoUIntptr = (_m : GoUIntptr);
	_x._before = _magicptr;
	_x._after = _magicptr;
	for (_0 => _p in _testPointers()) {
		_x._i = _p;
		var _k:stdgo.unsafe.Unsafe.UnsafePointer = loadPointer(Go.pointer(_x._i));
		if (_k != (_p)) {
			_t.fatalf(Go.str("p=%x k=%x"), Go.toInterface(_p), Go.toInterface(_k));
		};
	};
	if ((_x._before != _magicptr) || (_x._after != _magicptr)) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface(_magicptr),
			Go.toInterface(_magicptr));
	};
}

function testLoadPointerMethod(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _x:T__struct_11 = ({_before: (0 : GoUIntptr), _i: {}, _after: (0 : GoUIntptr)} : T__struct_11);
	var _m:GoUInt64 = ("1003703129787580143" : GoUInt64);
	var _magicptr:GoUIntptr = (_m : GoUIntptr);
	_x._before = _magicptr;
	_x._after = _magicptr;
	for (_4 => _p in _testPointers()) {
		var _p = (_p.__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType(stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind))) : Pointer<GoByte>);
		#if !macro _x._i.store(_p) #else null #end;
		var _k = #if !macro _x._i.load() #else null #end;
		if (_k != (_p)) {
			_t.fatalf(Go.str("p=%x k=%x"), Go.toInterface(_p), Go.toInterface(_k));
		};
	};
	if ((_x._before != _magicptr) || (_x._after != _magicptr)) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface(_magicptr),
			Go.toInterface(_magicptr));
	};
}

function testStoreInt32(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _x:T__struct_0 = ({_before: (0 : GoInt32), _i: (0 : GoInt32), _after: (0 : GoInt32)} : T__struct_0);
	_x._before = (233684719 : GoInt32);
	_x._after = (233684719 : GoInt32);
	var _v:GoInt32 = (0 : GoInt32);
	{
		var _delta:GoInt32 = (1 : GoInt32);
		Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
			storeInt32(Go.pointer(_x._i), _v);
			if (_x._i != (_v)) {
				_t.fatalf(Go.str("delta=%d i=%d v=%d"), Go.toInterface(_delta), Go.toInterface(_x._i), Go.toInterface(_v));
			};
			_v = _v + (_delta);
		});
	};
	if ((_x._before != (233684719 : GoInt32)) || (_x._after != (233684719 : GoInt32))) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface((233684719 : GoInt)),
			Go.toInterface((233684719 : GoInt)));
	};
}

function testStoreInt32Method(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _x:T__struct_1 = ({_before: (0 : GoInt32), _i: ({} : Int32), _after: (0 : GoInt32)} : T__struct_1);
	_x._before = (233684719 : GoInt32);
	_x._after = (233684719 : GoInt32);
	var _v:GoInt32 = (0 : GoInt32);
	{
		var _delta:GoInt32 = (1 : GoInt32);
		Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
			_x._i.store(_v);
			if (_x._i.load() != (_v)) {
				_t.fatalf(Go.str("delta=%d i=%d v=%d"), Go.toInterface(_delta), Go.toInterface(_x._i.load()), Go.toInterface(_v));
			};
			_v = _v + (_delta);
		});
	};
	if ((_x._before != (233684719 : GoInt32)) || (_x._after != (233684719 : GoInt32))) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface((233684719 : GoInt)),
			Go.toInterface((233684719 : GoInt)));
	};
}

function testStoreUint32(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _x:T__struct_2 = ({_before: (0 : GoUInt32), _i: (0 : GoUInt32), _after: (0 : GoUInt32)} : T__struct_2);
	_x._before = ("233684719" : GoUInt32);
	_x._after = ("233684719" : GoUInt32);
	var _v:GoUInt32 = (("0" : GoUInt32) : GoUInt32);
	{
		var _delta:GoUInt32 = (("1" : GoUInt32) : GoUInt32);
		Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
			storeUint32(Go.pointer(_x._i), _v);
			if (_x._i != (_v)) {
				_t.fatalf(Go.str("delta=%d i=%d v=%d"), Go.toInterface(_delta), Go.toInterface(_x._i), Go.toInterface(_v));
			};
			_v = _v + (_delta);
		});
	};
	if ((_x._before != ("233684719" : GoUInt32)) || (_x._after != ("233684719" : GoUInt32))) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface((233684719 : GoInt)),
			Go.toInterface((233684719 : GoInt)));
	};
}

function testStoreUint32Method(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _x:T__struct_3 = ({_before: (0 : GoUInt32), _i: ({} : Uint32), _after: (0 : GoUInt32)} : T__struct_3);
	_x._before = ("233684719" : GoUInt32);
	_x._after = ("233684719" : GoUInt32);
	var _v:GoUInt32 = (("0" : GoUInt32) : GoUInt32);
	{
		var _delta:GoUInt32 = (("1" : GoUInt32) : GoUInt32);
		Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
			_x._i.store(_v);
			if (_x._i.load() != (_v)) {
				_t.fatalf(Go.str("delta=%d i=%d v=%d"), Go.toInterface(_delta), Go.toInterface(_x._i.load()), Go.toInterface(_v));
			};
			_v = _v + (_delta);
		});
	};
	if ((_x._before != ("233684719" : GoUInt32)) || (_x._after != ("233684719" : GoUInt32))) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface((233684719 : GoInt)),
			Go.toInterface((233684719 : GoInt)));
	};
}

function testStoreInt64(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (_test64err != null) {
		_t.skipf(Go.str("Skipping 64-bit tests: %v"), _test64err);
	};
	var _x:T__struct_4 = ({_before: (0 : GoInt64), _i: (0 : GoInt64), _after: (0 : GoInt64)} : T__struct_4);
	var _magic64:GoInt64 = (("1003703129787580143" : GoInt64) : GoInt64);
	_x._before = _magic64;
	_x._after = _magic64;
	var _v:GoInt64 = (("0" : GoInt64) : GoInt64);
	{
		var _delta:GoInt64 = (("1" : GoInt64) : GoInt64);
		Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
			storeInt64(Go.pointer(_x._i), _v);
			if (_x._i != (_v)) {
				_t.fatalf(Go.str("delta=%d i=%d v=%d"), Go.toInterface(_delta), Go.toInterface(_x._i), Go.toInterface(_v));
			};
			_v = _v + (_delta);
		});
	};
	if ((_x._before != _magic64) || (_x._after != _magic64)) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface(_magic64),
			Go.toInterface(_magic64));
	};
}

function testStoreInt64Method(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _x:T__struct_5 = ({_before: (0 : GoInt64), _i: ({} : Int64_), _after: (0 : GoInt64)} : T__struct_5);
	var _magic64:GoInt64 = (("1003703129787580143" : GoInt64) : GoInt64);
	_x._before = _magic64;
	_x._after = _magic64;
	var _v:GoInt64 = (("0" : GoInt64) : GoInt64);
	{
		var _delta:GoInt64 = (("1" : GoInt64) : GoInt64);
		Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
			_x._i.store(_v);
			if (_x._i.load() != (_v)) {
				_t.fatalf(Go.str("delta=%d i=%d v=%d"), Go.toInterface(_delta), Go.toInterface(_x._i.load()), Go.toInterface(_v));
			};
			_v = _v + (_delta);
		});
	};
	if ((_x._before != _magic64) || (_x._after != _magic64)) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface(_magic64),
			Go.toInterface(_magic64));
	};
}

function testStoreUint64(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (_test64err != null) {
		_t.skipf(Go.str("Skipping 64-bit tests: %v"), _test64err);
	};
	var _x:T__struct_6 = ({_before: (0 : GoUInt64), _i: (0 : GoUInt64), _after: (0 : GoUInt64)} : T__struct_6);
	var _magic64:GoUInt64 = (("1003703129787580143" : GoUInt64) : GoUInt64);
	_x._before = _magic64;
	_x._after = _magic64;
	var _v:GoUInt64 = (("0" : GoUInt64) : GoUInt64);
	{
		var _delta:GoUInt64 = (("1" : GoUInt64) : GoUInt64);
		Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
			storeUint64(Go.pointer(_x._i), _v);
			if (_x._i != (_v)) {
				_t.fatalf(Go.str("delta=%d i=%d v=%d"), Go.toInterface(_delta), Go.toInterface(_x._i), Go.toInterface(_v));
			};
			_v = _v + (_delta);
		});
	};
	if ((_x._before != _magic64) || (_x._after != _magic64)) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface(_magic64),
			Go.toInterface(_magic64));
	};
}

function testStoreUint64Method(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (_test64err != null) {
		_t.skipf(Go.str("Skipping 64-bit tests: %v"), _test64err);
	};
	var _x:T__struct_7 = ({_before: (0 : GoUInt64), _i: ({} : Uint64), _after: (0 : GoUInt64)} : T__struct_7);
	var _magic64:GoUInt64 = (("1003703129787580143" : GoUInt64) : GoUInt64);
	_x._before = _magic64;
	_x._after = _magic64;
	var _v:GoUInt64 = (("0" : GoUInt64) : GoUInt64);
	{
		var _delta:GoUInt64 = (("1" : GoUInt64) : GoUInt64);
		Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
			_x._i.store(_v);
			if (_x._i.load() != (_v)) {
				_t.fatalf(Go.str("delta=%d i=%d v=%d"), Go.toInterface(_delta), Go.toInterface(_x._i.load()), Go.toInterface(_v));
			};
			_v = _v + (_delta);
		});
	};
	if ((_x._before != _magic64) || (_x._after != _magic64)) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface(_magic64),
			Go.toInterface(_magic64));
	};
}

function testStoreUintptr(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _x:T__struct_8 = ({_before: (0 : GoUIntptr), _i: (0 : GoUIntptr), _after: (0 : GoUIntptr)} : T__struct_8);
	var _m:GoUInt64 = ("1003703129787580143" : GoUInt64);
	var _magicptr:GoUIntptr = (_m : GoUIntptr);
	_x._before = _magicptr;
	_x._after = _magicptr;
	var _v:GoUIntptr = (0 : GoUIntptr);
	{
		var _delta:GoUIntptr = (1 : GoUIntptr);
		Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
			storeUintptr(Go.pointer(_x._i), _v);
			if (_x._i != (_v)) {
				_t.fatalf(Go.str("delta=%d i=%d v=%d"), Go.toInterface(_delta), Go.toInterface(_x._i), Go.toInterface(_v));
			};
			_v = _v + (_delta);
		});
	};
	if ((_x._before != _magicptr) || (_x._after != _magicptr)) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface(_magicptr),
			Go.toInterface(_magicptr));
	};
}

function testStoreUintptrMethod(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _x:T__struct_9 = ({_before: (0 : GoUIntptr), _i: ({} : Uintptr), _after: (0 : GoUIntptr)} : T__struct_9);
	var _m:GoUInt64 = ("1003703129787580143" : GoUInt64);
	var _magicptr:GoUIntptr = (_m : GoUIntptr);
	_x._before = _magicptr;
	_x._after = _magicptr;
	var _v:GoUIntptr = (0 : GoUIntptr);
	{
		var _delta:GoUIntptr = (1 : GoUIntptr);
		Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
			_x._i.store(_v);
			if (_x._i.load() != (_v)) {
				_t.fatalf(Go.str("delta=%d i=%d v=%d"), Go.toInterface(_delta), Go.toInterface(_x._i.load()), Go.toInterface(_v));
			};
			_v = _v + (_delta);
		});
	};
	if ((_x._before != _magicptr) || (_x._after != _magicptr)) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface(_magicptr),
			Go.toInterface(_magicptr));
	};
}

function testStorePointer(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _x:T__struct_10 = ({_before: (0 : GoUIntptr), _i: null, _after: (0 : GoUIntptr)} : T__struct_10);
	var _m:GoUInt64 = ("1003703129787580143" : GoUInt64);
	var _magicptr:GoUIntptr = (_m : GoUIntptr);
	_x._before = _magicptr;
	_x._after = _magicptr;
	for (_0 => _p in _testPointers()) {
		storePointer(Go.pointer(_x._i), _p);
		if (_x._i != (_p)) {
			_t.fatalf(Go.str("x.i=%p p=%p"), Go.toInterface(_x._i), Go.toInterface(_p));
		};
	};
	if ((_x._before != _magicptr) || (_x._after != _magicptr)) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface(_magicptr),
			Go.toInterface(_magicptr));
	};
}

function testStorePointerMethod(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _x:T__struct_11 = ({_before: (0 : GoUIntptr), _i: {}, _after: (0 : GoUIntptr)} : T__struct_11);
	var _m:GoUInt64 = ("1003703129787580143" : GoUInt64);
	var _magicptr:GoUIntptr = (_m : GoUIntptr);
	_x._before = _magicptr;
	_x._after = _magicptr;
	for (_4 => _p in _testPointers()) {
		var _p = (_p.__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType(stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind))) : Pointer<GoByte>);
		#if !macro _x._i.store(_p) #else null #end;
		if (#if !macro _x._i.load() #else null #end != (_p)) {
			_t.fatalf(Go.str("x.i=%p p=%p"), Go.toInterface(#if !macro _x._i.load() #else null #end), Go.toInterface(_p));
		};
	};
	if ((_x._before != _magicptr) || (_x._after != _magicptr)) {
		_t.fatalf(Go.str("wrong magic: %#x _ %#x != %#x _ %#x"), Go.toInterface(_x._before), Go.toInterface(_x._after), Go.toInterface(_magicptr),
			Go.toInterface(_magicptr));
	};
}

function _hammerSwapInt32(_uaddr:Pointer<GoUInt32>, _count:GoInt):Void {
	var _addr = ((Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType(stdgo.internal.reflect.Reflect.GoType.basic(int32_kind))) : Pointer<GoInt32>);
	var _seed:GoInt = (((Go.toInterface(Go.pointer(_count)) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : GoUIntptr) : GoInt);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _count, _i++, {
			var _new:GoUInt32 = ((_seed + _i : GoUInt32) << (("16" : GoUInt64) : GoUInt64)) | (((_seed +
				_i : GoUInt32) << (("16" : GoUInt64) : GoUInt64)) >> (("16" : GoUInt64) : GoUInt64));
			var _old:GoUInt32 = (swapInt32(_addr, (_new : GoInt32)) : GoUInt32);
			if (_old >> ("16" : GoUInt64) != (_old << ("16" : GoUInt64) >> (("16" : GoUInt64) : GoUInt64))) {
				throw Go.toInterface(stdgo.fmt.Fmt.sprintf(Go.str("SwapInt32 is not atomic: %v"), Go.toInterface(_old)));
			};
		});
	};
}

function _hammerSwapInt32Method(_uaddr:Pointer<GoUInt32>, _count:GoInt):Void {
	var _addr = ((Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.refType(stdgo.internal.reflect.Reflect.GoType.named("Int32", [
		new stdgo.internal.reflect.Reflect.MethodType("add", {
			get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int32_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int32_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
		},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("compareAndSwap", {get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [
			stdgo.internal.reflect.Reflect.GoType.basic(int32_kind),
			stdgo.internal.reflect.Reflect.GoType.basic(int32_kind)
		]},
			{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("load",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int32_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("store",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int32_kind)]},
				{get: () -> []}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("swap",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int32_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int32_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
	], stdgo.internal.reflect.Reflect.GoType.structType([
		{
			name: "_2",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.named("T_noCopy", [
				new stdgo.internal.reflect.Reflect.MethodType("lock", {
					get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
				},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
				new stdgo.internal.reflect.Reflect.MethodType("unlock",
					{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
			], stdgo.internal.reflect.Reflect.GoType.structType([])),
			optional: false
		},
		{
			name: "_v",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.basic(int32_kind),
			optional: false
		}
		])))) : Ref<Int32>);
	var _seed:GoInt = (((Go.toInterface(Go.pointer(_count)) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : GoUIntptr) : GoInt);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _count, _i++, {
			var _new:GoUInt32 = ((_seed + _i : GoUInt32) << (("16" : GoUInt64) : GoUInt64)) | (((_seed +
				_i : GoUInt32) << (("16" : GoUInt64) : GoUInt64)) >> (("16" : GoUInt64) : GoUInt64));
			var _old:GoUInt32 = (_addr.swap((_new : GoInt32)) : GoUInt32);
			if (_old >> ("16" : GoUInt64) != (_old << ("16" : GoUInt64) >> (("16" : GoUInt64) : GoUInt64))) {
				throw Go.toInterface(stdgo.fmt.Fmt.sprintf(Go.str("SwapInt32 is not atomic: %v"), Go.toInterface(_old)));
			};
		});
	};
}

function _hammerSwapUint32(_addr:Pointer<GoUInt32>, _count:GoInt):Void {
	var _seed:GoInt = (((Go.toInterface(Go.pointer(_count)) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : GoUIntptr) : GoInt);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _count, _i++, {
			var _new:GoUInt32 = ((_seed + _i : GoUInt32) << (("16" : GoUInt64) : GoUInt64)) | (((_seed +
				_i : GoUInt32) << (("16" : GoUInt64) : GoUInt64)) >> (("16" : GoUInt64) : GoUInt64));
			var _old:GoUInt32 = swapUint32(_addr, _new);
			if (_old >> ("16" : GoUInt64) != (_old << ("16" : GoUInt64) >> (("16" : GoUInt64) : GoUInt64))) {
				throw Go.toInterface(stdgo.fmt.Fmt.sprintf(Go.str("SwapUint32 is not atomic: %v"), Go.toInterface(_old)));
			};
		});
	};
}

function _hammerSwapUint32Method(_uaddr:Pointer<GoUInt32>, _count:GoInt):Void {
	var _addr = ((Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.refType(stdgo.internal.reflect.Reflect.GoType.named("Uint32", [
		new stdgo.internal.reflect.Reflect.MethodType("add", {
			get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
		},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("compareAndSwap", {get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [
			stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind),
			stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind)
		]},
			{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("load",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("store",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind)]},
				{get: () -> []}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("swap",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
	], stdgo.internal.reflect.Reflect.GoType.structType([
		{
			name: "_2",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.named("T_noCopy", [
				new stdgo.internal.reflect.Reflect.MethodType("lock", {
					get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
				},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
				new stdgo.internal.reflect.Reflect.MethodType("unlock",
					{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
			], stdgo.internal.reflect.Reflect.GoType.structType([])),
			optional: false
		},
		{
			name: "_v",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind),
			optional: false
		}
		])))) : Ref<Uint32>);
	var _seed:GoInt = (((Go.toInterface(Go.pointer(_count)) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : GoUIntptr) : GoInt);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _count, _i++, {
			var _new:GoUInt32 = ((_seed + _i : GoUInt32) << (("16" : GoUInt64) : GoUInt64)) | (((_seed +
				_i : GoUInt32) << (("16" : GoUInt64) : GoUInt64)) >> (("16" : GoUInt64) : GoUInt64));
			var _old:GoUInt32 = _addr.swap(_new);
			if (_old >> ("16" : GoUInt64) != (_old << ("16" : GoUInt64) >> (("16" : GoUInt64) : GoUInt64))) {
				throw Go.toInterface(stdgo.fmt.Fmt.sprintf(Go.str("SwapUint32 is not atomic: %v"), Go.toInterface(_old)));
			};
		});
	};
}

function _hammerSwapUintptr32(_uaddr:Pointer<GoUInt32>, _count:GoInt):Void {
	var _addr = ((Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind))) : Pointer<GoUIntptr>);
	var _seed:GoInt = (((Go.toInterface(Go.pointer(_count)) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : GoUIntptr) : GoInt);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _count, _i++, {
			var _new:GoUIntptr = ((_seed + _i : GoUIntptr) << (("16" : GoUInt64) : GoUInt64)) | (((_seed +
				_i : GoUIntptr) << (("16" : GoUInt64) : GoUInt64)) >> (("16" : GoUInt64) : GoUInt64));
			var _old:GoUIntptr = swapUintptr(_addr, _new);
			if (_old >> ("16" : GoUInt64) != (_old << ("16" : GoUInt64) >> (("16" : GoUInt64) : GoUInt64))) {
				throw Go.toInterface(stdgo.fmt.Fmt.sprintf(Go.str("SwapUintptr is not atomic: %#08x"), Go.toInterface(_old)));
			};
		});
	};
}

function _hammerSwapUintptr32Method(_uaddr:Pointer<GoUInt32>, _count:GoInt):Void {
	var _addr = ((Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.refType(stdgo.internal.reflect.Reflect.GoType.named("Uintptr", [
		new stdgo.internal.reflect.Reflect.MethodType("add", {
			get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
		},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("compareAndSwap", {get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [
			stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind),
			stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)
		]},
			{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("load",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("store",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]},
				{get: () -> []}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("swap",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
	], stdgo.internal.reflect.Reflect.GoType.structType([
		{
			name: "_2",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.named("T_noCopy", [
				new stdgo.internal.reflect.Reflect.MethodType("lock", {
					get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
				},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
				new stdgo.internal.reflect.Reflect.MethodType("unlock",
					{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
			], stdgo.internal.reflect.Reflect.GoType.structType([])),
			optional: false
		},
		{
			name: "_v",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind),
			optional: false
		}
		])))) : Ref<Uintptr>);
	var _seed:GoInt = (((Go.toInterface(Go.pointer(_count)) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : GoUIntptr) : GoInt);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _count, _i++, {
			var _new:GoUIntptr = ((_seed + _i : GoUIntptr) << (("16" : GoUInt64) : GoUInt64)) | (((_seed +
				_i : GoUIntptr) << (("16" : GoUInt64) : GoUInt64)) >> (("16" : GoUInt64) : GoUInt64));
			var _old:GoUIntptr = _addr.swap(_new);
			if (_old >> ("16" : GoUInt64) != (_old << ("16" : GoUInt64) >> (("16" : GoUInt64) : GoUInt64))) {
				throw Go.toInterface(stdgo.fmt.Fmt.sprintf(Go.str("Uintptr.Swap is not atomic: %#08x"), Go.toInterface(_old)));
			};
		});
	};
}

function _hammerAddInt32(_uaddr:Pointer<GoUInt32>, _count:GoInt):Void {
	var _addr = ((Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType(stdgo.internal.reflect.Reflect.GoType.basic(int32_kind))) : Pointer<GoInt32>);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _count, _i++, {
			addInt32(_addr, (1 : GoInt32));
		});
	};
}

function _hammerAddInt32Method(_uaddr:Pointer<GoUInt32>, _count:GoInt):Void {
	var _addr = ((Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.refType(stdgo.internal.reflect.Reflect.GoType.named("Int32", [
		new stdgo.internal.reflect.Reflect.MethodType("add", {
			get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int32_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int32_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
		},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("compareAndSwap", {get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [
			stdgo.internal.reflect.Reflect.GoType.basic(int32_kind),
			stdgo.internal.reflect.Reflect.GoType.basic(int32_kind)
		]},
			{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("load",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int32_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("store",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int32_kind)]},
				{get: () -> []}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("swap",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int32_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int32_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
	], stdgo.internal.reflect.Reflect.GoType.structType([
		{
			name: "_2",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.named("T_noCopy", [
				new stdgo.internal.reflect.Reflect.MethodType("lock", {
					get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
				},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
				new stdgo.internal.reflect.Reflect.MethodType("unlock",
					{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
			], stdgo.internal.reflect.Reflect.GoType.structType([])),
			optional: false
		},
		{
			name: "_v",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.basic(int32_kind),
			optional: false
		}
		])))) : Ref<Int32>);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _count, _i++, {
			_addr.add((1 : GoInt32));
		});
	};
}

function _hammerAddUint32(_addr:Pointer<GoUInt32>, _count:GoInt):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _count, _i++, {
			addUint32(_addr, ("1" : GoUInt32));
		});
	};
}

function _hammerAddUint32Method(_uaddr:Pointer<GoUInt32>, _count:GoInt):Void {
	var _addr = ((Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.refType(stdgo.internal.reflect.Reflect.GoType.named("Uint32", [
		new stdgo.internal.reflect.Reflect.MethodType("add", {
			get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
		},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("compareAndSwap", {get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [
			stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind),
			stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind)
		]},
			{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("load",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("store",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind)]},
				{get: () -> []}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("swap",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
	], stdgo.internal.reflect.Reflect.GoType.structType([
		{
			name: "_2",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.named("T_noCopy", [
				new stdgo.internal.reflect.Reflect.MethodType("lock", {
					get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
				},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
				new stdgo.internal.reflect.Reflect.MethodType("unlock",
					{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
			], stdgo.internal.reflect.Reflect.GoType.structType([])),
			optional: false
		},
		{
			name: "_v",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind),
			optional: false
		}
		])))) : Ref<Uint32>);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _count, _i++, {
			_addr.add(("1" : GoUInt32));
		});
	};
}

function _hammerAddUintptr32(_uaddr:Pointer<GoUInt32>, _count:GoInt):Void {
	var _addr = ((Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind))) : Pointer<GoUIntptr>);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _count, _i++, {
			addUintptr(_addr, (1 : GoUIntptr));
		});
	};
}

function _hammerAddUintptr32Method(_uaddr:Pointer<GoUInt32>, _count:GoInt):Void {
	var _addr = ((Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.refType(stdgo.internal.reflect.Reflect.GoType.named("Uintptr", [
		new stdgo.internal.reflect.Reflect.MethodType("add", {
			get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
		},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("compareAndSwap", {get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [
			stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind),
			stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)
		]},
			{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("load",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("store",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]},
				{get: () -> []}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("swap",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
	], stdgo.internal.reflect.Reflect.GoType.structType([
		{
			name: "_2",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.named("T_noCopy", [
				new stdgo.internal.reflect.Reflect.MethodType("lock", {
					get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
				},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
				new stdgo.internal.reflect.Reflect.MethodType("unlock",
					{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
			], stdgo.internal.reflect.Reflect.GoType.structType([])),
			optional: false
		},
		{
			name: "_v",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind),
			optional: false
		}
		])))) : Ref<Uintptr>);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _count, _i++, {
			_addr.add((1 : GoUIntptr));
		});
	};
}

function _hammerCompareAndSwapInt32(_uaddr:Pointer<GoUInt32>, _count:GoInt):Void {
	var _addr = ((Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType(stdgo.internal.reflect.Reflect.GoType.basic(int32_kind))) : Pointer<GoInt32>);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _count, _i++, {
			while (true) {
				var _v:GoInt32 = loadInt32(_addr);
				if (compareAndSwapInt32(_addr, _v, _v + (1 : GoInt32))) {
					break;
				};
			};
		});
	};
}

function _hammerCompareAndSwapInt32Method(_uaddr:Pointer<GoUInt32>, _count:GoInt):Void {
	var _addr = ((Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.refType(stdgo.internal.reflect.Reflect.GoType.named("Int32", [
		new stdgo.internal.reflect.Reflect.MethodType("add", {
			get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int32_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int32_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
		},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("compareAndSwap", {get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [
			stdgo.internal.reflect.Reflect.GoType.basic(int32_kind),
			stdgo.internal.reflect.Reflect.GoType.basic(int32_kind)
		]},
			{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("load",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int32_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("store",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int32_kind)]},
				{get: () -> []}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("swap",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int32_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int32_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
	], stdgo.internal.reflect.Reflect.GoType.structType([
		{
			name: "_2",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.named("T_noCopy", [
				new stdgo.internal.reflect.Reflect.MethodType("lock", {
					get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
				},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
				new stdgo.internal.reflect.Reflect.MethodType("unlock",
					{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
			], stdgo.internal.reflect.Reflect.GoType.structType([])),
			optional: false
		},
		{
			name: "_v",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.basic(int32_kind),
			optional: false
		}
		])))) : Ref<Int32>);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _count, _i++, {
			while (true) {
				var _v:GoInt32 = _addr.load();
				if (_addr.compareAndSwap(_v, _v + (1 : GoInt32))) {
					break;
				};
			};
		});
	};
}

function _hammerCompareAndSwapUint32(_addr:Pointer<GoUInt32>, _count:GoInt):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _count, _i++, {
			while (true) {
				var _v:GoUInt32 = loadUint32(_addr);
				if (compareAndSwapUint32(_addr, _v, _v + ("1" : GoUInt32))) {
					break;
				};
			};
		});
	};
}

function _hammerCompareAndSwapUint32Method(_uaddr:Pointer<GoUInt32>, _count:GoInt):Void {
	var _addr = ((Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.refType(stdgo.internal.reflect.Reflect.GoType.named("Uint32", [
		new stdgo.internal.reflect.Reflect.MethodType("add", {
			get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
		},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("compareAndSwap", {get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [
			stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind),
			stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind)
		]},
			{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("load",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("store",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind)]},
				{get: () -> []}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("swap",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
	], stdgo.internal.reflect.Reflect.GoType.structType([
		{
			name: "_2",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.named("T_noCopy", [
				new stdgo.internal.reflect.Reflect.MethodType("lock", {
					get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
				},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
				new stdgo.internal.reflect.Reflect.MethodType("unlock",
					{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
			], stdgo.internal.reflect.Reflect.GoType.structType([])),
			optional: false
		},
		{
			name: "_v",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind),
			optional: false
		}
		])))) : Ref<Uint32>);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _count, _i++, {
			while (true) {
				var _v:GoUInt32 = _addr.load();
				if (_addr.compareAndSwap(_v, _v + ("1" : GoUInt32))) {
					break;
				};
			};
		});
	};
}

function _hammerCompareAndSwapUintptr32(_uaddr:Pointer<GoUInt32>, _count:GoInt):Void {
	var _addr = ((Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind))) : Pointer<GoUIntptr>);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _count, _i++, {
			while (true) {
				var _v:GoUIntptr = loadUintptr(_addr);
				if (compareAndSwapUintptr(_addr, _v, _v + (1 : GoUIntptr))) {
					break;
				};
			};
		});
	};
}

function _hammerCompareAndSwapUintptr32Method(_uaddr:Pointer<GoUInt32>, _count:GoInt):Void {
	var _addr = ((Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.refType(stdgo.internal.reflect.Reflect.GoType.named("Uintptr", [
		new stdgo.internal.reflect.Reflect.MethodType("add", {
			get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
		},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("compareAndSwap", {get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [
			stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind),
			stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)
		]},
			{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("load",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("store",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]},
				{get: () -> []}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("swap",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
	], stdgo.internal.reflect.Reflect.GoType.structType([
		{
			name: "_2",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.named("T_noCopy", [
				new stdgo.internal.reflect.Reflect.MethodType("lock", {
					get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
				},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
				new stdgo.internal.reflect.Reflect.MethodType("unlock",
					{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
			], stdgo.internal.reflect.Reflect.GoType.structType([])),
			optional: false
		},
		{
			name: "_v",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind),
			optional: false
		}
		])))) : Ref<Uintptr>);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _count, _i++, {
			while (true) {
				var _v:GoUIntptr = _addr.load();
				if (_addr.compareAndSwap(_v, _v + (1 : GoUIntptr))) {
					break;
				};
			};
		});
	};
}

function testHammer32(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	{};
	try {
		var _n:GoInt = (100000 : GoInt);
		if (stdgo.testing.Testing.short()) {
			_n = (1000 : GoInt);
		};
		{
			var _a0 = stdgo.runtime.Runtime.gomaxprocs((4 : GoInt));
			__deferstack__.unshift(() -> stdgo.runtime.Runtime.gomaxprocs(_a0));
		};
		for (_name => _testf in _hammer32) {
			var _c = new Chan<GoInt>(0, () -> (0 : GoInt));
			var _val:GoUInt32 = (0 : GoUInt32);
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < (4:GoInt), _i++, {
					Go.routine(() -> {
						var a = function():Void {
							var __deferstack__:Array<Void->Void> = [];
							__deferstack__.unshift(() -> {
								var a = function():Void {
									{
										var _err:AnyInterface = ({
											final r = Go.recover_exception;
											Go.recover_exception = null;
											r;
										});
										if (_err != null) {
											_t.error(Go.toInterface((Go.typeAssert((_err : GoString)) : GoString)));
										};
									};
									_c.__send__((1 : GoInt));
								};
								a();
							});
							try {
								_testf(Go.pointer(_val), _n);
								for (defer in __deferstack__) {
									defer();
								};
								{
									for (defer in __deferstack__) {
										defer();
									};
									if (Go.recover_exception != null)
										throw Go.recover_exception;
									return;
								};
							} catch (__exception__) {
								if (!(__exception__.native is AnyInterfaceData))
									throw __exception__;
								Go.recover_exception = __exception__.native;
								for (defer in __deferstack__) {
									defer();
								};
								if (Go.recover_exception != null)
									throw Go.recover_exception;
								return;
							};
						};
						a();
					});
				});
			};
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < (4:GoInt), _i++, {
					_c.__get__();
				});
			};
			if (!stdgo.strings.Strings.hasPrefix(_name, Go.str("Swap")) && (_val != ((_n : GoUInt32) * (("4" : GoUInt32) : GoUInt32)))) {
				_t.fatalf(Go.str("%s: val=%d want %d"), Go.toInterface(_name), Go.toInterface(_val), Go.toInterface(_n * (4 : GoInt)));
			};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function _hammerSwapInt64(_uaddr:Pointer<GoUInt64>, _count:GoInt):Void {
	var _addr = ((Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType(stdgo.internal.reflect.Reflect.GoType.basic(int64_kind))) : Pointer<GoInt64>);
	var _seed:GoInt = (((Go.toInterface(Go.pointer(_count)) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : GoUIntptr) : GoInt);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _count, _i++, {
			var _new:GoUInt64 = ((_seed + _i : GoUInt64) << (("32" : GoUInt64) : GoUInt64)) | (((_seed +
				_i : GoUInt64) << (("32" : GoUInt64) : GoUInt64)) >> (("32" : GoUInt64) : GoUInt64));
			var _old:GoUInt64 = (swapInt64(_addr, (_new : GoInt64)) : GoUInt64);
			if (_old >> ("32" : GoUInt64) != (_old << ("32" : GoUInt64) >> (("32" : GoUInt64) : GoUInt64))) {
				throw Go.toInterface(stdgo.fmt.Fmt.sprintf(Go.str("SwapInt64 is not atomic: %v"), Go.toInterface(_old)));
			};
		});
	};
}

function _hammerSwapInt64Method(_uaddr:Pointer<GoUInt64>, _count:GoInt):Void {
	var _addr = ((Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.refType(stdgo.internal.reflect.Reflect.GoType.named("Int64_", [
		new stdgo.internal.reflect.Reflect.MethodType("add", {
			get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int64_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int64_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
		},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("compareAndSwap", {get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [
			stdgo.internal.reflect.Reflect.GoType.basic(int64_kind),
			stdgo.internal.reflect.Reflect.GoType.basic(int64_kind)
		]},
			{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("load",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int64_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("store",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int64_kind)]},
				{get: () -> []}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("swap",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int64_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int64_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
	], stdgo.internal.reflect.Reflect.GoType.structType([
		{
			name: "_4",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.named("T_noCopy", [
				new stdgo.internal.reflect.Reflect.MethodType("lock", {
					get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
				},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
				new stdgo.internal.reflect.Reflect.MethodType("unlock",
					{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
			], stdgo.internal.reflect.Reflect.GoType.structType([])),
			optional: false
		},
		{
			name: "_5",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.named("T_align64", [], stdgo.internal.reflect.Reflect.GoType.structType([])),
			optional: false
		},
		{
			name: "_v",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.basic(int64_kind),
			optional: false
		}
		])))) : Ref<Int64_>);
	var _seed:GoInt = (((Go.toInterface(Go.pointer(_count)) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : GoUIntptr) : GoInt);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _count, _i++, {
			var _new:GoUInt64 = ((_seed + _i : GoUInt64) << (("32" : GoUInt64) : GoUInt64)) | (((_seed +
				_i : GoUInt64) << (("32" : GoUInt64) : GoUInt64)) >> (("32" : GoUInt64) : GoUInt64));
			var _old:GoUInt64 = (_addr.swap((_new : GoInt64)) : GoUInt64);
			if (_old >> ("32" : GoUInt64) != (_old << ("32" : GoUInt64) >> (("32" : GoUInt64) : GoUInt64))) {
				throw Go.toInterface(stdgo.fmt.Fmt.sprintf(Go.str("SwapInt64 is not atomic: %v"), Go.toInterface(_old)));
			};
		});
	};
}

function _hammerSwapUint64(_addr:Pointer<GoUInt64>, _count:GoInt):Void {
	var _seed:GoInt = (((Go.toInterface(Go.pointer(_count)) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : GoUIntptr) : GoInt);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _count, _i++, {
			var _new:GoUInt64 = ((_seed + _i : GoUInt64) << (("32" : GoUInt64) : GoUInt64)) | (((_seed +
				_i : GoUInt64) << (("32" : GoUInt64) : GoUInt64)) >> (("32" : GoUInt64) : GoUInt64));
			var _old:GoUInt64 = swapUint64(_addr, _new);
			if (_old >> ("32" : GoUInt64) != (_old << ("32" : GoUInt64) >> (("32" : GoUInt64) : GoUInt64))) {
				throw Go.toInterface(stdgo.fmt.Fmt.sprintf(Go.str("SwapUint64 is not atomic: %v"), Go.toInterface(_old)));
			};
		});
	};
}

function _hammerSwapUint64Method(_uaddr:Pointer<GoUInt64>, _count:GoInt):Void {
	var _addr = ((Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.refType(stdgo.internal.reflect.Reflect.GoType.named("Uint64", [
		new stdgo.internal.reflect.Reflect.MethodType("add", {
			get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
		},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("compareAndSwap", {get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [
			stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind),
			stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)
		]},
			{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("load",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("store",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]},
				{get: () -> []}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("swap",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
	], stdgo.internal.reflect.Reflect.GoType.structType([
		{
			name: "_4",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.named("T_noCopy", [
				new stdgo.internal.reflect.Reflect.MethodType("lock", {
					get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
				},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
				new stdgo.internal.reflect.Reflect.MethodType("unlock",
					{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
			], stdgo.internal.reflect.Reflect.GoType.structType([])),
			optional: false
		},
		{
			name: "_5",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.named("T_align64", [], stdgo.internal.reflect.Reflect.GoType.structType([])),
			optional: false
		},
		{
			name: "_v",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind),
			optional: false
		}
		])))) : Ref<Uint64>);
	var _seed:GoInt = (((Go.toInterface(Go.pointer(_count)) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : GoUIntptr) : GoInt);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _count, _i++, {
			var _new:GoUInt64 = ((_seed + _i : GoUInt64) << (("32" : GoUInt64) : GoUInt64)) | (((_seed +
				_i : GoUInt64) << (("32" : GoUInt64) : GoUInt64)) >> (("32" : GoUInt64) : GoUInt64));
			var _old:GoUInt64 = _addr.swap(_new);
			if (_old >> ("32" : GoUInt64) != (_old << ("32" : GoUInt64) >> (("32" : GoUInt64) : GoUInt64))) {
				throw Go.toInterface(stdgo.fmt.Fmt.sprintf(Go.str("SwapUint64 is not atomic: %v"), Go.toInterface(_old)));
			};
		});
	};
}

function _hammerSwapUintptr64(_uaddr:Pointer<GoUInt64>, _count:GoInt):Void {
	if (false) {
		var _addr = ((Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer)
			.__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind))) : Pointer<GoUIntptr>);
		var _seed:GoInt = (((Go.toInterface(Go.pointer(_count)) : stdgo.unsafe.Unsafe.UnsafePointer)
			.__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : GoUIntptr) : GoInt);
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < _count, _i++, {
				var _new:GoUIntptr = ((_seed + _i : GoUIntptr) << (("32" : GoUInt64) : GoUInt64)) | (((_seed +
					_i : GoUIntptr) << (("32" : GoUInt64) : GoUInt64)) >> (("32" : GoUInt64) : GoUInt64));
				var _old:GoUIntptr = swapUintptr(_addr, _new);
				if (_old >> ("32" : GoUInt64) != (_old << ("32" : GoUInt64) >> (("32" : GoUInt64) : GoUInt64))) {
					throw Go.toInterface(stdgo.fmt.Fmt.sprintf(Go.str("SwapUintptr is not atomic: %v"), Go.toInterface(_old)));
				};
			});
		};
	};
}

function _hammerSwapUintptr64Method(_uaddr:Pointer<GoUInt64>, _count:GoInt):Void {
	if (false) {
		var _addr = ((Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer)
			.__convert__(stdgo.internal.reflect.Reflect.GoType.refType(stdgo.internal.reflect.Reflect.GoType.named("Uintptr", [
			new stdgo.internal.reflect.Reflect.MethodType("add", {
				get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]},
					{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
			},
				{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
			new stdgo.internal.reflect.Reflect.MethodType("compareAndSwap", {get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [
				stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind),
				stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)
			]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
				{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
			new stdgo.internal.reflect.Reflect.MethodType("load",
				{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
					{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
				{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
			new stdgo.internal.reflect.Reflect.MethodType("store",
				{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]},
					{get: () -> []}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
				{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
			new stdgo.internal.reflect.Reflect.MethodType("swap",
				{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]},
					{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
				{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
		], stdgo.internal.reflect.Reflect.GoType.structType([
			{
				name: "_2",
				embedded: false,
				tag: "",
				type: stdgo.internal.reflect.Reflect.GoType.named("T_noCopy", [
					new stdgo.internal.reflect.Reflect.MethodType("lock", {
						get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
							{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
					},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
					new stdgo.internal.reflect.Reflect.MethodType("unlock",
						{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
							{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
				], stdgo.internal.reflect.Reflect.GoType.structType([])),
				optional: false
			},
			{
				name: "_v",
				embedded: false,
				tag: "",
				type: stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind),
				optional: false
			}
			])))) : Ref<Uintptr>);
		var _seed:GoInt = (((Go.toInterface(Go.pointer(_count)) : stdgo.unsafe.Unsafe.UnsafePointer)
			.__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : GoUIntptr) : GoInt);
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < _count, _i++, {
				var _new:GoUIntptr = ((_seed + _i : GoUIntptr) << (("32" : GoUInt64) : GoUInt64)) | (((_seed +
					_i : GoUIntptr) << (("32" : GoUInt64) : GoUInt64)) >> (("32" : GoUInt64) : GoUInt64));
				var _old:GoUIntptr = _addr.swap(_new);
				if (_old >> ("32" : GoUInt64) != (_old << ("32" : GoUInt64) >> (("32" : GoUInt64) : GoUInt64))) {
					throw Go.toInterface(stdgo.fmt.Fmt.sprintf(Go.str("SwapUintptr is not atomic: %v"), Go.toInterface(_old)));
				};
			});
		};
	};
}

function _hammerAddInt64(_uaddr:Pointer<GoUInt64>, _count:GoInt):Void {
	var _addr = ((Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType(stdgo.internal.reflect.Reflect.GoType.basic(int64_kind))) : Pointer<GoInt64>);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _count, _i++, {
			addInt64(_addr, ("1" : GoInt64));
		});
	};
}

function _hammerAddInt64Method(_uaddr:Pointer<GoUInt64>, _count:GoInt):Void {
	var _addr = ((Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.refType(stdgo.internal.reflect.Reflect.GoType.named("Int64_", [
		new stdgo.internal.reflect.Reflect.MethodType("add", {
			get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int64_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int64_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
		},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("compareAndSwap", {get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [
			stdgo.internal.reflect.Reflect.GoType.basic(int64_kind),
			stdgo.internal.reflect.Reflect.GoType.basic(int64_kind)
		]},
			{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("load",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int64_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("store",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int64_kind)]},
				{get: () -> []}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("swap",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int64_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int64_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
	], stdgo.internal.reflect.Reflect.GoType.structType([
		{
			name: "_4",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.named("T_noCopy", [
				new stdgo.internal.reflect.Reflect.MethodType("lock", {
					get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
				},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
				new stdgo.internal.reflect.Reflect.MethodType("unlock",
					{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
			], stdgo.internal.reflect.Reflect.GoType.structType([])),
			optional: false
		},
		{
			name: "_5",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.named("T_align64", [], stdgo.internal.reflect.Reflect.GoType.structType([])),
			optional: false
		},
		{
			name: "_v",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.basic(int64_kind),
			optional: false
		}
		])))) : Ref<Int64_>);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _count, _i++, {
			_addr.add(("1" : GoInt64));
		});
	};
}

function _hammerAddUint64(_addr:Pointer<GoUInt64>, _count:GoInt):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _count, _i++, {
			addUint64(_addr, ("1" : GoUInt64));
		});
	};
}

function _hammerAddUint64Method(_uaddr:Pointer<GoUInt64>, _count:GoInt):Void {
	var _addr = ((Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.refType(stdgo.internal.reflect.Reflect.GoType.named("Uint64", [
		new stdgo.internal.reflect.Reflect.MethodType("add", {
			get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
		},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("compareAndSwap", {get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [
			stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind),
			stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)
		]},
			{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("load",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("store",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]},
				{get: () -> []}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("swap",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
	], stdgo.internal.reflect.Reflect.GoType.structType([
		{
			name: "_4",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.named("T_noCopy", [
				new stdgo.internal.reflect.Reflect.MethodType("lock", {
					get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
				},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
				new stdgo.internal.reflect.Reflect.MethodType("unlock",
					{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
			], stdgo.internal.reflect.Reflect.GoType.structType([])),
			optional: false
		},
		{
			name: "_5",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.named("T_align64", [], stdgo.internal.reflect.Reflect.GoType.structType([])),
			optional: false
		},
		{
			name: "_v",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind),
			optional: false
		}
		])))) : Ref<Uint64>);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _count, _i++, {
			_addr.add(("1" : GoUInt64));
		});
	};
}

function _hammerAddUintptr64(_uaddr:Pointer<GoUInt64>, _count:GoInt):Void {
	var _addr = ((Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind))) : Pointer<GoUIntptr>);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _count, _i++, {
			addUintptr(_addr, (1 : GoUIntptr));
		});
	};
}

function _hammerAddUintptr64Method(_uaddr:Pointer<GoUInt64>, _count:GoInt):Void {
	var _addr = ((Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.refType(stdgo.internal.reflect.Reflect.GoType.named("Uintptr", [
		new stdgo.internal.reflect.Reflect.MethodType("add", {
			get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
		},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("compareAndSwap", {get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [
			stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind),
			stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)
		]},
			{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("load",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("store",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]},
				{get: () -> []}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("swap",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
	], stdgo.internal.reflect.Reflect.GoType.structType([
		{
			name: "_2",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.named("T_noCopy", [
				new stdgo.internal.reflect.Reflect.MethodType("lock", {
					get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
				},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
				new stdgo.internal.reflect.Reflect.MethodType("unlock",
					{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
			], stdgo.internal.reflect.Reflect.GoType.structType([])),
			optional: false
		},
		{
			name: "_v",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind),
			optional: false
		}
		])))) : Ref<Uintptr>);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _count, _i++, {
			_addr.add((1 : GoUIntptr));
		});
	};
}

function _hammerCompareAndSwapInt64(_uaddr:Pointer<GoUInt64>, _count:GoInt):Void {
	var _addr = ((Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType(stdgo.internal.reflect.Reflect.GoType.basic(int64_kind))) : Pointer<GoInt64>);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _count, _i++, {
			while (true) {
				var _v:GoInt64 = loadInt64(_addr);
				if (compareAndSwapInt64(_addr, _v, _v + ("1" : GoInt64))) {
					break;
				};
			};
		});
	};
}

function _hammerCompareAndSwapInt64Method(_uaddr:Pointer<GoUInt64>, _count:GoInt):Void {
	var _addr = ((Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.refType(stdgo.internal.reflect.Reflect.GoType.named("Int64_", [
		new stdgo.internal.reflect.Reflect.MethodType("add", {
			get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int64_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int64_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
		},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("compareAndSwap", {get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [
			stdgo.internal.reflect.Reflect.GoType.basic(int64_kind),
			stdgo.internal.reflect.Reflect.GoType.basic(int64_kind)
		]},
			{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("load",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int64_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("store",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int64_kind)]},
				{get: () -> []}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("swap",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int64_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int64_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
	], stdgo.internal.reflect.Reflect.GoType.structType([
		{
			name: "_4",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.named("T_noCopy", [
				new stdgo.internal.reflect.Reflect.MethodType("lock", {
					get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
				},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
				new stdgo.internal.reflect.Reflect.MethodType("unlock",
					{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
			], stdgo.internal.reflect.Reflect.GoType.structType([])),
			optional: false
		},
		{
			name: "_5",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.named("T_align64", [], stdgo.internal.reflect.Reflect.GoType.structType([])),
			optional: false
		},
		{
			name: "_v",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.basic(int64_kind),
			optional: false
		}
		])))) : Ref<Int64_>);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _count, _i++, {
			while (true) {
				var _v:GoInt64 = _addr.load();
				if (_addr.compareAndSwap(_v, _v + ("1" : GoInt64))) {
					break;
				};
			};
		});
	};
}

function _hammerCompareAndSwapUint64(_addr:Pointer<GoUInt64>, _count:GoInt):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _count, _i++, {
			while (true) {
				var _v:GoUInt64 = loadUint64(_addr);
				if (compareAndSwapUint64(_addr, _v, _v + ("1" : GoUInt64))) {
					break;
				};
			};
		});
	};
}

function _hammerCompareAndSwapUint64Method(_uaddr:Pointer<GoUInt64>, _count:GoInt):Void {
	var _addr = ((Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.refType(stdgo.internal.reflect.Reflect.GoType.named("Uint64", [
		new stdgo.internal.reflect.Reflect.MethodType("add", {
			get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
		},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("compareAndSwap", {get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [
			stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind),
			stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)
		]},
			{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("load",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("store",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]},
				{get: () -> []}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("swap",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
	], stdgo.internal.reflect.Reflect.GoType.structType([
		{
			name: "_4",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.named("T_noCopy", [
				new stdgo.internal.reflect.Reflect.MethodType("lock", {
					get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
				},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
				new stdgo.internal.reflect.Reflect.MethodType("unlock",
					{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
			], stdgo.internal.reflect.Reflect.GoType.structType([])),
			optional: false
		},
		{
			name: "_5",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.named("T_align64", [], stdgo.internal.reflect.Reflect.GoType.structType([])),
			optional: false
		},
		{
			name: "_v",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind),
			optional: false
		}
		])))) : Ref<Uint64>);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _count, _i++, {
			while (true) {
				var _v:GoUInt64 = _addr.load();
				if (_addr.compareAndSwap(_v, _v + ("1" : GoUInt64))) {
					break;
				};
			};
		});
	};
}

function _hammerCompareAndSwapUintptr64(_uaddr:Pointer<GoUInt64>, _count:GoInt):Void {
	var _addr = ((Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind))) : Pointer<GoUIntptr>);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _count, _i++, {
			while (true) {
				var _v:GoUIntptr = loadUintptr(_addr);
				if (compareAndSwapUintptr(_addr, _v, _v + (1 : GoUIntptr))) {
					break;
				};
			};
		});
	};
}

function _hammerCompareAndSwapUintptr64Method(_uaddr:Pointer<GoUInt64>, _count:GoInt):Void {
	var _addr = ((Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.refType(stdgo.internal.reflect.Reflect.GoType.named("Uintptr", [
		new stdgo.internal.reflect.Reflect.MethodType("add", {
			get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
		},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("compareAndSwap", {get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [
			stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind),
			stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)
		]},
			{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("load",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("store",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]},
				{get: () -> []}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("swap",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
	], stdgo.internal.reflect.Reflect.GoType.structType([
		{
			name: "_2",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.named("T_noCopy", [
				new stdgo.internal.reflect.Reflect.MethodType("lock", {
					get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
				},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
				new stdgo.internal.reflect.Reflect.MethodType("unlock",
					{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
			], stdgo.internal.reflect.Reflect.GoType.structType([])),
			optional: false
		},
		{
			name: "_v",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind),
			optional: false
		}
		])))) : Ref<Uintptr>);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _count, _i++, {
			while (true) {
				var _v:GoUIntptr = _addr.load();
				if (_addr.compareAndSwap(_v, _v + (1 : GoUIntptr))) {
					break;
				};
			};
		});
	};
}

function testHammer64(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	if (_test64err != null) {
		_t.skipf(Go.str("Skipping 64-bit tests: %v"), _test64err);
	};
	try {
		{};
		var _n:GoInt = (100000 : GoInt);
		if (stdgo.testing.Testing.short()) {
			_n = (1000 : GoInt);
		};
		{
			var _a0 = stdgo.runtime.Runtime.gomaxprocs((4 : GoInt));
			__deferstack__.unshift(() -> stdgo.runtime.Runtime.gomaxprocs(_a0));
		};
		for (_name => _testf in _hammer64) {
			var _c = new Chan<GoInt>(0, () -> (0 : GoInt));
			var _val:GoUInt64 = (0 : GoUInt64);
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < (4:GoInt), _i++, {
					Go.routine(() -> {
						var a = function():Void {
							var __deferstack__:Array<Void->Void> = [];
							__deferstack__.unshift(() -> {
								var a = function():Void {
									{
										var _err:AnyInterface = ({
											final r = Go.recover_exception;
											Go.recover_exception = null;
											r;
										});
										if (_err != null) {
											_t.error(Go.toInterface((Go.typeAssert((_err : GoString)) : GoString)));
										};
									};
									_c.__send__((1 : GoInt));
								};
								a();
							});
							try {
								_testf(Go.pointer(_val), _n);
								for (defer in __deferstack__) {
									defer();
								};
								{
									for (defer in __deferstack__) {
										defer();
									};
									if (Go.recover_exception != null)
										throw Go.recover_exception;
									return;
								};
							} catch (__exception__) {
								if (!(__exception__.native is AnyInterfaceData))
									throw __exception__;
								Go.recover_exception = __exception__.native;
								for (defer in __deferstack__) {
									defer();
								};
								if (Go.recover_exception != null)
									throw Go.recover_exception;
								return;
							};
						};
						a();
					});
				});
			};
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < (4:GoInt), _i++, {
					_c.__get__();
				});
			};
			if (!stdgo.strings.Strings.hasPrefix(_name, Go.str("Swap")) && (_val != ((_n : GoUInt64) * (("4" : GoUInt64) : GoUInt64)))) {
				_t.fatalf(Go.str("%s: val=%d want %d"), Go.toInterface(_name), Go.toInterface(_val), Go.toInterface(_n * (4 : GoInt)));
			};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function _hammerStoreLoadInt32(_t:Ref<stdgo.testing.Testing.T>, _paddr:stdgo.unsafe.Unsafe.UnsafePointer):Void {
	var _addr = (_paddr.__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType(stdgo.internal.reflect.Reflect.GoType.basic(int32_kind))) : Pointer<GoInt32>);
	var _v:GoInt32 = loadInt32(_addr);
	var _vlo:GoInt32 = _v & (65535 : GoInt32);
	var _vhi:GoInt32 = _v >> ("16" : GoUInt64);
	if (_vlo != (_vhi)) {
		_t.fatalf(Go.str("Int32: %#x != %#x"), Go.toInterface(_vlo), Go.toInterface(_vhi));
	};
	var _new:GoInt32 = (_v + (1 : GoInt32)) + (65536 : GoInt32);
	if (_vlo == ((10000 : GoInt32))) {
		_new = (0 : GoInt32);
	};
	storeInt32(_addr, _new);
}

function _hammerStoreLoadInt32Method(_t:Ref<stdgo.testing.Testing.T>, _paddr:stdgo.unsafe.Unsafe.UnsafePointer):Void {
	var _addr = (_paddr.__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType(stdgo.internal.reflect.Reflect.GoType.basic(int32_kind))) : Pointer<GoInt32>);
	var _v:GoInt32 = loadInt32(_addr);
	var _vlo:GoInt32 = _v & (65535 : GoInt32);
	var _vhi:GoInt32 = _v >> ("16" : GoUInt64);
	if (_vlo != (_vhi)) {
		_t.fatalf(Go.str("Int32: %#x != %#x"), Go.toInterface(_vlo), Go.toInterface(_vhi));
	};
	var _new:GoInt32 = (_v + (1 : GoInt32)) + (65536 : GoInt32);
	if (_vlo == ((10000 : GoInt32))) {
		_new = (0 : GoInt32);
	};
	storeInt32(_addr, _new);
}

function _hammerStoreLoadUint32(_t:Ref<stdgo.testing.Testing.T>, _paddr:stdgo.unsafe.Unsafe.UnsafePointer):Void {
	var _addr = (_paddr.__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType(stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind))) : Pointer<GoUInt32>);
	var _v:GoUInt32 = loadUint32(_addr);
	var _vlo:GoUInt32 = _v & ("65535" : GoUInt32);
	var _vhi:GoUInt32 = _v >> ("16" : GoUInt64);
	if (_vlo != (_vhi)) {
		_t.fatalf(Go.str("Uint32: %#x != %#x"), Go.toInterface(_vlo), Go.toInterface(_vhi));
	};
	var _new:GoUInt32 = (_v + (("1" : GoUInt32) : GoUInt32)) + ("65536" : GoUInt32);
	if (_vlo == (("10000" : GoUInt32))) {
		_new = ("0" : GoUInt32);
	};
	storeUint32(_addr, _new);
}

function _hammerStoreLoadUint32Method(_t:Ref<stdgo.testing.Testing.T>, _paddr:stdgo.unsafe.Unsafe.UnsafePointer):Void {
	var _addr = (_paddr.__convert__(stdgo.internal.reflect.Reflect.GoType.refType(stdgo.internal.reflect.Reflect.GoType.named("Uint32", [
		new stdgo.internal.reflect.Reflect.MethodType("add", {
			get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
		},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("compareAndSwap", {get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [
			stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind),
			stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind)
		]},
			{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("load",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("store",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind)]},
				{get: () -> []}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("swap",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
	], stdgo.internal.reflect.Reflect.GoType.structType([
		{
			name: "_2",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.named("T_noCopy", [
				new stdgo.internal.reflect.Reflect.MethodType("lock", {
					get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
				},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
				new stdgo.internal.reflect.Reflect.MethodType("unlock",
					{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
			], stdgo.internal.reflect.Reflect.GoType.structType([])),
			optional: false
		},
		{
			name: "_v",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind),
			optional: false
		}
		])))) : Ref<Uint32>);
	var _v:GoUInt32 = _addr.load();
	var _vlo:GoUInt32 = _v & ("65535" : GoUInt32);
	var _vhi:GoUInt32 = _v >> ("16" : GoUInt64);
	if (_vlo != (_vhi)) {
		_t.fatalf(Go.str("Uint32: %#x != %#x"), Go.toInterface(_vlo), Go.toInterface(_vhi));
	};
	var _new:GoUInt32 = (_v + (("1" : GoUInt32) : GoUInt32)) + ("65536" : GoUInt32);
	if (_vlo == (("10000" : GoUInt32))) {
		_new = ("0" : GoUInt32);
	};
	_addr.store(_new);
}

function _hammerStoreLoadInt64(_t:Ref<stdgo.testing.Testing.T>, _paddr:stdgo.unsafe.Unsafe.UnsafePointer):Void {
	var _addr = (_paddr.__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType(stdgo.internal.reflect.Reflect.GoType.basic(int64_kind))) : Pointer<GoInt64>);
	var _v:GoInt64 = loadInt64(_addr);
	var _vlo:GoInt64 = _v & ("4294967295" : GoInt64);
	var _vhi:GoInt64 = _v >> ("32" : GoUInt64);
	if (_vlo != (_vhi)) {
		_t.fatalf(Go.str("Int64: %#x != %#x"), Go.toInterface(_vlo), Go.toInterface(_vhi));
	};
	var _new:GoInt64 = (_v + (("1" : GoInt64) : GoInt64)) + ("4294967296" : GoInt64);
	storeInt64(_addr, _new);
}

function _hammerStoreLoadInt64Method(_t:Ref<stdgo.testing.Testing.T>, _paddr:stdgo.unsafe.Unsafe.UnsafePointer):Void {
	var _addr = (_paddr.__convert__(stdgo.internal.reflect.Reflect.GoType.refType(stdgo.internal.reflect.Reflect.GoType.named("Int64_", [
		new stdgo.internal.reflect.Reflect.MethodType("add", {
			get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int64_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int64_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
		},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("compareAndSwap", {get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [
			stdgo.internal.reflect.Reflect.GoType.basic(int64_kind),
			stdgo.internal.reflect.Reflect.GoType.basic(int64_kind)
		]},
			{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("load",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int64_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("store",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int64_kind)]},
				{get: () -> []}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("swap",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int64_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(int64_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
	], stdgo.internal.reflect.Reflect.GoType.structType([
		{
			name: "_4",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.named("T_noCopy", [
				new stdgo.internal.reflect.Reflect.MethodType("lock", {
					get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
				},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
				new stdgo.internal.reflect.Reflect.MethodType("unlock",
					{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
			], stdgo.internal.reflect.Reflect.GoType.structType([])),
			optional: false
		},
		{
			name: "_5",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.named("T_align64", [], stdgo.internal.reflect.Reflect.GoType.structType([])),
			optional: false
		},
		{
			name: "_v",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.basic(int64_kind),
			optional: false
		}
		])))) : Ref<Int64_>);
	var _v:GoInt64 = _addr.load();
	var _vlo:GoInt64 = _v & ("4294967295" : GoInt64);
	var _vhi:GoInt64 = _v >> ("32" : GoUInt64);
	if (_vlo != (_vhi)) {
		_t.fatalf(Go.str("Int64: %#x != %#x"), Go.toInterface(_vlo), Go.toInterface(_vhi));
	};
	var _new:GoInt64 = (_v + (("1" : GoInt64) : GoInt64)) + ("4294967296" : GoInt64);
	_addr.store(_new);
}

function _hammerStoreLoadUint64(_t:Ref<stdgo.testing.Testing.T>, _paddr:stdgo.unsafe.Unsafe.UnsafePointer):Void {
	var _addr = (_paddr.__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType(stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind))) : Pointer<GoUInt64>);
	var _v:GoUInt64 = loadUint64(_addr);
	var _vlo:GoUInt64 = _v & ("4294967295" : GoUInt64);
	var _vhi:GoUInt64 = _v >> ("32" : GoUInt64);
	if (_vlo != (_vhi)) {
		_t.fatalf(Go.str("Uint64: %#x != %#x"), Go.toInterface(_vlo), Go.toInterface(_vhi));
	};
	var _new:GoUInt64 = (_v + (("1" : GoUInt64) : GoUInt64)) + ("4294967296" : GoUInt64);
	storeUint64(_addr, _new);
}

function _hammerStoreLoadUint64Method(_t:Ref<stdgo.testing.Testing.T>, _paddr:stdgo.unsafe.Unsafe.UnsafePointer):Void {
	var _addr = (_paddr.__convert__(stdgo.internal.reflect.Reflect.GoType.refType(stdgo.internal.reflect.Reflect.GoType.named("Uint64", [
		new stdgo.internal.reflect.Reflect.MethodType("add", {
			get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
		},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("compareAndSwap", {get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [
			stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind),
			stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)
		]},
			{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("load",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("store",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]},
				{get: () -> []}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("swap",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
	], stdgo.internal.reflect.Reflect.GoType.structType([
		{
			name: "_4",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.named("T_noCopy", [
				new stdgo.internal.reflect.Reflect.MethodType("lock", {
					get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
				},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
				new stdgo.internal.reflect.Reflect.MethodType("unlock",
					{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
			], stdgo.internal.reflect.Reflect.GoType.structType([])),
			optional: false
		},
		{
			name: "_5",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.named("T_align64", [], stdgo.internal.reflect.Reflect.GoType.structType([])),
			optional: false
		},
		{
			name: "_v",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind),
			optional: false
		}
		])))) : Ref<Uint64>);
	var _v:GoUInt64 = _addr.load();
	var _vlo:GoUInt64 = _v & ("4294967295" : GoUInt64);
	var _vhi:GoUInt64 = _v >> ("32" : GoUInt64);
	if (_vlo != (_vhi)) {
		_t.fatalf(Go.str("Uint64: %#x != %#x"), Go.toInterface(_vlo), Go.toInterface(_vhi));
	};
	var _new:GoUInt64 = (_v + (("1" : GoUInt64) : GoUInt64)) + ("4294967296" : GoUInt64);
	_addr.store(_new);
}

function _hammerStoreLoadUintptr(_t:Ref<stdgo.testing.Testing.T>, _paddr:stdgo.unsafe.Unsafe.UnsafePointer):Void {
	var _addr = (_paddr.__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind))) : Pointer<GoUIntptr>);
	var _v:GoUIntptr = loadUintptr(_addr);
	var _new:GoUIntptr = _v;
	if (true) {
		var _vlo:GoUIntptr = _v & (65535 : GoUIntptr);
		var _vhi:GoUIntptr = _v >> ("16" : GoUInt64);
		if (_vlo != (_vhi)) {
			_t.fatalf(Go.str("Uintptr: %#x != %#x"), Go.toInterface(_vlo), Go.toInterface(_vhi));
		};
		_new = (_v + (1 : GoUIntptr)) + (65536 : GoUIntptr);
		if (_vlo == ((10000 : GoUIntptr))) {
			_new = (0 : GoUIntptr);
		};
	} else {
		var _vlo:GoUIntptr = _v & (4294967295 : GoUIntptr);
		var _vhi:GoUIntptr = _v >> ("32" : GoUInt64);
		if (_vlo != (_vhi)) {
			_t.fatalf(Go.str("Uintptr: %#x != %#x"), Go.toInterface(_vlo), Go.toInterface(_vhi));
		};
		var _inc:GoUInt64 = (("4294967297" : GoUInt64) : GoUInt64);
		_new = _v + (_inc : GoUIntptr);
	};
	storeUintptr(_addr, _new);
}

/**
	//go:nocheckptr
**/
function _hammerStoreLoadUintptrMethod(_t:Ref<stdgo.testing.Testing.T>, _paddr:stdgo.unsafe.Unsafe.UnsafePointer):Void {
	var _addr = (_paddr.__convert__(stdgo.internal.reflect.Reflect.GoType.refType(stdgo.internal.reflect.Reflect.GoType.named("Uintptr", [
		new stdgo.internal.reflect.Reflect.MethodType("add", {
			get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
		},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("compareAndSwap", {get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [
			stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind),
			stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)
		]},
			{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("load",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("store",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]},
				{get: () -> []}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("swap",
			{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
	], stdgo.internal.reflect.Reflect.GoType.structType([
		{
			name: "_2",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.named("T_noCopy", [
				new stdgo.internal.reflect.Reflect.MethodType("lock", {
					get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
				},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
				new stdgo.internal.reflect.Reflect.MethodType("unlock",
					{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
			], stdgo.internal.reflect.Reflect.GoType.structType([])),
			optional: false
		},
		{
			name: "_v",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind),
			optional: false
		}
		])))) : Ref<Uintptr>);
	var _v:GoUIntptr = _addr.load();
	var _new:GoUIntptr = _v;
	if (true) {
		var _vlo:GoUIntptr = _v & (65535 : GoUIntptr);
		var _vhi:GoUIntptr = _v >> ("16" : GoUInt64);
		if (_vlo != (_vhi)) {
			_t.fatalf(Go.str("Uintptr: %#x != %#x"), Go.toInterface(_vlo), Go.toInterface(_vhi));
		};
		_new = (_v + (1 : GoUIntptr)) + (65536 : GoUIntptr);
		if (_vlo == ((10000 : GoUIntptr))) {
			_new = (0 : GoUIntptr);
		};
	} else {
		var _vlo:GoUIntptr = _v & (4294967295 : GoUIntptr);
		var _vhi:GoUIntptr = _v >> ("32" : GoUInt64);
		if (_vlo != (_vhi)) {
			_t.fatalf(Go.str("Uintptr: %#x != %#x"), Go.toInterface(_vlo), Go.toInterface(_vhi));
		};
		var _inc:GoUInt64 = (("4294967297" : GoUInt64) : GoUInt64);
		_new = _v + (_inc : GoUIntptr);
	};
	_addr.store(_new);
}

/**
	// This code is just testing that LoadPointer/StorePointer operate
	// atomically; it's not actually calculating pointers.
	//
	//go:nocheckptr
**/
function _hammerStoreLoadPointer(_t:Ref<stdgo.testing.Testing.T>, _paddr:stdgo.unsafe.Unsafe.UnsafePointer):Void {
	var _addr = (_paddr.__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType(stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind))) : Pointer<stdgo.unsafe.Unsafe.UnsafePointer>);
	var _v:GoUIntptr = (loadPointer(_addr).__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : GoUIntptr);
	var _new:GoUIntptr = _v;
	if (true) {
		var _vlo:GoUIntptr = _v & (65535 : GoUIntptr);
		var _vhi:GoUIntptr = _v >> ("16" : GoUInt64);
		if (_vlo != (_vhi)) {
			_t.fatalf(Go.str("Pointer: %#x != %#x"), Go.toInterface(_vlo), Go.toInterface(_vhi));
		};
		_new = (_v + (1 : GoUIntptr)) + (65536 : GoUIntptr);
		if (_vlo == ((10000 : GoUIntptr))) {
			_new = (0 : GoUIntptr);
		};
	} else {
		var _vlo:GoUIntptr = _v & (4294967295 : GoUIntptr);
		var _vhi:GoUIntptr = _v >> ("32" : GoUInt64);
		if (_vlo != (_vhi)) {
			_t.fatalf(Go.str("Pointer: %#x != %#x"), Go.toInterface(_vlo), Go.toInterface(_vhi));
		};
		var _inc:GoUInt64 = (("4294967297" : GoUInt64) : GoUInt64);
		_new = _v + (_inc : GoUIntptr);
	};
	storePointer(_addr, (Go.toInterface(_new) : stdgo.unsafe.Unsafe.UnsafePointer));
}

/**
	// This code is just testing that LoadPointer/StorePointer operate
	// atomically; it's not actually calculating pointers.
	//
	//go:nocheckptr
**/
function _hammerStoreLoadPointerMethod(_t:Ref<stdgo.testing.Testing.T>, _paddr:stdgo.unsafe.Unsafe.UnsafePointer):Void {
	var _addr = (_paddr.__convert__(stdgo.internal.reflect.Reflect.GoType.refType(stdgo.internal.reflect.Reflect.GoType.named("Pointer_", [
		new stdgo.internal.reflect.Reflect.MethodType("compareAndSwap", {
			get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [
				stdgo.internal.reflect.Reflect.GoType.pointerType(stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind)),
				stdgo.internal.reflect.Reflect.GoType.pointerType(stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind))
			]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
		},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("load", {get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> [
			stdgo.internal.reflect.Reflect.GoType.pointerType(stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind))
		]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("store", {get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [
			stdgo.internal.reflect.Reflect.GoType.pointerType(stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind))
		]}, {get: () -> []},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
		new stdgo.internal.reflect.Reflect.MethodType("swap", {get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [
			stdgo.internal.reflect.Reflect.GoType.pointerType(stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind))
		]}, {get: () -> [
			stdgo.internal.reflect.Reflect.GoType.pointerType(stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind))
			]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
	], stdgo.internal.reflect.Reflect.GoType.structType([
		{
			name: "_2",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.named("T_noCopy", [
				new stdgo.internal.reflect.Reflect.MethodType("lock", {
					get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
				},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
				new stdgo.internal.reflect.Reflect.MethodType("unlock",
					{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
			], stdgo.internal.reflect.Reflect.GoType.structType([])),
			optional: false
		},
		{
			name: "_v",
			embedded: false,
			tag: "",
			type: stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind),
			optional: false
		}
		])))) : Ref<Pointer_<GoByte>>);
	var _v:GoUIntptr = ((Go.toInterface(#if !macro _addr.load() #else null #end) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : GoUIntptr);
	var _new:GoUIntptr = _v;
	if (true) {
		var _vlo:GoUIntptr = _v & (65535 : GoUIntptr);
		var _vhi:GoUIntptr = _v >> ("16" : GoUInt64);
		if (_vlo != (_vhi)) {
			_t.fatalf(Go.str("Pointer: %#x != %#x"), Go.toInterface(_vlo), Go.toInterface(_vhi));
		};
		_new = (_v + (1 : GoUIntptr)) + (65536 : GoUIntptr);
		if (_vlo == ((10000 : GoUIntptr))) {
			_new = (0 : GoUIntptr);
		};
	} else {
		var _vlo:GoUIntptr = _v & (4294967295 : GoUIntptr);
		var _vhi:GoUIntptr = _v >> ("32" : GoUInt64);
		if (_vlo != (_vhi)) {
			_t.fatalf(Go.str("Pointer: %#x != %#x"), Go.toInterface(_vlo), Go.toInterface(_vhi));
		};
		var _inc:GoUInt64 = (("4294967297" : GoUInt64) : GoUInt64);
		_new = _v + (_inc : GoUIntptr);
	};
	#if !macro _addr.store(((Go.toInterface(_new) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType(stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind))) : Pointer<GoByte>)) #else null #end;
}

function testHammerStoreLoad(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var _tests:Slice<(Ref<stdgo.testing.Testing.T>,
			stdgo.unsafe.Unsafe.UnsafePointer) -> Void> = (null : Slice<(Ref<stdgo.testing.Testing.T>, stdgo.unsafe.Unsafe.UnsafePointer) -> Void>);
	try {
		_tests = _tests.__appendref__(_hammerStoreLoadInt32, _hammerStoreLoadUint32, _hammerStoreLoadUintptr, _hammerStoreLoadPointer,
			_hammerStoreLoadInt32Method, _hammerStoreLoadUint32Method, _hammerStoreLoadUintptrMethod, _hammerStoreLoadPointerMethod);
		if (_test64err == null) {
			_tests = _tests.__appendref__(_hammerStoreLoadInt64, _hammerStoreLoadUint64, _hammerStoreLoadInt64Method, _hammerStoreLoadUint64Method);
		};
		var _n:GoInt = (1000000 : GoInt);
		if (stdgo.testing.Testing.short()) {
			_n = (10000 : GoInt);
		};
		{};
		{
			var _a0 = stdgo.runtime.Runtime.gomaxprocs((8 : GoInt));
			__deferstack__.unshift(() -> stdgo.runtime.Runtime.gomaxprocs(_a0));
		};
		{
			var _a0 = stdgo.runtime.debug.Debug.setGCPercent((-1 : GoInt));
			__deferstack__.unshift(() -> stdgo.runtime.debug.Debug.setGCPercent(_a0));
		};
		stdgo.runtime.Runtime.gc();
		for (_0 => _tt in _tests) {
			var _c = new Chan<GoInt>(0, () -> (0 : GoInt));
			var _val:GoUInt64 = (0 : GoUInt64);
			{
				var _p:GoInt = (0 : GoInt);
				Go.cfor(_p < (8:GoInt), _p++, {
					Go.routine(() -> {
						var a = function():Void {
							{
								var _i:GoInt = (0 : GoInt);
								Go.cfor(_i < _n, _i++, {
									_tt(_t, (Go.toInterface(Go.pointer(_val)) : stdgo.unsafe.Unsafe.UnsafePointer));
								});
							};
							_c.__send__((1 : GoInt));
						};
						a();
					});
				});
			};
			{
				var _p:GoInt = (0 : GoInt);
				Go.cfor(_p < (8:GoInt), _p++, {
					_c.__get__();
				});
			};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testStoreLoadSeqCst32(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	if (stdgo.runtime.Runtime.numCPU() == ((1 : GoInt))) {
		_t.skipf(Go.str("Skipping test on %v processor machine"), Go.toInterface(stdgo.runtime.Runtime.numCPU()));
	};
	try {
		{
			var _a0 = stdgo.runtime.Runtime.gomaxprocs((4 : GoInt));
			__deferstack__.unshift(() -> stdgo.runtime.Runtime.gomaxprocs(_a0));
		};
		var n:GoInt32 = (1000 : GoInt32);
		if (stdgo.testing.Testing.short()) {
			n = (100 : GoInt32);
		};
		var _c = new Chan<Bool>((2 : GoInt).toBasic(), () -> false);
		var x = (new GoArray<GoInt32>(...([].concat([for (i in 0...2) (0 : GoInt32)]))) : GoArray<GoInt32>);
		var _ack = (new GoArray<GoArray<GoInt32>>((new GoArray<GoInt32>((-1 : GoInt32), (-1 : GoInt32), (-1 : GoInt32)) : GoArray<GoInt32>),
			(new GoArray<GoInt32>((-1 : GoInt32), (-1 : GoInt32), (-1 : GoInt32)) : GoArray<GoInt32>)) : GoArray<GoArray<GoInt32>>);
		{
			var _p:GoInt = (0 : GoInt);
			Go.cfor(_p < (2:GoInt), _p++, {
				Go.routine(() -> {
					var a = function(_me:GoInt):Void {
						var _he:GoInt = (1 : GoInt) - _me;
						{
							var _i:GoInt32 = (1 : GoInt32);
							Go.cfor(_i < n, _i++, {
								storeInt32(Go.pointer(x[_me]), _i);
								var _my:GoInt32 = loadInt32(Go.pointer(x[_he]));
								storeInt32(Go.pointer(_ack[_me][_i % (3 : GoInt32)]), _my);
								{
									var _w:GoInt = (1 : GoInt);
									Go.cfor(loadInt32(Go.pointer(_ack[_he][_i % (3 : GoInt32)])) == ((-1 : GoInt32)), _w++, {
										if (_w % (1000 : GoInt) == ((0 : GoInt))) {
											stdgo.runtime.Runtime.gosched();
										};
									});
								};
								var _his:GoInt32 = loadInt32(Go.pointer(_ack[_he][_i % (3 : GoInt32)]));
								if (((_my != _i) && (_my != (_i - (1 : GoInt32)))) || ((_his != _i) && (_his != (_i - (1 : GoInt32))))) {
									_t.errorf(Go.str("invalid values: %d/%d (%d)"), Go.toInterface(_my), Go.toInterface(_his), Go.toInterface(_i));
									break;
								};
								if ((_my != _i) && (_his != _i)) {
									_t.errorf(Go.str("store/load are not sequentially consistent: %d/%d (%d)"), Go.toInterface(_my), Go.toInterface(_his),
										Go.toInterface(_i));
									break;
								};
								storeInt32(Go.pointer(_ack[_me][(_i - (1 : GoInt32)) % (3 : GoInt32)]), (-1 : GoInt32));
							});
						};
						_c.__send__(true);
					};
					a(_p);
				});
			});
		};
		_c.__get__();
		_c.__get__();
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testStoreLoadSeqCst64(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	if (stdgo.runtime.Runtime.numCPU() == ((1 : GoInt))) {
		_t.skipf(Go.str("Skipping test on %v processor machine"), Go.toInterface(stdgo.runtime.Runtime.numCPU()));
	};
	try {
		if (_test64err != null) {
			_t.skipf(Go.str("Skipping 64-bit tests: %v"), _test64err);
		};
		{
			var _a0 = stdgo.runtime.Runtime.gomaxprocs((4 : GoInt));
			__deferstack__.unshift(() -> stdgo.runtime.Runtime.gomaxprocs(_a0));
		};
		var n:GoInt64 = (("1000" : GoInt64) : GoInt64);
		if (stdgo.testing.Testing.short()) {
			n = (("100" : GoInt64) : GoInt64);
		};
		var _c = new Chan<Bool>((2 : GoInt).toBasic(), () -> false);
		var x = (new GoArray<GoInt64>(...([].concat([for (i in 0...2) (0 : GoInt64)]))) : GoArray<GoInt64>);
		var _ack = (new GoArray<GoArray<GoInt64>>((new GoArray<GoInt64>(("-1" : GoInt64), ("-1" : GoInt64), ("-1" : GoInt64)) : GoArray<GoInt64>),
			(new GoArray<GoInt64>(("-1" : GoInt64), ("-1" : GoInt64), ("-1" : GoInt64)) : GoArray<GoInt64>)) : GoArray<GoArray<GoInt64>>);
		{
			var _p:GoInt = (0 : GoInt);
			Go.cfor(_p < (2:GoInt), _p++, {
				Go.routine(() -> {
					var a = function(_me:GoInt):Void {
						var _he:GoInt = (1 : GoInt) - _me;
						{
							var _i:GoInt64 = (("1" : GoInt64) : GoInt64);
							Go.cfor(_i < n, _i++, {
								storeInt64(Go.pointer(x[_me]), _i);
								var _my:GoInt64 = loadInt64(Go.pointer(x[_he]));
								storeInt64(Go.pointer(_ack[_me][_i % ("3" : GoInt64)]), _my);
								{
									var _w:GoInt = (1 : GoInt);
									Go.cfor(loadInt64(Go.pointer(_ack[_he][_i % ("3" : GoInt64)])) == (("-1" : GoInt64)), _w++, {
										if (_w % (1000 : GoInt) == ((0 : GoInt))) {
											stdgo.runtime.Runtime.gosched();
										};
									});
								};
								var _his:GoInt64 = loadInt64(Go.pointer(_ack[_he][_i % ("3" : GoInt64)]));
								if (((_my != _i) && (_my != (_i - (("1" : GoInt64) : GoInt64))))
									|| ((_his != _i) && (_his != (_i - (("1" : GoInt64) : GoInt64))))) {
									_t.errorf(Go.str("invalid values: %d/%d (%d)"), Go.toInterface(_my), Go.toInterface(_his), Go.toInterface(_i));
									break;
								};
								if ((_my != _i) && (_his != _i)) {
									_t.errorf(Go.str("store/load are not sequentially consistent: %d/%d (%d)"), Go.toInterface(_my), Go.toInterface(_his),
										Go.toInterface(_i));
									break;
								};
								storeInt64(Go.pointer(_ack[_me][(_i - (("1" : GoInt64) : GoInt64)) % ("3" : GoInt64)]), ("-1" : GoInt64));
							});
						};
						_c.__send__(true);
					};
					a(_p);
				});
			});
		};
		_c.__get__();
		_c.__get__();
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

@:structInit class Data_testStoreLoadRelAcq32_0 {
	public var _signal:GoInt32 = 0;
	public var _pad1:GoArray<GoInt8> = new GoArray<GoInt8>(...[for (i in 0...128) (0 : GoInt8)]);
	public var _data1:GoInt32 = 0;
	public var _pad2:GoArray<GoInt8> = new GoArray<GoInt8>(...[for (i in 0...128) (0 : GoInt8)]);
	public var _data2:GoFloat32 = 0;

	public function new(?_signal:GoInt32, ?_pad1:GoArray<GoInt8>, ?_data1:GoInt32, ?_pad2:GoArray<GoInt8>, ?_data2:GoFloat32) {
		if (_signal != null)
			this._signal = _signal;
		if (_pad1 != null)
			this._pad1 = _pad1;
		if (_data1 != null)
			this._data1 = _data1;
		if (_pad2 != null)
			this._pad2 = _pad2;
		if (_data2 != null)
			this._data2 = _data2;
	}

	public function __copy__() {
		return new Data_testStoreLoadRelAcq32_0(_signal, _pad1, _data1, _pad2, _data2);
	}
}

function testStoreLoadRelAcq32(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	if (stdgo.runtime.Runtime.numCPU() == ((1 : GoInt))) {
		_t.skipf(Go.str("Skipping test on %v processor machine"), Go.toInterface(stdgo.runtime.Runtime.numCPU()));
	};
	try {
		{
			var _a0 = stdgo.runtime.Runtime.gomaxprocs((4 : GoInt));
			__deferstack__.unshift(() -> stdgo.runtime.Runtime.gomaxprocs(_a0));
		};
		var n:GoInt32 = (1000 : GoInt32);
		if (stdgo.testing.Testing.short()) {
			n = (100 : GoInt32);
		};
		var _c = new Chan<Bool>((2 : GoInt).toBasic(), () -> false);
		{};
		var x:Data_testStoreLoadRelAcq32_0 = ({} : stdgo.sync.atomic_test.Atomic_test.Data_testStoreLoadRelAcq32_0);
		{
			var _p:GoInt32 = (0 : GoInt32);
			Go.cfor(_p < (2:GoInt32), _p++, {
				Go.routine(() -> {
					var a = function(_p:GoInt32):Void {
						{
							var _i:GoInt32 = (1 : GoInt32);
							Go.cfor(_i < n, _i++, {
								if ((_i + _p) % (2 : GoInt32) == ((0 : GoInt32))) {
									x._data1 = _i;
									x._data2 = (_i : GoFloat32);
									storeInt32(Go.pointer(x._signal), _i);
								} else {
									{
										var _w:GoInt = (1 : GoInt);
										Go.cfor(loadInt32(Go.pointer(x._signal)) != (_i), _w++, {
											if (_w % (1000 : GoInt) == ((0 : GoInt))) {
												stdgo.runtime.Runtime.gosched();
											};
										});
									};
									var _d1:GoInt32 = x._data1;
									var _d2:GoFloat32 = x._data2;
									if ((_d1 != _i) || (_d2 != (_i : GoFloat32))) {
										_t.errorf(Go.str("incorrect data: %d/%g (%d)"), Go.toInterface(_d1), Go.toInterface(_d2), Go.toInterface(_i));
										break;
									};
								};
							});
						};
						_c.__send__(true);
					};
					a(_p);
				});
			});
		};
		_c.__get__();
		_c.__get__();
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

@:structInit class Data_testStoreLoadRelAcq64_0 {
	public var _signal:GoInt64 = 0;
	public var _pad1:GoArray<GoInt8> = new GoArray<GoInt8>(...[for (i in 0...128) (0 : GoInt8)]);
	public var _data1:GoInt64 = 0;
	public var _pad2:GoArray<GoInt8> = new GoArray<GoInt8>(...[for (i in 0...128) (0 : GoInt8)]);
	public var _data2:GoFloat64 = 0;

	public function new(?_signal:GoInt64, ?_pad1:GoArray<GoInt8>, ?_data1:GoInt64, ?_pad2:GoArray<GoInt8>, ?_data2:GoFloat64) {
		if (_signal != null)
			this._signal = _signal;
		if (_pad1 != null)
			this._pad1 = _pad1;
		if (_data1 != null)
			this._data1 = _data1;
		if (_pad2 != null)
			this._pad2 = _pad2;
		if (_data2 != null)
			this._data2 = _data2;
	}

	public function __copy__() {
		return new Data_testStoreLoadRelAcq64_0(_signal, _pad1, _data1, _pad2, _data2);
	}
}

function testStoreLoadRelAcq64(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	if (stdgo.runtime.Runtime.numCPU() == ((1 : GoInt))) {
		_t.skipf(Go.str("Skipping test on %v processor machine"), Go.toInterface(stdgo.runtime.Runtime.numCPU()));
	};
	try {
		if (_test64err != null) {
			_t.skipf(Go.str("Skipping 64-bit tests: %v"), _test64err);
		};
		{
			var _a0 = stdgo.runtime.Runtime.gomaxprocs((4 : GoInt));
			__deferstack__.unshift(() -> stdgo.runtime.Runtime.gomaxprocs(_a0));
		};
		var n:GoInt64 = (("1000" : GoInt64) : GoInt64);
		if (stdgo.testing.Testing.short()) {
			n = (("100" : GoInt64) : GoInt64);
		};
		var _c = new Chan<Bool>((2 : GoInt).toBasic(), () -> false);
		{};
		var x:Data_testStoreLoadRelAcq64_0 = ({} : stdgo.sync.atomic_test.Atomic_test.Data_testStoreLoadRelAcq64_0);
		{
			var _p:GoInt64 = (("0" : GoInt64) : GoInt64);
			Go.cfor(_p < ("2":GoInt64), _p++, {
				Go.routine(() -> {
					var a = function(_p:GoInt64):Void {
						{
							var _i:GoInt64 = (("1" : GoInt64) : GoInt64);
							Go.cfor(_i < n, _i++, {
								if ((_i + _p) % ("2" : GoInt64) == (("0" : GoInt64))) {
									x._data1 = _i;
									x._data2 = (_i : GoFloat64);
									storeInt64(Go.pointer(x._signal), _i);
								} else {
									{
										var _w:GoInt = (1 : GoInt);
										Go.cfor(loadInt64(Go.pointer(x._signal)) != (_i), _w++, {
											if (_w % (1000 : GoInt) == ((0 : GoInt))) {
												stdgo.runtime.Runtime.gosched();
											};
										});
									};
									var _d1:GoInt64 = x._data1;
									var _d2:GoFloat64 = x._data2;
									if ((_d1 != _i) || (_d2 != (_i : GoFloat64))) {
										_t.errorf(Go.str("incorrect data: %d/%g (%d)"), Go.toInterface(_d1), Go.toInterface(_d2), Go.toInterface(_i));
										break;
									};
								};
							});
						};
						_c.__send__(true);
					};
					a(_p);
				});
			});
		};
		_c.__get__();
		_c.__get__();
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function _shouldPanic(_t:Ref<stdgo.testing.Testing.T>, _name:GoString, _f:() -> Void):Void {
	var __deferstack__:Array<Void->Void> = [];
	__deferstack__.unshift(() -> {
		var a = function():Void {
			stdgo.runtime.Runtime.gc();
			var _err:AnyInterface = ({
				final r = Go.recover_exception;
				Go.recover_exception = null;
				r;
			});
			var _want:GoString = Go.str("unaligned 64-bit atomic operation");
			if (_err == null) {
				_t.errorf(Go.str("%s did not panic"), Go.toInterface(_name));
			} else {
				var __tmp__ = try {
					{value: (Go.typeAssert((_err : GoString)) : GoString), ok: true};
				} catch (_) {
					{value: ("" : GoString), ok: false};
				}, _s = __tmp__.value, _0 = __tmp__.ok;
				if (_s != (_want)) {
					_t.errorf(Go.str("%s: wanted panic %q, got %q"), Go.toInterface(_name), Go.toInterface(_want), _err);
				};
			};
		};
		a();
	});
	try {
		_f();
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testUnaligned64(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (false) {
		_t.skip(Go.toInterface(Go.str("test only runs on 32-bit systems")));
	};
	var _x = new Slice<GoUInt32>((4 : GoInt).toBasic(), 0, ...[for (i in 0...(4 : GoInt).toBasic()) (0 : GoUInt32)]);
	var _p = ((Go.toInterface(Go.pointer(_x[(1 : GoInt)])) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType(stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind))) : Pointer<GoUInt64>);
	_shouldPanic(_t, Go.str("LoadUint64"), function():Void {
		loadUint64(_p);
	});
	_shouldPanic(_t, Go.str("LoadUint64Method"), function():Void {
		((Go.toInterface(_p) : stdgo.unsafe.Unsafe.UnsafePointer)
			.__convert__(stdgo.internal.reflect.Reflect.GoType.refType(stdgo.internal.reflect.Reflect.GoType.named("Uint64", [
			new stdgo.internal.reflect.Reflect.MethodType("add", {
				get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]},
					{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
			},
				{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
			new stdgo.internal.reflect.Reflect.MethodType("compareAndSwap", {get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [
				stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind),
				stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)
			]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
				{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
			new stdgo.internal.reflect.Reflect.MethodType("load",
				{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
					{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
				{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
			new stdgo.internal.reflect.Reflect.MethodType("store",
				{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]},
					{get: () -> []}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
				{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
			new stdgo.internal.reflect.Reflect.MethodType("swap",
				{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]},
					{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
				{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
		], stdgo.internal.reflect.Reflect.GoType.structType([
			{
				name: "_12",
				embedded: false,
				tag: "",
				type: stdgo.internal.reflect.Reflect.GoType.named("T_noCopy", [
					new stdgo.internal.reflect.Reflect.MethodType("lock", {
						get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
							{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
					},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
					new stdgo.internal.reflect.Reflect.MethodType("unlock",
						{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
							{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
				], stdgo.internal.reflect.Reflect.GoType.structType([])),
				optional: false
			},
			{
				name: "_13",
				embedded: false,
				tag: "",
				type: stdgo.internal.reflect.Reflect.GoType.named("T_align64", [], stdgo.internal.reflect.Reflect.GoType.structType([])),
				optional: false
			},
			{
				name: "_v",
				embedded: false,
				tag: "",
				type: stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind),
				optional: false
			}
			])))) : Ref<Uint64>).load();
	});
	_shouldPanic(_t, Go.str("StoreUint64"), function():Void {
		storeUint64(_p, ("1" : GoUInt64));
	});
	_shouldPanic(_t, Go.str("StoreUint64Method"), function():Void {
		((Go.toInterface(_p) : stdgo.unsafe.Unsafe.UnsafePointer)
			.__convert__(stdgo.internal.reflect.Reflect.GoType.refType(stdgo.internal.reflect.Reflect.GoType.named("Uint64", [
			new stdgo.internal.reflect.Reflect.MethodType("add", {
				get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]},
					{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
			},
				{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
			new stdgo.internal.reflect.Reflect.MethodType("compareAndSwap", {get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [
				stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind),
				stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)
			]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
				{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
			new stdgo.internal.reflect.Reflect.MethodType("load",
				{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
					{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
				{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
			new stdgo.internal.reflect.Reflect.MethodType("store",
				{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]},
					{get: () -> []}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
				{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
			new stdgo.internal.reflect.Reflect.MethodType("swap",
				{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]},
					{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
				{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
		], stdgo.internal.reflect.Reflect.GoType.structType([
			{
				name: "_18",
				embedded: false,
				tag: "",
				type: stdgo.internal.reflect.Reflect.GoType.named("T_noCopy", [
					new stdgo.internal.reflect.Reflect.MethodType("lock", {
						get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
							{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
					},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
					new stdgo.internal.reflect.Reflect.MethodType("unlock",
						{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
							{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
				], stdgo.internal.reflect.Reflect.GoType.structType([])),
				optional: false
			},
			{
				name: "_19",
				embedded: false,
				tag: "",
				type: stdgo.internal.reflect.Reflect.GoType.named("T_align64", [], stdgo.internal.reflect.Reflect.GoType.structType([])),
				optional: false
			},
			{
				name: "_v",
				embedded: false,
				tag: "",
				type: stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind),
				optional: false
			}
			])))) : Ref<Uint64>).store(("1" : GoUInt64));
	});
	_shouldPanic(_t, Go.str("CompareAndSwapUint64"), function():Void {
		compareAndSwapUint64(_p, ("1" : GoUInt64), ("2" : GoUInt64));
	});
	_shouldPanic(_t, Go.str("CompareAndSwapUint64Method"), function():Void {
		((Go.toInterface(_p) : stdgo.unsafe.Unsafe.UnsafePointer)
			.__convert__(stdgo.internal.reflect.Reflect.GoType.refType(stdgo.internal.reflect.Reflect.GoType.named("Uint64", [
			new stdgo.internal.reflect.Reflect.MethodType("add", {
				get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]},
					{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
			},
				{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
			new stdgo.internal.reflect.Reflect.MethodType("compareAndSwap", {get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [
				stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind),
				stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)
			]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
				{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
			new stdgo.internal.reflect.Reflect.MethodType("load",
				{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
					{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
				{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
			new stdgo.internal.reflect.Reflect.MethodType("store",
				{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]},
					{get: () -> []}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
				{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
			new stdgo.internal.reflect.Reflect.MethodType("swap",
				{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]},
					{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
				{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
		], stdgo.internal.reflect.Reflect.GoType.structType([
			{
				name: "_18",
				embedded: false,
				tag: "",
				type: stdgo.internal.reflect.Reflect.GoType.named("T_noCopy", [
					new stdgo.internal.reflect.Reflect.MethodType("lock", {
						get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
							{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
					},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
					new stdgo.internal.reflect.Reflect.MethodType("unlock",
						{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
							{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
				], stdgo.internal.reflect.Reflect.GoType.structType([])),
				optional: false
			},
			{
				name: "_19",
				embedded: false,
				tag: "",
				type: stdgo.internal.reflect.Reflect.GoType.named("T_align64", [], stdgo.internal.reflect.Reflect.GoType.structType([])),
				optional: false
			},
			{
				name: "_v",
				embedded: false,
				tag: "",
				type: stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind),
				optional: false
			}
			])))) : Ref<Uint64>).compareAndSwap(("1" : GoUInt64), ("2" : GoUInt64));
	});
	_shouldPanic(_t, Go.str("AddUint64"), function():Void {
		addUint64(_p, ("3" : GoUInt64));
	});
	_shouldPanic(_t, Go.str("AddUint64Method"), function():Void {
		((Go.toInterface(_p) : stdgo.unsafe.Unsafe.UnsafePointer)
			.__convert__(stdgo.internal.reflect.Reflect.GoType.refType(stdgo.internal.reflect.Reflect.GoType.named("Uint64", [
			new stdgo.internal.reflect.Reflect.MethodType("add", {
				get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]},
					{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
			},
				{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
			new stdgo.internal.reflect.Reflect.MethodType("compareAndSwap", {get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [
				stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind),
				stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)
			]},
				{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
				{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
			new stdgo.internal.reflect.Reflect.MethodType("load",
				{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
					{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
				{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
			new stdgo.internal.reflect.Reflect.MethodType("store",
				{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]},
					{get: () -> []}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
				{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
			new stdgo.internal.reflect.Reflect.MethodType("swap",
				{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]},
					{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind)]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
				{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
		], stdgo.internal.reflect.Reflect.GoType.structType([
			{
				name: "_18",
				embedded: false,
				tag: "",
				type: stdgo.internal.reflect.Reflect.GoType.named("T_noCopy", [
					new stdgo.internal.reflect.Reflect.MethodType("lock", {
						get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
							{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
					},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
					new stdgo.internal.reflect.Reflect.MethodType("unlock",
						{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
							{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
						{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
				], stdgo.internal.reflect.Reflect.GoType.structType([])),
				optional: false
			},
			{
				name: "_19",
				embedded: false,
				tag: "",
				type: stdgo.internal.reflect.Reflect.GoType.named("T_align64", [], stdgo.internal.reflect.Reflect.GoType.structType([])),
				optional: false
			},
			{
				name: "_v",
				embedded: false,
				tag: "",
				type: stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind),
				optional: false
			}
			])))) : Ref<Uint64>).add(("3" : GoUInt64));
	});
}

function testAutoAligned64(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _signed:T__struct_12 = ({_i: ({} : Int64_)} : T__struct_12);
	{
		var _o:GoUIntptr = stdgo.reflect.Reflect.typeOf(Go.toInterface((_signed : Ref<T__struct_12>)))
			.elem()
			.field((1 : GoInt))
			.offset;
		if (_o != ((8 : GoUIntptr))) {
			_t.fatalf(Go.str("Int64 offset = %d, want 8"), Go.toInterface(_o));
		};
	};
	{
		var _p:GoUIntptr = stdgo.reflect.Reflect.valueOf(Go.toInterface((_signed : Ref<T__struct_12>)))
			.elem()
			.field((1 : GoInt))
			.addr()
			.pointer();
		if (_p & (7 : GoUIntptr) != ((0 : GoUIntptr))) {
			_t.fatalf(Go.str("Int64 pointer = %#x, want 8-aligned"), Go.toInterface(_p));
		};
	};
	var _unsigned:T__struct_13 = ({_i: ({} : Uint64)} : T__struct_13);
	{
		var _o:GoUIntptr = stdgo.reflect.Reflect.typeOf(Go.toInterface((_unsigned : Ref<T__struct_13>)))
			.elem()
			.field((1 : GoInt))
			.offset;
		if (_o != ((8 : GoUIntptr))) {
			_t.fatalf(Go.str("Uint64 offset = %d, want 8"), Go.toInterface(_o));
		};
	};
	{
		var _p:GoUIntptr = stdgo.reflect.Reflect.valueOf(Go.toInterface((_unsigned : Ref<T__struct_13>)))
			.elem()
			.field((1 : GoInt))
			.addr()
			.pointer();
		if (_p & (7 : GoUIntptr) != ((0 : GoUIntptr))) {
			_t.fatalf(Go.str("Int64 pointer = %#x, want 8-aligned"), Go.toInterface(_p));
		};
	};
}

function testNilDeref(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _funcs = (new GoArray<() -> Void>(function():Void {
		compareAndSwapInt32((null : Pointer<GoInt32>), (0 : GoInt32), (0 : GoInt32));
	}, function():Void {
		(null : Ref<Int32>).compareAndSwap((0 : GoInt32), (0 : GoInt32));
	}, function():Void {
		compareAndSwapInt64((null : Pointer<GoInt64>), ("0" : GoInt64), ("0" : GoInt64));
	}, function():Void {
		(null : Ref<Int64_>).compareAndSwap(("0" : GoInt64), ("0" : GoInt64));
	}, function():Void {
		compareAndSwapUint32((null : Pointer<GoUInt32>), ("0" : GoUInt32), ("0" : GoUInt32));
	}, function():Void {
		(null : Ref<Uint32>).compareAndSwap(("0" : GoUInt32), ("0" : GoUInt32));
	}, function():Void {
		compareAndSwapUint64((null : Pointer<GoUInt64>), ("0" : GoUInt64), ("0" : GoUInt64));
	}, function():Void {
		(null : Ref<Uint64>).compareAndSwap(("0" : GoUInt64), ("0" : GoUInt64));
	}, function():Void {
		compareAndSwapUintptr((null : Pointer<GoUIntptr>), (0 : GoUIntptr), (0 : GoUIntptr));
	}, function():Void {
		(null : Ref<Uintptr>).compareAndSwap((0 : GoUIntptr), (0 : GoUIntptr));
	}, function():Void {
		compareAndSwapPointer((null : Pointer<stdgo.unsafe.Unsafe.UnsafePointer>), null, null);
	}, function():Void {
		#if !macro (null : Ref<Pointer_<GoByte>>).compareAndSwap((null : Pointer<GoUInt8>), (null : Pointer<GoUInt8>)) #else null #end;
	}, function():Void {
		swapInt32((null : Pointer<GoInt32>), (0 : GoInt32));
	}, function():Void {
		(null : Ref<Int32>).swap((0 : GoInt32));
	}, function():Void {
		swapUint32((null : Pointer<GoUInt32>), ("0" : GoUInt32));
	}, function():Void {
		(null : Ref<Uint32>).swap(("0" : GoUInt32));
	}, function():Void {
		swapInt64((null : Pointer<GoInt64>), ("0" : GoInt64));
	}, function():Void {
		(null : Ref<Int64_>).swap(("0" : GoInt64));
	}, function():Void {
		swapUint64((null : Pointer<GoUInt64>), ("0" : GoUInt64));
	}, function():Void {
		(null : Ref<Uint64>).swap(("0" : GoUInt64));
	}, function():Void {
		swapUintptr((null : Pointer<GoUIntptr>), (0 : GoUIntptr));
	}, function():Void {
		(null : Ref<Uintptr>).swap((0 : GoUIntptr));
	}, function():Void {
		swapPointer((null : Pointer<stdgo.unsafe.Unsafe.UnsafePointer>), null);
	}, function():Void {
		#if !macro (null : Ref<Pointer_<GoByte>>).swap((null : Pointer<GoUInt8>)) #else null #end;
	}, function():Void {
		addInt32((null : Pointer<GoInt32>), (0 : GoInt32));
	}, function():Void {
		(null : Ref<Int32>).add((0 : GoInt32));
	}, function():Void {
		addUint32((null : Pointer<GoUInt32>), ("0" : GoUInt32));
	}, function():Void {
		(null : Ref<Uint32>).add(("0" : GoUInt32));
	}, function():Void {
		addInt64((null : Pointer<GoInt64>), ("0" : GoInt64));
	}, function():Void {
		(null : Ref<Int64_>).add(("0" : GoInt64));
	}, function():Void {
		addUint64((null : Pointer<GoUInt64>), ("0" : GoUInt64));
	}, function():Void {
		(null : Ref<Uint64>).add(("0" : GoUInt64));
	}, function():Void {
		addUintptr((null : Pointer<GoUIntptr>), (0 : GoUIntptr));
	}, function():Void {
		(null : Ref<Uintptr>).add((0 : GoUIntptr));
	}, function():Void {
		loadInt32((null : Pointer<GoInt32>));
	}, function():Void {
		(null : Ref<Int32>).load();
	}, function():Void {
		loadInt64((null : Pointer<GoInt64>));
	}, function():Void {
		(null : Ref<Int64_>).load();
	}, function():Void {
		loadUint32((null : Pointer<GoUInt32>));
	}, function():Void {
		(null : Ref<Uint32>).load();
	}, function():Void {
		loadUint64((null : Pointer<GoUInt64>));
	}, function():Void {
		(null : Ref<Uint64>).load();
	}, function():Void {
		loadUintptr((null : Pointer<GoUIntptr>));
	}, function():Void {
		(null : Ref<Uintptr>).load();
	}, function():Void {
		loadPointer((null : Pointer<stdgo.unsafe.Unsafe.UnsafePointer>));
	}, function():Void {
		#if !macro (null : Ref<Pointer_<GoByte>>).load() #else null #end;
	}, function():Void {
		storeInt32((null : Pointer<GoInt32>), (0 : GoInt32));
	}, function():Void {
		(null : Ref<Int32>).store((0 : GoInt32));
	}, function():Void {
		storeInt64((null : Pointer<GoInt64>), ("0" : GoInt64));
	}, function():Void {
		(null : Ref<Int64_>).store(("0" : GoInt64));
	}, function():Void {
		storeUint32((null : Pointer<GoUInt32>), ("0" : GoUInt32));
	}, function():Void {
		(null : Ref<Uint32>).store(("0" : GoUInt32));
	}, function():Void {
		storeUint64((null : Pointer<GoUInt64>), ("0" : GoUInt64));
	}, function():Void {
		(null : Ref<Uint64>).store(("0" : GoUInt64));
	}, function():Void {
		storeUintptr((null : Pointer<GoUIntptr>), (0 : GoUIntptr));
	}, function():Void {
		(null : Ref<Uintptr>).store((0 : GoUIntptr));
	}, function():Void {
		storePointer((null : Pointer<stdgo.unsafe.Unsafe.UnsafePointer>), null);
	}, function():Void {
		#if !macro (null : Ref<Pointer_<GoByte>>).store((null : Pointer<GoUInt8>)) #else null #end;
	}) : GoArray<() -> Void>);
	for (_0 => _f in _funcs) {
		{
			var a = function():Void {
				var __deferstack__:Array<Void->Void> = [];
				__deferstack__.unshift(() -> {
					var a = function():Void {
						stdgo.runtime.Runtime.gc();
						({
							final r = Go.recover_exception;
							Go.recover_exception = null;
							r;
						});
					};
					a();
				});
				try {
					_f();
					for (defer in __deferstack__) {
						defer();
					};
					{
						for (defer in __deferstack__) {
							defer();
						};
						if (Go.recover_exception != null)
							throw Go.recover_exception;
						return;
					};
				} catch (__exception__) {
					if (!(__exception__.native is AnyInterfaceData))
						throw __exception__;
					Go.recover_exception = __exception__.native;
					for (defer in __deferstack__) {
						defer();
					};
					if (Go.recover_exception != null)
						throw Go.recover_exception;
					return;
				};
			};
			a();
		};
	};
}

function _loadConfig():GoMap<GoString, GoString> {
	return (new GoObjectMap<GoString, GoString>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({get: () ->
		stdgo.internal.reflect.Reflect.GoType.basic(string_kind)},
		{get: () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind)}))) : GoMap<GoString, GoString>);
}

function _requests():Chan<GoInt> {
	return new Chan<GoInt>(0, () -> (0 : GoInt));
}

/**
	// The following example shows how to use Value for periodic program config updates
	// and propagation of the changes to worker goroutines.
**/
function exampleValue_config():Void {
	var _config:Value = ({} : Value);
	_config.store(Go.toInterface(_loadConfig()));
	Go.routine(() -> {
		var a = function():Void {
			while (true) {
				stdgo.time.Time.sleep((("10000000000" : GoInt64) : stdgo.time.Time.Duration));
				_config.store(Go.toInterface(_loadConfig()));
			};
		};
		a();
	});
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (10:GoInt), _i++, {
			Go.routine(() -> {
				var a = function():Void {
					for (_r => _ in _requests()) {
						var _c:AnyInterface = _config.load();
						{
							_r;
							_c;
						};
					};
				};
				a();
			});
		});
	};
}

@:named typedef Map_exampleValue_readMostly_0 = GoMap<GoString, GoString>;

/**
	// The following example shows how to maintain a scalable frequently read,
	// but infrequently updated data structure using copy-on-write idiom.
**/
function exampleValue_readMostly():Void {
	{};
	var _m:Value = ({} : Value);
	_m.store(Go.toInterface((new GoObjectMap<GoString,
		GoString>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_test.Atomic_test.Map_exampleValue_readMostly_0",
			[], stdgo.internal.reflect.Reflect.GoType.mapType({
		get: () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind)
	},
		{get: () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind)})))) : stdgo.sync.atomic_test.Atomic_test.Map_exampleValue_readMostly_0)));
	var _mu:stdgo.sync.Sync.Mutex = ({} : stdgo.sync.Sync.Mutex);
	var _read:GoString->GoString = function(_key:GoString):GoString {
		var _val:GoString = ("" : GoString);
		var _m1:stdgo.sync.atomic_test.Atomic_test.Map_exampleValue_readMostly_0 = (Go.typeAssert((_m.load() : Map_exampleValue_readMostly_0)) : Map_exampleValue_readMostly_0);
		return _m1[_key];
	};
	var _insert:(GoString, GoString) -> Void = function(_key:GoString, _val:GoString):Void {
		var __deferstack__:Array<Void->Void> = [];
		_mu.lock();
		try {
			__deferstack__.unshift(() -> _mu.unlock());
			var _m1:stdgo.sync.atomic_test.Atomic_test.Map_exampleValue_readMostly_0 = (Go.typeAssert((_m.load() : Map_exampleValue_readMostly_0)) : Map_exampleValue_readMostly_0);
			var _m2:stdgo.sync.atomic_test.Atomic_test.Map_exampleValue_readMostly_0 = (new GoObjectMap<GoString,
				GoString>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_test.Atomic_test.Map_exampleValue_readMostly_0",
					[], stdgo.internal.reflect.Reflect.GoType.mapType({
				get: () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind)
			},
				{get: () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind)})))) : stdgo.sync.atomic_test.Atomic_test.Map_exampleValue_readMostly_0);
			for (_k => _v in _m1) {
				_m2[_k] = _v;
			};
			_m2[_key] = _val;
			_m.store(Go.toInterface(_m2));
			for (defer in __deferstack__) {
				defer();
			};
			{
				for (defer in __deferstack__) {
					defer();
				};
				if (Go.recover_exception != null)
					throw Go.recover_exception;
				return;
			};
		} catch (__exception__) {
			if (!(__exception__.native is AnyInterfaceData))
				throw __exception__;
			Go.recover_exception = __exception__.native;
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	};
	{
		_read;
		_insert;
	};
}

function testValue(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _v:Value = ({} : Value);
	if (_v.load() != null) {
		_t.fatal(Go.toInterface(Go.str("initial Value is not nil")));
	};
	_v.store(Go.toInterface((42 : GoInt)));
	var _x:AnyInterface = _v.load();
	{
		var __tmp__ = try {
			{value: (Go.typeAssert((_x : GoInt)) : GoInt), ok: true};
		} catch (_) {
			{value: (0 : GoInt), ok: false};
		}, _xx = __tmp__.value, _ok = __tmp__.ok;
		if (!_ok || (_xx != (42 : GoInt))) {
			_t.fatalf(Go.str("wrong value: got %+v, want 42"), _x);
		};
	};
	_v.store(Go.toInterface((84 : GoInt)));
	_x = _v.load();
	{
		var __tmp__ = try {
			{value: (Go.typeAssert((_x : GoInt)) : GoInt), ok: true};
		} catch (_) {
			{value: (0 : GoInt), ok: false};
		}, _xx = __tmp__.value, _ok = __tmp__.ok;
		if (!_ok || (_xx != (84 : GoInt))) {
			_t.fatalf(Go.str("wrong value: got %+v, want 84"), _x);
		};
	};
}

function testValueLarge(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _v:Value = ({} : Value);
	_v.store(Go.toInterface(Go.str("foo")));
	var _x:AnyInterface = _v.load();
	{
		var __tmp__ = try {
			{value: (Go.typeAssert((_x : GoString)) : GoString), ok: true};
		} catch (_) {
			{value: ("" : GoString), ok: false};
		}, _xx = __tmp__.value, _ok = __tmp__.ok;
		if (!_ok || (_xx != Go.str("foo"))) {
			_t.fatalf(Go.str("wrong value: got %+v, want foo"), _x);
		};
	};
	_v.store(Go.toInterface(Go.str("barbaz")));
	_x = _v.load();
	{
		var __tmp__ = try {
			{value: (Go.typeAssert((_x : GoString)) : GoString), ok: true};
		} catch (_) {
			{value: ("" : GoString), ok: false};
		}, _xx = __tmp__.value, _ok = __tmp__.ok;
		if (!_ok || (_xx != Go.str("barbaz"))) {
			_t.fatalf(Go.str("wrong value: got %+v, want barbaz"), _x);
		};
	};
}

function testValuePanic(_t:Ref<stdgo.testing.Testing.T>):Void {
	{};
	{};
	var _v:Value = ({} : Value);
	{
		var a = function():Void {
			var __deferstack__:Array<Void->Void> = [];
			__deferstack__.unshift(() -> {
				var a = function():Void {
					var _err:AnyInterface = ({
						final r = Go.recover_exception;
						Go.recover_exception = null;
						r;
					});
					if (Go.toInterface(_err) != (Go.toInterface(Go.str("sync/atomic: store of nil value into Value")))) {
						_t.fatalf(Go.str("inconsistent store panic: got \'%v\', want \'%v\'"), _err,
							Go.toInterface(Go.str("sync/atomic: store of nil value into Value")));
					};
				};
				a();
			});
			try {
				_v.store((null : AnyInterface));
				for (defer in __deferstack__) {
					defer();
				};
				{
					for (defer in __deferstack__) {
						defer();
					};
					if (Go.recover_exception != null)
						throw Go.recover_exception;
					return;
				};
			} catch (__exception__) {
				if (!(__exception__.native is AnyInterfaceData))
					throw __exception__;
				Go.recover_exception = __exception__.native;
				for (defer in __deferstack__) {
					defer();
				};
				if (Go.recover_exception != null)
					throw Go.recover_exception;
				return;
			};
		};
		a();
	};
	_v.store(Go.toInterface((42 : GoInt)));
	{
		var a = function():Void {
			var __deferstack__:Array<Void->Void> = [];
			__deferstack__.unshift(() -> {
				var a = function():Void {
					var _err:AnyInterface = ({
						final r = Go.recover_exception;
						Go.recover_exception = null;
						r;
					});
					if (Go.toInterface(_err) != (Go.toInterface(Go.str("sync/atomic: store of inconsistently typed value into Value")))) {
						_t.fatalf(Go.str("inconsistent store panic: got \'%v\', want \'%v\'"), _err,
							Go.toInterface(Go.str("sync/atomic: store of inconsistently typed value into Value")));
					};
				};
				a();
			});
			try {
				_v.store(Go.toInterface(Go.str("foo")));
				for (defer in __deferstack__) {
					defer();
				};
				{
					for (defer in __deferstack__) {
						defer();
					};
					if (Go.recover_exception != null)
						throw Go.recover_exception;
					return;
				};
			} catch (__exception__) {
				if (!(__exception__.native is AnyInterfaceData))
					throw __exception__;
				Go.recover_exception = __exception__.native;
				for (defer in __deferstack__) {
					defer();
				};
				if (Go.recover_exception != null)
					throw Go.recover_exception;
				return;
			};
		};
		a();
	};
	{
		var a = function():Void {
			var __deferstack__:Array<Void->Void> = [];
			__deferstack__.unshift(() -> {
				var a = function():Void {
					var _err:AnyInterface = ({
						final r = Go.recover_exception;
						Go.recover_exception = null;
						r;
					});
					if (Go.toInterface(_err) != (Go.toInterface(Go.str("sync/atomic: store of nil value into Value")))) {
						_t.fatalf(Go.str("inconsistent store panic: got \'%v\', want \'%v\'"), _err,
							Go.toInterface(Go.str("sync/atomic: store of nil value into Value")));
					};
				};
				a();
			});
			try {
				_v.store((null : AnyInterface));
				for (defer in __deferstack__) {
					defer();
				};
				{
					for (defer in __deferstack__) {
						defer();
					};
					if (Go.recover_exception != null)
						throw Go.recover_exception;
					return;
				};
			} catch (__exception__) {
				if (!(__exception__.native is AnyInterfaceData))
					throw __exception__;
				Go.recover_exception = __exception__.native;
				for (defer in __deferstack__) {
					defer();
				};
				if (Go.recover_exception != null)
					throw Go.recover_exception;
				return;
			};
		};
		a();
	};
}

function testValueConcurrent(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _tests = (new Slice<Slice<AnyInterface>>(0, 0,
		(new Slice<AnyInterface>(0, 0, Go.toInterface((0 : GoUInt16)), Go.toInterface((65535 : GoUInt16)), Go.toInterface((513 : GoUInt16)),
			Go.toInterface((1027 : GoUInt16))) : Slice<AnyInterface>),
		(new Slice<AnyInterface>(0, 0, Go.toInterface((("0" : GoUInt32) : GoUInt32)), Go.toInterface(("4294967295" : GoUInt32)),
			Go.toInterface((("131073" : GoUInt32) : GoUInt32)), Go.toInterface((("262147" : GoUInt32) : GoUInt32))) : Slice<AnyInterface>),
		(new Slice<AnyInterface>(0, 0, Go.toInterface((("0" : GoUInt64) : GoUInt64)), Go.toInterface(("18446744073709551615" : GoUInt64)),
			Go.toInterface((("8589934593" : GoUInt64) : GoUInt64)), Go.toInterface((("17179869187" : GoUInt64) : GoUInt64))) : Slice<AnyInterface>),
		(new Slice<AnyInterface>(0, 0, Go.toInterface(new GoComplex128(("0" : GoUInt64), ("0" : GoUInt64))),
			Go.toInterface(new GoComplex128(("1" : GoUInt64), ("2" : GoUInt64))), Go.toInterface(new GoComplex128(("3" : GoUInt64), ("4" : GoUInt64))),
			Go.toInterface(new GoComplex128(("5" : GoUInt64), ("6" : GoUInt64)))) : Slice<AnyInterface>)) : Slice<Slice<AnyInterface>>);
	var _p:GoInt = (4 : GoInt) * stdgo.runtime.Runtime.gomaxprocs((0 : GoInt));
	var n:GoInt = (100000 : GoInt);
	if (stdgo.testing.Testing.short()) {
		_p = _p / ((2 : GoInt));
		n = (1000 : GoInt);
	};
	for (_0 => _test in _tests) {
		var _v:Value = ({} : Value);
		var _done = new Chan<Bool>((_p : GoInt).toBasic(), () -> false);
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < _p, _i++, {
				Go.routine(() -> {
					var a = function():Void {
						var _r = stdgo.math.rand.Rand.new_(stdgo.math.rand.Rand.newSource(stdgo.math.rand.Rand.int63()));
						var _expected:Bool = true;
						@:label("loop") {
							var _j:GoInt = (0 : GoInt);
							Go.cfor(_j < n, _j++, {
								var _x:AnyInterface = _test[_r.intn((_test.length))];
								_v.store(_x);
								_x = _v.load();
								for (_0 => _x1 in _test) {
									if (Go.toInterface(_x) == (Go.toInterface(_x1))) {
										continue;
									};
								};
								_t.logf(Go.str("loaded unexpected value %+v, want %+v"), _x, Go.toInterface(_test));
								_expected = false;
								break;
							});
						};
						_done.__send__(_expected);
					};
					a();
				});
			});
		};
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < _p, _i++, {
				if (!_done.__get__()) {
					_t.failNow();
				};
			});
		};
	};
}

function benchmarkValueRead(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _v:Value = ({} : Value);
	_v.store(Go.toInterface(Go.pointer((0 : GoInt))));
	_b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
		while (_pb.next()) {
			var _x = (Go.typeAssert((_v.load() : Pointer<GoInt>)) : Pointer<GoInt>);
			if (_x.value != ((0 : GoInt))) {
				_b.fatalf(Go.str("wrong value: got %v, want 0"), Go.toInterface(_x.value));
			};
		};
	});
}

function testValue_Swap(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_i => _tt in value_SwapTests) {
		_t.run(stdgo.strconv.Strconv.itoa(_i), function(_t:Ref<stdgo.testing.Testing.T>):Void {
			var __deferstack__:Array<Void->Void> = [];
			var _v:Value = ({} : Value);
			try {
				if (_tt._init != null) {
					_v.store(_tt._init);
				};
				__deferstack__.unshift(() -> {
					var a = function():Void {
						var _err:AnyInterface = ({
							final r = Go.recover_exception;
							Go.recover_exception = null;
							r;
						});
						if ((_tt._err == null) && (_err != null)) {
							_t.errorf(Go.str("should not panic, got %v"), _err);
						} else if ((_tt._err != null) && (_err == null)) {
							_t.errorf(Go.str("should panic %v, got <nil>"), _tt._err);
						};
					};
					a();
				});
				{
					var _got:AnyInterface = _v.swap(_tt._new);
					if (Go.toInterface(_got) != (Go.toInterface(_tt._want))) {
						_t.errorf(Go.str("got %v, want %v"), _got, _tt._want);
					};
				};
				{
					var _got:AnyInterface = _v.load();
					if (Go.toInterface(_got) != (Go.toInterface(_tt._new))) {
						_t.errorf(Go.str("got %v, want %v"), _got, _tt._new);
					};
				};
				for (defer in __deferstack__) {
					defer();
				};
				{
					for (defer in __deferstack__) {
						defer();
					};
					if (Go.recover_exception != null)
						throw Go.recover_exception;
					return;
				};
			} catch (__exception__) {
				if (!(__exception__.native is AnyInterfaceData))
					throw __exception__;
				Go.recover_exception = __exception__.native;
				for (defer in __deferstack__) {
					defer();
				};
				if (Go.recover_exception != null)
					throw Go.recover_exception;
				return;
			};
		});
	};
}

function testValueSwapConcurrent(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _v:Value = ({} : Value);
	var _count:GoUInt64 = (0 : GoUInt64);
	var _g:stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
	var _0:GoUInt64 = ("10000" : GoUInt64),
		_1:GoUInt64 = ("10000" : GoUInt64),
		_n:GoUInt64 = _1,
		_m:GoUInt64 = _0;
	if (stdgo.testing.Testing.short()) {
		_m = ("1000" : GoUInt64);
		_n = ("1000" : GoUInt64);
	};
	{
		var _i:GoUInt64 = (("0" : GoUInt64) : GoUInt64);
		Go.cfor(_i < (_m * _n), _i = _i + (_n), {
			var _i:GoUInt64 = _i;
			_g.add((1 : GoInt));
			Go.routine(() -> {
				var a = function():Void {
					var _c:GoUInt64 = (0 : GoUInt64);
					{
						var _new:GoUInt64 = _i;
						Go.cfor(_new < (_i + _n), _new++, {
							{
								var _old:AnyInterface = _v.swap(Go.toInterface(_new));
								if (_old != null) {
									_c = _c + ((Go.typeAssert((_old : GoUInt64)) : GoUInt64));
								};
							};
						});
					};
					stdgo.sync.atomic.Atomic.addUint64(Go.pointer(_count), _c);
					_g.done();
				};
				a();
			});
		});
	};
	_g.wait_();
	{
		var _0:GoUInt64 = (((_m * _n) - (("1" : GoUInt64) : GoUInt64)) * (_m * _n)) / ("2" : GoUInt64),
			_1:GoUInt64 = _count + (Go.typeAssert((_v.load() : GoUInt64)) : GoUInt64),
			_got:GoUInt64 = _1,
			_want:GoUInt64 = _0;
		if (_got != (_want)) {
			_t.errorf(Go.str("sum from 0 to %d was %d, want %v"), Go.toInterface((_m * _n) - ("1" : GoUInt64)), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
}

function testValue_CompareAndSwap(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_i => _tt in value_CompareAndSwapTests) {
		_t.run(stdgo.strconv.Strconv.itoa(_i), function(_t:Ref<stdgo.testing.Testing.T>):Void {
			var __deferstack__:Array<Void->Void> = [];
			var _v:Value = ({} : Value);
			try {
				if (_tt._init != null) {
					_v.store(_tt._init);
				};
				__deferstack__.unshift(() -> {
					var a = function():Void {
						var _err:AnyInterface = ({
							final r = Go.recover_exception;
							Go.recover_exception = null;
							r;
						});
						if ((_tt._err == null) && (_err != null)) {
							_t.errorf(Go.str("got %v, wanted no panic"), _err);
						} else if ((_tt._err != null) && (_err == null)) {
							_t.errorf(Go.str("did not panic, want %v"), _tt._err);
						};
					};
					a();
				});
				{
					var _got:Bool = _v.compareAndSwap(_tt._old, _tt._new);
					if (_got != (_tt._want)) {
						_t.errorf(Go.str("got %v, want %v"), Go.toInterface(_got), Go.toInterface(_tt._want));
					};
				};
				for (defer in __deferstack__) {
					defer();
				};
				{
					for (defer in __deferstack__) {
						defer();
					};
					if (Go.recover_exception != null)
						throw Go.recover_exception;
					return;
				};
			} catch (__exception__) {
				if (!(__exception__.native is AnyInterfaceData))
					throw __exception__;
				Go.recover_exception = __exception__.native;
				for (defer in __deferstack__) {
					defer();
				};
				if (Go.recover_exception != null)
					throw Go.recover_exception;
				return;
			};
		});
	};
}

function testValueCompareAndSwapConcurrent(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _v:Value = ({} : Value);
	var _w:stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
	_v.store(Go.toInterface((0 : GoInt)));
	var _0:GoInt = (1000 : GoInt),
		_1:GoInt = (100 : GoInt),
		_n:GoInt = _1,
		_m:GoInt = _0;
	if (stdgo.testing.Testing.short()) {
		_m = (100 : GoInt);
		_n = (100 : GoInt);
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _m, _i++, {
			var _i:GoInt = _i;
			_w.add((1 : GoInt));
			Go.routine(() -> {
				var a = function():Void {
					{
						var _j:GoInt = _i;
						Go.cfor(_j < (_m * _n), stdgo.runtime.Runtime.gosched(), {
							if (_v.compareAndSwap(Go.toInterface(_j), Go.toInterface(_j + (1 : GoInt)))) {
								_j = _j + (_m);
							};
						});
					};
					_w.done();
				};
				a();
			});
		});
	};
	_w.wait_();
	{
		var _stop:GoInt = (Go.typeAssert((_v.load() : GoInt)) : GoInt);
		if (_stop != (_m * _n)) {
			_t.errorf(Go.str("did not get to %v, stopped at %v"), Go.toInterface(_m * _n), Go.toInterface(_stop));
		};
	};
}

@:keep var _ = {
	try {
		var _v:GoUInt64 = ("1125899906842624" : GoUInt64);
		if ((_v : GoUIntptr) != ((0 : GoUIntptr))) {
			if (_hammer32 != null)
				_hammer32.__remove__(Go.str("SwapUintptr"));
			if (_hammer32 != null)
				_hammer32.__remove__(Go.str("AddUintptr"));
			if (_hammer32 != null)
				_hammer32.__remove__(Go.str("CompareAndSwapUintptr"));
			if (_hammer32 != null)
				_hammer32.__remove__(Go.str("SwapUintptrMethod"));
			if (_hammer32 != null)
				_hammer32.__remove__(Go.str("AddUintptrMethod"));
			if (_hammer32 != null)
				_hammer32.__remove__(Go.str("CompareAndSwapUintptrMethod"));
		};
		var _v:GoUInt64 = ("1125899906842624" : GoUInt64);
		if ((_v : GoUIntptr) == ((0 : GoUIntptr))) {
			if (_hammer64 != null)
				_hammer64.__remove__(Go.str("SwapUintptr"));
			if (_hammer64 != null)
				_hammer64.__remove__(Go.str("SwapUintptrMethod"));
			if (_hammer64 != null)
				_hammer64.__remove__(Go.str("AddUintptr"));
			if (_hammer64 != null)
				_hammer64.__remove__(Go.str("AddUintptrMethod"));
			if (_hammer64 != null)
				_hammer64.__remove__(Go.str("CompareAndSwapUintptr"));
			if (_hammer64 != null)
				_hammer64.__remove__(Go.str("CompareAndSwapUintptrMethod"));
		};
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};

class T__struct_15_asInterface {
	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T__struct_15>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sync.atomic_test.Atomic_test.T__struct_15_asInterface) class T__struct_15_static_extension {}
