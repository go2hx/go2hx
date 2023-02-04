package stdgo.internal.fmtsort_test;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

private var _chans:Slice<Chan<GoInt>> = _makeChans();

private var _compareTests:Slice<Slice<stdgo.reflect.Reflect.Value>> = (new Slice<Slice<stdgo.reflect.Reflect.Value>>(0, 0,
	_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface((0 : GoInt))), Go.toInterface((-1 : GoInt)), Go.toInterface((0 : GoInt)), Go.toInterface((1 : GoInt))),
	_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface((0 : GoInt8))), Go.toInterface((-1 : GoInt)), Go.toInterface((0 : GoInt)), Go.toInterface((1 : GoInt))),
	_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface((0 : GoInt16))), Go.toInterface((-1 : GoInt)), Go.toInterface((0 : GoInt)), Go.toInterface((1 : GoInt))),
	_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface((0 : GoInt32))), Go.toInterface((-1 : GoInt)), Go.toInterface((0 : GoInt)), Go.toInterface((1 : GoInt))),
	_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface((("0" : GoInt64) : GoInt64))), Go.toInterface((-1 : GoInt)), Go.toInterface((0 : GoInt)),
		Go.toInterface((1 : GoInt))),
	_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface((("0" : GoUInt) : GoUInt))), Go.toInterface((0 : GoInt)), Go.toInterface((1 : GoInt)),
		Go.toInterface((5 : GoInt))),
	_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface((0 : GoUInt8))), Go.toInterface((0 : GoInt)), Go.toInterface((1 : GoInt)), Go.toInterface((5 : GoInt))),
	_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface((0 : GoUInt16))), Go.toInterface((0 : GoInt)), Go.toInterface((1 : GoInt)), Go.toInterface((5 : GoInt))),
	_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface((("0" : GoUInt32) : GoUInt32))), Go.toInterface((0 : GoInt)), Go.toInterface((1 : GoInt)),
		Go.toInterface((5 : GoInt))),
	_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface((("0" : GoUInt64) : GoUInt64))), Go.toInterface((0 : GoInt)), Go.toInterface((1 : GoInt)),
		Go.toInterface((5 : GoInt))),
	_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface((0 : GoUIntptr))), Go.toInterface((0 : GoInt)), Go.toInterface((1 : GoInt)), Go.toInterface((5 : GoInt))),
	_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface((Go.str() : GoString))), Go.toInterface(Go.str()), Go.toInterface(("a" : GoString)),
		Go.toInterface(("ab" : GoString))),
	_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface(((0 : GoFloat64) : GoFloat32))), Go.toInterface(stdgo.math.Math.naN()),
		Go.toInterface(stdgo.math.Math.inf((-1 : GoInt))), Go.toInterface((-1e+10 : GoFloat64)), Go.toInterface((0 : GoInt)),
		Go.toInterface((1e+10 : GoFloat64)), Go.toInterface(stdgo.math.Math.inf((1 : GoInt)))),
	_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface((0 : GoFloat64))), Go.toInterface(stdgo.math.Math.naN()),
		Go.toInterface(stdgo.math.Math.inf((-1 : GoInt))), Go.toInterface((-1e+10 : GoFloat64)), Go.toInterface((0 : GoInt)),
		Go.toInterface((1e+10 : GoFloat64)), Go.toInterface(stdgo.math.Math.inf((1 : GoInt)))),
	_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface(((0 : GoFloat64) + new GoComplex128(0, 1) : GoComplex64))),
		Go.toInterface(((-1 : GoFloat64) + new GoComplex128(0, -1))), Go.toInterface(((-1 : GoFloat64) + new GoComplex128(0, 0))),
		Go.toInterface(((-1 : GoFloat64) + new GoComplex128(0, 1))), Go.toInterface(((0 : GoFloat64) + new GoComplex128(0, -1))),
		Go.toInterface(((0 : GoFloat64) + new GoComplex128(0, 0))), Go.toInterface(((0 : GoFloat64) + new GoComplex128(0, 1))),
		Go.toInterface(((1 : GoFloat64) + new GoComplex128(0, -1))), Go.toInterface(((1 : GoFloat64) + new GoComplex128(0, 0))),
		Go.toInterface(((1 : GoFloat64) + new GoComplex128(0, 1)))),
	_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface(((0 : GoFloat64) + new GoComplex128(0, 1) : GoComplex128))),
		Go.toInterface(((-1 : GoFloat64) + new GoComplex128(0, -1))), Go.toInterface(((-1 : GoFloat64) + new GoComplex128(0, 0))),
		Go.toInterface(((-1 : GoFloat64) + new GoComplex128(0, 1))), Go.toInterface(((0 : GoFloat64) + new GoComplex128(0, -1))),
		Go.toInterface(((0 : GoFloat64) + new GoComplex128(0, 0))), Go.toInterface(((0 : GoFloat64) + new GoComplex128(0, 1))),
		Go.toInterface(((1 : GoFloat64) + new GoComplex128(0, -1))), Go.toInterface(((1 : GoFloat64) + new GoComplex128(0, 0))),
		Go.toInterface(((1 : GoFloat64) + new GoComplex128(0, 1)))),
	_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface(false)), Go.toInterface(false), Go.toInterface(true)),
	_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface(Go.pointer(_ints[(0 : GoInt)]))), Go.toInterface(Go.pointer(_ints[(0 : GoInt)])),
		Go.toInterface(Go.pointer(_ints[(1 : GoInt)])), Go.toInterface(Go.pointer(_ints[(2 : GoInt)]))),
	_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface((Go.toInterface(Go.pointer(_ints[(0 : GoInt)])) : stdgo.unsafe.Unsafe.UnsafePointer))),
		Go.toInterface((Go.toInterface(Go.pointer(_ints[(0 : GoInt)])) : stdgo.unsafe.Unsafe.UnsafePointer)),
		Go.toInterface((Go.toInterface(Go.pointer(_ints[(1 : GoInt)])) : stdgo.unsafe.Unsafe.UnsafePointer)),
		Go.toInterface((Go.toInterface(Go.pointer(_ints[(2 : GoInt)])) : stdgo.unsafe.Unsafe.UnsafePointer))),
	_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface(_chans[(0 : GoInt)])), Go.toInterface(_chans[(0 : GoInt)]), Go.toInterface(_chans[(1 : GoInt)]),
		Go.toInterface(_chans[(2 : GoInt)])),
	_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface((new T_toy() : T_toy))), Go.toInterface((new T_toy((0 : GoInt), (1 : GoInt)) : T_toy)),
		Go.toInterface((new T_toy((0 : GoInt), (2 : GoInt)) : T_toy)), Go.toInterface((new T_toy((1 : GoInt), (-1 : GoInt)) : T_toy)),
		Go.toInterface((new T_toy((1 : GoInt), (1 : GoInt)) : T_toy))),
	_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface((new GoArray<GoInt>(...([].concat([for (i in 0...2) (0 : GoInt)]))) : GoArray<GoInt>))),
		Go.toInterface((new GoArray<GoInt>((1 : GoInt), (1 : GoInt)) : GoArray<GoInt>)),
		Go.toInterface((new GoArray<GoInt>((1 : GoInt), (2 : GoInt)) : GoArray<GoInt>)),
		Go.toInterface((new GoArray<GoInt>((2 : GoInt), (0 : GoInt)) : GoArray<GoInt>))),
	_ct(stdgo.reflect.Reflect.typeOf(Go.toInterface(Go.toInterface((0 : GoInt)))), _iFace, Go.toInterface((1 : GoInt)), Go.toInterface((2 : GoInt)),
		Go.toInterface((3 : GoInt)))) : Slice<Slice<stdgo.reflect.Reflect.Value>>);

private var _sortTests:Slice<stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest> = (new Slice<stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest>(0, 0,
	(new stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest(Go.toInterface(({
		final x = new stdgo.GoMap.GoObjectMap<GoInt,
			GoString>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({get: () ->
				stdgo.internal.reflect.Reflect.GoType.basic(int_kind)}, {get: () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind)})));
		@:privateAccess x._keys = [(7 : GoInt), (-3 : GoInt)];
		@:privateAccess x._values = [("bar" : GoString), ("foo" : GoString)];
		x;
	} : stdgo.GoMap<GoInt, GoString>)),
		("-3:foo 7:bar" : GoString)) : stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest),
	(new stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest(Go.toInterface(({
		final x = new stdgo.GoMap.GoObjectMap<GoUInt8,
			GoString>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({get: () ->
				stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind)}, {get: () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind)})));
		@:privateAccess x._keys = [(7 : GoUInt8), (3 : GoUInt8)];
		@:privateAccess x._values = [("bar" : GoString), ("foo" : GoString)];
		x;
	} : stdgo.GoMap<GoUInt8, GoString>)),
		("3:foo 7:bar" : GoString)) : stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest),
	(new stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest(Go.toInterface(({
		final x = new stdgo.GoMap.GoObjectMap<GoString,
			GoString>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({get: () ->
				stdgo.internal.reflect.Reflect.GoType.basic(string_kind)}, {get: () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind)})));
		@:privateAccess x._keys = [("7" : GoString), ("3" : GoString)];
		@:privateAccess x._values = [("bar" : GoString), ("foo" : GoString)];
		x;
	} : stdgo.GoMap<GoString, GoString>)),
		("3:foo 7:bar" : GoString)) : stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest),
	(new stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest(Go.toInterface(({
		final x = new stdgo.GoMap.GoObjectMap<GoFloat64,
			GoString>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({get: () ->
				stdgo.internal.reflect.Reflect.GoType.basic(float64_kind)}, {get: () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind)})));
		@:privateAccess x._keys = [
			(7 : GoFloat64),
			(-3 : GoFloat64),
			stdgo.math.Math.naN(),
			stdgo.math.Math.inf((0 : GoInt))
		];
		@:privateAccess x._values = [("bar" : GoString), ("foo" : GoString), ("nan" : GoString), ("inf" : GoString)];
		x;
	} : stdgo.GoMap<GoFloat64, GoString>)),
		("NaN:nan -3:foo 7:bar +Inf:inf" : GoString)) : stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest),
	(new stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest(Go.toInterface(({
		final x = new stdgo.GoMap.GoObjectMap<GoComplex128,
			GoString>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({get: () ->
				stdgo.internal.reflect.Reflect.GoType.basic(complex128_kind)},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind)})));
		@:privateAccess x._keys = [
			((7 : GoFloat64) + new GoComplex128(0, 2)),
			((7 : GoFloat64) + new GoComplex128(0, 1)),
			((-3 : GoFloat64) + new GoComplex128(0, 0)),
			new GoComplex128(stdgo.math.Math.naN(), (0 : GoFloat64)),
			new GoComplex128(stdgo.math.Math.inf((0 : GoInt)), (0 : GoFloat64))
		];
		@:privateAccess x._values = [
			("bar2" : GoString),
			("bar" : GoString),
			("foo" : GoString),
			("nan" : GoString),
			("inf" : GoString)
		];
		x;
	} : stdgo.GoMap<GoComplex128, GoString>)),
		("(NaN+0i):nan (-3+0i):foo (7+1i):bar (7+2i):bar2 (+Inf+0i):inf" : GoString)) : stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest),
	(new stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest(Go.toInterface(({
		final x = new stdgo.GoMap.GoObjectMap<Bool,
			GoString>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({get: () ->
				stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)}, {get: () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind)})));
		@:privateAccess x._keys = [true, false];
		@:privateAccess x._values = [("true" : GoString), ("false" : GoString)];
		x;
	} : stdgo.GoMap<Bool, GoString>)),
		("false:false true:true" : GoString)) : stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest),
	(new stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest(Go.toInterface(_chanMap()),
		("CHAN0:0 CHAN1:1 CHAN2:2" : GoString)) : stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest),
	(new stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest(Go.toInterface(_pointerMap()),
		("PTR0:0 PTR1:1 PTR2:2" : GoString)) : stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest),
	(new stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest(Go.toInterface(_unsafePointerMap()),
		("UNSAFEPTR0:0 UNSAFEPTR1:1 UNSAFEPTR2:2" : GoString)) : stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest),
	(new stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest(Go.toInterface(({
		final x = new stdgo.GoMap.GoObjectMap<stdgo.internal.fmtsort_test.Fmtsort_test.T_toy,
			GoString>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({
			get: () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.fmtsort_test.Fmtsort_test.T_toy", [], null, false, {get: () -> null})
		}, {get: () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind)})));
		@:privateAccess x._keys = [
			(@:invalid_compositelit_null null == null ? null : @:invalid_compositelit_null null.__copy__()),
			(@:invalid_compositelit_null null == null ? null : @:invalid_compositelit_null null.__copy__()),
			(@:invalid_compositelit_null null == null ? null : @:invalid_compositelit_null null.__copy__())
		];
		@:privateAccess x._values = [("72" : GoString), ("71" : GoString), ("34" : GoString)];
		x;
	} : stdgo.GoMap<stdgo.internal.fmtsort_test.Fmtsort_test.T_toy, GoString>)),
		("{3 4}:34 {7 1}:71 {7 2}:72" : GoString)) : stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest),
	(new stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest(Go.toInterface(({
		final x = new stdgo.GoMap.GoObjectMap<GoArray<GoInt>,
			GoString>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({get: () ->
				stdgo.internal.reflect.Reflect.GoType.arrayType({get: () -> stdgo.internal.reflect.Reflect.GoType.basic(int_kind)}, 2)},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind)})));
		@:privateAccess x._keys = [
			(@:invalid_compositelit_null null == null ? null : @:invalid_compositelit_null null.__copy__()),
			(@:invalid_compositelit_null null == null ? null : @:invalid_compositelit_null null.__copy__()),
			(@:invalid_compositelit_null null == null ? null : @:invalid_compositelit_null null.__copy__())
		];
		@:privateAccess x._values = [("72" : GoString), ("71" : GoString), ("34" : GoString)];
		x;
	} : stdgo.GoMap<GoArray<GoInt>, GoString>)),
		("[3 4]:34 [7 1]:71 [7 2]:72" : GoString)) : stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest)) : Slice<stdgo.internal.fmtsort_test.Fmtsort_test.T_sortTest>);

private var _iFace:AnyInterface = (null : AnyInterface);
private var _ints:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0...3) (0 : GoInt)]);

@:structInit private class T_sortTest {
	public var _data:AnyInterface = (null : AnyInterface);
	public var _print:GoString = "";

	public function new(?_data:AnyInterface, ?_print:GoString) {
		if (_data != null)
			this._data = _data;
		if (_print != null)
			this._print = _print;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_sortTest(_data, _print);
	}
}

@:structInit private class T_toy {
	public var a:GoInt = 0;
	public var _b:GoInt = 0;

	public function new(?a:GoInt, ?_b:GoInt) {
		if (a != null)
			this.a = a;
		if (_b != null)
			this._b = _b;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_toy(a, _b);
	}
}

class T__struct_0_asInterface {
	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T__struct_0>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.internal.fmtsort_test.Fmtsort_test.T__struct_0_asInterface) class T__struct_0_static_extension {}

@:local @:using(stdgo.internal.fmtsort_test.Fmtsort_test.T__struct_0_static_extension) private typedef T__struct_0 = {
	public var _x:GoInt;
	public var _y:GoInt;
};

private function _ct(_typ:stdgo.reflect.Reflect.Type, _args:haxe.Rest<AnyInterface>):Slice<stdgo.reflect.Reflect.Value> {
	var _args = new Slice<AnyInterface>(0, 0, ..._args);
	var _value = new Slice<stdgo.reflect.Reflect.Value>((_args.length : GoInt).toBasic(), 0, ...[
		for (i in 0...(_args.length : GoInt).toBasic()) ({} : stdgo.reflect.Reflect.Value)
	]);
	for (_i => _v in _args) {
		var _x:stdgo.reflect.Reflect.Value = (stdgo.reflect.Reflect.valueOf(_v) == null ? null : stdgo.reflect.Reflect.valueOf(_v).__copy__());
		if (!_x.isValid()) {
			_x = (stdgo.reflect.Reflect.zero(_typ) == null ? null : stdgo.reflect.Reflect.zero(_typ).__copy__());
		} else {
			_x = (_x.convert(_typ) == null ? null : _x.convert(_typ).__copy__());
		};
		_value[(_i : GoInt)] = (_x == null ? null : _x.__copy__());
	};
	return _value;
}

function testCompare(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _test in _compareTests) {
		for (_i => _v0 in _test) {
			for (_j => _v1 in _test) {
				var _c:GoInt = stdgo.internal.fmtsort.Fmtsort.compare((_v0 == null ? null : _v0.__copy__()), (_v1 == null ? null : _v1.__copy__()));
				var _expect:GoInt = (0 : GoInt);
				if (_i == (_j)) {
					_expect = (0 : GoInt);
					{
						var _typ:stdgo.reflect.Reflect.Type = _v0.type();
						if (((_typ.kind() == (("13" : GoUInt) : stdgo.reflect.Reflect.Kind))
							|| (_typ.kind() == (("14" : GoUInt) : stdgo.reflect.Reflect.Kind)))
							&& stdgo.math.Math.isNaN(_v0.float_())) {
							_expect = (-1 : GoInt);
						};
					};
				} else if (_i < _j) {
					_expect = (-1 : GoInt);
				} else if (_i > _j) {
					_expect = (1 : GoInt);
				};
				if (_c != (_expect)) {
					_t.errorf(("%s: compare(%v,%v)=%d; expect %d" : GoString), Go.toInterface(_v0.type()), Go.toInterface(Go.asInterface(_v0)),
						Go.toInterface(Go.asInterface(_v1)), Go.toInterface(_c), Go.toInterface(_expect));
				};
			};
		};
	};
}

private function _sprint(_data:AnyInterface):GoString {
	var _om = stdgo.internal.fmtsort.Fmtsort.sort((stdgo.reflect.Reflect.valueOf(_data) == null ? null : stdgo.reflect.Reflect.valueOf(_data).__copy__()));
	if (_om == null) {
		return ("nil" : GoString);
	};
	var _b = ({} : stdgo.strings.Strings.Builder);
	for (_i => _key in _om.key) {
		if (_i > (0 : GoInt)) {
			_b.writeRune((32 : GoInt32));
		};
		_b.writeString(_sprintKey((_key == null ? null : _key.__copy__())));
		_b.writeRune((58 : GoInt32));
		_b.writeString(stdgo.fmt.Fmt.sprint(Go.toInterface(Go.asInterface(_om.value[(_i : GoInt)]))));
	};
	return (_b.string() : GoString);
}

/**
	// sprintKey formats a reflect.Value but gives reproducible values for some
	// problematic types such as pointers. Note that it only does special handling
	// for the troublesome types used in the test cases; it is not a general
	// printer.
**/
private function _sprintKey(_key:stdgo.reflect.Reflect.Value):GoString {
	{
		var _str:GoString = (_key.type().string() : GoString);
		if (_str == (("*int" : GoString))) {
			var _ptr = (Go.typeAssert((_key.interface_() : Pointer<GoInt>)) : Pointer<GoInt>);
			for (_i in 0..._ints.length.toBasic()) {
				if (_ptr == (Go.pointer(_ints[(_i : GoInt)]))) {
					return stdgo.fmt.Fmt.sprintf(("PTR%d" : GoString), Go.toInterface(_i));
				};
			};
			return ("PTR???" : GoString);
		} else if (_str == (("unsafe.Pointer" : GoString))) {
			var _ptr:stdgo.unsafe.Unsafe.UnsafePointer = (Go.typeAssert((_key.interface_() : stdgo.unsafe.Unsafe.UnsafePointer)) : stdgo.unsafe.Unsafe.UnsafePointer);
			for (_i in 0..._ints.length.toBasic()) {
				if (_ptr == ((Go.toInterface(Go.pointer(_ints[(_i : GoInt)])) : stdgo.unsafe.Unsafe.UnsafePointer))) {
					return stdgo.fmt.Fmt.sprintf(("UNSAFEPTR%d" : GoString), Go.toInterface(_i));
				};
			};
			return ("UNSAFEPTR???" : GoString);
		} else if (_str == (("chan int" : GoString))) {
			var _c = (Go.typeAssert((_key.interface_() : Chan<GoInt>)) : Chan<GoInt>);
			for (_i in 0..._chans.length.toBasic()) {
				if (_c == (_chans[(_i : GoInt)])) {
					return stdgo.fmt.Fmt.sprintf(("CHAN%d" : GoString), Go.toInterface(_i));
				};
			};
			return ("CHAN???" : GoString);
		} else {
			return stdgo.fmt.Fmt.sprint(Go.toInterface(Go.asInterface(_key)));
		};
	};
}

private function _makeChans():Slice<Chan<GoInt>> {
	var _cs = (new Slice<Chan<GoInt>>(0, 0, new Chan<GoInt>(0, () -> (0 : GoInt)), new Chan<GoInt>(0, () -> (0 : GoInt)),
		new Chan<GoInt>(0, () -> (0 : GoInt))) : Slice<Chan<GoInt>>);
	stdgo.sort.Sort.slice(Go.toInterface(_cs), function(_i:GoInt, _j:GoInt):Bool {
		return (stdgo.reflect.Reflect.valueOf(Go.toInterface(_cs[(_i : GoInt)]))
			.unsafePointer()
			.__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : GoUIntptr) < (stdgo.reflect.Reflect.valueOf(Go.toInterface(_cs[(_j : GoInt)]))
				.unsafePointer()
				.__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : GoUIntptr);
	});
	return _cs;
}

private function _pointerMap():GoMap<Pointer<GoInt>, GoString> {
	var _m = (new GoObjectMap<Pointer<GoInt>, GoString>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({get: () ->
		stdgo.internal.reflect.Reflect.GoType.pointerType(stdgo.internal.reflect.Reflect.GoType.basic(int_kind))},
		{get: () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind)}))) : GoMap<Pointer<GoInt>, GoString>);
	{
		var _i:GoInt = (2 : GoInt);
		Go.cfor(_i >= (0 : GoInt), _i--, {
			_m[Go.pointer(_ints[(_i : GoInt)])] = stdgo.fmt.Fmt.sprint(Go.toInterface(_i));
		});
	};
	return _m;
}

private function _unsafePointerMap():GoMap<stdgo.unsafe.Unsafe.UnsafePointer, GoString> {
	var _m = (new GoObjectMap<stdgo.unsafe.Unsafe.UnsafePointer,
		GoString>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({
		get: () -> stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)
	},
		{get: () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind)}))) : GoMap<stdgo.unsafe.Unsafe.UnsafePointer, GoString>);
	{
		var _i:GoInt = (2 : GoInt);
		Go.cfor(_i >= (0 : GoInt), _i--, {
			_m[
				(Go.toInterface(Go.pointer(_ints[(_i : GoInt)])) : stdgo.unsafe.Unsafe.UnsafePointer)
			] = stdgo.fmt.Fmt.sprint(Go.toInterface(_i));
		});
	};
	return _m;
}

private function _chanMap():GoMap<Chan<GoInt>, GoString> {
	var _m = (new GoObjectMap<Chan<GoInt>, GoString>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({get: () ->
		stdgo.internal.reflect.Reflect.GoType.chanType(undefined, {get: () -> stdgo.internal.reflect.Reflect.GoType.basic(int_kind)})},
		{get: () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind)}))) : GoMap<Chan<GoInt>, GoString>);
	{
		var _i:GoInt = (2 : GoInt);
		Go.cfor(_i >= (0 : GoInt), _i--, {
			_m[_chans[(_i : GoInt)]] = stdgo.fmt.Fmt.sprint(Go.toInterface(_i));
		});
	};
	return _m;
}

function testOrder(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _test in _sortTests) {
		var _got:GoString = _sprint(_test._data);
		if (_got != (_test._print)) {
			_t.errorf(("%s: got %q, want %q" : GoString), Go.toInterface(stdgo.reflect.Reflect.typeOf(_test._data)), Go.toInterface(_got),
				Go.toInterface(_test._print));
		};
	};
}

function testInterface(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _m = ({
		final x = new stdgo.GoMap.GoObjectMap<AnyInterface,
			GoString>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({get: () ->
				stdgo.internal.reflect.Reflect.GoType.interfaceType(true, [])},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind)})));
		@:privateAccess x._keys = [
			Go.toInterface((new GoArray<GoInt>((1 : GoInt), (0 : GoInt)) : GoArray<GoInt>)),
			Go.toInterface((new GoArray<GoInt>((0 : GoInt), (1 : GoInt)) : GoArray<GoInt>)),
			Go.toInterface(true),
			Go.toInterface(false),
			Go.toInterface((3.1 : GoFloat64)),
			Go.toInterface((2.1 : GoFloat64)),
			Go.toInterface((1.1 : GoFloat64)),
			Go.toInterface(stdgo.math.Math.naN()),
			Go.toInterface((3 : GoInt)),
			Go.toInterface((2 : GoInt)),
			Go.toInterface((1 : GoInt)),
			Go.toInterface(("c" : GoString)),
			Go.toInterface(("b" : GoString)),
			Go.toInterface(("a" : GoString)),
			Go.toInterface(Go.asInterface(({
				_x: (1 : GoInt),
				_y: (0 : GoInt)
			} : T__struct_0))),
			Go.toInterface(Go.asInterface(({_x: (0 : GoInt), _y: (1 : GoInt)} : T__struct_0)))
		];
		@:privateAccess x._values = [
			Go.str(), Go.str(), Go.str(), Go.str(), Go.str(), Go.str(), Go.str(), Go.str(), Go.str(), Go.str(), Go.str(), Go.str(), Go.str(), Go.str(),
			Go.str(), Go.str()];
		x;
	} : stdgo.GoMap<AnyInterface, GoString>);
	var _got:GoString = _sprint(Go.toInterface(_m));
	var _typeGroups = (new Slice<GoString>(0, 0, ("NaN: 1.1: 2.1: 3.1:" : GoString), ("false: true:" : GoString), ("1: 2: 3:" : GoString),
		("a: b: c:" : GoString), ("[0 1]: [1 0]:" : GoString), ("{0 1}: {1 0}:" : GoString)) : Slice<GoString>);
	for (_0 => _g in _typeGroups) {
		if (!stdgo.strings.Strings.contains(_got, _g)) {
			_t.errorf(("sorted map should contain %q" : GoString), Go.toInterface(_g));
		};
	};
}
