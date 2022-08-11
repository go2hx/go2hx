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
var _dummys : Value = new Value();
var _copyTests : Slice<T__struct_0> = ((null : Slice<T__struct_0>));
@:structInit @:local class T__struct_0 {
    public var _srcLen : GoInt = 0;
    public var _dstLen : GoInt = 0;
    public var _copyLen : GoInt = 0;
    public function string():String return "{" + Go.string(_srcLen) + " " + Go.string(_dstLen) + " " + Go.string(_copyLen) + "}";
    public function new(?_srcLen:GoInt, ?_dstLen:GoInt, ?_copyLen:GoInt, ?string) {
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
function testBool(_t:stdgo.testing.Testing.T):Void throw "syscall.js_test.testBool is not yet implemented";
function testString(_t:stdgo.testing.Testing.T):Void throw "syscall.js_test.testString is not yet implemented";
function testInt(_t:stdgo.testing.Testing.T):Void throw "syscall.js_test.testInt is not yet implemented";
function testIntConversion(_t:stdgo.testing.Testing.T):Void throw "syscall.js_test.testIntConversion is not yet implemented";
function _testIntConversion(_t:stdgo.testing.Testing.T, _want:GoInt):Void throw "syscall.js_test._testIntConversion is not yet implemented";
function testFloat(_t:stdgo.testing.Testing.T):Void throw "syscall.js_test.testFloat is not yet implemented";
function testObject(_t:stdgo.testing.Testing.T):Void throw "syscall.js_test.testObject is not yet implemented";
function testFrozenObject(_t:stdgo.testing.Testing.T):Void throw "syscall.js_test.testFrozenObject is not yet implemented";
function testEqual(_t:stdgo.testing.Testing.T):Void throw "syscall.js_test.testEqual is not yet implemented";
function testNaN(_t:stdgo.testing.Testing.T):Void throw "syscall.js_test.testNaN is not yet implemented";
function testUndefined(_t:stdgo.testing.Testing.T):Void throw "syscall.js_test.testUndefined is not yet implemented";
function testNull(_t:stdgo.testing.Testing.T):Void throw "syscall.js_test.testNull is not yet implemented";
function testLength(_t:stdgo.testing.Testing.T):Void throw "syscall.js_test.testLength is not yet implemented";
function testGet(_t:stdgo.testing.Testing.T):Void throw "syscall.js_test.testGet is not yet implemented";
function testSet(_t:stdgo.testing.Testing.T):Void throw "syscall.js_test.testSet is not yet implemented";
function testDelete(_t:stdgo.testing.Testing.T):Void throw "syscall.js_test.testDelete is not yet implemented";
function testIndex(_t:stdgo.testing.Testing.T):Void throw "syscall.js_test.testIndex is not yet implemented";
function testSetIndex(_t:stdgo.testing.Testing.T):Void throw "syscall.js_test.testSetIndex is not yet implemented";
function testCall(_t:stdgo.testing.Testing.T):Void throw "syscall.js_test.testCall is not yet implemented";
function testInvoke(_t:stdgo.testing.Testing.T):Void throw "syscall.js_test.testInvoke is not yet implemented";
function testNew(_t:stdgo.testing.Testing.T):Void throw "syscall.js_test.testNew is not yet implemented";
function testInstanceOf(_t:stdgo.testing.Testing.T):Void throw "syscall.js_test.testInstanceOf is not yet implemented";
function testType(_t:stdgo.testing.Testing.T):Void throw "syscall.js_test.testType is not yet implemented";
function testValueOf(_t:stdgo.testing.Testing.T):Void throw "syscall.js_test.testValueOf is not yet implemented";
function testZeroValue(_t:stdgo.testing.Testing.T):Void throw "syscall.js_test.testZeroValue is not yet implemented";
function testFuncOf(_t:stdgo.testing.Testing.T):Void throw "syscall.js_test.testFuncOf is not yet implemented";
function testInvokeFunction(_t:stdgo.testing.Testing.T):Void throw "syscall.js_test.testInvokeFunction is not yet implemented";
function testInterleavedFunctions(_t:stdgo.testing.Testing.T):Void throw "syscall.js_test.testInterleavedFunctions is not yet implemented";
function exampleFuncOf():Void throw "syscall.js_test.exampleFuncOf is not yet implemented";
/**
    // See
    // - https://developer.mozilla.org/en-US/docs/Glossary/Truthy
    // - https://stackoverflow.com/questions/19839952/all-falsey-values-in-javascript/19839953#19839953
    // - http://www.ecma-international.org/ecma-262/5.1/#sec-9.2
**/
function testTruthy(_t:stdgo.testing.Testing.T):Void throw "syscall.js_test.testTruthy is not yet implemented";
function _expectValueError(_t:stdgo.testing.Testing.T, _fn:() -> Void):Void throw "syscall.js_test._expectValueError is not yet implemented";
function _expectPanic(_t:stdgo.testing.Testing.T, _fn:() -> Void):Void throw "syscall.js_test._expectPanic is not yet implemented";
function testCopyBytesToGo(_t:stdgo.testing.Testing.T):Void throw "syscall.js_test.testCopyBytesToGo is not yet implemented";
function testCopyBytesToJS(_t:stdgo.testing.Testing.T):Void throw "syscall.js_test.testCopyBytesToJS is not yet implemented";
function testGarbageCollection(_t:stdgo.testing.Testing.T):Void throw "syscall.js_test.testGarbageCollection is not yet implemented";
/**
    // BenchmarkDOM is a simple benchmark which emulates a webapp making DOM operations.
    // It creates a div, and sets its id. Then searches by that id and sets some data.
    // Finally it removes that div.
**/
function benchmarkDOM(_b:stdgo.testing.Testing.B):Void throw "syscall.js_test.benchmarkDOM is not yet implemented";
function testGlobal(_t:stdgo.testing.Testing.T):Void throw "syscall.js_test.testGlobal is not yet implemented";
