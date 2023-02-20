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
/**
    
    
    
**/
private var _dummys = stdgo.syscall.js.Js.global().call(("eval" : GoString), Go.toInterface(("({\n\tsomeBool: true,\n\tsomeString: \"abc\\u1234\",\n\tsomeInt: 42,\n\tsomeFloat: 42.123,\n\tsomeArray: [41, 42, 43],\n\tsomeDate: new Date(),\n\tadd: function(a, b) {\n\t\treturn a + b;\n\t},\n\tzero: 0,\n\tstringZero: \"0\",\n\tNaN: NaN,\n\temptyObj: {},\n\temptyArray: [],\n\tInfinity: Infinity,\n\tNegInfinity: -Infinity,\n\tobjNumber0: new Number(0),\n\tobjBooleanFalse: new Boolean(false),\n})" : GoString)));
/**
    
    
    
**/
private var _copyTests = (new Slice<T__struct_1>(0, 0, ({ _srcLen : (5 : GoInt), _dstLen : (3 : GoInt), _copyLen : (3 : GoInt) } : T__struct_1), ({ _srcLen : (3 : GoInt), _dstLen : (5 : GoInt), _copyLen : (3 : GoInt) } : T__struct_1), ({ _srcLen : (0 : GoInt), _dstLen : (0 : GoInt), _copyLen : (0 : GoInt) } : T__struct_1)) : Slice<T__struct_1>);
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.syscall.js_test.Js_test.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.syscall.js_test.Js_test.T__struct_0_static_extension) private typedef T__struct_0 = {};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_1>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.syscall.js_test.Js_test.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo.syscall.js_test.Js_test.T__struct_1_static_extension) private typedef T__struct_1 = {
    public var _srcLen : GoInt;
    public var _dstLen : GoInt;
    public var _copyLen : GoInt;
};
@:follow private typedef T_object = GoMap<GoString, AnyInterface>;
@:follow private typedef T_array = Slice<AnyInterface>;
function testBool(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _want:Bool = true;
        var _o:Value = (_dummys.get(("someBool" : GoString)) == null ? null : _dummys.get(("someBool" : GoString)).__copy__());
        {
            var _got:Bool = _o.bool_();
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : GoString), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        _dummys.set(("otherBool" : GoString), Go.toInterface(_want));
        {
            var _got:Bool = _dummys.get(("otherBool" : GoString)).bool_();
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : GoString), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        if (!_dummys.get(("someBool" : GoString)).equal((_dummys.get(("someBool" : GoString)) == null ? null : _dummys.get(("someBool" : GoString)).__copy__()))) {
            _t.errorf(("same value not equal" : GoString));
        };
    }
function testString(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _want:GoString = ("abcሴ" : GoString);
        var _o:Value = (_dummys.get(("someString" : GoString)) == null ? null : _dummys.get(("someString" : GoString)).__copy__());
        {
            var _got:GoString = (_o.string() : GoString);
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : GoString), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        _dummys.set(("otherString" : GoString), Go.toInterface(_want));
        {
            var _got:GoString = (_dummys.get(("otherString" : GoString)).string() : GoString);
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : GoString), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        if (!_dummys.get(("someString" : GoString)).equal((_dummys.get(("someString" : GoString)) == null ? null : _dummys.get(("someString" : GoString)).__copy__()))) {
            _t.errorf(("same value not equal" : GoString));
        };
        {
            var _0:GoString = (stdgo.syscall.js.Js.undefined().string() : GoString), _1:GoString = ("<undefined>" : GoString), _want:GoString = _1, _got:GoString = _0;
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : GoString), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _0:GoString = (stdgo.syscall.js.Js.null_().string() : GoString), _1:GoString = ("<null>" : GoString), _want:GoString = _1, _got:GoString = _0;
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : GoString), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _0:GoString = (stdgo.syscall.js.Js.valueOf(Go.toInterface(true)).string() : GoString), _1:GoString = ("<boolean: true>" : GoString), _want:GoString = _1, _got:GoString = _0;
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : GoString), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _0:GoString = (stdgo.syscall.js.Js.valueOf(Go.toInterface((42.5 : GoFloat64))).string() : GoString), _1:GoString = ("<number: 42.5>" : GoString), _want:GoString = _1, _got:GoString = _0;
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : GoString), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _0:GoString = (stdgo.syscall.js.Js.global().call(("Symbol" : GoString)).string() : GoString), _1:GoString = ("<symbol>" : GoString), _want:GoString = _1, _got:GoString = _0;
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : GoString), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _0:GoString = (stdgo.syscall.js.Js.global().string() : GoString), _1:GoString = ("<object>" : GoString), _want:GoString = _1, _got:GoString = _0;
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : GoString), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _0:GoString = (stdgo.syscall.js.Js.global().get(("setTimeout" : GoString)).string() : GoString), _1:GoString = ("<function>" : GoString), _want:GoString = _1, _got:GoString = _0;
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : GoString), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
    }
function testInt(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _want:GoInt = (42 : GoInt);
        var _o:Value = (_dummys.get(("someInt" : GoString)) == null ? null : _dummys.get(("someInt" : GoString)).__copy__());
        {
            var _got:GoInt = _o.int_();
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : GoString), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        _dummys.set(("otherInt" : GoString), Go.toInterface(_want));
        {
            var _got:GoInt = _dummys.get(("otherInt" : GoString)).int_();
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : GoString), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        if (!_dummys.get(("someInt" : GoString)).equal((_dummys.get(("someInt" : GoString)) == null ? null : _dummys.get(("someInt" : GoString)).__copy__()))) {
            _t.errorf(("same value not equal" : GoString));
        };
        {
            var _got:GoInt = _dummys.get(("zero" : GoString)).int_();
            if (_got != ((0 : GoInt))) {
                _t.errorf(("got %#v, want %#v" : GoString), Go.toInterface(_got), Go.toInterface((0 : GoInt)));
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
private function _testIntConversion(_t:Ref<stdgo.testing.Testing.T>, _want:GoInt):Void {
        {
            var _got:GoInt = stdgo.syscall.js.Js.valueOf(Go.toInterface(_want)).int_();
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : GoString), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
    }
function testFloat(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _want:GoFloat64 = (42.123 : GoFloat64);
        var _o:Value = (_dummys.get(("someFloat" : GoString)) == null ? null : _dummys.get(("someFloat" : GoString)).__copy__());
        {
            var _got:GoFloat64 = _o.float_();
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : GoString), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        _dummys.set(("otherFloat" : GoString), Go.toInterface(_want));
        {
            var _got:GoFloat64 = _dummys.get(("otherFloat" : GoString)).float_();
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : GoString), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        if (!_dummys.get(("someFloat" : GoString)).equal((_dummys.get(("someFloat" : GoString)) == null ? null : _dummys.get(("someFloat" : GoString)).__copy__()))) {
            _t.errorf(("same value not equal" : GoString));
        };
    }
function testObject(_t:Ref<stdgo.testing.Testing.T>):Void {
        if (!_dummys.get(("someArray" : GoString)).equal((_dummys.get(("someArray" : GoString)) == null ? null : _dummys.get(("someArray" : GoString)).__copy__()))) {
            _t.errorf(("same value not equal" : GoString));
        };
        var _proto:Value = (stdgo.syscall.js.Js.global().get(("Object" : GoString)).get(("prototype" : GoString)) == null ? null : stdgo.syscall.js.Js.global().get(("Object" : GoString)).get(("prototype" : GoString)).__copy__());
        var _o:Value = (stdgo.syscall.js.Js.global().call(("eval" : GoString), Go.toInterface(("new Object()" : GoString))) == null ? null : stdgo.syscall.js.Js.global().call(("eval" : GoString), Go.toInterface(("new Object()" : GoString))).__copy__());
        if (_proto.equal((_o == null ? null : _o.__copy__()))) {
            _t.errorf(("object equals to its prototype" : GoString));
        };
    }
function testFrozenObject(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _o:Value = (stdgo.syscall.js.Js.global().call(("eval" : GoString), Go.toInterface(("(function () { let o = new Object(); o.field = 5; Object.freeze(o); return o; })()" : GoString))) == null ? null : stdgo.syscall.js.Js.global().call(("eval" : GoString), Go.toInterface(("(function () { let o = new Object(); o.field = 5; Object.freeze(o); return o; })()" : GoString))).__copy__());
        var _want:GoInt = (5 : GoInt);
        {
            var _got:GoInt = _o.get(("field" : GoString)).int_();
            if (_want != (_got)) {
                _t.errorf(("got %#v, want %#v" : GoString), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
    }
function testEqual(_t:Ref<stdgo.testing.Testing.T>):Void {
        if (!_dummys.get(("someFloat" : GoString)).equal((_dummys.get(("someFloat" : GoString)) == null ? null : _dummys.get(("someFloat" : GoString)).__copy__()))) {
            _t.errorf(("same float is not equal" : GoString));
        };
        if (!_dummys.get(("emptyObj" : GoString)).equal((_dummys.get(("emptyObj" : GoString)) == null ? null : _dummys.get(("emptyObj" : GoString)).__copy__()))) {
            _t.errorf(("same object is not equal" : GoString));
        };
        if (_dummys.get(("someFloat" : GoString)).equal((_dummys.get(("someInt" : GoString)) == null ? null : _dummys.get(("someInt" : GoString)).__copy__()))) {
            _t.errorf(("different values are not unequal" : GoString));
        };
    }
function testNaN(_t:Ref<stdgo.testing.Testing.T>):Void {
        if (!_dummys.get(("NaN" : GoString)).isNaN()) {
            _t.errorf(("JS NaN is not NaN" : GoString));
        };
        if (!stdgo.syscall.js.Js.valueOf(Go.toInterface(stdgo.math.Math.naN())).isNaN()) {
            _t.errorf(("Go NaN is not NaN" : GoString));
        };
        if (_dummys.get(("NaN" : GoString)).equal((_dummys.get(("NaN" : GoString)) == null ? null : _dummys.get(("NaN" : GoString)).__copy__()))) {
            _t.errorf(("NaN is equal to NaN" : GoString));
        };
    }
function testUndefined(_t:Ref<stdgo.testing.Testing.T>):Void {
        if (!stdgo.syscall.js.Js.undefined().isUndefined()) {
            _t.errorf(("undefined is not undefined" : GoString));
        };
        if (!stdgo.syscall.js.Js.undefined().equal((stdgo.syscall.js.Js.undefined() == null ? null : stdgo.syscall.js.Js.undefined().__copy__()))) {
            _t.errorf(("undefined is not equal to undefined" : GoString));
        };
        if (_dummys.isUndefined()) {
            _t.errorf(("object is undefined" : GoString));
        };
        if (stdgo.syscall.js.Js.undefined().isNull()) {
            _t.errorf(("undefined is null" : GoString));
        };
        {
            _dummys.set(("test" : GoString), Go.toInterface(Go.asInterface(stdgo.syscall.js.Js.undefined())));
            if (!_dummys.get(("test" : GoString)).isUndefined()) {
                _t.errorf(("could not set undefined" : GoString));
            };
        };
    }
function testNull(_t:Ref<stdgo.testing.Testing.T>):Void {
        if (!stdgo.syscall.js.Js.null_().isNull()) {
            _t.errorf(("null is not null" : GoString));
        };
        if (!stdgo.syscall.js.Js.null_().equal((stdgo.syscall.js.Js.null_() == null ? null : stdgo.syscall.js.Js.null_().__copy__()))) {
            _t.errorf(("null is not equal to null" : GoString));
        };
        if (_dummys.isNull()) {
            _t.errorf(("object is null" : GoString));
        };
        if (stdgo.syscall.js.Js.null_().isUndefined()) {
            _t.errorf(("null is undefined" : GoString));
        };
        {
            _dummys.set(("test" : GoString), Go.toInterface(Go.asInterface(stdgo.syscall.js.Js.null_())));
            if (!_dummys.get(("test" : GoString)).isNull()) {
                _t.errorf(("could not set null" : GoString));
            };
        };
        {
            _dummys.set(("test" : GoString), (null : AnyInterface));
            if (!_dummys.get(("test" : GoString)).isNull()) {
                _t.errorf(("could not set nil" : GoString));
            };
        };
    }
function testLength(_t:Ref<stdgo.testing.Testing.T>):Void {
        {
            var _got:GoInt = _dummys.get(("someArray" : GoString)).length_();
            if (_got != ((3 : GoInt))) {
                _t.errorf(("got %#v, want %#v" : GoString), Go.toInterface(_got), Go.toInterface((3 : GoInt)));
            };
        };
    }
function testGet(_t:Ref<stdgo.testing.Testing.T>):Void {
        _expectValueError(_t, function():Void {
            _dummys.get(("zero" : GoString)).get(("badField" : GoString));
        });
    }
function testSet(_t:Ref<stdgo.testing.Testing.T>):Void {
        _expectValueError(_t, function():Void {
            _dummys.get(("zero" : GoString)).set(("badField" : GoString), Go.toInterface((42 : GoInt)));
        });
    }
function testDelete(_t:Ref<stdgo.testing.Testing.T>):Void {
        _dummys.set(("test" : GoString), Go.toInterface((42 : GoInt)));
        _dummys.delete(("test" : GoString));
        if (_dummys.call(("hasOwnProperty" : GoString), Go.toInterface(("test" : GoString))).bool_()) {
            _t.errorf(("property still exists" : GoString));
        };
        _expectValueError(_t, function():Void {
            _dummys.get(("zero" : GoString)).delete(("badField" : GoString));
        });
    }
function testIndex(_t:Ref<stdgo.testing.Testing.T>):Void {
        {
            var _got:GoInt = _dummys.get(("someArray" : GoString)).index((1 : GoInt)).int_();
            if (_got != ((42 : GoInt))) {
                _t.errorf(("got %#v, want %#v" : GoString), Go.toInterface(_got), Go.toInterface((42 : GoInt)));
            };
        };
        _expectValueError(_t, function():Void {
            _dummys.get(("zero" : GoString)).index((1 : GoInt));
        });
    }
function testSetIndex(_t:Ref<stdgo.testing.Testing.T>):Void {
        _dummys.get(("someArray" : GoString)).setIndex((2 : GoInt), Go.toInterface((99 : GoInt)));
        {
            var _got:GoInt = _dummys.get(("someArray" : GoString)).index((2 : GoInt)).int_();
            if (_got != ((99 : GoInt))) {
                _t.errorf(("got %#v, want %#v" : GoString), Go.toInterface(_got), Go.toInterface((99 : GoInt)));
            };
        };
        _expectValueError(_t, function():Void {
            _dummys.get(("zero" : GoString)).setIndex((2 : GoInt), Go.toInterface((99 : GoInt)));
        });
    }
function testCall(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _i:GoInt64 = ("40" : GoInt64);
        {
            var _got:GoInt = _dummys.call(("add" : GoString), Go.toInterface(_i), Go.toInterface((2 : GoInt))).int_();
            if (_got != ((42 : GoInt))) {
                _t.errorf(("got %#v, want %#v" : GoString), Go.toInterface(_got), Go.toInterface((42 : GoInt)));
            };
        };
        {
            var _got:GoInt = _dummys.call(("add" : GoString), Go.toInterface(Go.asInterface(stdgo.syscall.js.Js.global().call(("eval" : GoString), Go.toInterface(("40" : GoString))))), Go.toInterface((2 : GoInt))).int_();
            if (_got != ((42 : GoInt))) {
                _t.errorf(("got %#v, want %#v" : GoString), Go.toInterface(_got), Go.toInterface((42 : GoInt)));
            };
        };
        _expectPanic(_t, function():Void {
            _dummys.call(("zero" : GoString));
        });
        _expectValueError(_t, function():Void {
            _dummys.get(("zero" : GoString)).call(("badMethod" : GoString));
        });
    }
function testInvoke(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _i:GoInt64 = ("40" : GoInt64);
        {
            var _got:GoInt = _dummys.get(("add" : GoString)).invoke(Go.toInterface(_i), Go.toInterface((2 : GoInt))).int_();
            if (_got != ((42 : GoInt))) {
                _t.errorf(("got %#v, want %#v" : GoString), Go.toInterface(_got), Go.toInterface((42 : GoInt)));
            };
        };
        _expectValueError(_t, function():Void {
            _dummys.get(("zero" : GoString)).invoke();
        });
    }
function testNew(_t:Ref<stdgo.testing.Testing.T>):Void {
        {
            var _got:GoInt = stdgo.syscall.js.Js.global().get(("Array" : GoString)).new_(Go.toInterface((42 : GoInt))).length_();
            if (_got != ((42 : GoInt))) {
                _t.errorf(("got %#v, want %#v" : GoString), Go.toInterface(_got), Go.toInterface((42 : GoInt)));
            };
        };
        _expectValueError(_t, function():Void {
            _dummys.get(("zero" : GoString)).new_();
        });
    }
function testInstanceOf(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _someArray:Value = (stdgo.syscall.js.Js.global().get(("Array" : GoString)).new_() == null ? null : stdgo.syscall.js.Js.global().get(("Array" : GoString)).new_().__copy__());
        {
            var _0:Bool = _someArray.instanceOf((stdgo.syscall.js.Js.global().get(("Array" : GoString)) == null ? null : stdgo.syscall.js.Js.global().get(("Array" : GoString)).__copy__())), _1:Bool = true, _want:Bool = _1, _got:Bool = _0;
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : GoString), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _0:Bool = _someArray.instanceOf((stdgo.syscall.js.Js.global().get(("Function" : GoString)) == null ? null : stdgo.syscall.js.Js.global().get(("Function" : GoString)).__copy__())), _1:Bool = false, _want:Bool = _1, _got:Bool = _0;
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : GoString), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
    }
function testType(_t:Ref<stdgo.testing.Testing.T>):Void {
        {
            var _0:Type = stdgo.syscall.js.Js.undefined().type(), _1:Type = (0 : Type), _want:Type = _1, _got:Type = _0;
            if (_got != (_want)) {
                _t.errorf(("got %s, want %s" : GoString), Go.toInterface(Go.asInterface(_got)), Go.toInterface(Go.asInterface(_want)));
            };
        };
        {
            var _0:Type = stdgo.syscall.js.Js.null_().type(), _1:Type = (1 : Type), _want:Type = _1, _got:Type = _0;
            if (_got != (_want)) {
                _t.errorf(("got %s, want %s" : GoString), Go.toInterface(Go.asInterface(_got)), Go.toInterface(Go.asInterface(_want)));
            };
        };
        {
            var _0:Type = stdgo.syscall.js.Js.valueOf(Go.toInterface(true)).type(), _1:Type = (2 : Type), _want:Type = _1, _got:Type = _0;
            if (_got != (_want)) {
                _t.errorf(("got %s, want %s" : GoString), Go.toInterface(Go.asInterface(_got)), Go.toInterface(Go.asInterface(_want)));
            };
        };
        {
            var _0:Type = stdgo.syscall.js.Js.valueOf(Go.toInterface((0 : GoInt))).type(), _1:Type = (3 : Type), _want:Type = _1, _got:Type = _0;
            if (_got != (_want)) {
                _t.errorf(("got %s, want %s" : GoString), Go.toInterface(Go.asInterface(_got)), Go.toInterface(Go.asInterface(_want)));
            };
        };
        {
            var _0:Type = stdgo.syscall.js.Js.valueOf(Go.toInterface((42 : GoInt))).type(), _1:Type = (3 : Type), _want:Type = _1, _got:Type = _0;
            if (_got != (_want)) {
                _t.errorf(("got %s, want %s" : GoString), Go.toInterface(Go.asInterface(_got)), Go.toInterface(Go.asInterface(_want)));
            };
        };
        {
            var _0:Type = stdgo.syscall.js.Js.valueOf(Go.toInterface(("test" : GoString))).type(), _1:Type = (4 : Type), _want:Type = _1, _got:Type = _0;
            if (_got != (_want)) {
                _t.errorf(("got %s, want %s" : GoString), Go.toInterface(Go.asInterface(_got)), Go.toInterface(Go.asInterface(_want)));
            };
        };
        {
            var _0:Type = stdgo.syscall.js.Js.global().get(("Symbol" : GoString)).invoke(Go.toInterface(("test" : GoString))).type(), _1:Type = (5 : Type), _want:Type = _1, _got:Type = _0;
            if (_got != (_want)) {
                _t.errorf(("got %s, want %s" : GoString), Go.toInterface(Go.asInterface(_got)), Go.toInterface(Go.asInterface(_want)));
            };
        };
        {
            var _0:Type = stdgo.syscall.js.Js.global().get(("Array" : GoString)).new_().type(), _1:Type = (6 : Type), _want:Type = _1, _got:Type = _0;
            if (_got != (_want)) {
                _t.errorf(("got %s, want %s" : GoString), Go.toInterface(Go.asInterface(_got)), Go.toInterface(Go.asInterface(_want)));
            };
        };
        {
            var _0:Type = stdgo.syscall.js.Js.global().get(("Array" : GoString)).type(), _1:Type = (7 : Type), _want:Type = _1, _got:Type = _0;
            if (_got != (_want)) {
                _t.errorf(("got %s, want %s" : GoString), Go.toInterface(Go.asInterface(_got)), Go.toInterface(Go.asInterface(_want)));
            };
        };
    }
function testValueOf(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _a:Value = (stdgo.syscall.js.Js.valueOf(Go.toInterface((new Slice<AnyInterface>(0, 0, Go.toInterface((0 : GoInt)), Go.toInterface((new Slice<AnyInterface>(0, 0, Go.toInterface((0 : GoInt)), Go.toInterface((42 : GoInt)), Go.toInterface((0 : GoInt))) : Slice<AnyInterface>)), Go.toInterface((0 : GoInt))) : Slice<AnyInterface>))) == null ? null : stdgo.syscall.js.Js.valueOf(Go.toInterface((new Slice<AnyInterface>(0, 0, Go.toInterface((0 : GoInt)), Go.toInterface((new Slice<AnyInterface>(0, 0, Go.toInterface((0 : GoInt)), Go.toInterface((42 : GoInt)), Go.toInterface((0 : GoInt))) : Slice<AnyInterface>)), Go.toInterface((0 : GoInt))) : Slice<AnyInterface>))).__copy__());
        {
            var _got:GoInt = _a.index((1 : GoInt)).index((1 : GoInt)).int_();
            if (_got != ((42 : GoInt))) {
                _t.errorf(("got %v, want %v" : GoString), Go.toInterface(_got), Go.toInterface((42 : GoInt)));
            };
        };
        var _o:Value = (stdgo.syscall.js.Js.valueOf(Go.toInterface(({
            final x = new stdgo.GoMap.GoObjectMap<GoString, AnyInterface>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, { get : () -> stdgo.internal.reflect.Reflect.GoType.interfaceType(true, []) })));
            @:privateAccess x._keys = [("x" : GoString)];
            @:privateAccess x._values = [({
                final x = new stdgo.GoMap.GoObjectMap<GoString, AnyInterface>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, { get : () -> stdgo.internal.reflect.Reflect.GoType.interfaceType(true, []) })));
                @:privateAccess x._keys = [("y" : GoString)];
                @:privateAccess x._values = [(42 : GoInt)];
                x;
            } : stdgo.GoMap<GoString, AnyInterface>)];
            x;
        } : stdgo.GoMap<GoString, AnyInterface>))) == null ? null : stdgo.syscall.js.Js.valueOf(Go.toInterface(({
            final x = new stdgo.GoMap.GoObjectMap<GoString, AnyInterface>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, { get : () -> stdgo.internal.reflect.Reflect.GoType.interfaceType(true, []) })));
            @:privateAccess x._keys = [("x" : GoString)];
            @:privateAccess x._values = [({
                final x = new stdgo.GoMap.GoObjectMap<GoString, AnyInterface>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, { get : () -> stdgo.internal.reflect.Reflect.GoType.interfaceType(true, []) })));
                @:privateAccess x._keys = [("y" : GoString)];
                @:privateAccess x._values = [(42 : GoInt)];
                x;
            } : stdgo.GoMap<GoString, AnyInterface>)];
            x;
        } : stdgo.GoMap<GoString, AnyInterface>))).__copy__());
        {
            var _got:GoInt = _o.get(("x" : GoString)).get(("y" : GoString)).int_();
            if (_got != ((42 : GoInt))) {
                _t.errorf(("got %v, want %v" : GoString), Go.toInterface(_got), Go.toInterface((42 : GoInt)));
            };
        };
    }
function testZeroValue(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _v:Value = ({} : Value);
        if (!_v.isUndefined()) {
            _t.error(Go.toInterface(("zero js.Value is not js.Undefined()" : GoString)));
        };
    }
function testFuncOf(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _c = new Chan<T__struct_0>(0, () -> ({  } : T__struct_0));
            var _cb:Func = (stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
                {
                    var _got:GoInt = _args[(0 : GoInt)].int_();
                    if (_got != ((42 : GoInt))) {
                        _t.errorf(("got %#v, want %#v" : GoString), Go.toInterface(_got), Go.toInterface((42 : GoInt)));
                    };
                };
                _c.__send__(({  } : T__struct_0));
                return (null : AnyInterface);
            }) == null ? null : stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
                {
                    var _got:GoInt = _args[(0 : GoInt)].int_();
                    if (_got != ((42 : GoInt))) {
                        _t.errorf(("got %#v, want %#v" : GoString), Go.toInterface(_got), Go.toInterface((42 : GoInt)));
                    };
                };
                _c.__send__(({  } : T__struct_0));
                return (null : AnyInterface);
            }).__copy__());
            __deferstack__.unshift(() -> _cb.release());
            stdgo.syscall.js.Js.global().call(("setTimeout" : GoString), Go.toInterface(Go.asInterface(_cb)), Go.toInterface((0 : GoInt)), Go.toInterface((42 : GoInt)));
            _c.__get__();
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
function testInvokeFunction(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _called:Bool = false;
            var _cb:Func = (stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
                var __deferstack__:Array<Void -> Void> = [];
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
                        return Go.toInterface(Go.asInterface(_cb2.invoke()));
                    };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (Go.recover_exception != null) throw Go.recover_exception;
                        return (null : AnyInterface);
                    };
                } catch(__exception__) {
                    var exe:Dynamic = __exception__.native;
                    if ((exe is haxe.ValueException)) exe = exe.value;
                    if (!(exe is AnyInterfaceData)) {
                        exe = Go.toInterface(__exception__.message);
                    };
                    Go.recover_exception = exe;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (Go.recover_exception != null) throw Go.recover_exception;
                    return (null : AnyInterface);
                };
            }) == null ? null : stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
                var __deferstack__:Array<Void -> Void> = [];
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
                        return Go.toInterface(Go.asInterface(_cb2.invoke()));
                    };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (Go.recover_exception != null) throw Go.recover_exception;
                        return (null : AnyInterface);
                    };
                } catch(__exception__) {
                    var exe:Dynamic = __exception__.native;
                    if ((exe is haxe.ValueException)) exe = exe.value;
                    if (!(exe is AnyInterfaceData)) {
                        exe = Go.toInterface(__exception__.message);
                    };
                    Go.recover_exception = exe;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (Go.recover_exception != null) throw Go.recover_exception;
                    return (null : AnyInterface);
                };
            }).__copy__());
            __deferstack__.unshift(() -> _cb.release());
            {
                var _got:GoInt = _cb.invoke().int_();
                if (_got != ((42 : GoInt))) {
                    _t.errorf(("got %#v, want %#v" : GoString), Go.toInterface(_got), Go.toInterface((42 : GoInt)));
                };
            };
            if (!_called) {
                _t.error(Go.toInterface(("function not called" : GoString)));
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
function testInterleavedFunctions(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _c1 = new Chan<T__struct_0>(0, () -> ({  } : T__struct_0));
        var _c2 = new Chan<T__struct_0>(0, () -> ({  } : T__struct_0));
        stdgo.syscall.js.Js.global().get(("setTimeout" : GoString)).invoke(Go.toInterface(Go.asInterface(stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
            _c1.__send__(({  } : T__struct_0));
            _c2.__get__();
            return (null : AnyInterface);
        }))), Go.toInterface((0 : GoInt)));
        _c1.__get__();
        _c2.__send__(({  } : T__struct_0));
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
            stdgo.fmt.Fmt.println(Go.toInterface(("button clicked" : GoString)));
            _cb.release();
            return (null : AnyInterface);
        }) == null ? null : stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
            stdgo.fmt.Fmt.println(Go.toInterface(("button clicked" : GoString)));
            _cb.release();
            return (null : AnyInterface);
        }).__copy__());
        stdgo.syscall.js.Js.global().get(("document" : GoString)).call(("getElementById" : GoString), Go.toInterface(("myButton" : GoString))).call(("addEventListener" : GoString), Go.toInterface(("click" : GoString)), Go.toInterface(Go.asInterface(_cb)));
    }
/**
    // See
    // - https://developer.mozilla.org/en-US/docs/Glossary/Truthy
    // - https://stackoverflow.com/questions/19839952/all-falsey-values-in-javascript/19839953#19839953
    // - http://www.ecma-international.org/ecma-262/5.1/#sec-9.2
**/
function testTruthy(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _want:Bool = true;
        for (_0 => _key in (new Slice<GoString>(
0,
0,
("someBool" : GoString),
("someString" : GoString),
("someInt" : GoString),
("someFloat" : GoString),
("someArray" : GoString),
("someDate" : GoString),
("stringZero" : GoString),
("add" : GoString),
("emptyObj" : GoString),
("emptyArray" : GoString),
("Infinity" : GoString),
("NegInfinity" : GoString),
("objNumber0" : GoString),
("objBooleanFalse" : GoString)) : Slice<GoString>)) {
            {
                var _got:Bool = _dummys.get(_key).truthy();
                if (_got != (_want)) {
                    _t.errorf(("%s: got %#v, want %#v" : GoString), Go.toInterface(_key), Go.toInterface(_got), Go.toInterface(_want));
                };
            };
        };
        _want = false;
        {
            var _got:Bool = _dummys.get(("zero" : GoString)).truthy();
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : GoString), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _got:Bool = _dummys.get(("NaN" : GoString)).truthy();
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : GoString), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _got:Bool = stdgo.syscall.js.Js.valueOf(Go.toInterface(Go.str())).truthy();
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : GoString), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _got:Bool = stdgo.syscall.js.Js.null_().truthy();
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : GoString), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _got:Bool = stdgo.syscall.js.Js.undefined().truthy();
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : GoString), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
    }
private function _expectValueError(_t:Ref<stdgo.testing.Testing.T>, _fn:() -> Void):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var _err:AnyInterface = ({
                        final r = Go.recover_exception;
                        Go.recover_exception = null;
                        r;
                    });
                    {
                        var __tmp__ = try {
                            { value : (Go.typeAssert((_err : Ref<ValueError>)) : Ref<ValueError>), ok : true };
                        } catch(_) {
                            { value : (null : Ref<ValueError>), ok : false };
                        }, _0 = __tmp__.value, _ok = __tmp__.ok;
                        if (!_ok) {
                            _t.errorf(("expected *js.ValueError, got %T" : GoString), _err);
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
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
private function _expectPanic(_t:Ref<stdgo.testing.Testing.T>, _fn:() -> Void):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var _err:AnyInterface = ({
                        final r = Go.recover_exception;
                        Go.recover_exception = null;
                        r;
                    });
                    if (_err == null) {
                        _t.errorf(("expected panic" : GoString));
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
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
function testCopyBytesToGo(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tt in _copyTests) {
            _t.run(stdgo.fmt.Fmt.sprintf(("%d-to-%d" : GoString), Go.toInterface(_tt._srcLen), Go.toInterface(_tt._dstLen)), function(_t:Ref<stdgo.testing.Testing.T>):Void {
                var _src:Value = (stdgo.syscall.js.Js.global().get(("Uint8Array" : GoString)).new_(Go.toInterface(_tt._srcLen)) == null ? null : stdgo.syscall.js.Js.global().get(("Uint8Array" : GoString)).new_(Go.toInterface(_tt._srcLen)).__copy__());
                if (_tt._srcLen >= (2 : GoInt)) {
                    _src.setIndex((1 : GoInt), Go.toInterface((42 : GoInt)));
                };
                var _dst = new Slice<GoUInt8>((_tt._dstLen : GoInt).toBasic(), 0, ...[for (i in 0 ... (_tt._dstLen : GoInt).toBasic()) (0 : GoUInt8)]);
                {
                    var _0:GoInt = stdgo.syscall.js.Js.copyBytesToGo(_dst, (_src == null ? null : _src.__copy__())), _1:GoInt = _tt._copyLen, _want:GoInt = _1, _got:GoInt = _0;
                    if (_got != (_want)) {
                        _t.errorf(("copied %d, want %d" : GoString), Go.toInterface(_got), Go.toInterface(_want));
                    };
                };
                if (_tt._dstLen >= (2 : GoInt)) {
                    {
                        var _0:GoInt = (_dst[(1 : GoInt)] : GoInt), _1:GoInt = (42 : GoInt), _want:GoInt = _1, _got:GoInt = _0;
                        if (_got != (_want)) {
                            _t.errorf(("got %d, want %d" : GoString), Go.toInterface(_got), Go.toInterface(_want));
                        };
                    };
                };
            });
        };
    }
function testCopyBytesToJS(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tt in _copyTests) {
            _t.run(stdgo.fmt.Fmt.sprintf(("%d-to-%d" : GoString), Go.toInterface(_tt._srcLen), Go.toInterface(_tt._dstLen)), function(_t:Ref<stdgo.testing.Testing.T>):Void {
                var _src = new Slice<GoUInt8>((_tt._srcLen : GoInt).toBasic(), 0, ...[for (i in 0 ... (_tt._srcLen : GoInt).toBasic()) (0 : GoUInt8)]);
                if (_tt._srcLen >= (2 : GoInt)) {
                    _src[(1 : GoInt)] = (42 : GoUInt8);
                };
                var _dst:Value = (stdgo.syscall.js.Js.global().get(("Uint8Array" : GoString)).new_(Go.toInterface(_tt._dstLen)) == null ? null : stdgo.syscall.js.Js.global().get(("Uint8Array" : GoString)).new_(Go.toInterface(_tt._dstLen)).__copy__());
                {
                    var _0:GoInt = stdgo.syscall.js.Js.copyBytesToJS((_dst == null ? null : _dst.__copy__()), _src), _1:GoInt = _tt._copyLen, _want:GoInt = _1, _got:GoInt = _0;
                    if (_got != (_want)) {
                        _t.errorf(("copied %d, want %d" : GoString), Go.toInterface(_got), Go.toInterface(_want));
                    };
                };
                if (_tt._dstLen >= (2 : GoInt)) {
                    {
                        var _0:GoInt = _dst.index((1 : GoInt)).int_(), _1:GoInt = (42 : GoInt), _want:GoInt = _1, _got:GoInt = _0;
                        if (_got != (_want)) {
                            _t.errorf(("got %d, want %d" : GoString), Go.toInterface(_got), Go.toInterface(_want));
                        };
                    };
                };
            });
        };
    }
function testGarbageCollection(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _before:GoInt = stdgo.syscall.js.Js.jsgo.get(("_values" : GoString)).length_();
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (1000 : GoInt), _i++, {
                (stdgo.syscall.js.Js.global().get(("Object" : GoString)).new_().call(("toString" : GoString)).string() : GoString);
                stdgo.runtime.Runtime.gc();
            });
        };
        var _after:GoInt = stdgo.syscall.js.Js.jsgo.get(("_values" : GoString)).length_();
        if ((_after - _before) > (500 : GoInt)) {
            _t.errorf(("garbage collection ineffective" : GoString));
        };
    }
/**
    // BenchmarkDOM is a simple benchmark which emulates a webapp making DOM operations.
    // It creates a div, and sets its id. Then searches by that id and sets some data.
    // Finally it removes that div.
**/
function benchmarkDOM(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _document:Value = (stdgo.syscall.js.Js.global().get(("document" : GoString)) == null ? null : stdgo.syscall.js.Js.global().get(("document" : GoString)).__copy__());
        if (_document.isUndefined()) {
            _b.skip(Go.toInterface(("Not a browser environment. Skipping." : GoString)));
        };
        {};
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                var _div:Value = (_document.call(("createElement" : GoString), Go.toInterface(("div" : GoString))) == null ? null : _document.call(("createElement" : GoString), Go.toInterface(("div" : GoString))).__copy__());
                _div.call(("setAttribute" : GoString), Go.toInterface(("id" : GoString)), Go.toInterface(("myDiv" : GoString)));
                _document.get(("body" : GoString)).call(("appendChild" : GoString), Go.toInterface(Go.asInterface(_div)));
                var _myDiv:Value = (_document.call(("getElementById" : GoString), Go.toInterface(("myDiv" : GoString))) == null ? null : _document.call(("getElementById" : GoString), Go.toInterface(("myDiv" : GoString))).__copy__());
                _myDiv.set(("innerHTML" : GoString), Go.toInterface(("someString" : GoString)));
                {
                    var _0:GoString = (_myDiv.get(("innerHTML" : GoString)).string() : GoString), _1:GoString = ("someString" : GoString), _want:GoString = _1, _got:GoString = _0;
                    if (_got != (_want)) {
                        _b.errorf(("got %s, want %s" : GoString), Go.toInterface(_got), Go.toInterface(_want));
                    };
                };
                _document.get(("body" : GoString)).call(("removeChild" : GoString), Go.toInterface(Go.asInterface(_div)));
            });
        };
    }
function testGlobal(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _ident:Func = (stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
                return Go.toInterface(Go.asInterface(_args[(0 : GoInt)]));
            }) == null ? null : stdgo.syscall.js.Js.funcOf(function(_this:Value, _args:Slice<Value>):AnyInterface {
                return Go.toInterface(Go.asInterface(_args[(0 : GoInt)]));
            }).__copy__());
            __deferstack__.unshift(() -> _ident.release());
            {
                var _got:Value = (_ident.invoke(Go.toInterface(Go.asInterface(stdgo.syscall.js.Js.global()))) == null ? null : _ident.invoke(Go.toInterface(Go.asInterface(stdgo.syscall.js.Js.global()))).__copy__());
                if (!_got.equal((stdgo.syscall.js.Js.global() == null ? null : stdgo.syscall.js.Js.global().__copy__()))) {
                    _t.errorf(("got %#v, want %#v" : GoString), Go.toInterface(Go.asInterface(_got)), Go.toInterface(Go.asInterface(stdgo.syscall.js.Js.global())));
                };
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
