package stdgo.syscall.js_test;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

private var _dummys:Value = stdgo.syscall.js.Js.global()
	.call(Go.str("eval"),
		Go.toInterface(Go.str("({\n\tsomeBool: true,\n\tsomeString: \"abc\\u1234\",\n\tsomeInt: 42,\n\tsomeFloat: 42.123,\n\tsomeArray: [41, 42, 43],\n\tsomeDate: new Date(),\n\tadd: function(a, b) {\n\t\treturn a + b;\n\t},\n\tzero: 0,\n\tstringZero: \"0\",\n\tNaN: NaN,\n\temptyObj: {},\n\temptyArray: [],\n\tInfinity: Infinity,\n\tNegInfinity: -Infinity,\n\tobjNumber0: new Number(0),\n\tobjBooleanFalse: new Boolean(false),\n})")));

private var _copyTests:Slice<T__struct_1> = (new Slice<T__struct_1>(0, 0, ({_srcLen: (5 : GoInt), _dstLen: (3 : GoInt), _copyLen: (3 : GoInt)} : T__struct_1),
	({_srcLen: (3 : GoInt), _dstLen: (5 : GoInt), _copyLen: (3 : GoInt)} : T__struct_1),
	({_srcLen: (0 : GoInt), _dstLen: (0 : GoInt), _copyLen: (0 : GoInt)} : T__struct_1)) : Slice<T__struct_1>);

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

@:keep @:allow(stdgo.syscall.js_test.Js_test.T__struct_0_asInterface) class T__struct_0_static_extension {}
@:local @:using(stdgo.syscall.js_test.Js_test.T__struct_0_static_extension) private typedef T__struct_0 = {};

class T__struct_1_asInterface {
	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T__struct_1>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.syscall.js_test.Js_test.T__struct_1_asInterface) class T__struct_1_static_extension {}

@:local @:using(stdgo.syscall.js_test.Js_test.T__struct_1_static_extension) private typedef T__struct_1 = {
	public var _srcLen:GoInt;
	public var _dstLen:GoInt;
	public var _copyLen:GoInt;
};

@:follow private typedef T_object = GoMap<GoString, AnyInterface>;
@:follow private typedef T_array = Slice<AnyInterface>;

function testBool(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _want:Bool = true;
	var _o:Value = (_dummys.get(Go.str("someBool")) == null ? null : _dummys.get(Go.str("someBool")).__copy__());
	{
		var _got:Bool = _o.bool_();
		if (_got != (_want)) {
			_t.errorf(Go.str("got %#v, want %#v"), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	_dummys.set(Go.str("otherBool"), Go.toInterface(_want));
	{
		var _got:Bool = _dummys.get(Go.str("otherBool")).bool_();
		if (_got != (_want)) {
			_t.errorf(Go.str("got %#v, want %#v"), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	if (!_dummys.get(Go.str("someBool")).equal((_dummys.get(Go.str("someBool")) == null ? null : _dummys.get(Go.str("someBool")).__copy__()))) {
		_t.errorf(Go.str("same value not equal"));
	};
}

function testString(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _want:GoString = Go.str("abcሴ");
	var _o:Value = (_dummys.get(Go.str("someString")) == null ? null : _dummys.get(Go.str("someString")).__copy__());
	{
		var _got:GoString = (_o.string() : GoString);
		if (_got != (_want)) {
			_t.errorf(Go.str("got %#v, want %#v"), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	_dummys.set(Go.str("otherString"), Go.toInterface(_want));
	{
		var _got:GoString = (_dummys.get(Go.str("otherString")).string() : GoString);
		if (_got != (_want)) {
			_t.errorf(Go.str("got %#v, want %#v"), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	if (!_dummys.get(Go.str("someString")).equal((_dummys.get(Go.str("someString")) == null ? null : _dummys.get(Go.str("someString")).__copy__()))) {
		_t.errorf(Go.str("same value not equal"));
	};
	{
		var _0:GoString = (stdgo.syscall.js.Js.undefined().string() : GoString),
			_1:GoString = Go.str("<undefined>"),
			_want:GoString = _1,
			_got:GoString = _0;
		if (_got != (_want)) {
			_t.errorf(Go.str("got %#v, want %#v"), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	{
		var _0:GoString = (stdgo.syscall.js.Js.null_().string() : GoString),
			_1:GoString = Go.str("<null>"),
			_want:GoString = _1,
			_got:GoString = _0;
		if (_got != (_want)) {
			_t.errorf(Go.str("got %#v, want %#v"), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	{
		var _0:GoString = (stdgo.syscall.js.Js.valueOf(Go.toInterface(true)).string() : GoString),
			_1:GoString = Go.str("<boolean: true>"),
			_want:GoString = _1,
			_got:GoString = _0;
		if (_got != (_want)) {
			_t.errorf(Go.str("got %#v, want %#v"), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	{
		var _0:GoString = (stdgo.syscall.js.Js.valueOf(Go.toInterface((42.5 : GoFloat64))).string() : GoString),
			_1:GoString = Go.str("<number: 42.5>"),
			_want:GoString = _1,
			_got:GoString = _0;
		if (_got != (_want)) {
			_t.errorf(Go.str("got %#v, want %#v"), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	{
		var _0:GoString = (stdgo.syscall.js.Js.global().call(Go.str("Symbol")).string() : GoString),
			_1:GoString = Go.str("<symbol>"),
			_want:GoString = _1,
			_got:GoString = _0;
		if (_got != (_want)) {
			_t.errorf(Go.str("got %#v, want %#v"), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	{
		var _0:GoString = (stdgo.syscall.js.Js.global().string() : GoString),
			_1:GoString = Go.str("<object>"),
			_want:GoString = _1,
			_got:GoString = _0;
		if (_got != (_want)) {
			_t.errorf(Go.str("got %#v, want %#v"), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	{
		var _0:GoString = (stdgo.syscall.js.Js.global().get(Go.str("setTimeout")).string() : GoString),
			_1:GoString = Go.str("<function>"),
			_want:GoString = _1,
			_got:GoString = _0;
		if (_got != (_want)) {
			_t.errorf(Go.str("got %#v, want %#v"), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
}

function testInt(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _want:GoInt = (42 : GoInt);
	var _o:Value = (_dummys.get(Go.str("someInt")) == null ? null : _dummys.get(Go.str("someInt")).__copy__());
	{
		var _got:GoInt = _o.int_();
		if (_got != (_want)) {
			_t.errorf(Go.str("got %#v, want %#v"), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	_dummys.set(Go.str("otherInt"), Go.toInterface(_want));
	{
		var _got:GoInt = _dummys.get(Go.str("otherInt")).int_();
		if (_got != (_want)) {
			_t.errorf(Go.str("got %#v, want %#v"), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	if (!_dummys.get(Go.str("someInt")).equal((_dummys.get(Go.str("someInt")) == null ? null : _dummys.get(Go.str("someInt")).__copy__()))) {
		_t.errorf(Go.str("same value not equal"));
	};
	{
		var _got:GoInt = _dummys.get(Go.str("zero")).int_();
		if (_got != ((0 : GoInt))) {
			_t.errorf(Go.str("got %#v, want %#v"), Go.toInterface(_got), Go.toInterface((0 : GoInt)));
		};
	};
}

function testIntConversion(_t:Ref<stdgo.testing.Testing.T>):Void {
	_testIntConversion(_t, (0 : GoInt));
	_testIntConversion(_t, (1 : GoInt));
	_testIntConversion(_t, (-1 : GoInt));
	_testIntConversion(_t, (1048576 : GoInt));
	_testIntConversion(_t, (-1048576 : GoInt));
	_testIntConversion(_t, ("1099511627776" : GoUInt64));
	_testIntConversion(_t, ("0" : GoUInt64));
	_testIntConversion(_t, ("1152921504606846976" : GoUInt64));
	_testIntConversion(_t, ("0" : GoUInt64));
}

function _testIntConversion(_t:Ref<stdgo.testing.Testing.T>, _want:GoInt):Void {
	{
		var _got:GoInt = stdgo.syscall.js.Js.valueOf(Go.toInterface(_want)).int_();
		if (_got != (_want)) {
			_t.errorf(Go.str("got %#v, want %#v"), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
}

function testFloat(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _want:GoFloat64 = (42.123 : GoFloat64);
	var _o:Value = (_dummys.get(Go.str("someFloat")) == null ? null : _dummys.get(Go.str("someFloat")).__copy__());
	{
		var _got:GoFloat64 = _o.float_();
		if (_got != (_want)) {
			_t.errorf(Go.str("got %#v, want %#v"), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	_dummys.set(Go.str("otherFloat"), Go.toInterface(_want));
	{
		var _got:GoFloat64 = _dummys.get(Go.str("otherFloat")).float_();
		if (_got != (_want)) {
			_t.errorf(Go.str("got %#v, want %#v"), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	if (!_dummys.get(Go.str("someFloat")).equal((_dummys.get(Go.str("someFloat")) == null ? null : _dummys.get(Go.str("someFloat")).__copy__()))) {
		_t.errorf(Go.str("same value not equal"));
	};
}

function testObject(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (!_dummys.get(Go.str("someArray")).equal((_dummys.get(Go.str("someArray")) == null ? null : _dummys.get(Go.str("someArray")).__copy__()))) {
		_t.errorf(Go.str("same value not equal"));
	};
	var _proto:Value = (stdgo.syscall.js.Js.global()
		.get(Go.str("Object"))
		.get(Go.str("prototype")) == null ? null : stdgo.syscall.js.Js.global()
		.get(Go.str("Object"))
		.get(Go.str("prototype"))
		.__copy__());
	var _o:Value = (stdgo.syscall.js.Js.global()
		.call(Go.str("eval"), Go.toInterface(Go.str("new Object()"))) == null ? null : stdgo.syscall.js.Js.global()
		.call(Go.str("eval"), Go.toInterface(Go.str("new Object()")))
		.__copy__());
	if (_proto.equal((_o == null ? null : _o.__copy__()))) {
		_t.errorf(Go.str("object equals to its prototype"));
	};
}

function testFrozenObject(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _o:Value = (stdgo.syscall.js.Js.global()
		.call(Go.str("eval"),
			Go.toInterface(Go.str("(function () { let o = new Object(); o.field = 5; Object.freeze(o); return o; })()"))) == null ? null : stdgo.syscall.js.Js.global()
		.call(Go.str("eval"), Go.toInterface(Go.str("(function () { let o = new Object(); o.field = 5; Object.freeze(o); return o; })()")))
		.__copy__());
	var _want:GoInt = (5 : GoInt);
	{
		var _got:GoInt = _o.get(Go.str("field")).int_();
		if (_want != (_got)) {
			_t.errorf(Go.str("got %#v, want %#v"), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
}

function testEqual(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (!_dummys.get(Go.str("someFloat")).equal((_dummys.get(Go.str("someFloat")) == null ? null : _dummys.get(Go.str("someFloat")).__copy__()))) {
		_t.errorf(Go.str("same float is not equal"));
	};
	if (!_dummys.get(Go.str("emptyObj")).equal((_dummys.get(Go.str("emptyObj")) == null ? null : _dummys.get(Go.str("emptyObj")).__copy__()))) {
		_t.errorf(Go.str("same object is not equal"));
	};
	if (_dummys.get(Go.str("someFloat")).equal((_dummys.get(Go.str("someInt")) == null ? null : _dummys.get(Go.str("someInt")).__copy__()))) {
		_t.errorf(Go.str("different values are not unequal"));
	};
}

function testNaN(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (!_dummys.get(Go.str("NaN")).isNaN()) {
		_t.errorf(Go.str("JS NaN is not NaN"));
	};
	if (!stdgo.syscall.js.Js.valueOf(Go.toInterface(stdgo.math.Math.naN())).isNaN()) {
		_t.errorf(Go.str("Go NaN is not NaN"));
	};
	if (_dummys.get(Go.str("NaN")).equal((_dummys.get(Go.str("NaN")) == null ? null : _dummys.get(Go.str("NaN")).__copy__()))) {
		_t.errorf(Go.str("NaN is equal to NaN"));
	};
}

function testUndefined(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (!stdgo.syscall.js.Js.undefined().isUndefined()) {
		_t.errorf(Go.str("undefined is not undefined"));
	};
	if (!stdgo.syscall.js.Js.undefined().equal((stdgo.syscall.js.Js.undefined() == null ? null : stdgo.syscall.js.Js.undefined().__copy__()))) {
		_t.errorf(Go.str("undefined is not equal to undefined"));
	};
	if (_dummys.isUndefined()) {
		_t.errorf(Go.str("object is undefined"));
	};
	if (stdgo.syscall.js.Js.undefined().isNull()) {
		_t.errorf(Go.str("undefined is null"));
	};
	{
		_dummys.set(Go.str("test"), Go.toInterface(Go.asInterface(stdgo.syscall.js.Js.undefined())));
		if (!_dummys.get(Go.str("test")).isUndefined()) {
			_t.errorf(Go.str("could not set undefined"));
		};
	};
}

function testNull(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (!stdgo.syscall.js.Js.null_().isNull()) {
		_t.errorf(Go.str("null is not null"));
	};
	if (!stdgo.syscall.js.Js.null_().equal((stdgo.syscall.js.Js.null_() == null ? null : stdgo.syscall.js.Js.null_().__copy__()))) {
		_t.errorf(Go.str("null is not equal to null"));
	};
	if (_dummys.isNull()) {
		_t.errorf(Go.str("object is null"));
	};
	if (stdgo.syscall.js.Js.null_().isUndefined()) {
		_t.errorf(Go.str("null is undefined"));
	};
	{
		_dummys.set(Go.str("test"), Go.toInterface(Go.asInterface(stdgo.syscall.js.Js.null_())));
		if (!_dummys.get(Go.str("test")).isNull()) {
			_t.errorf(Go.str("could not set null"));
		};
	};
	{
		_dummys.set(Go.str("test"), (null : AnyInterface));
		if (!_dummys.get(Go.str("test")).isNull()) {
			_t.errorf(Go.str("could not set nil"));
		};
	};
}

function testLength(_t:Ref<stdgo.testing.Testing.T>):Void {
	{
		var _got:GoInt = _dummys.get(Go.str("someArray")).length_();
		if (_got != ((3 : GoInt))) {
			_t.errorf(Go.str("got %#v, want %#v"), Go.toInterface(_got), Go.toInterface((3 : GoInt)));
		};
	};
}

function testGet(_t:Ref<stdgo.testing.Testing.T>):Void {
	_expectValueError(_t, function():Void {
		_dummys.get(Go.str("zero")).get(Go.str("badField"));
	});
}

function testSet(_t:Ref<stdgo.testing.Testing.T>):Void {
	_expectValueError(_t, function():Void {
		_dummys.get(Go.str("zero")).set(Go.str("badField"), Go.toInterface((42 : GoInt)));
	});
}

function testDelete(_t:Ref<stdgo.testing.Testing.T>):Void {
	_dummys.set(Go.str("test"), Go.toInterface((42 : GoInt)));
	_dummys.delete(Go.str("test"));
	if (_dummys.call(Go.str("hasOwnProperty"), Go.toInterface(Go.str("test"))).bool_()) {
		_t.errorf(Go.str("property still exists"));
	};
	_expectValueError(_t, function():Void {
		_dummys.get(Go.str("zero")).delete(Go.str("badField"));
	});
}

function testIndex(_t:Ref<stdgo.testing.Testing.T>):Void {
	{
		var _got:GoInt = _dummys.get(Go.str("someArray")).index((1 : GoInt)).int_();
		if (_got != ((42 : GoInt))) {
			_t.errorf(Go.str("got %#v, want %#v"), Go.toInterface(_got), Go.toInterface((42 : GoInt)));
		};
	};
	_expectValueError(_t, function():Void {
		_dummys.get(Go.str("zero")).index((1 : GoInt));
	});
}

function testSetIndex(_t:Ref<stdgo.testing.Testing.T>):Void {
	_dummys.get(Go.str("someArray")).setIndex((2 : GoInt), Go.toInterface((99 : GoInt)));
	{
		var _got:GoInt = _dummys.get(Go.str("someArray")).index((2 : GoInt)).int_();
		if (_got != ((99 : GoInt))) {
			_t.errorf(Go.str("got %#v, want %#v"), Go.toInterface(_got), Go.toInterface((99 : GoInt)));
		};
	};
	_expectValueError(_t, function():Void {
		_dummys.get(Go.str("zero")).setIndex((2 : GoInt), Go.toInterface((99 : GoInt)));
	});
}

function testCall(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _i:GoInt64 = ("40" : GoInt64);
	{
		var _got:GoInt = _dummys.call(Go.str("add"), Go.toInterface(_i), Go.toInterface((2 : GoInt))).int_();
		if (_got != ((42 : GoInt))) {
			_t.errorf(Go.str("got %#v, want %#v"), Go.toInterface(_got), Go.toInterface((42 : GoInt)));
		};
	};
	{
		var _got:GoInt = _dummys.call(Go.str("add"),
			Go.toInterface(Go.asInterface(stdgo.syscall.js.Js.global().call(Go.str("eval"), Go.toInterface(Go.str("40"))))), Go.toInterface((2 : GoInt)))
			.int_();
		if (_got != ((42 : GoInt))) {
			_t.errorf(Go.str("got %#v, want %#v"), Go.toInterface(_got), Go.toInterface((42 : GoInt)));
		};
	};
	_expectPanic(_t, function():Void {
		_dummys.call(Go.str("zero"));
	});
	_expectValueError(_t, function():Void {
		_dummys.get(Go.str("zero")).call(Go.str("badMethod"));
	});
}

function testInvoke(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _i:GoInt64 = ("40" : GoInt64);
	{
		var _got:GoInt = _dummys.get(Go.str("add")).invoke(Go.toInterface(_i), Go.toInterface((2 : GoInt))).int_();
		if (_got != ((42 : GoInt))) {
			_t.errorf(Go.str("got %#v, want %#v"), Go.toInterface(_got), Go.toInterface((42 : GoInt)));
		};
	};
	_expectValueError(_t, function():Void {
		_dummys.get(Go.str("zero")).invoke();
	});
}

function testNew(_t:Ref<stdgo.testing.Testing.T>):Void {
	{
		var _got:GoInt = stdgo.syscall.js.Js.global().get(Go.str("Array")).new_(Go.toInterface((42 : GoInt))).length_();
		if (_got != ((42 : GoInt))) {
			_t.errorf(Go.str("got %#v, want %#v"), Go.toInterface(_got), Go.toInterface((42 : GoInt)));
		};
	};
	_expectValueError(_t, function():Void {
		_dummys.get(Go.str("zero")).new_();
	});
}

function testInstanceOf(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _someArray:Value = (stdgo.syscall.js.Js.global()
		.get(Go.str("Array"))
		.new_() == null ? null : stdgo.syscall.js.Js.global()
		.get(Go.str("Array"))
		.new_()
		.__copy__());
	{
		var _0:Bool = _someArray.instanceOf((stdgo.syscall.js.Js.global()
			.get(Go.str("Array")) == null ? null : stdgo.syscall.js.Js.global()
			.get(Go.str("Array"))
			.__copy__())),
			_1:Bool = true,
			_want:Bool = _1,
			_got:Bool = _0;
		if (_got != (_want)) {
			_t.errorf(Go.str("got %#v, want %#v"), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	{
		var _0:Bool = _someArray.instanceOf((stdgo.syscall.js.Js.global()
			.get(Go.str("Function")) == null ? null : stdgo.syscall.js.Js.global()
			.get(Go.str("Function"))
			.__copy__())),
			_1:Bool = false,
			_want:Bool = _1,
			_got:Bool = _0;
		if (_got != (_want)) {
			_t.errorf(Go.str("got %#v, want %#v"), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
}

function testType(_t:Ref<stdgo.testing.Testing.T>):Void {
	{
		var _0:Type = stdgo.syscall.js.Js.undefined().type(),
			_1:Type = (0 : Type),
			_want:Type = _1,
			_got:Type = _0;
		if (_got != (_want)) {
			_t.errorf(Go.str("got %s, want %s"), Go.toInterface(Go.asInterface(_got)), Go.toInterface(Go.asInterface(_want)));
		};
	};
	{
		var _0:Type = stdgo.syscall.js.Js.null_().type(),
			_1:Type = (1 : Type),
			_want:Type = _1,
			_got:Type = _0;
		if (_got != (_want)) {
			_t.errorf(Go.str("got %s, want %s"), Go.toInterface(Go.asInterface(_got)), Go.toInterface(Go.asInterface(_want)));
		};
	};
	{
		var _0:Type = stdgo.syscall.js.Js.valueOf(Go.toInterface(true)).type(),
			_1:Type = (2 : Type),
			_want:Type = _1,
			_got:Type = _0;
		if (_got != (_want)) {
			_t.errorf(Go.str("got %s, want %s"), Go.toInterface(Go.asInterface(_got)), Go.toInterface(Go.asInterface(_want)));
		};
	};
	{
		var _0:Type = stdgo.syscall.js.Js.valueOf(Go.toInterface((0 : GoInt))).type(),
			_1:Type = (3 : Type),
			_want:Type = _1,
			_got:Type = _0;
		if (_got != (_want)) {
			_t.errorf(Go.str("got %s, want %s"), Go.toInterface(Go.asInterface(_got)), Go.toInterface(Go.asInterface(_want)));
		};
	};
	{
		var _0:Type = stdgo.syscall.js.Js.valueOf(Go.toInterface((42 : GoInt))).type(),
			_1:Type = (3 : Type),
			_want:Type = _1,
			_got:Type = _0;
		if (_got != (_want)) {
			_t.errorf(Go.str("got %s, want %s"), Go.toInterface(Go.asInterface(_got)), Go.toInterface(Go.asInterface(_want)));
		};
	};
	{
		var _0:Type = stdgo.syscall.js.Js.valueOf(Go.toInterface(Go.str("test"))).type(),
			_1:Type = (4 : Type),
			_want:Type = _1,
			_got:Type = _0;
		if (_got != (_want)) {
			_t.errorf(Go.str("got %s, want %s"), Go.toInterface(Go.asInterface(_got)), Go.toInterface(Go.asInterface(_want)));
		};
	};
	{
		var _0:Type = stdgo.syscall.js.Js.global().get(Go.str("Symbol")).invoke(Go.toInterface(Go.str("test"))).type(),
			_1:Type = (5 : Type),
			_want:Type = _1,
			_got:Type = _0;
		if (_got != (_want)) {
			_t.errorf(Go.str("got %s, want %s"), Go.toInterface(Go.asInterface(_got)), Go.toInterface(Go.asInterface(_want)));
		};
	};
	{
		var _0:Type = stdgo.syscall.js.Js.global().get(Go.str("Array")).new_().type(),
			_1:Type = (6 : Type),
			_want:Type = _1,
			_got:Type = _0;
		if (_got != (_want)) {
			_t.errorf(Go.str("got %s, want %s"), Go.toInterface(Go.asInterface(_got)), Go.toInterface(Go.asInterface(_want)));
		};
	};
	{
		var _0:Type = stdgo.syscall.js.Js.global().get(Go.str("Array")).type(),
			_1:Type = (7 : Type),
			_want:Type = _1,
			_got:Type = _0;
		if (_got != (_want)) {
			_t.errorf(Go.str("got %s, want %s"), Go.toInterface(Go.asInterface(_got)), Go.toInterface(Go.asInterface(_want)));
		};
	};
}

function testValueOf(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _a:Value = (stdgo.syscall.js.Js.valueOf(Go.toInterface((new Slice<AnyInterface>(0, 0, Go.toInterface((0 : GoInt)),
		Go.toInterface((new Slice<AnyInterface>(0, 0, Go.toInterface((0 : GoInt)), Go.toInterface((42 : GoInt)),
			Go.toInterface((0 : GoInt))) : Slice<AnyInterface>)),
		Go.toInterface((0 : GoInt))) : Slice<AnyInterface>))) == null ? null : stdgo.syscall.js.Js.valueOf(Go.toInterface((new Slice<AnyInterface>(0, 0,
			Go.toInterface((0 : GoInt)),
			Go.toInterface((new Slice<AnyInterface>(0, 0, Go.toInterface((0 : GoInt)), Go.toInterface((42 : GoInt)),
				Go.toInterface((0 : GoInt))) : Slice<AnyInterface>)),
			Go.toInterface((0 : GoInt))) : Slice<AnyInterface>)))
		.__copy__());
	{
		var _got:GoInt = _a.index((1 : GoInt)).index((1 : GoInt)).int_();
		if (_got != ((42 : GoInt))) {
			_t.errorf(Go.str("got %v, want %v"), Go.toInterface(_got), Go.toInterface((42 : GoInt)));
		};
	};
	var _o:Value = (stdgo.syscall.js.Js.valueOf(Go.toInterface(({
		final x = new stdgo.GoMap.GoObjectMap<GoString,
			AnyInterface>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({get: () ->
				stdgo.internal.reflect.Reflect.GoType.basic(string_kind)},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.interfaceType(true, [])})));
		@:privateAccess x._keys = [Go.str("x")];
		@:privateAccess x._values = [
			Go.toInterface(({
				final x = new stdgo.GoMap.GoObjectMap<GoString,
					AnyInterface>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({
					get: () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind)
				}, {get: () -> stdgo.internal.reflect.Reflect.GoType.interfaceType(true, [])})));
				@:privateAccess x._keys = [Go.str("y")];
				@:privateAccess x._values = [Go.toInterface((42 : GoInt))];
				x;
			} : stdgo.GoMap<GoString, AnyInterface>))
		];
		x;
	} : stdgo.GoMap<GoString, AnyInterface>))) == null ? null : stdgo.syscall.js.Js.valueOf(Go.toInterface(({
		final x = new stdgo.GoMap.GoObjectMap<GoString,
			AnyInterface>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({get: () ->
				stdgo.internal.reflect.Reflect.GoType.basic(string_kind)},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.interfaceType(true, [])})));
		@:privateAccess x._keys = [Go.str("x")];
		@:privateAccess x._values = [
			Go.toInterface(({
				final x = new stdgo.GoMap.GoObjectMap<GoString,
					AnyInterface>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({
					get: () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind)
				}, {get: () -> stdgo.internal.reflect.Reflect.GoType.interfaceType(true, [])})));
				@:privateAccess x._keys = [Go.str("y")];
				@:privateAccess x._values = [Go.toInterface((42 : GoInt))];
				x;
			} : stdgo.GoMap<GoString, AnyInterface>))
		];
		x;
		} : stdgo.GoMap<GoString, AnyInterface>))).__copy__());
	{
		var _got:GoInt = _o.get(Go.str("x")).get(Go.str("y")).int_();
		if (_got != ((42 : GoInt))) {
			_t.errorf(Go.str("got %v, want %v"), Go.toInterface(_got), Go.toInterface((42 : GoInt)));
		};
	};
}

function testZeroValue(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _v:Value = ({} : Value);
	if (!_v.isUndefined()) {
		_t.error(Go.toInterface(Go.str("zero js.Value is not js.Undefined()")));
	};
}

function testFuncOf(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var _c = new Chan<T__struct_0>(0, () -> ({} : T__struct_0));
	try {
		var _cb:Func = (stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
			{
				var _got:GoInt = _args[(0 : GoInt)].int_();
				if (_got != ((42 : GoInt))) {
					_t.errorf(Go.str("got %#v, want %#v"), Go.toInterface(_got), Go.toInterface((42 : GoInt)));
				};
			};
			_c.__send__(({} : T__struct_0));
			return (null : AnyInterface);
		}) == null ? null : stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
			{
				var _got:GoInt = _args[(0 : GoInt)].int_();
				if (_got != ((42 : GoInt))) {
					_t.errorf(Go.str("got %#v, want %#v"), Go.toInterface(_got), Go.toInterface((42 : GoInt)));
				};
			};
			_c.__send__(({} : T__struct_0));
			return (null : AnyInterface);
		}).__copy__());
		__deferstack__.unshift(() -> _cb.release());
		stdgo.syscall.js.Js.global()
			.call(Go.str("setTimeout"), Go.toInterface(Go.asInterface(_cb)), Go.toInterface((0 : GoInt)), Go.toInterface((42 : GoInt)));
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

function testInvokeFunction(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var _called:Bool = false;
	try {
		var _cb:Func = (stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
			var __deferstack__:Array<Void->Void> = [];
			var _cb2:Func = (stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
				_called = true;
				return Go.toInterface((42 : GoInt));
			}) == null ? null : stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
				_called = true;
				return Go.toInterface((42 : GoInt));
			}).__copy__());
			__deferstack__.unshift(() -> _cb2.release());
			try {
				{
					for (defer in __deferstack__) {
						defer();
					};
					return Go.toInterface(Go.asInterface(_cb2.invoke()));
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
					return (null : AnyInterface);
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
				return (null : AnyInterface);
			};
		}) == null ? null : stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
			var __deferstack__:Array<Void->Void> = [];
			var _cb2:Func = (stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
				_called = true;
				return Go.toInterface((42 : GoInt));
			}) == null ? null : stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
				_called = true;
				return Go.toInterface((42 : GoInt));
			}).__copy__());
			__deferstack__.unshift(() -> _cb2.release());
			try {
				{
					for (defer in __deferstack__) {
						defer();
					};
					return Go.toInterface(Go.asInterface(_cb2.invoke()));
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
					return (null : AnyInterface);
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
				return (null : AnyInterface);
			};
		}).__copy__());
		__deferstack__.unshift(() -> _cb.release());
		{
			var _got:GoInt = _cb.invoke().int_();
			if (_got != ((42 : GoInt))) {
				_t.errorf(Go.str("got %#v, want %#v"), Go.toInterface(_got), Go.toInterface((42 : GoInt)));
			};
		};
		if (!_called) {
			_t.error(Go.toInterface(Go.str("function not called")));
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

function testInterleavedFunctions(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _c1 = new Chan<T__struct_0>(0, () -> ({} : T__struct_0));
	var _c2 = new Chan<T__struct_0>(0, () -> ({} : T__struct_0));
	stdgo.syscall.js.Js.global()
		.get(Go.str("setTimeout"))
		.invoke(Go.toInterface(Go.asInterface(stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
			_c1.__send__(({} : T__struct_0));
			_c2.__get__();
			return (null : AnyInterface);
		}))), Go.toInterface((0 : GoInt)));
	_c1.__get__();
	_c2.__send__(({} : T__struct_0));
	var _f:Func = (stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
		return (null : AnyInterface);
	}) == null ? null : stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
		return (null : AnyInterface);
	}).__copy__());
	_f.invoke();
}

function exampleFuncOf():Void {
	var _cb:Func = ({} : Func);
	_cb = (stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
		stdgo.fmt.Fmt.println(Go.toInterface(Go.str("button clicked")));
		_cb.release();
		return (null : AnyInterface);
	}) == null ? null : stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
		stdgo.fmt.Fmt.println(Go.toInterface(Go.str("button clicked")));
		_cb.release();
		return (null : AnyInterface);
	}).__copy__());
	stdgo.syscall.js.Js.global()
		.get(Go.str("document"))
		.call(Go.str("getElementById"), Go.toInterface(Go.str("myButton")))
		.call(Go.str("addEventListener"), Go.toInterface(Go.str("click")), Go.toInterface(Go.asInterface(_cb)));
}

/**
	// See
	// - https://developer.mozilla.org/en-US/docs/Glossary/Truthy
	// - https://stackoverflow.com/questions/19839952/all-falsey-values-in-javascript/19839953#19839953
	// - http://www.ecma-international.org/ecma-262/5.1/#sec-9.2
**/
function testTruthy(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _want:Bool = true;
	for (_0 => _key in (new Slice<GoString>(0, 0, Go.str("someBool"), Go.str("someString"), Go.str("someInt"), Go.str("someFloat"), Go.str("someArray"),
		Go.str("someDate"), Go.str("stringZero"), Go.str("add"), Go.str("emptyObj"), Go.str("emptyArray"), Go.str("Infinity"), Go.str("NegInfinity"),
		Go.str("objNumber0"), Go.str("objBooleanFalse")) : Slice<GoString>)) {
		{
			var _got:Bool = _dummys.get(_key).truthy();
			if (_got != (_want)) {
				_t.errorf(Go.str("%s: got %#v, want %#v"), Go.toInterface(_key), Go.toInterface(_got), Go.toInterface(_want));
			};
		};
	};
	_want = false;
	{
		var _got:Bool = _dummys.get(Go.str("zero")).truthy();
		if (_got != (_want)) {
			_t.errorf(Go.str("got %#v, want %#v"), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	{
		var _got:Bool = _dummys.get(Go.str("NaN")).truthy();
		if (_got != (_want)) {
			_t.errorf(Go.str("got %#v, want %#v"), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	{
		var _got:Bool = stdgo.syscall.js.Js.valueOf(Go.toInterface(Go.str())).truthy();
		if (_got != (_want)) {
			_t.errorf(Go.str("got %#v, want %#v"), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	{
		var _got:Bool = stdgo.syscall.js.Js.null_().truthy();
		if (_got != (_want)) {
			_t.errorf(Go.str("got %#v, want %#v"), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	{
		var _got:Bool = stdgo.syscall.js.Js.undefined().truthy();
		if (_got != (_want)) {
			_t.errorf(Go.str("got %#v, want %#v"), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
}

function _expectValueError(_t:Ref<stdgo.testing.Testing.T>, _fn:() -> Void):Void {
	var __deferstack__:Array<Void->Void> = [];
	__deferstack__.unshift(() -> {
		var a = function():Void {
			var _err:AnyInterface = ({
				final r = Go.recover_exception;
				Go.recover_exception = null;
				r;
			});
			{
				var __tmp__ = try {
					{value: (Go.typeAssert((_err : Ref<ValueError>)) : Ref<ValueError>), ok: true};
				} catch (_) {
					{value: (null : Ref<ValueError>), ok: false};
				}, _0 = __tmp__.value, _ok = __tmp__.ok;
				if (!_ok) {
					_t.errorf(Go.str("expected *js.ValueError, got %T"), _err);
				};
			};
		};
		a();
	});
	try {
		_fn();
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

function _expectPanic(_t:Ref<stdgo.testing.Testing.T>, _fn:() -> Void):Void {
	var __deferstack__:Array<Void->Void> = [];
	__deferstack__.unshift(() -> {
		var a = function():Void {
			var _err:AnyInterface = ({
				final r = Go.recover_exception;
				Go.recover_exception = null;
				r;
			});
			if (_err == null) {
				_t.errorf(Go.str("expected panic"));
			};
		};
		a();
	});
	try {
		_fn();
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

function testCopyBytesToGo(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _copyTests) {
		_t.run(stdgo.fmt.Fmt.sprintf(Go.str("%d-to-%d"), Go.toInterface(_tt._srcLen), Go.toInterface(_tt._dstLen)),
			function(_t:Ref<stdgo.testing.Testing.T>):Void {
				var _src:Value = (stdgo.syscall.js.Js.global()
					.get(Go.str("Uint8Array"))
					.new_(Go.toInterface(_tt._srcLen)) == null ? null : stdgo.syscall.js.Js.global()
					.get(Go.str("Uint8Array"))
					.new_(Go.toInterface(_tt._srcLen))
					.__copy__());
				if (_tt._srcLen >= (2 : GoInt)) {
					_src.setIndex((1 : GoInt), Go.toInterface((42 : GoInt)));
				};
				var _dst = new Slice<GoUInt8>((_tt._dstLen : GoInt).toBasic(), 0, ...[for (i in 0...(_tt._dstLen : GoInt).toBasic()) (0 : GoUInt8)]);
				{
					var _0:GoInt = stdgo.syscall.js.Js.copyBytesToGo(_dst, (_src == null ? null : _src.__copy__())),
						_1:GoInt = _tt._copyLen,
						_want:GoInt = _1,
						_got:GoInt = _0;
					if (_got != (_want)) {
						_t.errorf(Go.str("copied %d, want %d"), Go.toInterface(_got), Go.toInterface(_want));
					};
				};
				if (_tt._dstLen >= (2 : GoInt)) {
					{
						var _0:GoInt = (_dst[(1 : GoInt)] : GoInt),
							_1:GoInt = (42 : GoInt),
							_want:GoInt = _1,
							_got:GoInt = _0;
						if (_got != (_want)) {
							_t.errorf(Go.str("got %d, want %d"), Go.toInterface(_got), Go.toInterface(_want));
						};
					};
				};
			});
	};
}

function testCopyBytesToJS(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _copyTests) {
		_t.run(stdgo.fmt.Fmt.sprintf(Go.str("%d-to-%d"), Go.toInterface(_tt._srcLen), Go.toInterface(_tt._dstLen)),
			function(_t:Ref<stdgo.testing.Testing.T>):Void {
				var _src = new Slice<GoUInt8>((_tt._srcLen : GoInt).toBasic(), 0, ...[for (i in 0...(_tt._srcLen : GoInt).toBasic()) (0 : GoUInt8)]);
				if (_tt._srcLen >= (2 : GoInt)) {
					_src[(1 : GoInt)] = (42 : GoUInt8);
				};
				var _dst:Value = (stdgo.syscall.js.Js.global()
					.get(Go.str("Uint8Array"))
					.new_(Go.toInterface(_tt._dstLen)) == null ? null : stdgo.syscall.js.Js.global()
					.get(Go.str("Uint8Array"))
					.new_(Go.toInterface(_tt._dstLen))
					.__copy__());
				{
					var _0:GoInt = stdgo.syscall.js.Js.copyBytesToJS((_dst == null ? null : _dst.__copy__()), _src),
						_1:GoInt = _tt._copyLen,
						_want:GoInt = _1,
						_got:GoInt = _0;
					if (_got != (_want)) {
						_t.errorf(Go.str("copied %d, want %d"), Go.toInterface(_got), Go.toInterface(_want));
					};
				};
				if (_tt._dstLen >= (2 : GoInt)) {
					{
						var _0:GoInt = _dst.index((1 : GoInt)).int_(),
							_1:GoInt = (42 : GoInt),
							_want:GoInt = _1,
							_got:GoInt = _0;
						if (_got != (_want)) {
							_t.errorf(Go.str("got %d, want %d"), Go.toInterface(_got), Go.toInterface(_want));
						};
					};
				};
			});
	};
}

function testGarbageCollection(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _before:GoInt = stdgo.syscall.js.Js.jsgo.get(Go.str("_values")).length_();
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (1000:GoInt), _i++, {
			(stdgo.syscall.js.Js.global().get(Go.str("Object")).new_().call(Go.str("toString")).string() : GoString);
			stdgo.runtime.Runtime.gc();
		});
	};
	var _after:GoInt = stdgo.syscall.js.Js.jsgo.get(Go.str("_values")).length_();
	if ((_after - _before) > (500 : GoInt)) {
		_t.errorf(Go.str("garbage collection ineffective"));
	};
}

/**
	// BenchmarkDOM is a simple benchmark which emulates a webapp making DOM operations.
	// It creates a div, and sets its id. Then searches by that id and sets some data.
	// Finally it removes that div.
**/
function benchmarkDOM(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _document:Value = (stdgo.syscall.js.Js.global()
		.get(Go.str("document")) == null ? null : stdgo.syscall.js.Js.global()
		.get(Go.str("document"))
		.__copy__());
	if (_document.isUndefined()) {
		_b.skip(Go.toInterface(Go.str("Not a browser environment. Skipping.")));
	};
	{};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			var _div:Value = (_document.call(Go.str("createElement"),
				Go.toInterface(Go.str("div"))) == null ? null : _document.call(Go.str("createElement"), Go.toInterface(Go.str("div"))).__copy__());
			_div.call(Go.str("setAttribute"), Go.toInterface(Go.str("id")), Go.toInterface(Go.str("myDiv")));
			_document.get(Go.str("body")).call(Go.str("appendChild"), Go.toInterface(Go.asInterface(_div)));
			var _myDiv:Value = (_document.call(Go.str("getElementById"),
				Go.toInterface(Go.str("myDiv"))) == null ? null : _document.call(Go.str("getElementById"), Go.toInterface(Go.str("myDiv"))).__copy__());
			_myDiv.set(Go.str("innerHTML"), Go.toInterface(Go.str("someString")));
			{
				var _0:GoString = (_myDiv.get(Go.str("innerHTML")).string() : GoString),
					_1:GoString = Go.str("someString"),
					_want:GoString = _1,
					_got:GoString = _0;
				if (_got != (_want)) {
					_b.errorf(Go.str("got %s, want %s"), Go.toInterface(_got), Go.toInterface(_want));
				};
			};
			_document.get(Go.str("body")).call(Go.str("removeChild"), Go.toInterface(Go.asInterface(_div)));
		});
	};
}

function testGlobal(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var _ident:Func = (stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
		return Go.toInterface(Go.asInterface(_args[(0 : GoInt)]));
	}) == null ? null : stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
		return Go.toInterface(Go.asInterface(_args[(0 : GoInt)]));
	}).__copy__());
	try {
		__deferstack__.unshift(() -> _ident.release());
		{
			var _got:Value = (_ident.invoke(Go.toInterface(Go.asInterface(stdgo.syscall.js.Js.global()))) == null ? null : _ident.invoke(Go.toInterface(Go.asInterface(stdgo.syscall.js.Js.global())))
				.__copy__());
			if (!_got.equal((stdgo.syscall.js.Js.global() == null ? null : stdgo.syscall.js.Js.global().__copy__()))) {
				_t.errorf(Go.str("got %#v, want %#v"), Go.toInterface(Go.asInterface(_got)), Go.toInterface(Go.asInterface(stdgo.syscall.js.Js.global())));
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
