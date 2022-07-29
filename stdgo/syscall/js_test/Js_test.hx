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
var _dummys : Value = null;
var _copyTests : Slice<stdgo.syscall.js_test.Js_test.T__struct_0> = null;
@:structInit @:local class T__struct_0 {
    public var _srcLen : GoInt = 0;
    public var _dstLen : GoInt = 0;
    public var _copyLen : GoInt = 0;
    public function toString():String return "{" + Go.string(_srcLen) + " " + Go.string(_dstLen) + " " + Go.string(_copyLen) + "}";
    public function new(?_srcLen:GoInt, ?_dstLen:GoInt, ?_copyLen:GoInt, ?toString) {
        if (_srcLen != null) this._srcLen = _srcLen;
        if (_dstLen != null) this._dstLen = _dstLen;
        if (_copyLen != null) this._copyLen = _copyLen;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_0(_srcLen, _dstLen, _copyLen);
    }
}
@:named typedef T_object = GoMap<GoString, AnyInterface>;
@:named typedef T_array = Slice<AnyInterface>;
function testBool(_t:stdgo.testing.Testing.T):Void return;
function testString(_t:stdgo.testing.Testing.T):Void return;
function testInt(_t:stdgo.testing.Testing.T):Void return;
function testIntConversion(_t:stdgo.testing.Testing.T):Void return;
function _testIntConversion(_t:stdgo.testing.Testing.T, _want:GoInt):Void return;
function testFloat(_t:stdgo.testing.Testing.T):Void return;
function testObject(_t:stdgo.testing.Testing.T):Void return;
function testFrozenObject(_t:stdgo.testing.Testing.T):Void return;
function testEqual(_t:stdgo.testing.Testing.T):Void return;
function testNaN(_t:stdgo.testing.Testing.T):Void return;
function testUndefined(_t:stdgo.testing.Testing.T):Void return;
function testNull(_t:stdgo.testing.Testing.T):Void return;
function testLength(_t:stdgo.testing.Testing.T):Void return;
function testGet(_t:stdgo.testing.Testing.T):Void return;
function testSet(_t:stdgo.testing.Testing.T):Void return;
function testDelete(_t:stdgo.testing.Testing.T):Void return;
function testIndex(_t:stdgo.testing.Testing.T):Void return;
function testSetIndex(_t:stdgo.testing.Testing.T):Void return;
function testCall(_t:stdgo.testing.Testing.T):Void return;
function testInvoke(_t:stdgo.testing.Testing.T):Void return;
function testNew(_t:stdgo.testing.Testing.T):Void return;
function testInstanceOf(_t:stdgo.testing.Testing.T):Void return;
function testType(_t:stdgo.testing.Testing.T):Void return;
function testValueOf(_t:stdgo.testing.Testing.T):Void return;
function testZeroValue(_t:stdgo.testing.Testing.T):Void return;
function testFuncOf(_t:stdgo.testing.Testing.T):Void return;
function testInvokeFunction(_t:stdgo.testing.Testing.T):Void return;
function testInterleavedFunctions(_t:stdgo.testing.Testing.T):Void return;
function exampleFuncOf():Void return;
/**
    // See
    // - https://developer.mozilla.org/en-US/docs/Glossary/Truthy
    // - https://stackoverflow.com/questions/19839952/all-falsey-values-in-javascript/19839953#19839953
    // - http://www.ecma-international.org/ecma-262/5.1/#sec-9.2
**/
function testTruthy(_t:stdgo.testing.Testing.T):Void return;
function _expectValueError(_t:stdgo.testing.Testing.T, _fn:() -> Void):Void return;
function _expectPanic(_t:stdgo.testing.Testing.T, _fn:() -> Void):Void return;
function testCopyBytesToGo(_t:stdgo.testing.Testing.T):Void return;
function testCopyBytesToJS(_t:stdgo.testing.Testing.T):Void return;
function testGarbageCollection(_t:stdgo.testing.Testing.T):Void return;
/**
    // BenchmarkDOM is a simple benchmark which emulates a webapp making DOM operations.
    // It creates a div, and sets its id. Then searches by that id and sets some data.
    // Finally it removes that div.
**/
function benchmarkDOM(_b:stdgo.testing.Testing.B):Void return;
function testGlobal(_t:stdgo.testing.Testing.T):Void return;
