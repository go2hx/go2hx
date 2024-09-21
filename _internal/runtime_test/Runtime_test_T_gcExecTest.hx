package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
@:structInit @:using(_internal.runtime_test.Runtime_test_T_gcExecTest_static_extension.T_gcExecTest_static_extension) class T_gcExecTest {
    public var _name : stdgo.GoString = "";
    public var _gcPercent : stdgo.GoInt = 0;
    public var _memoryLimit : stdgo.GoInt64 = 0;
    public var _globalsBytes : stdgo.GoUInt64 = 0;
    public var _nCores : stdgo.GoInt = 0;
    public var _allocRate : _internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream = (null : _internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream);
    public var _scanRate : _internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream = (null : _internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream);
    public var _growthRate : _internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream = (null : _internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream);
    public var _scannableFrac : _internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream = (null : _internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream);
    public var _stackBytes : _internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream = (null : _internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream);
    public var _length : stdgo.GoInt = 0;
    public var _checker : (stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, stdgo.Slice<_internal.runtime_test.Runtime_test_T_gcCycleResult.T_gcCycleResult>) -> Void = null;
    public function new(?_name:stdgo.GoString, ?_gcPercent:stdgo.GoInt, ?_memoryLimit:stdgo.GoInt64, ?_globalsBytes:stdgo.GoUInt64, ?_nCores:stdgo.GoInt, ?_allocRate:_internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream, ?_scanRate:_internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream, ?_growthRate:_internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream, ?_scannableFrac:_internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream, ?_stackBytes:_internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream, ?_length:stdgo.GoInt, ?_checker:(stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, stdgo.Slice<_internal.runtime_test.Runtime_test_T_gcCycleResult.T_gcCycleResult>) -> Void) {
        if (_name != null) this._name = _name;
        if (_gcPercent != null) this._gcPercent = _gcPercent;
        if (_memoryLimit != null) this._memoryLimit = _memoryLimit;
        if (_globalsBytes != null) this._globalsBytes = _globalsBytes;
        if (_nCores != null) this._nCores = _nCores;
        if (_allocRate != null) this._allocRate = _allocRate;
        if (_scanRate != null) this._scanRate = _scanRate;
        if (_growthRate != null) this._growthRate = _growthRate;
        if (_scannableFrac != null) this._scannableFrac = _scannableFrac;
        if (_stackBytes != null) this._stackBytes = _stackBytes;
        if (_length != null) this._length = _length;
        if (_checker != null) this._checker = _checker;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_gcExecTest(
_name,
_gcPercent,
_memoryLimit,
_globalsBytes,
_nCores,
_allocRate,
_scanRate,
_growthRate,
_scannableFrac,
_stackBytes,
_length,
_checker);
    }
}
