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
@:structInit class T_gcCycle {
    public var _allocRate : stdgo.GoFloat64 = 0;
    public var _scanRate : stdgo.GoFloat64 = 0;
    public var _growthRate : stdgo.GoFloat64 = 0;
    public var _scannableFrac : stdgo.GoFloat64 = 0;
    public var _stackBytes : stdgo.GoUInt64 = 0;
    public function new(?_allocRate:stdgo.GoFloat64, ?_scanRate:stdgo.GoFloat64, ?_growthRate:stdgo.GoFloat64, ?_scannableFrac:stdgo.GoFloat64, ?_stackBytes:stdgo.GoUInt64) {
        if (_allocRate != null) this._allocRate = _allocRate;
        if (_scanRate != null) this._scanRate = _scanRate;
        if (_growthRate != null) this._growthRate = _growthRate;
        if (_scannableFrac != null) this._scannableFrac = _scannableFrac;
        if (_stackBytes != null) this._stackBytes = _stackBytes;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_gcCycle(_allocRate, _scanRate, _growthRate, _scannableFrac, _stackBytes);
    }
}
