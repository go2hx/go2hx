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

var _dummys:Value = ({} : Value);
var _copyTests:Slice<T__struct_1> = (null : Slice<T__struct_1>);
@:local typedef T__struct_0 = {};

@:local typedef T__struct_1 = {
	public var _srcLen:GoInt;
	public var _dstLen:GoInt;
	public var _copyLen:GoInt;
};

@:follow typedef T_object = GoMap<GoString, AnyInterface>;
@:follow typedef T_array = Slice<AnyInterface>;

function testBool(_t:stdgo.testing.Testing.T):Void {
	var _want:Bool = true;
	var _o:Value = (_dummys.get((Go.str("someBool") : GoString)) == null ? null : _dummys.get((Go.str("someBool") : GoString)).__copy__());
	{
		var _got:Bool = _o.bool();
		if (_got != _want) {
			_t.errorf((Go.str("got %#v, want %#v") : GoString), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	_dummys.set((Go.str("otherBool") : GoString), Go.toInterface(_want));
	{
		var _got:Bool = _dummys.get((Go.str("otherBool") : GoString)).bool();
		if (_got != _want) {
			_t.errorf((Go.str("got %#v, want %#v") : GoString), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	if (!_dummys.get((Go.str("someBool") : GoString))
		.equal((_dummys.get((Go.str("someBool") : GoString)) == null ? null : _dummys.get((Go.str("someBool") : GoString)).__copy__()))) {
		_t.errorf((Go.str("same value not equal") : GoString));
	};
}

function testString(_t:stdgo.testing.Testing.T):Void {
	var _want:GoString = (Go.str("abc\u1234") : GoString);
	var _o:Value = (_dummys.get((Go.str("someString") : GoString)) == null ? null : _dummys.get((Go.str("someString") : GoString)).__copy__());
	{
		var _got:GoString = (_o.string() : GoString);
		if (_got != _want) {
			_t.errorf((Go.str("got %#v, want %#v") : GoString), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	_dummys.set((Go.str("otherString") : GoString), Go.toInterface(_want));
	{
		var _got:GoString = (_dummys.get((Go.str("otherString") : GoString)).string() : GoString);
		if (_got != _want) {
			_t.errorf((Go.str("got %#v, want %#v") : GoString), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	if (!_dummys.get((Go.str("someString") : GoString))
		.equal((_dummys.get((Go.str("someString") : GoString)) == null ? null : _dummys.get((Go.str("someString") : GoString)).__copy__()))) {
		_t.errorf((Go.str("same value not equal") : GoString));
	};
	{
		var _got:GoString = (stdgo.syscall.js.Js.undefined().string() : GoString),
			_want:GoString = (Go.str("<undefined>") : GoString);
		if (_got != _want) {
			_t.errorf((Go.str("got %#v, want %#v") : GoString), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	{
		var _got:GoString = (stdgo.syscall.js.Js.null_().string() : GoString),
			_want:GoString = (Go.str("<null>") : GoString);
		if (_got != _want) {
			_t.errorf((Go.str("got %#v, want %#v") : GoString), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	{
		var _got:GoString = (stdgo.syscall.js.Js.valueOf(Go.toInterface(true)).string() : GoString),
			_want:GoString = (Go.str("<boolean: true>") : GoString);
		if (_got != _want) {
			_t.errorf((Go.str("got %#v, want %#v") : GoString), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	{
		var _got:GoString = (stdgo.syscall.js.Js.valueOf(Go.toInterface((42.5 : GoFloat64))).string() : GoString),
			_want:GoString = (Go.str("<number: 42.5>") : GoString);
		if (_got != _want) {
			_t.errorf((Go.str("got %#v, want %#v") : GoString), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	{
		var _got:GoString = (stdgo.syscall.js.Js.global().call((Go.str("Symbol") : GoString)).string() : GoString),
			_want:GoString = (Go.str("<symbol>") : GoString);
		if (_got != _want) {
			_t.errorf((Go.str("got %#v, want %#v") : GoString), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	{
		var _got:GoString = (stdgo.syscall.js.Js.global().string() : GoString),
			_want:GoString = (Go.str("<object>") : GoString);
		if (_got != _want) {
			_t.errorf((Go.str("got %#v, want %#v") : GoString), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	{
		var _got:GoString = (stdgo.syscall.js.Js.global().get((Go.str("setTimeout") : GoString)).string() : GoString),
			_want:GoString = (Go.str("<function>") : GoString);
		if (_got != _want) {
			_t.errorf((Go.str("got %#v, want %#v") : GoString), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
}

function testInt(_t:stdgo.testing.Testing.T):Void {
	var _want:GoInt = (42 : GoInt);
	var _o:Value = (_dummys.get((Go.str("someInt") : GoString)) == null ? null : _dummys.get((Go.str("someInt") : GoString)).__copy__());
	{
		var _got:GoInt = _o.int();
		if (_got != _want) {
			_t.errorf((Go.str("got %#v, want %#v") : GoString), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	_dummys.set((Go.str("otherInt") : GoString), Go.toInterface(_want));
	{
		var _got:GoInt = _dummys.get((Go.str("otherInt") : GoString)).int();
		if (_got != _want) {
			_t.errorf((Go.str("got %#v, want %#v") : GoString), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	if (!_dummys.get((Go.str("someInt") : GoString))
		.equal((_dummys.get((Go.str("someInt") : GoString)) == null ? null : _dummys.get((Go.str("someInt") : GoString)).__copy__()))) {
		_t.errorf((Go.str("same value not equal") : GoString));
	};
	{
		var _got:GoInt = _dummys.get((Go.str("zero") : GoString)).int();
		if (_got != (0 : GoInt)) {
			_t.errorf((Go.str("got %#v, want %#v") : GoString), Go.toInterface(_got), Go.toInterface((0 : GoInt)));
		};
	};
}

function testIntConversion(_t:stdgo.testing.Testing.T):Void {
	_testIntConversion(_t, (0 : GoInt));
	_testIntConversion(_t, (1 : GoInt));
	_testIntConversion(_t, (-1 : GoInt));
	_testIntConversion(_t, (1048576 : GoInt));
	_testIntConversion(_t, (-1048576 : GoInt));
	_testIntConversion(_t, ("1099511627776" : GoUnTypedInt));
	_testIntConversion(_t, ("-1099511627776" : GoUnTypedInt));
	_testIntConversion(_t, ("1152921504606846976" : GoUnTypedInt));
	_testIntConversion(_t, ("-1152921504606846976" : GoUnTypedInt));
}

function _testIntConversion(_t:stdgo.testing.Testing.T, _want:GoInt):Void {
	{
		var _got:GoInt = stdgo.syscall.js.Js.valueOf(Go.toInterface(_want)).int();
		if (_got != _want) {
			_t.errorf((Go.str("got %#v, want %#v") : GoString), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
}

function testFloat(_t:stdgo.testing.Testing.T):Void {
	var _want:GoFloat64 = (42.123 : GoFloat64);
	var _o:Value = (_dummys.get((Go.str("someFloat") : GoString)) == null ? null : _dummys.get((Go.str("someFloat") : GoString)).__copy__());
	{
		var _got:GoFloat64 = _o.float();
		if (_got != _want) {
			_t.errorf((Go.str("got %#v, want %#v") : GoString), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	_dummys.set((Go.str("otherFloat") : GoString), Go.toInterface(_want));
	{
		var _got:GoFloat64 = _dummys.get((Go.str("otherFloat") : GoString)).float();
		if (_got != _want) {
			_t.errorf((Go.str("got %#v, want %#v") : GoString), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	if (!_dummys.get((Go.str("someFloat") : GoString))
		.equal((_dummys.get((Go.str("someFloat") : GoString)) == null ? null : _dummys.get((Go.str("someFloat") : GoString)).__copy__()))) {
		_t.errorf((Go.str("same value not equal") : GoString));
	};
}

function testObject(_t:stdgo.testing.Testing.T):Void {
	if (!_dummys.get((Go.str("someArray") : GoString))
		.equal((_dummys.get((Go.str("someArray") : GoString)) == null ? null : _dummys.get((Go.str("someArray") : GoString)).__copy__()))) {
		_t.errorf((Go.str("same value not equal") : GoString));
	};
	var _proto:Value = (stdgo.syscall.js.Js.global()
		.get((Go.str("Object") : GoString))
		.get((Go.str("prototype") : GoString)) == null ? null : stdgo.syscall.js.Js.global()
		.get((Go.str("Object") : GoString))
		.get((Go.str("prototype") : GoString))
		.__copy__());
	var _o:Value = (stdgo.syscall.js.Js.global()
		.call((Go.str("eval") : GoString), Go.toInterface((Go.str("new Object()") : GoString))) == null ? null : stdgo.syscall.js.Js.global()
		.call((Go.str("eval") : GoString), Go.toInterface((Go.str("new Object()") : GoString)))
		.__copy__());
	if (_proto.equal((_o == null ? null : _o.__copy__()))) {
		_t.errorf((Go.str("object equals to its prototype") : GoString));
	};
}

function testFrozenObject(_t:stdgo.testing.Testing.T):Void {
	var _o:Value = (stdgo.syscall.js.Js.global()
		.call((Go.str("eval") : GoString),
			Go.toInterface((Go.str("(function () { let o = new Object(); o.field = 5; Object.freeze(o); return o; })()") : GoString))) == null ? null : stdgo.syscall.js.Js.global()
		.call((Go.str("eval") : GoString),
			Go.toInterface((Go.str("(function () { let o = new Object(); o.field = 5; Object.freeze(o); return o; })()") : GoString)))
		.__copy__());
	var _want:GoInt = (5 : GoInt);
	{
		var _got:GoInt = _o.get((Go.str("field") : GoString)).int();
		if (_want != _got) {
			_t.errorf((Go.str("got %#v, want %#v") : GoString), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
}

function testEqual(_t:stdgo.testing.Testing.T):Void {
	if (!_dummys.get((Go.str("someFloat") : GoString))
		.equal((_dummys.get((Go.str("someFloat") : GoString)) == null ? null : _dummys.get((Go.str("someFloat") : GoString)).__copy__()))) {
		_t.errorf((Go.str("same float is not equal") : GoString));
	};
	if (!_dummys.get((Go.str("emptyObj") : GoString))
		.equal((_dummys.get((Go.str("emptyObj") : GoString)) == null ? null : _dummys.get((Go.str("emptyObj") : GoString)).__copy__()))) {
		_t.errorf((Go.str("same object is not equal") : GoString));
	};
	if (_dummys.get((Go.str("someFloat") : GoString))
		.equal((_dummys.get((Go.str("someInt") : GoString)) == null ? null : _dummys.get((Go.str("someInt") : GoString)).__copy__()))) {
		_t.errorf((Go.str("different values are not unequal") : GoString));
	};
}

function testNaN(_t:stdgo.testing.Testing.T):Void {
	if (!_dummys.get((Go.str("NaN") : GoString)).isNaN()) {
		_t.errorf((Go.str("JS NaN is not NaN") : GoString));
	};
	if (!stdgo.syscall.js.Js.valueOf(Go.toInterface(stdgo.math.Math.naN())).isNaN()) {
		_t.errorf((Go.str("Go NaN is not NaN") : GoString));
	};
	if (_dummys.get((Go.str("NaN") : GoString))
		.equal((_dummys.get((Go.str("NaN") : GoString)) == null ? null : _dummys.get((Go.str("NaN") : GoString)).__copy__()))) {
		_t.errorf((Go.str("NaN is equal to NaN") : GoString));
	};
}

function testUndefined(_t:stdgo.testing.Testing.T):Void {
	if (!stdgo.syscall.js.Js.undefined().isUndefined()) {
		_t.errorf((Go.str("undefined is not undefined") : GoString));
	};
	if (!stdgo.syscall.js.Js.undefined().equal((stdgo.syscall.js.Js.undefined() == null ? null : stdgo.syscall.js.Js.undefined().__copy__()))) {
		_t.errorf((Go.str("undefined is not equal to undefined") : GoString));
	};
	if (_dummys.isUndefined()) {
		_t.errorf((Go.str("object is undefined") : GoString));
	};
	if (stdgo.syscall.js.Js.undefined().isNull()) {
		_t.errorf((Go.str("undefined is null") : GoString));
	};
	{
		_dummys.set((Go.str("test") : GoString), Go.toInterface({
			final __self__ = new Value_asInterface(stdgo.syscall.js.Js.undefined());
			__self__.bool = #if !macro function():Bool return stdgo.syscall.js.Js.undefined().bool() #else null #end;
			__self__.call = #if !macro function(_m:GoString,
					_args:Slice<AnyInterface>):Value return stdgo.syscall.js.Js.undefined().call(_m, _args) #else null #end;
			__self__.delete = #if !macro function(_p:GoString):Void stdgo.syscall.js.Js.undefined().delete(_p) #else null #end;
			__self__.equal = #if !macro function(__0:Value):Bool return stdgo.syscall.js.Js.undefined().equal(__0) #else null #end;
			__self__.float = #if !macro function():GoFloat64 return stdgo.syscall.js.Js.undefined().float() #else null #end;
			__self__.get = #if !macro function(_p:GoString):Value return stdgo.syscall.js.Js.undefined().get(_p) #else null #end;
			__self__.index = #if !macro function(_i:GoInt):Value return stdgo.syscall.js.Js.undefined().index(_i) #else null #end;
			__self__.instanceOf = #if !macro function(__0:Value):Bool return stdgo.syscall.js.Js.undefined().instanceOf(__0) #else null #end;
			__self__.int = #if !macro function():GoInt return stdgo.syscall.js.Js.undefined().int() #else null #end;
			__self__.invoke = #if !macro function(_args:Slice<AnyInterface>):Value return stdgo.syscall.js.Js.undefined().invoke(_args) #else null #end;
			__self__.isNaN = #if !macro function():Bool return stdgo.syscall.js.Js.undefined().isNaN() #else null #end;
			__self__.isNull = #if !macro function():Bool return stdgo.syscall.js.Js.undefined().isNull() #else null #end;
			__self__.isUndefined = #if !macro function():Bool return stdgo.syscall.js.Js.undefined().isUndefined() #else null #end;
			__self__.length_ = #if !macro function():GoInt return stdgo.syscall.js.Js.undefined().length_() #else null #end;
			__self__.new_ = #if !macro function(_args:Slice<AnyInterface>):Value return stdgo.syscall.js.Js.undefined().new_(_args) #else null #end;
			__self__.set = #if !macro function(_p:GoString, _x:AnyInterface):Void stdgo.syscall.js.Js.undefined().set(_p, _x) #else null #end;
			__self__.setIndex = #if !macro function(_i:GoInt, _x:AnyInterface):Void stdgo.syscall.js.Js.undefined().setIndex(_i, _x) #else null #end;
			__self__.string = #if !macro function():GoString return stdgo.syscall.js.Js.undefined().string() #else null #end;
			__self__.truthy = #if !macro function():Bool return stdgo.syscall.js.Js.undefined().truthy() #else null #end;
			__self__.type = #if !macro function():Type return stdgo.syscall.js.Js.undefined().type() #else null #end;
			__self__._float = #if !macro function(_p:GoString):GoFloat64 return stdgo.syscall.js.Js.undefined()._float(_p) #else null #end;
			__self__._isNumber = #if !macro function():Bool return stdgo.syscall.js.Js.undefined()._isNumber() #else null #end;
			__self__;
		}));
		if (!_dummys.get((Go.str("test") : GoString)).isUndefined()) {
			_t.errorf((Go.str("could not set undefined") : GoString));
		};
	};
}

function testNull(_t:stdgo.testing.Testing.T):Void {
	if (!stdgo.syscall.js.Js.null_().isNull()) {
		_t.errorf((Go.str("null is not null") : GoString));
	};
	if (!stdgo.syscall.js.Js.null_().equal((stdgo.syscall.js.Js.null_() == null ? null : stdgo.syscall.js.Js.null_().__copy__()))) {
		_t.errorf((Go.str("null is not equal to null") : GoString));
	};
	if (_dummys.isNull()) {
		_t.errorf((Go.str("object is null") : GoString));
	};
	if (stdgo.syscall.js.Js.null_().isUndefined()) {
		_t.errorf((Go.str("null is undefined") : GoString));
	};
	{
		_dummys.set((Go.str("test") : GoString), Go.toInterface({
			final __self__ = new Value_asInterface(stdgo.syscall.js.Js.null_());
			__self__.bool = #if !macro function():Bool return stdgo.syscall.js.Js.null_().bool() #else null #end;
			__self__.call = #if !macro function(_m:GoString,
					_args:Slice<AnyInterface>):Value return stdgo.syscall.js.Js.null_().call(_m, _args) #else null #end;
			__self__.delete = #if !macro function(_p:GoString):Void stdgo.syscall.js.Js.null_().delete(_p) #else null #end;
			__self__.equal = #if !macro function(__0:Value):Bool return stdgo.syscall.js.Js.null_().equal(__0) #else null #end;
			__self__.float = #if !macro function():GoFloat64 return stdgo.syscall.js.Js.null_().float() #else null #end;
			__self__.get = #if !macro function(_p:GoString):Value return stdgo.syscall.js.Js.null_().get(_p) #else null #end;
			__self__.index = #if !macro function(_i:GoInt):Value return stdgo.syscall.js.Js.null_().index(_i) #else null #end;
			__self__.instanceOf = #if !macro function(__0:Value):Bool return stdgo.syscall.js.Js.null_().instanceOf(__0) #else null #end;
			__self__.int = #if !macro function():GoInt return stdgo.syscall.js.Js.null_().int() #else null #end;
			__self__.invoke = #if !macro function(_args:Slice<AnyInterface>):Value return stdgo.syscall.js.Js.null_().invoke(_args) #else null #end;
			__self__.isNaN = #if !macro function():Bool return stdgo.syscall.js.Js.null_().isNaN() #else null #end;
			__self__.isNull = #if !macro function():Bool return stdgo.syscall.js.Js.null_().isNull() #else null #end;
			__self__.isUndefined = #if !macro function():Bool return stdgo.syscall.js.Js.null_().isUndefined() #else null #end;
			__self__.length_ = #if !macro function():GoInt return stdgo.syscall.js.Js.null_().length_() #else null #end;
			__self__.new_ = #if !macro function(_args:Slice<AnyInterface>):Value return stdgo.syscall.js.Js.null_().new_(_args) #else null #end;
			__self__.set = #if !macro function(_p:GoString, _x:AnyInterface):Void stdgo.syscall.js.Js.null_().set(_p, _x) #else null #end;
			__self__.setIndex = #if !macro function(_i:GoInt, _x:AnyInterface):Void stdgo.syscall.js.Js.null_().setIndex(_i, _x) #else null #end;
			__self__.string = #if !macro function():GoString return stdgo.syscall.js.Js.null_().string() #else null #end;
			__self__.truthy = #if !macro function():Bool return stdgo.syscall.js.Js.null_().truthy() #else null #end;
			__self__.type = #if !macro function():Type return stdgo.syscall.js.Js.null_().type() #else null #end;
			__self__._float = #if !macro function(_p:GoString):GoFloat64 return stdgo.syscall.js.Js.null_()._float(_p) #else null #end;
			__self__._isNumber = #if !macro function():Bool return stdgo.syscall.js.Js.null_()._isNumber() #else null #end;
			__self__;
		}));
		if (!_dummys.get((Go.str("test") : GoString)).isNull()) {
			_t.errorf((Go.str("could not set null") : GoString));
		};
	};
	{
		_dummys.set((Go.str("test") : GoString), (null : AnyInterface));
		if (!_dummys.get((Go.str("test") : GoString)).isNull()) {
			_t.errorf((Go.str("could not set nil") : GoString));
		};
	};
}

function testLength(_t:stdgo.testing.Testing.T):Void {
	{
		var _got:GoInt = _dummys.get((Go.str("someArray") : GoString)).length_();
		if (_got != (3 : GoInt)) {
			_t.errorf((Go.str("got %#v, want %#v") : GoString), Go.toInterface(_got), Go.toInterface((3 : GoInt)));
		};
	};
}

function testGet(_t:stdgo.testing.Testing.T):Void {
	_expectValueError(_t, function():Void {
		_dummys.get((Go.str("zero") : GoString)).get((Go.str("badField") : GoString));
	});
}

function testSet(_t:stdgo.testing.Testing.T):Void {
	_expectValueError(_t, function():Void {
		_dummys.get((Go.str("zero") : GoString)).set((Go.str("badField") : GoString), Go.toInterface((42 : GoInt)));
	});
}

function testDelete(_t:stdgo.testing.Testing.T):Void {
	_dummys.set((Go.str("test") : GoString), Go.toInterface((42 : GoInt)));
	_dummys.delete((Go.str("test") : GoString));
	if (_dummys.call((Go.str("hasOwnProperty") : GoString), Go.toInterface((Go.str("test") : GoString))).bool()) {
		_t.errorf((Go.str("property still exists") : GoString));
	};
	_expectValueError(_t, function():Void {
		_dummys.get((Go.str("zero") : GoString)).delete((Go.str("badField") : GoString));
	});
}

function testIndex(_t:stdgo.testing.Testing.T):Void {
	{
		var _got:GoInt = _dummys.get((Go.str("someArray") : GoString)).index((1 : GoInt)).int();
		if (_got != (42 : GoInt)) {
			_t.errorf((Go.str("got %#v, want %#v") : GoString), Go.toInterface(_got), Go.toInterface((42 : GoInt)));
		};
	};
	_expectValueError(_t, function():Void {
		_dummys.get((Go.str("zero") : GoString)).index((1 : GoInt));
	});
}

function testSetIndex(_t:stdgo.testing.Testing.T):Void {
	_dummys.get((Go.str("someArray") : GoString)).setIndex((2 : GoInt), Go.toInterface((99 : GoInt)));
	{
		var _got:GoInt = _dummys.get((Go.str("someArray") : GoString)).index((2 : GoInt)).int();
		if (_got != (99 : GoInt)) {
			_t.errorf((Go.str("got %#v, want %#v") : GoString), Go.toInterface(_got), Go.toInterface((99 : GoInt)));
		};
	};
	_expectValueError(_t, function():Void {
		_dummys.get((Go.str("zero") : GoString)).setIndex((2 : GoInt), Go.toInterface((99 : GoInt)));
	});
}

function testCall(_t:stdgo.testing.Testing.T):Void {
	var _i:GoInt64 = (40 : GoInt64);
	{
		var _got:GoInt = _dummys.call((Go.str("add") : GoString), Go.toInterface(_i), Go.toInterface((2 : GoInt))).int();
		if (_got != (42 : GoInt)) {
			_t.errorf((Go.str("got %#v, want %#v") : GoString), Go.toInterface(_got), Go.toInterface((42 : GoInt)));
		};
	};
	{
		var _got:GoInt = _dummys.call((Go.str("add") : GoString), Go.toInterface({
			final __self__ = new Value_asInterface(stdgo.syscall.js.Js.global().call((Go.str("eval") : GoString), Go.toInterface((Go.str("40") : GoString))));
			__self__.bool = #if !macro function():Bool return stdgo.syscall.js.Js.global()
				.call((Go.str("eval") : GoString), Go.toInterface((Go.str("40") : GoString)))
				.bool() #else null #end;
			__self__.call = #if !macro function(_m:GoString,
					_args:Slice<AnyInterface>):Value return stdgo.syscall.js.Js.global()
					.call((Go.str("eval") : GoString), Go.toInterface((Go.str("40") : GoString)))
					.call(_m, _args) #else null #end;
			__self__.delete = #if !macro function(_p:GoString):Void stdgo.syscall.js.Js.global()
				.call((Go.str("eval") : GoString), Go.toInterface((Go.str("40") : GoString)))
				.delete(_p) #else null #end;
			__self__.equal = #if !macro function(__0:Value):Bool return stdgo.syscall.js.Js.global()
				.call((Go.str("eval") : GoString), Go.toInterface((Go.str("40") : GoString)))
				.equal(__0) #else null #end;
			__self__.float = #if !macro function():GoFloat64 return stdgo.syscall.js.Js.global()
				.call((Go.str("eval") : GoString), Go.toInterface((Go.str("40") : GoString)))
				.float() #else null #end;
			__self__.get = #if !macro function(_p:GoString):Value return stdgo.syscall.js.Js.global()
				.call((Go.str("eval") : GoString), Go.toInterface((Go.str("40") : GoString)))
				.get(_p) #else null #end;
			__self__.index = #if !macro function(_i_:GoInt):Value return stdgo.syscall.js.Js.global()
				.call((Go.str("eval") : GoString), Go.toInterface((Go.str("40") : GoString)))
				.index(_i_) #else null #end;
			__self__.instanceOf = #if !macro function(__0:Value):Bool return stdgo.syscall.js.Js.global()
				.call((Go.str("eval") : GoString), Go.toInterface((Go.str("40") : GoString)))
				.instanceOf(__0) #else null #end;
			__self__.int = #if !macro function():GoInt return stdgo.syscall.js.Js.global()
				.call((Go.str("eval") : GoString), Go.toInterface((Go.str("40") : GoString)))
				.int() #else null #end;
			__self__.invoke = #if !macro function(_args:Slice<AnyInterface>):Value return stdgo.syscall.js.Js.global()
				.call((Go.str("eval") : GoString), Go.toInterface((Go.str("40") : GoString)))
				.invoke(_args) #else null #end;
			__self__.isNaN = #if !macro function():Bool return stdgo.syscall.js.Js.global()
				.call((Go.str("eval") : GoString), Go.toInterface((Go.str("40") : GoString)))
				.isNaN() #else null #end;
			__self__.isNull = #if !macro function():Bool return stdgo.syscall.js.Js.global()
				.call((Go.str("eval") : GoString), Go.toInterface((Go.str("40") : GoString)))
				.isNull() #else null #end;
			__self__.isUndefined = #if !macro function():Bool return stdgo.syscall.js.Js.global()
				.call((Go.str("eval") : GoString), Go.toInterface((Go.str("40") : GoString)))
				.isUndefined() #else null #end;
			__self__.length_ = #if !macro function():GoInt return stdgo.syscall.js.Js.global()
				.call((Go.str("eval") : GoString), Go.toInterface((Go.str("40") : GoString)))
				.length_() #else null #end;
			__self__.new_ = #if !macro function(_args:Slice<AnyInterface>):Value return stdgo.syscall.js.Js.global()
				.call((Go.str("eval") : GoString), Go.toInterface((Go.str("40") : GoString)))
				.new_(_args) #else null #end;
			__self__.set = #if !macro function(_p:GoString,
					_x:AnyInterface):Void stdgo.syscall.js.Js.global()
				.call((Go.str("eval") : GoString), Go.toInterface((Go.str("40") : GoString)))
				.set(_p, _x) #else null #end;
			__self__.setIndex = #if !macro function(_i__:GoInt,
					_x:AnyInterface):Void stdgo.syscall.js.Js.global()
				.call((Go.str("eval") : GoString), Go.toInterface((Go.str("40") : GoString)))
				.setIndex(_i__, _x) #else null #end;
			__self__.string = #if !macro function():GoString return stdgo.syscall.js.Js.global()
				.call((Go.str("eval") : GoString), Go.toInterface((Go.str("40") : GoString)))
				.string() #else null #end;
			__self__.truthy = #if !macro function():Bool return stdgo.syscall.js.Js.global()
				.call((Go.str("eval") : GoString), Go.toInterface((Go.str("40") : GoString)))
				.truthy() #else null #end;
			__self__.type = #if !macro function():Type return stdgo.syscall.js.Js.global()
				.call((Go.str("eval") : GoString), Go.toInterface((Go.str("40") : GoString)))
				.type() #else null #end;
			__self__._float = #if !macro function(_p:GoString):GoFloat64 return stdgo.syscall.js.Js.global()
				.call((Go.str("eval") : GoString), Go.toInterface((Go.str("40") : GoString)))
				._float(_p) #else null #end;
			__self__._isNumber = #if !macro function():Bool return stdgo.syscall.js.Js.global()
				.call((Go.str("eval") : GoString), Go.toInterface((Go.str("40") : GoString)))
				._isNumber() #else null #end;
			__self__;
		}), Go.toInterface((2 : GoInt))).int();
		if (_got != (42 : GoInt)) {
			_t.errorf((Go.str("got %#v, want %#v") : GoString), Go.toInterface(_got), Go.toInterface((42 : GoInt)));
		};
	};
	_expectPanic(_t, function():Void {
		_dummys.call((Go.str("zero") : GoString));
	});
	_expectValueError(_t, function():Void {
		_dummys.get((Go.str("zero") : GoString)).call((Go.str("badMethod") : GoString));
	});
}

function testInvoke(_t:stdgo.testing.Testing.T):Void {
	var _i:GoInt64 = (40 : GoInt64);
	{
		var _got:GoInt = _dummys.get((Go.str("add") : GoString)).invoke(Go.toInterface(_i), Go.toInterface((2 : GoInt))).int();
		if (_got != (42 : GoInt)) {
			_t.errorf((Go.str("got %#v, want %#v") : GoString), Go.toInterface(_got), Go.toInterface((42 : GoInt)));
		};
	};
	_expectValueError(_t, function():Void {
		_dummys.get((Go.str("zero") : GoString)).invoke();
	});
}

function testNew(_t:stdgo.testing.Testing.T):Void {
	{
		var _got:GoInt = stdgo.syscall.js.Js.global()
			.get((Go.str("Array") : GoString))
			.new_(Go.toInterface((42 : GoInt)))
			.length_();
		if (_got != (42 : GoInt)) {
			_t.errorf((Go.str("got %#v, want %#v") : GoString), Go.toInterface(_got), Go.toInterface((42 : GoInt)));
		};
	};
	_expectValueError(_t, function():Void {
		_dummys.get((Go.str("zero") : GoString)).new_();
	});
}

function testInstanceOf(_t:stdgo.testing.Testing.T):Void {
	var _someArray:Value = (stdgo.syscall.js.Js.global()
		.get((Go.str("Array") : GoString))
		.new_() == null ? null : stdgo.syscall.js.Js.global()
		.get((Go.str("Array") : GoString))
		.new_()
		.__copy__());
	{
		var _got:Bool = _someArray.instanceOf((stdgo.syscall.js.Js.global()
			.get((Go.str("Array") : GoString)) == null ? null : stdgo.syscall.js.Js.global()
			.get((Go.str("Array") : GoString))
			.__copy__())),
			_want:Bool = true;
		if (_got != _want) {
			_t.errorf((Go.str("got %#v, want %#v") : GoString), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	{
		var _got:Bool = _someArray.instanceOf((stdgo.syscall.js.Js.global()
			.get((Go.str("Function") : GoString)) == null ? null : stdgo.syscall.js.Js.global()
			.get((Go.str("Function") : GoString))
			.__copy__())),
			_want:Bool = false;
		if (_got != _want) {
			_t.errorf((Go.str("got %#v, want %#v") : GoString), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
}

function testType(_t:stdgo.testing.Testing.T):Void {
	{
		var _got:Type = stdgo.syscall.js.Js.undefined().type(),
			_want:Type = (0 : Type);
		if (_got != _want) {
			_t.errorf((Go.str("got %s, want %s") : GoString), Go.toInterface({
				final __self__ = new Type_asInterface(_got);
				__self__.string = #if !macro function():GoString return _got.string() #else null #end;
				__self__._isObject = #if !macro function():Bool return _got._isObject() #else null #end;
				__self__;
			}), Go.toInterface({
				final __self__ = new Type_asInterface(_want);
				__self__.string = #if !macro function():GoString return _want.string() #else null #end;
				__self__._isObject = #if !macro function():Bool return _want._isObject() #else null #end;
				__self__;
			}));
		};
	};
	{
		var _got:Type = stdgo.syscall.js.Js.null_().type(),
			_want:Type = (1 : Type);
		if (_got != _want) {
			_t.errorf((Go.str("got %s, want %s") : GoString), Go.toInterface({
				final __self__ = new Type_asInterface(_got);
				__self__.string = #if !macro function():GoString return _got.string() #else null #end;
				__self__._isObject = #if !macro function():Bool return _got._isObject() #else null #end;
				__self__;
			}), Go.toInterface({
				final __self__ = new Type_asInterface(_want);
				__self__.string = #if !macro function():GoString return _want.string() #else null #end;
				__self__._isObject = #if !macro function():Bool return _want._isObject() #else null #end;
				__self__;
			}));
		};
	};
	{
		var _got:Type = stdgo.syscall.js.Js.valueOf(Go.toInterface(true)).type(),
			_want:Type = (2 : Type);
		if (_got != _want) {
			_t.errorf((Go.str("got %s, want %s") : GoString), Go.toInterface({
				final __self__ = new Type_asInterface(_got);
				__self__.string = #if !macro function():GoString return _got.string() #else null #end;
				__self__._isObject = #if !macro function():Bool return _got._isObject() #else null #end;
				__self__;
			}), Go.toInterface({
				final __self__ = new Type_asInterface(_want);
				__self__.string = #if !macro function():GoString return _want.string() #else null #end;
				__self__._isObject = #if !macro function():Bool return _want._isObject() #else null #end;
				__self__;
			}));
		};
	};
	{
		var _got:Type = stdgo.syscall.js.Js.valueOf(Go.toInterface((0 : GoInt))).type(),
			_want:Type = (3 : Type);
		if (_got != _want) {
			_t.errorf((Go.str("got %s, want %s") : GoString), Go.toInterface({
				final __self__ = new Type_asInterface(_got);
				__self__.string = #if !macro function():GoString return _got.string() #else null #end;
				__self__._isObject = #if !macro function():Bool return _got._isObject() #else null #end;
				__self__;
			}), Go.toInterface({
				final __self__ = new Type_asInterface(_want);
				__self__.string = #if !macro function():GoString return _want.string() #else null #end;
				__self__._isObject = #if !macro function():Bool return _want._isObject() #else null #end;
				__self__;
			}));
		};
	};
	{
		var _got:Type = stdgo.syscall.js.Js.valueOf(Go.toInterface((42 : GoInt))).type(),
			_want:Type = (3 : Type);
		if (_got != _want) {
			_t.errorf((Go.str("got %s, want %s") : GoString), Go.toInterface({
				final __self__ = new Type_asInterface(_got);
				__self__.string = #if !macro function():GoString return _got.string() #else null #end;
				__self__._isObject = #if !macro function():Bool return _got._isObject() #else null #end;
				__self__;
			}), Go.toInterface({
				final __self__ = new Type_asInterface(_want);
				__self__.string = #if !macro function():GoString return _want.string() #else null #end;
				__self__._isObject = #if !macro function():Bool return _want._isObject() #else null #end;
				__self__;
			}));
		};
	};
	{
		var _got:Type = stdgo.syscall.js.Js.valueOf(Go.toInterface((Go.str("test") : GoString))).type(),
			_want:Type = (4 : Type);
		if (_got != _want) {
			_t.errorf((Go.str("got %s, want %s") : GoString), Go.toInterface({
				final __self__ = new Type_asInterface(_got);
				__self__.string = #if !macro function():GoString return _got.string() #else null #end;
				__self__._isObject = #if !macro function():Bool return _got._isObject() #else null #end;
				__self__;
			}), Go.toInterface({
				final __self__ = new Type_asInterface(_want);
				__self__.string = #if !macro function():GoString return _want.string() #else null #end;
				__self__._isObject = #if !macro function():Bool return _want._isObject() #else null #end;
				__self__;
			}));
		};
	};
	{
		var _got:Type = stdgo.syscall.js.Js.global()
			.get((Go.str("Symbol") : GoString))
			.invoke(Go.toInterface((Go.str("test") : GoString)))
			.type(),
			_want:Type = (5 : Type);
		if (_got != _want) {
			_t.errorf((Go.str("got %s, want %s") : GoString), Go.toInterface({
				final __self__ = new Type_asInterface(_got);
				__self__.string = #if !macro function():GoString return _got.string() #else null #end;
				__self__._isObject = #if !macro function():Bool return _got._isObject() #else null #end;
				__self__;
			}), Go.toInterface({
				final __self__ = new Type_asInterface(_want);
				__self__.string = #if !macro function():GoString return _want.string() #else null #end;
				__self__._isObject = #if !macro function():Bool return _want._isObject() #else null #end;
				__self__;
			}));
		};
	};
	{
		var _got:Type = stdgo.syscall.js.Js.global().get((Go.str("Array") : GoString)).new_().type(),
			_want:Type = (6 : Type);
		if (_got != _want) {
			_t.errorf((Go.str("got %s, want %s") : GoString), Go.toInterface({
				final __self__ = new Type_asInterface(_got);
				__self__.string = #if !macro function():GoString return _got.string() #else null #end;
				__self__._isObject = #if !macro function():Bool return _got._isObject() #else null #end;
				__self__;
			}), Go.toInterface({
				final __self__ = new Type_asInterface(_want);
				__self__.string = #if !macro function():GoString return _want.string() #else null #end;
				__self__._isObject = #if !macro function():Bool return _want._isObject() #else null #end;
				__self__;
			}));
		};
	};
	{
		var _got:Type = stdgo.syscall.js.Js.global().get((Go.str("Array") : GoString)).type(),
			_want:Type = (7 : Type);
		if (_got != _want) {
			_t.errorf((Go.str("got %s, want %s") : GoString), Go.toInterface({
				final __self__ = new Type_asInterface(_got);
				__self__.string = #if !macro function():GoString return _got.string() #else null #end;
				__self__._isObject = #if !macro function():Bool return _got._isObject() #else null #end;
				__self__;
			}), Go.toInterface({
				final __self__ = new Type_asInterface(_want);
				__self__.string = #if !macro function():GoString return _want.string() #else null #end;
				__self__._isObject = #if !macro function():Bool return _want._isObject() #else null #end;
				__self__;
			}));
		};
	};
}

function testValueOf(_t:stdgo.testing.Testing.T):Void {
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
		var _got:GoInt = _a.index((1 : GoInt)).index((1 : GoInt)).int();
		if (_got != (42 : GoInt)) {
			_t.errorf((Go.str("got %v, want %v") : GoString), Go.toInterface(_got), Go.toInterface((42 : GoInt)));
		};
	};
	var _o:Value = (stdgo.syscall.js.Js.valueOf(Go.toInterface({
		final x = new stdgo.GoMap.GoObjectMap<GoString,
			AnyInterface>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
				stdgo.reflect.Reflect.GoType.interfaceType(true, []))));
		@:privateAccess x._keys = [(Go.str("x") : GoString)];
		@:privateAccess x._values = [
			Go.toInterface({
				final x = new stdgo.GoMap.GoObjectMap<GoString,
					AnyInterface>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
						stdgo.reflect.Reflect.GoType.interfaceType(true, []))));
				@:privateAccess x._keys = [(Go.str("y") : GoString)];
				@:privateAccess x._values = [Go.toInterface((42 : GoInt))];
				x;
			})
		];
		x;
	})) == null ? null : stdgo.syscall.js.Js.valueOf(Go.toInterface({
		final x = new stdgo.GoMap.GoObjectMap<GoString,
			AnyInterface>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
				stdgo.reflect.Reflect.GoType.interfaceType(true, []))));
		@:privateAccess x._keys = [(Go.str("x") : GoString)];
		@:privateAccess x._values = [
			Go.toInterface({
				final x = new stdgo.GoMap.GoObjectMap<GoString,
					AnyInterface>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
						stdgo.reflect.Reflect.GoType.interfaceType(true, []))));
				@:privateAccess x._keys = [(Go.str("y") : GoString)];
				@:privateAccess x._values = [Go.toInterface((42 : GoInt))];
				x;
			})
		];
		x;
	})).__copy__());
	{
		var _got:GoInt = _o.get((Go.str("x") : GoString)).get((Go.str("y") : GoString)).int();
		if (_got != (42 : GoInt)) {
			_t.errorf((Go.str("got %v, want %v") : GoString), Go.toInterface(_got), Go.toInterface((42 : GoInt)));
		};
	};
}

function testZeroValue(_t:stdgo.testing.Testing.T):Void {
	var _v:Value = ({} : Value);
	if (!_v.isUndefined()) {
		_t.error(Go.toInterface((Go.str("zero js.Value is not js.Undefined()") : GoString)));
	};
}

function testFuncOf(_t:stdgo.testing.Testing.T):Void {
	var __recover_exception__:AnyInterface = null;
	var __deferstack__:Array<Void->Void> = [];
	try {
		var _c = new Chan<T__struct_0>(0, () -> ({} : T__struct_0));
		var _cb:Func = (stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
			{
				var _got:GoInt = _args[(0 : GoInt)].int();
				if (_got != (42 : GoInt)) {
					_t.errorf((Go.str("got %#v, want %#v") : GoString), Go.toInterface(_got), Go.toInterface((42 : GoInt)));
				};
			};
			_c.__send__(({} : T__struct_0));
			return (null : AnyInterface);
		}) == null ? null : stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
			{
				var _got:GoInt = _args[(0 : GoInt)].int();
				if (_got != (42 : GoInt)) {
					_t.errorf((Go.str("got %#v, want %#v") : GoString), Go.toInterface(_got), Go.toInterface((42 : GoInt)));
				};
			};
			_c.__send__(({} : T__struct_0));
			return (null : AnyInterface);
		}).__copy__());
		__deferstack__.unshift(() -> _cb.release());
		stdgo.syscall.js.Js.global().call((Go.str("setTimeout") : GoString), Go.toInterface({
			final __self__ = new Func_asInterface(_cb);
			__self__.bool = #if !macro function():Bool return _cb.bool() #else null #end;
			__self__.call = #if !macro function(_m:GoString, _args:Slice<AnyInterface>):Value return _cb.call(_m, _args) #else null #end;
			__self__.delete = #if !macro function(_p:GoString):Void _cb.delete(_p) #else null #end;
			__self__.equal = #if !macro function(__0:Value):Bool return _cb.equal(__0) #else null #end;
			__self__.float = #if !macro function():GoFloat64 return _cb.float() #else null #end;
			__self__.get = #if !macro function(_p:GoString):Value return _cb.get(_p) #else null #end;
			__self__.index = #if !macro function(_i:GoInt):Value return _cb.index(_i) #else null #end;
			__self__.instanceOf = #if !macro function(__0:Value):Bool return _cb.instanceOf(__0) #else null #end;
			__self__.int = #if !macro function():GoInt return _cb.int() #else null #end;
			__self__.invoke = #if !macro function(_args:Slice<AnyInterface>):Value return _cb.invoke(_args) #else null #end;
			__self__.isNaN = #if !macro function():Bool return _cb.isNaN() #else null #end;
			__self__.isNull = #if !macro function():Bool return _cb.isNull() #else null #end;
			__self__.isUndefined = #if !macro function():Bool return _cb.isUndefined() #else null #end;
			__self__.length_ = #if !macro function():GoInt return _cb.length_() #else null #end;
			__self__.new_ = #if !macro function(_args:Slice<AnyInterface>):Value return _cb.new_(_args) #else null #end;
			__self__.release = #if !macro function():Void _cb.release() #else null #end;
			__self__.set = #if !macro function(_p:GoString, _x:AnyInterface):Void _cb.set(_p, _x) #else null #end;
			__self__.setIndex = #if !macro function(_i:GoInt, _x:AnyInterface):Void _cb.setIndex(_i, _x) #else null #end;
			__self__.string = #if !macro function():GoString return _cb.string() #else null #end;
			__self__.truthy = #if !macro function():Bool return _cb.truthy() #else null #end;
			__self__.type = #if !macro function():Type return _cb.type() #else null #end;
			__self__._float = #if !macro function(_p:GoString):GoFloat64 return _cb._float(_p) #else null #end;
			__self__._isNumber = #if !macro function():Bool return _cb._isNumber() #else null #end;
			__self__;
		}), Go.toInterface((0 : GoInt)), Go.toInterface((42 : GoInt)));
		_c.__get__();
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (__recover_exception__ != null)
				throw __recover_exception__;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		__recover_exception__ = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (__recover_exception__ != null)
			throw __recover_exception__;
		return;
	};
}

function testInvokeFunction(_t:stdgo.testing.Testing.T):Void {
	var __recover_exception__:AnyInterface = null;
	var __deferstack__:Array<Void->Void> = [];
	try {
		var _called:Bool = false;
		var _cb:Func = (stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
			var __recover_exception__:AnyInterface = null;
			var __deferstack__:Array<Void->Void> = [];
			var _cb2:Func = (stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
				_called = true;
				return Go.toInterface((42 : GoInt));
			}) == null ? null : stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
				_called = true;
				return Go.toInterface((42 : GoInt));
			}).__copy__());
			try {
				__deferstack__.unshift(() -> _cb2.release());
				{
					for (defer in __deferstack__) {
						defer();
					};
					return Go.toInterface({
						final __self__ = new Value_asInterface(_cb2.invoke());
						__self__.bool = #if !macro function():Bool return _cb2.invoke().bool() #else null #end;
						__self__.call = #if !macro function(_m:GoString,
								_args_:Slice<AnyInterface>):Value return _cb2.invoke().call(_m, _args_) #else null #end;
						__self__.delete = #if !macro function(_p:GoString):Void _cb2.invoke().delete(_p) #else null #end;
						__self__.equal = #if !macro function(__0:Value):Bool return _cb2.invoke().equal(__0) #else null #end;
						__self__.float = #if !macro function():GoFloat64 return _cb2.invoke().float() #else null #end;
						__self__.get = #if !macro function(_p:GoString):Value return _cb2.invoke().get(_p) #else null #end;
						__self__.index = #if !macro function(_i:GoInt):Value return _cb2.invoke().index(_i) #else null #end;
						__self__.instanceOf = #if !macro function(__0:Value):Bool return _cb2.invoke().instanceOf(__0) #else null #end;
						__self__.int = #if !macro function():GoInt return _cb2.invoke().int() #else null #end;
						__self__.invoke = #if !macro function(_args__:Slice<AnyInterface>):Value return _cb2.invoke().invoke(_args__) #else null #end;
						__self__.isNaN = #if !macro function():Bool return _cb2.invoke().isNaN() #else null #end;
						__self__.isNull = #if !macro function():Bool return _cb2.invoke().isNull() #else null #end;
						__self__.isUndefined = #if !macro function():Bool return _cb2.invoke().isUndefined() #else null #end;
						__self__.length_ = #if !macro function():GoInt return _cb2.invoke().length_() #else null #end;
						__self__.new_ = #if !macro function(_args___:Slice<AnyInterface>):Value return _cb2.invoke().new_(_args___) #else null #end;
						__self__.set = #if !macro function(_p:GoString, _x:AnyInterface):Void _cb2.invoke().set(_p, _x) #else null #end;
						__self__.setIndex = #if !macro function(_i:GoInt, _x:AnyInterface):Void _cb2.invoke().setIndex(_i, _x) #else null #end;
						__self__.string = #if !macro function():GoString return _cb2.invoke().string() #else null #end;
						__self__.truthy = #if !macro function():Bool return _cb2.invoke().truthy() #else null #end;
						__self__.type = #if !macro function():Type return _cb2.invoke().type() #else null #end;
						__self__._float = #if !macro function(_p:GoString):GoFloat64 return _cb2.invoke()._float(_p) #else null #end;
						__self__._isNumber = #if !macro function():Bool return _cb2.invoke()._isNumber() #else null #end;
						__self__;
					});
				};
				for (defer in __deferstack__) {
					defer();
				};
				{
					for (defer in __deferstack__) {
						defer();
					};
					if (__recover_exception__ != null)
						throw __recover_exception__;
					return (null : AnyInterface);
				};
			} catch (__exception__) {
				if (!(__exception__.native is AnyInterfaceData))
					throw __exception__;
				__recover_exception__ = __exception__.native;
				for (defer in __deferstack__) {
					defer();
				};
				if (__recover_exception__ != null)
					throw __recover_exception__;
				return (null : AnyInterface);
			};
		}) == null ? null : stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
			var __recover_exception__:AnyInterface = null;
			var __deferstack__:Array<Void->Void> = [];
			var _cb2:Func = (stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
				_called = true;
				return Go.toInterface((42 : GoInt));
			}) == null ? null : stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
				_called = true;
				return Go.toInterface((42 : GoInt));
			}).__copy__());
			try {
				__deferstack__.unshift(() -> _cb2.release());
				{
					for (defer in __deferstack__) {
						defer();
					};
					return Go.toInterface({
						final __self__ = new Value_asInterface(_cb2.invoke());
						__self__.bool = #if !macro function():Bool return _cb2.invoke().bool() #else null #end;
						__self__.call = #if !macro function(_m:GoString,
								_args_:Slice<AnyInterface>):Value return _cb2.invoke().call(_m, _args_) #else null #end;
						__self__.delete = #if !macro function(_p:GoString):Void _cb2.invoke().delete(_p) #else null #end;
						__self__.equal = #if !macro function(__0:Value):Bool return _cb2.invoke().equal(__0) #else null #end;
						__self__.float = #if !macro function():GoFloat64 return _cb2.invoke().float() #else null #end;
						__self__.get = #if !macro function(_p:GoString):Value return _cb2.invoke().get(_p) #else null #end;
						__self__.index = #if !macro function(_i:GoInt):Value return _cb2.invoke().index(_i) #else null #end;
						__self__.instanceOf = #if !macro function(__0:Value):Bool return _cb2.invoke().instanceOf(__0) #else null #end;
						__self__.int = #if !macro function():GoInt return _cb2.invoke().int() #else null #end;
						__self__.invoke = #if !macro function(_args__:Slice<AnyInterface>):Value return _cb2.invoke().invoke(_args__) #else null #end;
						__self__.isNaN = #if !macro function():Bool return _cb2.invoke().isNaN() #else null #end;
						__self__.isNull = #if !macro function():Bool return _cb2.invoke().isNull() #else null #end;
						__self__.isUndefined = #if !macro function():Bool return _cb2.invoke().isUndefined() #else null #end;
						__self__.length_ = #if !macro function():GoInt return _cb2.invoke().length_() #else null #end;
						__self__.new_ = #if !macro function(_args___:Slice<AnyInterface>):Value return _cb2.invoke().new_(_args___) #else null #end;
						__self__.set = #if !macro function(_p:GoString, _x:AnyInterface):Void _cb2.invoke().set(_p, _x) #else null #end;
						__self__.setIndex = #if !macro function(_i:GoInt, _x:AnyInterface):Void _cb2.invoke().setIndex(_i, _x) #else null #end;
						__self__.string = #if !macro function():GoString return _cb2.invoke().string() #else null #end;
						__self__.truthy = #if !macro function():Bool return _cb2.invoke().truthy() #else null #end;
						__self__.type = #if !macro function():Type return _cb2.invoke().type() #else null #end;
						__self__._float = #if !macro function(_p:GoString):GoFloat64 return _cb2.invoke()._float(_p) #else null #end;
						__self__._isNumber = #if !macro function():Bool return _cb2.invoke()._isNumber() #else null #end;
						__self__;
					});
				};
				for (defer in __deferstack__) {
					defer();
				};
				{
					for (defer in __deferstack__) {
						defer();
					};
					if (__recover_exception__ != null)
						throw __recover_exception__;
					return (null : AnyInterface);
				};
			} catch (__exception__) {
				if (!(__exception__.native is AnyInterfaceData))
					throw __exception__;
				__recover_exception__ = __exception__.native;
				for (defer in __deferstack__) {
					defer();
				};
				if (__recover_exception__ != null)
					throw __recover_exception__;
				return (null : AnyInterface);
			};
		}).__copy__());
		__deferstack__.unshift(() -> _cb.release());
		{
			var _got:GoInt = _cb.invoke().int();
			if (_got != (42 : GoInt)) {
				_t.errorf((Go.str("got %#v, want %#v") : GoString), Go.toInterface(_got), Go.toInterface((42 : GoInt)));
			};
		};
		if (!_called) {
			_t.error(Go.toInterface((Go.str("function not called") : GoString)));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (__recover_exception__ != null)
				throw __recover_exception__;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		__recover_exception__ = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (__recover_exception__ != null)
			throw __recover_exception__;
		return;
	};
}

function testInterleavedFunctions(_t:stdgo.testing.Testing.T):Void {
	var _c1 = new Chan<T__struct_0>(0, () -> ({} : T__struct_0));
	var _c2 = new Chan<T__struct_0>(0, () -> ({} : T__struct_0));
	stdgo.syscall.js.Js.global().get((Go.str("setTimeout") : GoString)).invoke(Go.toInterface({
		final __self__ = new Func_asInterface(stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
			_c1.__send__(({} : T__struct_0));
			_c2.__get__();
			return (null : AnyInterface);
		}));
		__self__.bool = #if !macro function():Bool return stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
			_c1.__send__(({} : T__struct_0));
			_c2.__get__();
			return (null : AnyInterface);
		}).bool() #else null #end;
		__self__.call = #if !macro function(_m:GoString,
				_args:Slice<AnyInterface>):Value return stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
				_c1.__send__(({} : T__struct_0));
				_c2.__get__();
				return (null : AnyInterface);
			}).call(_m, _args) #else null #end;
		__self__.delete = #if !macro function(_p:GoString):Void stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
			_c1.__send__(({} : T__struct_0));
			_c2.__get__();
			return (null : AnyInterface);
		}).delete(_p) #else null #end;
		__self__.equal = #if !macro function(__0:Value):Bool return stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
			_c1.__send__(({} : T__struct_0));
			_c2.__get__();
			return (null : AnyInterface);
		}).equal(__0) #else null #end;
		__self__.float = #if !macro function():GoFloat64 return stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
			_c1.__send__(({} : T__struct_0));
			_c2.__get__();
			return (null : AnyInterface);
		}).float() #else null #end;
		__self__.get = #if !macro function(_p:GoString):Value return stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
			_c1.__send__(({} : T__struct_0));
			_c2.__get__();
			return (null : AnyInterface);
		}).get(_p) #else null #end;
		__self__.index = #if !macro function(_i:GoInt):Value return stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
			_c1.__send__(({} : T__struct_0));
			_c2.__get__();
			return (null : AnyInterface);
		}).index(_i) #else null #end;
		__self__.instanceOf = #if !macro function(__0:Value):Bool return stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
			_c1.__send__(({} : T__struct_0));
			_c2.__get__();
			return (null : AnyInterface);
		}).instanceOf(__0) #else null #end;
		__self__.int = #if !macro function():GoInt return stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
			_c1.__send__(({} : T__struct_0));
			_c2.__get__();
			return (null : AnyInterface);
		}).int() #else null #end;
		__self__.invoke = #if !macro function(_args:Slice<AnyInterface>):Value return stdgo.syscall.js.Js.funcOf(function(_this:Value,
				_args:Slice<Value>):AnyInterface {
			_c1.__send__(({} : T__struct_0));
			_c2.__get__();
			return (null : AnyInterface);
		})
			.invoke(_args) #else null #end;
		__self__.isNaN = #if !macro function():Bool return stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
			_c1.__send__(({} : T__struct_0));
			_c2.__get__();
			return (null : AnyInterface);
		}).isNaN() #else null #end;
		__self__.isNull = #if !macro function():Bool return stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
			_c1.__send__(({} : T__struct_0));
			_c2.__get__();
			return (null : AnyInterface);
		}).isNull() #else null #end;
		__self__.isUndefined = #if !macro function():Bool return stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
			_c1.__send__(({} : T__struct_0));
			_c2.__get__();
			return (null : AnyInterface);
		}).isUndefined() #else null #end;
		__self__.length_ = #if !macro function():GoInt return stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
			_c1.__send__(({} : T__struct_0));
			_c2.__get__();
			return (null : AnyInterface);
		}).length_() #else null #end;
		__self__.new_ = #if !macro function(_args:Slice<AnyInterface>):Value return stdgo.syscall.js.Js.funcOf(function(_this:Value,
				_args:Slice<Value>):AnyInterface {
			_c1.__send__(({} : T__struct_0));
			_c2.__get__();
			return (null : AnyInterface);
		})
			.new_(_args) #else null #end;
		__self__.release = #if !macro function():Void stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
			_c1.__send__(({} : T__struct_0));
			_c2.__get__();
			return (null : AnyInterface);
		}).release() #else null #end;
		__self__.set = #if !macro function(_p:GoString,
				_x:AnyInterface):Void stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
				_c1.__send__(({} : T__struct_0));
				_c2.__get__();
				return (null : AnyInterface);
			}).set(_p, _x) #else null #end;
		__self__.setIndex = #if !macro function(_i:GoInt,
				_x:AnyInterface):Void stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
				_c1.__send__(({} : T__struct_0));
				_c2.__get__();
				return (null : AnyInterface);
			}).setIndex(_i, _x) #else null #end;
		__self__.string = #if !macro function():GoString return stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
			_c1.__send__(({} : T__struct_0));
			_c2.__get__();
			return (null : AnyInterface);
		}).string() #else null #end;
		__self__.truthy = #if !macro function():Bool return stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
			_c1.__send__(({} : T__struct_0));
			_c2.__get__();
			return (null : AnyInterface);
		}).truthy() #else null #end;
		__self__.type = #if !macro function():Type return stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
			_c1.__send__(({} : T__struct_0));
			_c2.__get__();
			return (null : AnyInterface);
		}).type() #else null #end;
		__self__._float = #if !macro function(_p:GoString):GoFloat64 return stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
			_c1.__send__(({} : T__struct_0));
			_c2.__get__();
			return (null : AnyInterface);
		})._float(_p) #else null #end;
		__self__._isNumber = #if !macro function():Bool return stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
			_c1.__send__(({} : T__struct_0));
			_c2.__get__();
			return (null : AnyInterface);
		})._isNumber() #else null #end;
		__self__;
	}), Go.toInterface((0 : GoInt)));
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
		stdgo.fmt.Fmt.println((Go.str("button clicked") : GoString));
		_cb.release();
		return (null : AnyInterface);
	}) == null ? null : stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
		stdgo.fmt.Fmt.println((Go.str("button clicked") : GoString));
		_cb.release();
		return (null : AnyInterface);
	}).__copy__());
	stdgo.syscall.js.Js.global()
		.get((Go.str("document") : GoString))
		.call((Go.str("getElementById") : GoString), Go.toInterface((Go.str("myButton") : GoString)))
		.call((Go.str("addEventListener") : GoString), Go.toInterface((Go.str("click") : GoString)), Go.toInterface({
			final __self__ = new Func_asInterface(_cb);
			__self__.bool = #if !macro function():Bool return _cb.bool() #else null #end;
			__self__.call = #if !macro function(_m:GoString, _args:Slice<AnyInterface>):Value return _cb.call(_m, _args) #else null #end;
			__self__.delete = #if !macro function(_p:GoString):Void _cb.delete(_p) #else null #end;
			__self__.equal = #if !macro function(__0:Value):Bool return _cb.equal(__0) #else null #end;
			__self__.float = #if !macro function():GoFloat64 return _cb.float() #else null #end;
			__self__.get = #if !macro function(_p:GoString):Value return _cb.get(_p) #else null #end;
			__self__.index = #if !macro function(_i:GoInt):Value return _cb.index(_i) #else null #end;
			__self__.instanceOf = #if !macro function(__0:Value):Bool return _cb.instanceOf(__0) #else null #end;
			__self__.int = #if !macro function():GoInt return _cb.int() #else null #end;
			__self__.invoke = #if !macro function(_args:Slice<AnyInterface>):Value return _cb.invoke(_args) #else null #end;
			__self__.isNaN = #if !macro function():Bool return _cb.isNaN() #else null #end;
			__self__.isNull = #if !macro function():Bool return _cb.isNull() #else null #end;
			__self__.isUndefined = #if !macro function():Bool return _cb.isUndefined() #else null #end;
			__self__.length_ = #if !macro function():GoInt return _cb.length_() #else null #end;
			__self__.new_ = #if !macro function(_args:Slice<AnyInterface>):Value return _cb.new_(_args) #else null #end;
			__self__.release = #if !macro function():Void _cb.release() #else null #end;
			__self__.set = #if !macro function(_p:GoString, _x:AnyInterface):Void _cb.set(_p, _x) #else null #end;
			__self__.setIndex = #if !macro function(_i:GoInt, _x:AnyInterface):Void _cb.setIndex(_i, _x) #else null #end;
			__self__.string = #if !macro function():GoString return _cb.string() #else null #end;
			__self__.truthy = #if !macro function():Bool return _cb.truthy() #else null #end;
			__self__.type = #if !macro function():Type return _cb.type() #else null #end;
			__self__._float = #if !macro function(_p:GoString):GoFloat64 return _cb._float(_p) #else null #end;
			__self__._isNumber = #if !macro function():Bool return _cb._isNumber() #else null #end;
			__self__;
		}));
}

/**
	// See
	// - https://developer.mozilla.org/en-US/docs/Glossary/Truthy
	// - https://stackoverflow.com/questions/19839952/all-falsey-values-in-javascript/19839953#19839953
	// - http://www.ecma-international.org/ecma-262/5.1/#sec-9.2
**/
function testTruthy(_t:stdgo.testing.Testing.T):Void {
	var _want:Bool = true;
	for (_0 => _key in (new Slice<GoString>(0, 0, (Go.str("someBool") : GoString), (Go.str("someString") : GoString), (Go.str("someInt") : GoString),
		(Go.str("someFloat") : GoString), (Go.str("someArray") : GoString), (Go.str("someDate") : GoString), (Go.str("stringZero") : GoString),
		(Go.str("add") : GoString), (Go.str("emptyObj") : GoString), (Go.str("emptyArray") : GoString), (Go.str("Infinity") : GoString),
		(Go.str("NegInfinity") : GoString), (Go.str("objNumber0") : GoString), (Go.str("objBooleanFalse") : GoString)) : Slice<GoString>)) {
		{
			var _got:Bool = _dummys.get(_key).truthy();
			if (_got != _want) {
				_t.errorf((Go.str("%s: got %#v, want %#v") : GoString), Go.toInterface(_key), Go.toInterface(_got), Go.toInterface(_want));
			};
		};
	};
	_want = false;
	{
		var _got:Bool = _dummys.get((Go.str("zero") : GoString)).truthy();
		if (_got != _want) {
			_t.errorf((Go.str("got %#v, want %#v") : GoString), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	{
		var _got:Bool = _dummys.get((Go.str("NaN") : GoString)).truthy();
		if (_got != _want) {
			_t.errorf((Go.str("got %#v, want %#v") : GoString), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	{
		var _got:Bool = stdgo.syscall.js.Js.valueOf(Go.toInterface((Go.str() : GoString))).truthy();
		if (_got != _want) {
			_t.errorf((Go.str("got %#v, want %#v") : GoString), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	{
		var _got:Bool = stdgo.syscall.js.Js.null_().truthy();
		if (_got != _want) {
			_t.errorf((Go.str("got %#v, want %#v") : GoString), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	{
		var _got:Bool = stdgo.syscall.js.Js.undefined().truthy();
		if (_got != _want) {
			_t.errorf((Go.str("got %#v, want %#v") : GoString), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
}

function _expectValueError(_t:stdgo.testing.Testing.T, _fn:() -> Void):Void {
	var __recover_exception__:AnyInterface = null;
	var __deferstack__:Array<Void->Void> = [];
	try {
		__deferstack__.unshift(() -> {
			var a = function():Void {
				var __recover_exception__:AnyInterface = null;
				var _err:AnyInterface = Go.toInterface(({
					final r = __recover_exception__;
					__recover_exception__ = null;
					r;
				}));
				{
					var __tmp__ = try {
						{value: ((_err.value : Dynamic).__t__ : ValueError), ok: true};
					} catch (_) {
						{value: (null : ValueError), ok: false};
					}, _0 = __tmp__.value, _ok = __tmp__.ok;
					if (!_ok) {
						_t.errorf((Go.str("expected *js.ValueError, got %T") : GoString), Go.toInterface(_err));
					};
				};
			};
			a();
		});
		_fn();
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (__recover_exception__ != null)
				throw __recover_exception__;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		__recover_exception__ = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (__recover_exception__ != null)
			throw __recover_exception__;
		return;
	};
}

function _expectPanic(_t:stdgo.testing.Testing.T, _fn:() -> Void):Void {
	var __recover_exception__:AnyInterface = null;
	var __deferstack__:Array<Void->Void> = [];
	try {
		__deferstack__.unshift(() -> {
			var a = function():Void {
				var __recover_exception__:AnyInterface = null;
				var _err:AnyInterface = Go.toInterface(({
					final r = __recover_exception__;
					__recover_exception__ = null;
					r;
				}));
				if (_err == null) {
					_t.errorf((Go.str("expected panic") : GoString));
				};
			};
			a();
		});
		_fn();
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (__recover_exception__ != null)
				throw __recover_exception__;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		__recover_exception__ = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (__recover_exception__ != null)
			throw __recover_exception__;
		return;
	};
}

function testCopyBytesToGo(_t:stdgo.testing.Testing.T):Void {
	for (_0 => _tt in _copyTests) {
		_t.run(stdgo.fmt.Fmt.sprintf((Go.str("%d-to-%d") : GoString), Go.toInterface(_tt._srcLen), Go.toInterface(_tt._dstLen)),
			function(_t:stdgo.testing.Testing.T):Void {
				var _src:Value = (stdgo.syscall.js.Js.global()
					.get((Go.str("Uint8Array") : GoString))
					.new_(Go.toInterface(_tt._srcLen)) == null ? null : stdgo.syscall.js.Js.global()
					.get((Go.str("Uint8Array") : GoString))
					.new_(Go.toInterface(_tt._srcLen))
					.__copy__());
				if (_tt._srcLen >= (2 : GoInt)) {
					_src.setIndex((1 : GoInt), Go.toInterface((42 : GoInt)));
				};
				var _dst = new Slice<GoUInt8>((_tt._dstLen : GoInt).toBasic(), 0, ...[for (i in 0...(_tt._dstLen : GoInt).toBasic()) (0 : GoUInt8)]);
				{
					var _got:GoInt = stdgo.syscall.js.Js.copyBytesToGo(_dst, (_src == null ? null : _src.__copy__())),
						_want:GoInt = _tt._copyLen;
					if (_got != _want) {
						_t.errorf((Go.str("copied %d, want %d") : GoString), Go.toInterface(_got), Go.toInterface(_want));
					};
				};
				if (_tt._dstLen >= (2 : GoInt)) {
					{
						var _got:GoInt = (_dst[(1 : GoInt)] : GoInt),
							_want:GoInt = (42 : GoInt);
						if (_got != _want) {
							_t.errorf((Go.str("got %d, want %d") : GoString), Go.toInterface(_got), Go.toInterface(_want));
						};
					};
				};
			});
	};
}

function testCopyBytesToJS(_t:stdgo.testing.Testing.T):Void {
	for (_0 => _tt in _copyTests) {
		_t.run(stdgo.fmt.Fmt.sprintf((Go.str("%d-to-%d") : GoString), Go.toInterface(_tt._srcLen), Go.toInterface(_tt._dstLen)),
			function(_t:stdgo.testing.Testing.T):Void {
				var _src = new Slice<GoUInt8>((_tt._srcLen : GoInt).toBasic(), 0, ...[for (i in 0...(_tt._srcLen : GoInt).toBasic()) (0 : GoUInt8)]);
				if (_tt._srcLen >= (2 : GoInt)) {
					_src[(1 : GoInt)] = (42 : GoUInt8);
				};
				var _dst:Value = (stdgo.syscall.js.Js.global()
					.get((Go.str("Uint8Array") : GoString))
					.new_(Go.toInterface(_tt._dstLen)) == null ? null : stdgo.syscall.js.Js.global()
					.get((Go.str("Uint8Array") : GoString))
					.new_(Go.toInterface(_tt._dstLen))
					.__copy__());
				{
					var _got:GoInt = stdgo.syscall.js.Js.copyBytesToJS((_dst == null ? null : _dst.__copy__()), _src),
						_want:GoInt = _tt._copyLen;
					if (_got != _want) {
						_t.errorf((Go.str("copied %d, want %d") : GoString), Go.toInterface(_got), Go.toInterface(_want));
					};
				};
				if (_tt._dstLen >= (2 : GoInt)) {
					{
						var _got:GoInt = _dst.index((1 : GoInt)).int(),
							_want:GoInt = (42 : GoInt);
						if (_got != _want) {
							_t.errorf((Go.str("got %d, want %d") : GoString), Go.toInterface(_got), Go.toInterface(_want));
						};
					};
				};
			});
	};
}

function testGarbageCollection(_t:stdgo.testing.Testing.T):Void {
	var _before:GoInt = stdgo.syscall.js.Js.jsgo.get((Go.str("_values") : GoString)).length_();
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (1000:GoInt), _i++, {
			(stdgo.syscall.js.Js.global()
				.get((Go.str("Object") : GoString))
				.new_()
				.call((Go.str("toString") : GoString))
				.string() : GoString);
			stdgo.runtime.Runtime.gc();
		});
	};
	var _after:GoInt = stdgo.syscall.js.Js.jsgo.get((Go.str("_values") : GoString)).length_();
	if ((_after - _before) > (500 : GoInt)) {
		_t.errorf((Go.str("garbage collection ineffective") : GoString));
	};
}

/**
	// BenchmarkDOM is a simple benchmark which emulates a webapp making DOM operations.
	// It creates a div, and sets its id. Then searches by that id and sets some data.
	// Finally it removes that div.
**/
function benchmarkDOM(_b:stdgo.testing.Testing.B):Void {
	var _document:Value = (stdgo.syscall.js.Js.global()
		.get((Go.str("document") : GoString)) == null ? null : stdgo.syscall.js.Js.global()
		.get((Go.str("document") : GoString))
		.__copy__());
	if (_document.isUndefined()) {
		_b.skip(Go.toInterface((Go.str("Not a browser environment. Skipping.") : GoString)));
	};
	var _data:GoString = (Go.str("someString") : GoString);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			var _div:Value = (_document.call((Go.str("createElement") : GoString),
				Go.toInterface((Go.str("div") : GoString))) == null ? null : _document.call((Go.str("createElement") : GoString),
					Go.toInterface((Go.str("div") : GoString)))
				.__copy__());
			_div.call((Go.str("setAttribute") : GoString), Go.toInterface((Go.str("id") : GoString)), Go.toInterface((Go.str("myDiv") : GoString)));
			_document.get((Go.str("body") : GoString)).call((Go.str("appendChild") : GoString), Go.toInterface({
				final __self__ = new Value_asInterface(_div);
				__self__.bool = #if !macro function():Bool return _div.bool() #else null #end;
				__self__.call = #if !macro function(_m:GoString, _args:Slice<AnyInterface>):Value return _div.call(_m, _args) #else null #end;
				__self__.delete = #if !macro function(_p:GoString):Void _div.delete(_p) #else null #end;
				__self__.equal = #if !macro function(__0:Value):Bool return _div.equal(__0) #else null #end;
				__self__.float = #if !macro function():GoFloat64 return _div.float() #else null #end;
				__self__.get = #if !macro function(_p:GoString):Value return _div.get(_p) #else null #end;
				__self__.index = #if !macro function(_i:GoInt):Value return _div.index(_i) #else null #end;
				__self__.instanceOf = #if !macro function(__0:Value):Bool return _div.instanceOf(__0) #else null #end;
				__self__.int = #if !macro function():GoInt return _div.int() #else null #end;
				__self__.invoke = #if !macro function(_args:Slice<AnyInterface>):Value return _div.invoke(_args) #else null #end;
				__self__.isNaN = #if !macro function():Bool return _div.isNaN() #else null #end;
				__self__.isNull = #if !macro function():Bool return _div.isNull() #else null #end;
				__self__.isUndefined = #if !macro function():Bool return _div.isUndefined() #else null #end;
				__self__.length_ = #if !macro function():GoInt return _div.length_() #else null #end;
				__self__.new_ = #if !macro function(_args:Slice<AnyInterface>):Value return _div.new_(_args) #else null #end;
				__self__.set = #if !macro function(_p:GoString, _x:AnyInterface):Void _div.set(_p, _x) #else null #end;
				__self__.setIndex = #if !macro function(_i:GoInt, _x:AnyInterface):Void _div.setIndex(_i, _x) #else null #end;
				__self__.string = #if !macro function():GoString return _div.string() #else null #end;
				__self__.truthy = #if !macro function():Bool return _div.truthy() #else null #end;
				__self__.type = #if !macro function():Type return _div.type() #else null #end;
				__self__._float = #if !macro function(_p:GoString):GoFloat64 return _div._float(_p) #else null #end;
				__self__._isNumber = #if !macro function():Bool return _div._isNumber() #else null #end;
				__self__;
			}));
			var _myDiv:Value = (_document.call((Go.str("getElementById") : GoString),
				Go.toInterface((Go.str("myDiv") : GoString))) == null ? null : _document.call((Go.str("getElementById") : GoString),
					Go.toInterface((Go.str("myDiv") : GoString)))
				.__copy__());
			_myDiv.set((Go.str("innerHTML") : GoString), Go.toInterface((Go.str("someString") : GoString)));
			{
				var _got:GoString = (_myDiv.get((Go.str("innerHTML") : GoString)).string() : GoString),
					_want:GoString = (Go.str("someString") : GoString);
				if (_got != _want) {
					_b.errorf((Go.str("got %s, want %s") : GoString), Go.toInterface(_got), Go.toInterface(_want));
				};
			};
			_document.get((Go.str("body") : GoString)).call((Go.str("removeChild") : GoString), Go.toInterface({
				final __self__ = new Value_asInterface(_div);
				__self__.bool = #if !macro function():Bool return _div.bool() #else null #end;
				__self__.call = #if !macro function(_m:GoString, _args:Slice<AnyInterface>):Value return _div.call(_m, _args) #else null #end;
				__self__.delete = #if !macro function(_p:GoString):Void _div.delete(_p) #else null #end;
				__self__.equal = #if !macro function(__0:Value):Bool return _div.equal(__0) #else null #end;
				__self__.float = #if !macro function():GoFloat64 return _div.float() #else null #end;
				__self__.get = #if !macro function(_p:GoString):Value return _div.get(_p) #else null #end;
				__self__.index = #if !macro function(_i:GoInt):Value return _div.index(_i) #else null #end;
				__self__.instanceOf = #if !macro function(__0:Value):Bool return _div.instanceOf(__0) #else null #end;
				__self__.int = #if !macro function():GoInt return _div.int() #else null #end;
				__self__.invoke = #if !macro function(_args:Slice<AnyInterface>):Value return _div.invoke(_args) #else null #end;
				__self__.isNaN = #if !macro function():Bool return _div.isNaN() #else null #end;
				__self__.isNull = #if !macro function():Bool return _div.isNull() #else null #end;
				__self__.isUndefined = #if !macro function():Bool return _div.isUndefined() #else null #end;
				__self__.length_ = #if !macro function():GoInt return _div.length_() #else null #end;
				__self__.new_ = #if !macro function(_args:Slice<AnyInterface>):Value return _div.new_(_args) #else null #end;
				__self__.set = #if !macro function(_p:GoString, _x:AnyInterface):Void _div.set(_p, _x) #else null #end;
				__self__.setIndex = #if !macro function(_i:GoInt, _x:AnyInterface):Void _div.setIndex(_i, _x) #else null #end;
				__self__.string = #if !macro function():GoString return _div.string() #else null #end;
				__self__.truthy = #if !macro function():Bool return _div.truthy() #else null #end;
				__self__.type = #if !macro function():Type return _div.type() #else null #end;
				__self__._float = #if !macro function(_p:GoString):GoFloat64 return _div._float(_p) #else null #end;
				__self__._isNumber = #if !macro function():Bool return _div._isNumber() #else null #end;
				__self__;
			}));
		});
	};
}

function testGlobal(_t:stdgo.testing.Testing.T):Void {
	var __recover_exception__:AnyInterface = null;
	var __deferstack__:Array<Void->Void> = [];
	try {
		var _ident:Func = (stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
			return Go.toInterface({
				final __self__ = new Value_asInterface(_args[(0 : GoInt)]);
				__self__.bool = #if !macro function():Bool return _args[(0 : GoInt)].bool() #else null #end;
				__self__.call = #if !macro function(_m:GoString, _args_:Slice<AnyInterface>):Value return _args[(0 : GoInt)].call(_m, _args_) #else null #end;
				__self__.delete = #if !macro function(_p:GoString):Void _args[(0 : GoInt)].delete(_p) #else null #end;
				__self__.equal = #if !macro function(__0:Value):Bool return _args[(0 : GoInt)].equal(__0) #else null #end;
				__self__.float = #if !macro function():GoFloat64 return _args[(0 : GoInt)].float() #else null #end;
				__self__.get = #if !macro function(_p:GoString):Value return _args[(0 : GoInt)].get(_p) #else null #end;
				__self__.index = #if !macro function(_i:GoInt):Value return _args[(0 : GoInt)].index(_i) #else null #end;
				__self__.instanceOf = #if !macro function(__0:Value):Bool return _args[(0 : GoInt)].instanceOf(__0) #else null #end;
				__self__.int = #if !macro function():GoInt return _args[(0 : GoInt)].int() #else null #end;
				__self__.invoke = #if !macro function(_args__:Slice<AnyInterface>):Value return _args[(0 : GoInt)].invoke(_args__) #else null #end;
				__self__.isNaN = #if !macro function():Bool return _args[(0 : GoInt)].isNaN() #else null #end;
				__self__.isNull = #if !macro function():Bool return _args[(0 : GoInt)].isNull() #else null #end;
				__self__.isUndefined = #if !macro function():Bool return _args[(0 : GoInt)].isUndefined() #else null #end;
				__self__.length_ = #if !macro function():GoInt return _args[(0 : GoInt)].length_() #else null #end;
				__self__.new_ = #if !macro function(_args___:Slice<AnyInterface>):Value return _args[(0 : GoInt)].new_(_args___) #else null #end;
				__self__.set = #if !macro function(_p:GoString, _x:AnyInterface):Void _args[(0 : GoInt)].set(_p, _x) #else null #end;
				__self__.setIndex = #if !macro function(_i:GoInt, _x:AnyInterface):Void _args[(0 : GoInt)].setIndex(_i, _x) #else null #end;
				__self__.string = #if !macro function():GoString return _args[(0 : GoInt)].string() #else null #end;
				__self__.truthy = #if !macro function():Bool return _args[(0 : GoInt)].truthy() #else null #end;
				__self__.type = #if !macro function():Type return _args[(0 : GoInt)].type() #else null #end;
				__self__._float = #if !macro function(_p:GoString):GoFloat64 return _args[(0 : GoInt)]._float(_p) #else null #end;
				__self__._isNumber = #if !macro function():Bool return _args[(0 : GoInt)]._isNumber() #else null #end;
				__self__;
			});
		}) == null ? null : stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
			return Go.toInterface({
				final __self__ = new Value_asInterface(_args[(0 : GoInt)]);
				__self__.bool = #if !macro function():Bool return _args[(0 : GoInt)].bool() #else null #end;
				__self__.call = #if !macro function(_m:GoString, _args_:Slice<AnyInterface>):Value return _args[(0 : GoInt)].call(_m, _args_) #else null #end;
				__self__.delete = #if !macro function(_p:GoString):Void _args[(0 : GoInt)].delete(_p) #else null #end;
				__self__.equal = #if !macro function(__0:Value):Bool return _args[(0 : GoInt)].equal(__0) #else null #end;
				__self__.float = #if !macro function():GoFloat64 return _args[(0 : GoInt)].float() #else null #end;
				__self__.get = #if !macro function(_p:GoString):Value return _args[(0 : GoInt)].get(_p) #else null #end;
				__self__.index = #if !macro function(_i:GoInt):Value return _args[(0 : GoInt)].index(_i) #else null #end;
				__self__.instanceOf = #if !macro function(__0:Value):Bool return _args[(0 : GoInt)].instanceOf(__0) #else null #end;
				__self__.int = #if !macro function():GoInt return _args[(0 : GoInt)].int() #else null #end;
				__self__.invoke = #if !macro function(_args__:Slice<AnyInterface>):Value return _args[(0 : GoInt)].invoke(_args__) #else null #end;
				__self__.isNaN = #if !macro function():Bool return _args[(0 : GoInt)].isNaN() #else null #end;
				__self__.isNull = #if !macro function():Bool return _args[(0 : GoInt)].isNull() #else null #end;
				__self__.isUndefined = #if !macro function():Bool return _args[(0 : GoInt)].isUndefined() #else null #end;
				__self__.length_ = #if !macro function():GoInt return _args[(0 : GoInt)].length_() #else null #end;
				__self__.new_ = #if !macro function(_args___:Slice<AnyInterface>):Value return _args[(0 : GoInt)].new_(_args___) #else null #end;
				__self__.set = #if !macro function(_p:GoString, _x:AnyInterface):Void _args[(0 : GoInt)].set(_p, _x) #else null #end;
				__self__.setIndex = #if !macro function(_i:GoInt, _x:AnyInterface):Void _args[(0 : GoInt)].setIndex(_i, _x) #else null #end;
				__self__.string = #if !macro function():GoString return _args[(0 : GoInt)].string() #else null #end;
				__self__.truthy = #if !macro function():Bool return _args[(0 : GoInt)].truthy() #else null #end;
				__self__.type = #if !macro function():Type return _args[(0 : GoInt)].type() #else null #end;
				__self__._float = #if !macro function(_p:GoString):GoFloat64 return _args[(0 : GoInt)]._float(_p) #else null #end;
				__self__._isNumber = #if !macro function():Bool return _args[(0 : GoInt)]._isNumber() #else null #end;
				__self__;
			});
		}).__copy__());
		__deferstack__.unshift(() -> _ident.release());
		{
			var _got:Value = (_ident.invoke(Go.toInterface({
				final __self__ = new Value_asInterface(stdgo.syscall.js.Js.global());
				__self__.bool = #if !macro function():Bool return stdgo.syscall.js.Js.global().bool() #else null #end;
				__self__.call = #if !macro function(_m:GoString,
						_args:Slice<AnyInterface>):Value return stdgo.syscall.js.Js.global().call(_m, _args) #else null #end;
				__self__.delete = #if !macro function(_p:GoString):Void stdgo.syscall.js.Js.global().delete(_p) #else null #end;
				__self__.equal = #if !macro function(__0:Value):Bool return stdgo.syscall.js.Js.global().equal(__0) #else null #end;
				__self__.float = #if !macro function():GoFloat64 return stdgo.syscall.js.Js.global().float() #else null #end;
				__self__.get = #if !macro function(_p:GoString):Value return stdgo.syscall.js.Js.global().get(_p) #else null #end;
				__self__.index = #if !macro function(_i:GoInt):Value return stdgo.syscall.js.Js.global().index(_i) #else null #end;
				__self__.instanceOf = #if !macro function(__0:Value):Bool return stdgo.syscall.js.Js.global().instanceOf(__0) #else null #end;
				__self__.int = #if !macro function():GoInt return stdgo.syscall.js.Js.global().int() #else null #end;
				__self__.invoke = #if !macro function(_args:Slice<AnyInterface>):Value return stdgo.syscall.js.Js.global().invoke(_args) #else null #end;
				__self__.isNaN = #if !macro function():Bool return stdgo.syscall.js.Js.global().isNaN() #else null #end;
				__self__.isNull = #if !macro function():Bool return stdgo.syscall.js.Js.global().isNull() #else null #end;
				__self__.isUndefined = #if !macro function():Bool return stdgo.syscall.js.Js.global().isUndefined() #else null #end;
				__self__.length_ = #if !macro function():GoInt return stdgo.syscall.js.Js.global().length_() #else null #end;
				__self__.new_ = #if !macro function(_args:Slice<AnyInterface>):Value return stdgo.syscall.js.Js.global().new_(_args) #else null #end;
				__self__.set = #if !macro function(_p:GoString, _x:AnyInterface):Void stdgo.syscall.js.Js.global().set(_p, _x) #else null #end;
				__self__.setIndex = #if !macro function(_i:GoInt, _x:AnyInterface):Void stdgo.syscall.js.Js.global().setIndex(_i, _x) #else null #end;
				__self__.string = #if !macro function():GoString return stdgo.syscall.js.Js.global().string() #else null #end;
				__self__.truthy = #if !macro function():Bool return stdgo.syscall.js.Js.global().truthy() #else null #end;
				__self__.type = #if !macro function():Type return stdgo.syscall.js.Js.global().type() #else null #end;
				__self__._float = #if !macro function(_p:GoString):GoFloat64 return stdgo.syscall.js.Js.global()._float(_p) #else null #end;
				__self__._isNumber = #if !macro function():Bool return stdgo.syscall.js.Js.global()._isNumber() #else null #end;
				__self__;
			})) == null ? null : _ident.invoke(Go.toInterface({
				final __self__ = new Value_asInterface(stdgo.syscall.js.Js.global());
				__self__.bool = #if !macro function():Bool return stdgo.syscall.js.Js.global().bool() #else null #end;
				__self__.call = #if !macro function(_m:GoString,
						_args:Slice<AnyInterface>):Value return stdgo.syscall.js.Js.global().call(_m, _args) #else null #end;
				__self__.delete = #if !macro function(_p:GoString):Void stdgo.syscall.js.Js.global().delete(_p) #else null #end;
				__self__.equal = #if !macro function(__0:Value):Bool return stdgo.syscall.js.Js.global().equal(__0) #else null #end;
				__self__.float = #if !macro function():GoFloat64 return stdgo.syscall.js.Js.global().float() #else null #end;
				__self__.get = #if !macro function(_p:GoString):Value return stdgo.syscall.js.Js.global().get(_p) #else null #end;
				__self__.index = #if !macro function(_i:GoInt):Value return stdgo.syscall.js.Js.global().index(_i) #else null #end;
				__self__.instanceOf = #if !macro function(__0:Value):Bool return stdgo.syscall.js.Js.global().instanceOf(__0) #else null #end;
				__self__.int = #if !macro function():GoInt return stdgo.syscall.js.Js.global().int() #else null #end;
				__self__.invoke = #if !macro function(_args:Slice<AnyInterface>):Value return stdgo.syscall.js.Js.global().invoke(_args) #else null #end;
				__self__.isNaN = #if !macro function():Bool return stdgo.syscall.js.Js.global().isNaN() #else null #end;
				__self__.isNull = #if !macro function():Bool return stdgo.syscall.js.Js.global().isNull() #else null #end;
				__self__.isUndefined = #if !macro function():Bool return stdgo.syscall.js.Js.global().isUndefined() #else null #end;
				__self__.length_ = #if !macro function():GoInt return stdgo.syscall.js.Js.global().length_() #else null #end;
				__self__.new_ = #if !macro function(_args:Slice<AnyInterface>):Value return stdgo.syscall.js.Js.global().new_(_args) #else null #end;
				__self__.set = #if !macro function(_p:GoString, _x:AnyInterface):Void stdgo.syscall.js.Js.global().set(_p, _x) #else null #end;
				__self__.setIndex = #if !macro function(_i:GoInt, _x:AnyInterface):Void stdgo.syscall.js.Js.global().setIndex(_i, _x) #else null #end;
				__self__.string = #if !macro function():GoString return stdgo.syscall.js.Js.global().string() #else null #end;
				__self__.truthy = #if !macro function():Bool return stdgo.syscall.js.Js.global().truthy() #else null #end;
				__self__.type = #if !macro function():Type return stdgo.syscall.js.Js.global().type() #else null #end;
				__self__._float = #if !macro function(_p:GoString):GoFloat64 return stdgo.syscall.js.Js.global()._float(_p) #else null #end;
				__self__._isNumber = #if !macro function():Bool return stdgo.syscall.js.Js.global()._isNumber() #else null #end;
				__self__;
			})).__copy__());
			if (!_got.equal((stdgo.syscall.js.Js.global() == null ? null : stdgo.syscall.js.Js.global().__copy__()))) {
				_t.errorf((Go.str("got %#v, want %#v") : GoString), Go.toInterface({
					final __self__ = new Value_asInterface(_got);
					__self__.bool = #if !macro function():Bool return _got.bool() #else null #end;
					__self__.call = #if !macro function(_m:GoString, _args:Slice<AnyInterface>):Value return _got.call(_m, _args) #else null #end;
					__self__.delete = #if !macro function(_p:GoString):Void _got.delete(_p) #else null #end;
					__self__.equal = #if !macro function(__0:Value):Bool return _got.equal(__0) #else null #end;
					__self__.float = #if !macro function():GoFloat64 return _got.float() #else null #end;
					__self__.get = #if !macro function(_p:GoString):Value return _got.get(_p) #else null #end;
					__self__.index = #if !macro function(_i:GoInt):Value return _got.index(_i) #else null #end;
					__self__.instanceOf = #if !macro function(__0:Value):Bool return _got.instanceOf(__0) #else null #end;
					__self__.int = #if !macro function():GoInt return _got.int() #else null #end;
					__self__.invoke = #if !macro function(_args:Slice<AnyInterface>):Value return _got.invoke(_args) #else null #end;
					__self__.isNaN = #if !macro function():Bool return _got.isNaN() #else null #end;
					__self__.isNull = #if !macro function():Bool return _got.isNull() #else null #end;
					__self__.isUndefined = #if !macro function():Bool return _got.isUndefined() #else null #end;
					__self__.length_ = #if !macro function():GoInt return _got.length_() #else null #end;
					__self__.new_ = #if !macro function(_args:Slice<AnyInterface>):Value return _got.new_(_args) #else null #end;
					__self__.set = #if !macro function(_p:GoString, _x:AnyInterface):Void _got.set(_p, _x) #else null #end;
					__self__.setIndex = #if !macro function(_i:GoInt, _x:AnyInterface):Void _got.setIndex(_i, _x) #else null #end;
					__self__.string = #if !macro function():GoString return _got.string() #else null #end;
					__self__.truthy = #if !macro function():Bool return _got.truthy() #else null #end;
					__self__.type = #if !macro function():Type return _got.type() #else null #end;
					__self__._float = #if !macro function(_p:GoString):GoFloat64 return _got._float(_p) #else null #end;
					__self__._isNumber = #if !macro function():Bool return _got._isNumber() #else null #end;
					__self__;
				}), Go.toInterface({
					final __self__ = new Value_asInterface(stdgo.syscall.js.Js.global());
					__self__.bool = #if !macro function():Bool return stdgo.syscall.js.Js.global().bool() #else null #end;
					__self__.call = #if !macro function(_m:GoString,
							_args:Slice<AnyInterface>):Value return stdgo.syscall.js.Js.global().call(_m, _args) #else null #end;
					__self__.delete = #if !macro function(_p:GoString):Void stdgo.syscall.js.Js.global().delete(_p) #else null #end;
					__self__.equal = #if !macro function(__0:Value):Bool return stdgo.syscall.js.Js.global().equal(__0) #else null #end;
					__self__.float = #if !macro function():GoFloat64 return stdgo.syscall.js.Js.global().float() #else null #end;
					__self__.get = #if !macro function(_p:GoString):Value return stdgo.syscall.js.Js.global().get(_p) #else null #end;
					__self__.index = #if !macro function(_i:GoInt):Value return stdgo.syscall.js.Js.global().index(_i) #else null #end;
					__self__.instanceOf = #if !macro function(__0:Value):Bool return stdgo.syscall.js.Js.global().instanceOf(__0) #else null #end;
					__self__.int = #if !macro function():GoInt return stdgo.syscall.js.Js.global().int() #else null #end;
					__self__.invoke = #if !macro function(_args:Slice<AnyInterface>):Value return stdgo.syscall.js.Js.global().invoke(_args) #else null #end;
					__self__.isNaN = #if !macro function():Bool return stdgo.syscall.js.Js.global().isNaN() #else null #end;
					__self__.isNull = #if !macro function():Bool return stdgo.syscall.js.Js.global().isNull() #else null #end;
					__self__.isUndefined = #if !macro function():Bool return stdgo.syscall.js.Js.global().isUndefined() #else null #end;
					__self__.length_ = #if !macro function():GoInt return stdgo.syscall.js.Js.global().length_() #else null #end;
					__self__.new_ = #if !macro function(_args:Slice<AnyInterface>):Value return stdgo.syscall.js.Js.global().new_(_args) #else null #end;
					__self__.set = #if !macro function(_p:GoString, _x:AnyInterface):Void stdgo.syscall.js.Js.global().set(_p, _x) #else null #end;
					__self__.setIndex = #if !macro function(_i:GoInt, _x:AnyInterface):Void stdgo.syscall.js.Js.global().setIndex(_i, _x) #else null #end;
					__self__.string = #if !macro function():GoString return stdgo.syscall.js.Js.global().string() #else null #end;
					__self__.truthy = #if !macro function():Bool return stdgo.syscall.js.Js.global().truthy() #else null #end;
					__self__.type = #if !macro function():Type return stdgo.syscall.js.Js.global().type() #else null #end;
					__self__._float = #if !macro function(_p:GoString):GoFloat64 return stdgo.syscall.js.Js.global()._float(_p) #else null #end;
					__self__._isNumber = #if !macro function():Bool return stdgo.syscall.js.Js.global()._isNumber() #else null #end;
					__self__;
				}));
			};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (__recover_exception__ != null)
				throw __recover_exception__;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		__recover_exception__ = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (__recover_exception__ != null)
			throw __recover_exception__;
		return;
	};
}
