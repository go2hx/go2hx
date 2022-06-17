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
var _dummys : Value = stdgo.syscall.js.Js.global().call(((("eval" : GoString))), Go.toInterface("({\n\tsomeBool: true,\n\tsomeString: \"abc\\u1234\",\n\tsomeInt: 42,\n\tsomeFloat: 42.123,\n\tsomeArray: [41, 42, 43],\n\tsomeDate: new Date(),\n\tadd: function(a, b) {\n\t\treturn a + b;\n\t},\n\tzero: 0,\n\tstringZero: \"0\",\n\tNaN: NaN,\n\temptyObj: {},\n\temptyArray: [],\n\tInfinity: Infinity,\n\tNegInfinity: -Infinity,\n\tobjNumber0: new Number(0),\n\tobjBooleanFalse: new Boolean(false),\n})"));
var _copyTests : Slice<stdgo.syscall.js_test.Js_test.T__struct_1> = ((new Slice<stdgo.syscall.js_test.Js_test.T__struct_1>(((new stdgo.syscall.js_test.Js_test.T__struct_1(((5 : GoInt)), ((3 : GoInt)), ((3 : GoInt))) : stdgo.syscall.js_test.Js_test.T__struct_1)), ((new stdgo.syscall.js_test.Js_test.T__struct_1(((3 : GoInt)), ((5 : GoInt)), ((3 : GoInt))) : stdgo.syscall.js_test.Js_test.T__struct_1)), ((new stdgo.syscall.js_test.Js_test.T__struct_1(((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt))) : stdgo.syscall.js_test.Js_test.T__struct_1))) : Slice<stdgo.syscall.js_test.Js_test.T__struct_1>));
@:structInit @:local class T__struct_0 {
    public function toString():String return "{" + "}";
    public function new(?toString) {}
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_0();
    }
}
@:structInit @:local class T__struct_1 {
    public var _srcLen : GoInt = ((0 : GoInt));
    public var _dstLen : GoInt = ((0 : GoInt));
    public var _copyLen : GoInt = ((0 : GoInt));
    public function toString():String return "{" + Go.string(_srcLen) + " " + Go.string(_dstLen) + " " + Go.string(_copyLen) + "}";
    public function new(?_srcLen:GoInt, ?_dstLen:GoInt, ?_copyLen:GoInt, ?toString) {
        if (_srcLen != null) this._srcLen = _srcLen;
        if (_dstLen != null) this._dstLen = _dstLen;
        if (_copyLen != null) this._copyLen = _copyLen;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_1(_srcLen, _dstLen, _copyLen);
    }
}
@:named typedef T_object = GoMap<GoString, AnyInterface>;
@:named typedef T_array = Slice<AnyInterface>;
function testBool(_t:stdgo.testing.Testing.T_):Void {
        var _want:Bool = true;
        var _o:Value = _dummys.get(((("someBool" : GoString))));
        {
            var _got:Bool = _o.bool();
            if (_got != _want) {
                _t.errorf(((("got %#v, want %#v" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        _dummys.set(((("otherBool" : GoString))), Go.toInterface(_want));
        {
            var _got:Bool = _dummys.get(((("otherBool" : GoString)))).bool();
            if (_got != _want) {
                _t.errorf(((("got %#v, want %#v" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        if (!_dummys.get(((("someBool" : GoString)))).equal(_dummys.get(((("someBool" : GoString)))))) {
            _t.errorf(((("same value not equal" : GoString))));
        };
    }
function testString(_t:stdgo.testing.Testing.T_):Void {
        var _want:GoString = ((("abc\u1234" : GoString)));
        var _o:Value = _dummys.get(((("someString" : GoString))));
        {
            var _got:GoString = ((_o.toString() : GoString));
            if (_got != _want) {
                _t.errorf(((("got %#v, want %#v" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        _dummys.set(((("otherString" : GoString))), Go.toInterface(_want));
        {
            var _got:GoString = ((_dummys.get(((("otherString" : GoString)))).toString() : GoString));
            if (_got != _want) {
                _t.errorf(((("got %#v, want %#v" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        if (!_dummys.get(((("someString" : GoString)))).equal(_dummys.get(((("someString" : GoString)))))) {
            _t.errorf(((("same value not equal" : GoString))));
        };
        {
            var _got:GoString = ((stdgo.syscall.js.Js.undefined().toString() : GoString)), _want:GoString = ((("<undefined>" : GoString)));
            if (_got != _want) {
                _t.errorf(((("got %#v, want %#v" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _got:GoString = ((stdgo.syscall.js.Js.null_().toString() : GoString)), _want:GoString = ((("<null>" : GoString)));
            if (_got != _want) {
                _t.errorf(((("got %#v, want %#v" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _got:GoString = ((stdgo.syscall.js.Js.valueOf(Go.toInterface(true)).toString() : GoString)), _want:GoString = ((("<boolean: true>" : GoString)));
            if (_got != _want) {
                _t.errorf(((("got %#v, want %#v" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _got:GoString = ((stdgo.syscall.js.Js.valueOf(Go.toInterface(((42.5 : GoFloat64)))).toString() : GoString)), _want:GoString = ((("<number: 42.5>" : GoString)));
            if (_got != _want) {
                _t.errorf(((("got %#v, want %#v" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _got:GoString = ((stdgo.syscall.js.Js.global().call(((("Symbol" : GoString)))).toString() : GoString)), _want:GoString = ((("<symbol>" : GoString)));
            if (_got != _want) {
                _t.errorf(((("got %#v, want %#v" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _got:GoString = ((stdgo.syscall.js.Js.global().toString() : GoString)), _want:GoString = ((("<object>" : GoString)));
            if (_got != _want) {
                _t.errorf(((("got %#v, want %#v" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _got:GoString = ((stdgo.syscall.js.Js.global().get(((("setTimeout" : GoString)))).toString() : GoString)), _want:GoString = ((("<function>" : GoString)));
            if (_got != _want) {
                _t.errorf(((("got %#v, want %#v" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
    }
function testInt(_t:stdgo.testing.Testing.T_):Void {
        var _want:GoInt = ((42 : GoInt));
        var _o:Value = _dummys.get(((("someInt" : GoString))));
        {
            var _got:GoInt = _o.int();
            if (_got != _want) {
                _t.errorf(((("got %#v, want %#v" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        _dummys.set(((("otherInt" : GoString))), Go.toInterface(_want));
        {
            var _got:GoInt = _dummys.get(((("otherInt" : GoString)))).int();
            if (_got != _want) {
                _t.errorf(((("got %#v, want %#v" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        if (!_dummys.get(((("someInt" : GoString)))).equal(_dummys.get(((("someInt" : GoString)))))) {
            _t.errorf(((("same value not equal" : GoString))));
        };
        {
            var _got:GoInt = _dummys.get(((("zero" : GoString)))).int();
            if (_got != ((0 : GoInt))) {
                _t.errorf(((("got %#v, want %#v" : GoString))), Go.toInterface(_got), Go.toInterface(((0 : GoInt))));
            };
        };
    }
function testIntConversion(_t:stdgo.testing.Testing.T_):Void {
        _testIntConversion(_t, ((0 : GoInt)));
        _testIntConversion(_t, ((1 : GoInt)));
        _testIntConversion(_t, ((-1 : GoInt)));
        _testIntConversion(_t, ((1048576 : GoInt)));
        _testIntConversion(_t, ((-1048576 : GoInt)));
        _testIntConversion(_t, (("1099511627776" : GoUnTypedInt)));
        _testIntConversion(_t, (("-1099511627776" : GoUnTypedInt)));
        _testIntConversion(_t, (("1152921504606846976" : GoUnTypedInt)));
        _testIntConversion(_t, (("-1152921504606846976" : GoUnTypedInt)));
    }
function _testIntConversion(_t:stdgo.testing.Testing.T_, _want:GoInt):Void {
        {
            var _got:GoInt = stdgo.syscall.js.Js.valueOf(Go.toInterface(_want)).int();
            if (_got != _want) {
                _t.errorf(((("got %#v, want %#v" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
    }
function testFloat(_t:stdgo.testing.Testing.T_):Void {
        var _want:GoFloat64 = ((42.123 : GoFloat64));
        var _o:Value = _dummys.get(((("someFloat" : GoString))));
        {
            var _got:GoFloat64 = _o.float();
            if (_got != _want) {
                _t.errorf(((("got %#v, want %#v" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        _dummys.set(((("otherFloat" : GoString))), Go.toInterface(_want));
        {
            var _got:GoFloat64 = _dummys.get(((("otherFloat" : GoString)))).float();
            if (_got != _want) {
                _t.errorf(((("got %#v, want %#v" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        if (!_dummys.get(((("someFloat" : GoString)))).equal(_dummys.get(((("someFloat" : GoString)))))) {
            _t.errorf(((("same value not equal" : GoString))));
        };
    }
function testObject(_t:stdgo.testing.Testing.T_):Void {
        if (!_dummys.get(((("someArray" : GoString)))).equal(_dummys.get(((("someArray" : GoString)))))) {
            _t.errorf(((("same value not equal" : GoString))));
        };
        var _proto:Value = stdgo.syscall.js.Js.global().get(((("Object" : GoString)))).get(((("prototype" : GoString))));
        var _o:Value = stdgo.syscall.js.Js.global().call(((("eval" : GoString))), Go.toInterface(((("new Object()" : GoString)))));
        if (_proto.equal(_o)) {
            _t.errorf(((("object equals to its prototype" : GoString))));
        };
    }
function testFrozenObject(_t:stdgo.testing.Testing.T_):Void {
        var _o:Value = stdgo.syscall.js.Js.global().call(((("eval" : GoString))), Go.toInterface(((("(function () { let o = new Object(); o.field = 5; Object.freeze(o); return o; })()" : GoString)))));
        var _want:GoInt = ((5 : GoInt));
        {
            var _got:GoInt = _o.get(((("field" : GoString)))).int();
            if (_want != _got) {
                _t.errorf(((("got %#v, want %#v" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
    }
function testEqual(_t:stdgo.testing.Testing.T_):Void {
        if (!_dummys.get(((("someFloat" : GoString)))).equal(_dummys.get(((("someFloat" : GoString)))))) {
            _t.errorf(((("same float is not equal" : GoString))));
        };
        if (!_dummys.get(((("emptyObj" : GoString)))).equal(_dummys.get(((("emptyObj" : GoString)))))) {
            _t.errorf(((("same object is not equal" : GoString))));
        };
        if (_dummys.get(((("someFloat" : GoString)))).equal(_dummys.get(((("someInt" : GoString)))))) {
            _t.errorf(((("different values are not unequal" : GoString))));
        };
    }
function testNaN(_t:stdgo.testing.Testing.T_):Void {
        if (!_dummys.get(((("NaN" : GoString)))).isNaN()) {
            _t.errorf(((("JS NaN is not NaN" : GoString))));
        };
        if (!stdgo.syscall.js.Js.valueOf(Go.toInterface(stdgo.math.Math.naN())).isNaN()) {
            _t.errorf(((("Go NaN is not NaN" : GoString))));
        };
        if (_dummys.get(((("NaN" : GoString)))).equal(_dummys.get(((("NaN" : GoString)))))) {
            _t.errorf(((("NaN is equal to NaN" : GoString))));
        };
    }
function testUndefined(_t:stdgo.testing.Testing.T_):Void {
        if (!stdgo.syscall.js.Js.undefined().isUndefined()) {
            _t.errorf(((("undefined is not undefined" : GoString))));
        };
        if (!stdgo.syscall.js.Js.undefined().equal(stdgo.syscall.js.Js.undefined())) {
            _t.errorf(((("undefined is not equal to undefined" : GoString))));
        };
        if (_dummys.isUndefined()) {
            _t.errorf(((("object is undefined" : GoString))));
        };
        if (stdgo.syscall.js.Js.undefined().isNull()) {
            _t.errorf(((("undefined is null" : GoString))));
        };
        {
            _dummys.set(((("test" : GoString))), Go.toInterface(stdgo.syscall.js.Js.undefined()));
            if (!_dummys.get(((("test" : GoString)))).isUndefined()) {
                _t.errorf(((("could not set undefined" : GoString))));
            };
        };
    }
function testNull(_t:stdgo.testing.Testing.T_):Void {
        if (!stdgo.syscall.js.Js.null_().isNull()) {
            _t.errorf(((("null is not null" : GoString))));
        };
        if (!stdgo.syscall.js.Js.null_().equal(stdgo.syscall.js.Js.null_())) {
            _t.errorf(((("null is not equal to null" : GoString))));
        };
        if (_dummys.isNull()) {
            _t.errorf(((("object is null" : GoString))));
        };
        if (stdgo.syscall.js.Js.null_().isUndefined()) {
            _t.errorf(((("null is undefined" : GoString))));
        };
        {
            _dummys.set(((("test" : GoString))), Go.toInterface(stdgo.syscall.js.Js.null_()));
            if (!_dummys.get(((("test" : GoString)))).isNull()) {
                _t.errorf(((("could not set null" : GoString))));
            };
        };
        {
            _dummys.set(((("test" : GoString))), ((null : AnyInterface)));
            if (!_dummys.get(((("test" : GoString)))).isNull()) {
                _t.errorf(((("could not set nil" : GoString))));
            };
        };
    }
function testLength(_t:stdgo.testing.Testing.T_):Void {
        {
            var _got:GoInt = _dummys.get(((("someArray" : GoString)))).length();
            if (_got != ((3 : GoInt))) {
                _t.errorf(((("got %#v, want %#v" : GoString))), Go.toInterface(_got), Go.toInterface(((3 : GoInt))));
            };
        };
    }
function testGet(_t:stdgo.testing.Testing.T_):Void {
        _expectValueError(_t, function():Void {
            _dummys.get(((("zero" : GoString)))).get(((("badField" : GoString))));
        });
    }
function testSet(_t:stdgo.testing.Testing.T_):Void {
        _expectValueError(_t, function():Void {
            _dummys.get(((("zero" : GoString)))).set(((("badField" : GoString))), Go.toInterface(((42 : GoInt))));
        });
    }
function testDelete(_t:stdgo.testing.Testing.T_):Void {
        _dummys.set(((("test" : GoString))), Go.toInterface(((42 : GoInt))));
        _dummys.delete(((("test" : GoString))));
        if (_dummys.call(((("hasOwnProperty" : GoString))), Go.toInterface(((("test" : GoString))))).bool()) {
            _t.errorf(((("property still exists" : GoString))));
        };
        _expectValueError(_t, function():Void {
            _dummys.get(((("zero" : GoString)))).delete(((("badField" : GoString))));
        });
    }
function testIndex(_t:stdgo.testing.Testing.T_):Void {
        {
            var _got:GoInt = _dummys.get(((("someArray" : GoString)))).index(((1 : GoInt))).int();
            if (_got != ((42 : GoInt))) {
                _t.errorf(((("got %#v, want %#v" : GoString))), Go.toInterface(_got), Go.toInterface(((42 : GoInt))));
            };
        };
        _expectValueError(_t, function():Void {
            _dummys.get(((("zero" : GoString)))).index(((1 : GoInt)));
        });
    }
function testSetIndex(_t:stdgo.testing.Testing.T_):Void {
        _dummys.get(((("someArray" : GoString)))).setIndex(((2 : GoInt)), Go.toInterface(((99 : GoInt))));
        {
            var _got:GoInt = _dummys.get(((("someArray" : GoString)))).index(((2 : GoInt))).int();
            if (_got != ((99 : GoInt))) {
                _t.errorf(((("got %#v, want %#v" : GoString))), Go.toInterface(_got), Go.toInterface(((99 : GoInt))));
            };
        };
        _expectValueError(_t, function():Void {
            _dummys.get(((("zero" : GoString)))).setIndex(((2 : GoInt)), Go.toInterface(((99 : GoInt))));
        });
    }
function testCall(_t:stdgo.testing.Testing.T_):Void {
        var _i:GoInt64 = ((40 : GoInt64));
        {
            var _got:GoInt = _dummys.call(((("add" : GoString))), Go.toInterface(_i), Go.toInterface(((2 : GoInt)))).int();
            if (_got != ((42 : GoInt))) {
                _t.errorf(((("got %#v, want %#v" : GoString))), Go.toInterface(_got), Go.toInterface(((42 : GoInt))));
            };
        };
        {
            var _got:GoInt = _dummys.call(((("add" : GoString))), Go.toInterface(stdgo.syscall.js.Js.global().call(((("eval" : GoString))), Go.toInterface(((("40" : GoString)))))), Go.toInterface(((2 : GoInt)))).int();
            if (_got != ((42 : GoInt))) {
                _t.errorf(((("got %#v, want %#v" : GoString))), Go.toInterface(_got), Go.toInterface(((42 : GoInt))));
            };
        };
        _expectPanic(_t, function():Void {
            _dummys.call(((("zero" : GoString))));
        });
        _expectValueError(_t, function():Void {
            _dummys.get(((("zero" : GoString)))).call(((("badMethod" : GoString))));
        });
    }
function testInvoke(_t:stdgo.testing.Testing.T_):Void {
        var _i:GoInt64 = ((40 : GoInt64));
        {
            var _got:GoInt = _dummys.get(((("add" : GoString)))).invoke(Go.toInterface(_i), Go.toInterface(((2 : GoInt)))).int();
            if (_got != ((42 : GoInt))) {
                _t.errorf(((("got %#v, want %#v" : GoString))), Go.toInterface(_got), Go.toInterface(((42 : GoInt))));
            };
        };
        _expectValueError(_t, function():Void {
            _dummys.get(((("zero" : GoString)))).invoke();
        });
    }
function testNew(_t:stdgo.testing.Testing.T_):Void {
        {
            var _got:GoInt = stdgo.syscall.js.Js.global().get(((("Array" : GoString)))).new_(Go.toInterface(((42 : GoInt)))).length();
            if (_got != ((42 : GoInt))) {
                _t.errorf(((("got %#v, want %#v" : GoString))), Go.toInterface(_got), Go.toInterface(((42 : GoInt))));
            };
        };
        _expectValueError(_t, function():Void {
            _dummys.get(((("zero" : GoString)))).new_();
        });
    }
function testInstanceOf(_t:stdgo.testing.Testing.T_):Void {
        var _someArray:Value = stdgo.syscall.js.Js.global().get(((("Array" : GoString)))).new_();
        {
            var _got:Bool = _someArray.instanceOf(stdgo.syscall.js.Js.global().get(((("Array" : GoString))))), _want:Bool = true;
            if (_got != _want) {
                _t.errorf(((("got %#v, want %#v" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _got:Bool = _someArray.instanceOf(stdgo.syscall.js.Js.global().get(((("Function" : GoString))))), _want:Bool = false;
            if (_got != _want) {
                _t.errorf(((("got %#v, want %#v" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
    }
function testType(_t:stdgo.testing.Testing.T_):Void {
        {
            var _got:Type = stdgo.syscall.js.Js.undefined().type(), _want:Type = 0;
            if (_got != _want) {
                _t.errorf(((("got %s, want %s" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _got:Type = stdgo.syscall.js.Js.null_().type(), _want:Type = 1;
            if (_got != _want) {
                _t.errorf(((("got %s, want %s" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _got:Type = stdgo.syscall.js.Js.valueOf(Go.toInterface(true)).type(), _want:Type = 2;
            if (_got != _want) {
                _t.errorf(((("got %s, want %s" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _got:Type = stdgo.syscall.js.Js.valueOf(Go.toInterface(((0 : GoInt)))).type(), _want:Type = 3;
            if (_got != _want) {
                _t.errorf(((("got %s, want %s" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _got:Type = stdgo.syscall.js.Js.valueOf(Go.toInterface(((42 : GoInt)))).type(), _want:Type = 3;
            if (_got != _want) {
                _t.errorf(((("got %s, want %s" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _got:Type = stdgo.syscall.js.Js.valueOf(Go.toInterface(((("test" : GoString))))).type(), _want:Type = 4;
            if (_got != _want) {
                _t.errorf(((("got %s, want %s" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _got:Type = stdgo.syscall.js.Js.global().get(((("Symbol" : GoString)))).invoke(Go.toInterface(((("test" : GoString))))).type(), _want:Type = 5;
            if (_got != _want) {
                _t.errorf(((("got %s, want %s" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _got:Type = stdgo.syscall.js.Js.global().get(((("Array" : GoString)))).new_().type(), _want:Type = 6;
            if (_got != _want) {
                _t.errorf(((("got %s, want %s" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _got:Type = stdgo.syscall.js.Js.global().get(((("Array" : GoString)))).type(), _want:Type = 7;
            if (_got != _want) {
                _t.errorf(((("got %s, want %s" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
    }
function testValueOf(_t:stdgo.testing.Testing.T_):Void {
        var _a:Value = stdgo.syscall.js.Js.valueOf(Go.toInterface(((new Slice<AnyInterface>(Go.toInterface(((0 : GoInt))), Go.toInterface(((new Slice<AnyInterface>(Go.toInterface(((0 : GoInt))), Go.toInterface(((42 : GoInt))), Go.toInterface(((0 : GoInt)))) : Slice<AnyInterface>))), Go.toInterface(((0 : GoInt)))) : Slice<AnyInterface>))));
        {
            var _got:GoInt = _a.index(((1 : GoInt))).index(((1 : GoInt))).int();
            if (_got != ((42 : GoInt))) {
                _t.errorf(((("got %v, want %v" : GoString))), Go.toInterface(_got), Go.toInterface(((42 : GoInt))));
            };
        };
        var _o:Value = stdgo.syscall.js.Js.valueOf(Go.toInterface(Go.map(((("x" : GoString))) => Go.toInterface(Go.map(((("y" : GoString))) => Go.toInterface(((42 : GoInt))))))));
        {
            var _got:GoInt = _o.get(((("x" : GoString)))).get(((("y" : GoString)))).int();
            if (_got != ((42 : GoInt))) {
                _t.errorf(((("got %v, want %v" : GoString))), Go.toInterface(_got), Go.toInterface(((42 : GoInt))));
            };
        };
    }
function testZeroValue(_t:stdgo.testing.Testing.T_):Void {
        var _v:Value = new Value();
        if (!_v.isUndefined()) {
            _t.error(Go.toInterface(((("zero js.Value is not js.Undefined()" : GoString)))));
        };
    }
function testFuncOf(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _c:Chan<stdgo.syscall.js_test.Js_test.T__struct_0> = new Chan<stdgo.syscall.js_test.Js_test.T__struct_0>(0, () -> new stdgo.syscall.js_test.Js_test.T__struct_0());
            var _cb:Func = stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
                {
                    var _got:GoInt = (_args != null ? _args[((0 : GoInt))] : new Value()).int();
                    if (_got != ((42 : GoInt))) {
                        _t.errorf(((("got %#v, want %#v" : GoString))), Go.toInterface(_got), Go.toInterface(((42 : GoInt))));
                    };
                };
                _c.__send__(((new stdgo.syscall.js_test.Js_test.T__struct_0() : stdgo.syscall.js_test.Js_test.T__struct_0)));
                return ((null : AnyInterface));
            });
            __deferstack__.unshift(() -> _cb.release());
            stdgo.syscall.js.Js.global().call(((("setTimeout" : GoString))), Go.toInterface(_cb), Go.toInterface(((0 : GoInt))), Go.toInterface(((42 : GoInt))));
            _c.__get__();
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
function testInvokeFunction(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _called:Bool = false;
            var _cb:Func = stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
                var __recover_exception__:AnyInterface = null;
                var __deferstack__:Array<Void -> Void> = [];
                var _cb2:Func = stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
                    _called = true;
                    return Go.toInterface(((42 : GoInt)));
                });
                try {
                    __deferstack__.unshift(() -> _cb2.release());
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return Go.toInterface(_cb2.invoke());
                    };
                    for (defer in __deferstack__) {
                        defer();
                    };
                } catch(__exception__) {
                    if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
                    __recover_exception__ = __exception__.native;
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (__recover_exception__ != null) throw __recover_exception__;
                        return ((null : AnyInterface));
                    };
                };
            });
            __deferstack__.unshift(() -> _cb.release());
            {
                var _got:GoInt = _cb.invoke().int();
                if (_got != ((42 : GoInt))) {
                    _t.errorf(((("got %#v, want %#v" : GoString))), Go.toInterface(_got), Go.toInterface(((42 : GoInt))));
                };
            };
            if (!_called) {
                _t.error(Go.toInterface(((("function not called" : GoString)))));
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
function testInterleavedFunctions(_t:stdgo.testing.Testing.T_):Void {
        var _c1:Chan<stdgo.syscall.js_test.Js_test.T__struct_0> = new Chan<stdgo.syscall.js_test.Js_test.T__struct_0>(0, () -> new stdgo.syscall.js_test.Js_test.T__struct_0());
        var _c2:Chan<stdgo.syscall.js_test.Js_test.T__struct_0> = new Chan<stdgo.syscall.js_test.Js_test.T__struct_0>(0, () -> new stdgo.syscall.js_test.Js_test.T__struct_0());
        stdgo.syscall.js.Js.global().get(((("setTimeout" : GoString)))).invoke(Go.toInterface(stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
            _c1.__send__(((new stdgo.syscall.js_test.Js_test.T__struct_0() : stdgo.syscall.js_test.Js_test.T__struct_0)));
            _c2.__get__();
            return ((null : AnyInterface));
        })), Go.toInterface(((0 : GoInt))));
        _c1.__get__();
        _c2.__send__(((new stdgo.syscall.js_test.Js_test.T__struct_0() : stdgo.syscall.js_test.Js_test.T__struct_0)));
        var _f:Func = stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
            return ((null : AnyInterface));
        });
        _f.invoke();
    }
function exampleFuncOf():Void {
        var _cb:Func = new Func();
        _cb = stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
            stdgo.fmt.Fmt.println(((("button clicked" : GoString))));
            _cb.release();
            return ((null : AnyInterface));
        });
        stdgo.syscall.js.Js.global().get(((("document" : GoString)))).call(((("getElementById" : GoString))), Go.toInterface(((("myButton" : GoString))))).call(((("addEventListener" : GoString))), Go.toInterface(((("click" : GoString)))), Go.toInterface(_cb));
    }
function testTruthy(_t:stdgo.testing.Testing.T_):Void {
        var _want:Bool = true;
        for (_0 => _key in ((new Slice<GoString>(
((("someBool" : GoString))),
((("someString" : GoString))),
((("someInt" : GoString))),
((("someFloat" : GoString))),
((("someArray" : GoString))),
((("someDate" : GoString))),
((("stringZero" : GoString))),
((("add" : GoString))),
((("emptyObj" : GoString))),
((("emptyArray" : GoString))),
((("Infinity" : GoString))),
((("NegInfinity" : GoString))),
((("objNumber0" : GoString))),
((("objBooleanFalse" : GoString)))) : Slice<GoString>))) {
            {
                var _got:Bool = _dummys.get(_key).truthy();
                if (_got != _want) {
                    _t.errorf(((("%s: got %#v, want %#v" : GoString))), Go.toInterface(_key), Go.toInterface(_got), Go.toInterface(_want));
                };
            };
        };
        _want = false;
        {
            var _got:Bool = _dummys.get(((("zero" : GoString)))).truthy();
            if (_got != _want) {
                _t.errorf(((("got %#v, want %#v" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _got:Bool = _dummys.get(((("NaN" : GoString)))).truthy();
            if (_got != _want) {
                _t.errorf(((("got %#v, want %#v" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _got:Bool = stdgo.syscall.js.Js.valueOf(Go.toInterface((""))).truthy();
            if (_got != _want) {
                _t.errorf(((("got %#v, want %#v" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _got:Bool = stdgo.syscall.js.Js.null_().truthy();
            if (_got != _want) {
                _t.errorf(((("got %#v, want %#v" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _got:Bool = stdgo.syscall.js.Js.undefined().truthy();
            if (_got != _want) {
                _t.errorf(((("got %#v, want %#v" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
    }
function _expectValueError(_t:stdgo.testing.Testing.T_, _fn:() -> Void):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var _err:AnyInterface = Go.toInterface(({
                        final r = __recover_exception__;
                        __recover_exception__ = null;
                        r;
                    }));
                    {
                        var __tmp__ = try {
                            { value : ((((_err.value : Dynamic)).__t__ : ValueError)), ok : true };
                        } catch(_) {
                            { value : ((null : ValueError)), ok : false };
                        }, _0 = __tmp__.value, _ok = __tmp__.ok;
                        if (!_ok) {
                            _t.errorf(((("expected *js.ValueError, got %T" : GoString))), Go.toInterface(_err));
                        };
                    };
                };
                a();
            });
            _fn();
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
function _expectPanic(_t:stdgo.testing.Testing.T_, _fn:() -> Void):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var _err:AnyInterface = Go.toInterface(({
                        final r = __recover_exception__;
                        __recover_exception__ = null;
                        r;
                    }));
                    if (_err == null) {
                        _t.errorf(((("expected panic" : GoString))));
                    };
                };
                a();
            });
            _fn();
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
function testCopyBytesToGo(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _tt in _copyTests) {
            _t.run(stdgo.fmt.Fmt.sprintf(((("%d-to-%d" : GoString))), Go.toInterface(_tt._srcLen), Go.toInterface(_tt._dstLen)), function(_t:stdgo.testing.Testing.T_):Void {
                var _src:Value = stdgo.syscall.js.Js.global().get(((("Uint8Array" : GoString)))).new_(Go.toInterface(_tt._srcLen));
                if (_tt._srcLen >= ((2 : GoInt))) {
                    _src.setIndex(((1 : GoInt)), Go.toInterface(((42 : GoInt))));
                };
                var _dst:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_tt._dstLen : GoInt)).toBasic()) ((0 : GoUInt8))]);
                {
                    var _got:GoInt = stdgo.syscall.js.Js.copyBytesToGo(_dst, _src), _want:GoInt = _tt._copyLen;
                    if (_got != _want) {
                        _t.errorf(((("copied %d, want %d" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
                    };
                };
                if (_tt._dstLen >= ((2 : GoInt))) {
                    {
                        var _got:GoInt = (((_dst != null ? _dst[((1 : GoInt))] : ((0 : GoUInt8))) : GoInt)), _want:GoInt = ((42 : GoInt));
                        if (_got != _want) {
                            _t.errorf(((("got %d, want %d" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
                        };
                    };
                };
            });
        };
    }
function testCopyBytesToJS(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _tt in _copyTests) {
            _t.run(stdgo.fmt.Fmt.sprintf(((("%d-to-%d" : GoString))), Go.toInterface(_tt._srcLen), Go.toInterface(_tt._dstLen)), function(_t:stdgo.testing.Testing.T_):Void {
                var _src:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_tt._srcLen : GoInt)).toBasic()) ((0 : GoUInt8))]);
                if (_tt._srcLen >= ((2 : GoInt))) {
                    if (_src != null) _src[((1 : GoInt))] = ((42 : GoUInt8));
                };
                var _dst:Value = stdgo.syscall.js.Js.global().get(((("Uint8Array" : GoString)))).new_(Go.toInterface(_tt._dstLen));
                {
                    var _got:GoInt = stdgo.syscall.js.Js.copyBytesToJS(_dst, _src), _want:GoInt = _tt._copyLen;
                    if (_got != _want) {
                        _t.errorf(((("copied %d, want %d" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
                    };
                };
                if (_tt._dstLen >= ((2 : GoInt))) {
                    {
                        var _got:GoInt = _dst.index(((1 : GoInt))).int(), _want:GoInt = ((42 : GoInt));
                        if (_got != _want) {
                            _t.errorf(((("got %d, want %d" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
                        };
                    };
                };
            });
        };
    }
function testGarbageCollection(_t:stdgo.testing.Testing.T_):Void {
        var _before:GoInt = stdgo.syscall.js.Js.jsgo.get(((("_values" : GoString)))).length();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((1000 : GoInt)), _i++, {
                ((stdgo.syscall.js.Js.global().get(((("Object" : GoString)))).new_().call(((("toString" : GoString)))).toString() : GoString));
                stdgo.runtime.Runtime.gc();
            });
        };
        var _after:GoInt = stdgo.syscall.js.Js.jsgo.get(((("_values" : GoString)))).length();
        if ((_after - _before) > ((500 : GoInt))) {
            _t.errorf(((("garbage collection ineffective" : GoString))));
        };
    }
function benchmarkDOM(_b:stdgo.testing.Testing.B):Void {
        var _document:Value = stdgo.syscall.js.Js.global().get(((("document" : GoString))));
        if (_document.isUndefined()) {
            _b.skip(Go.toInterface(((("Not a browser environment. Skipping." : GoString)))));
        };
        {};
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                var _div:Value = _document.call(((("createElement" : GoString))), Go.toInterface(((("div" : GoString)))));
                _div.call(((("setAttribute" : GoString))), Go.toInterface(((("id" : GoString)))), Go.toInterface(((("myDiv" : GoString)))));
                _document.get(((("body" : GoString)))).call(((("appendChild" : GoString))), Go.toInterface(_div));
                var _myDiv:Value = _document.call(((("getElementById" : GoString))), Go.toInterface(((("myDiv" : GoString)))));
                _myDiv.set(((("innerHTML" : GoString))), Go.toInterface(((("someString" : GoString)))));
                {
                    var _got:GoString = ((_myDiv.get(((("innerHTML" : GoString)))).toString() : GoString)), _want:GoString = ((("someString" : GoString)));
                    if (_got != _want) {
                        _b.errorf(((("got %s, want %s" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
                    };
                };
                _document.get(((("body" : GoString)))).call(((("removeChild" : GoString))), Go.toInterface(_div));
            });
        };
    }
function testGlobal(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _ident:Func = stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
                return Go.toInterface((_args != null ? _args[((0 : GoInt))] : new Value()));
            });
            __deferstack__.unshift(() -> _ident.release());
            {
                var _got:Value = _ident.invoke(Go.toInterface(stdgo.syscall.js.Js.global()));
                if (!_got.equal(stdgo.syscall.js.Js.global())) {
                    _t.errorf(((("got %#v, want %#v" : GoString))), Go.toInterface(_got), Go.toInterface(stdgo.syscall.js.Js.global()));
                };
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
