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
@:structInit class T_testAddrRangesFindSucc___localname___testt_3330 {
    public var _name : stdgo.GoString = "";
    public var _base : stdgo.GoUIntptr = 0;
    public var _expect : stdgo.GoInt = 0;
    public var _ranges : stdgo.Slice<stdgo._internal.runtime.Runtime_AddrRange.AddrRange> = (null : stdgo.Slice<stdgo._internal.runtime.Runtime_AddrRange.AddrRange>);
    public function new(?_name:stdgo.GoString, ?_base:stdgo.GoUIntptr, ?_expect:stdgo.GoInt, ?_ranges:stdgo.Slice<stdgo._internal.runtime.Runtime_AddrRange.AddrRange>) {
        if (_name != null) this._name = _name;
        if (_base != null) this._base = _base;
        if (_expect != null) this._expect = _expect;
        if (_ranges != null) this._ranges = _ranges;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAddrRangesFindSucc___localname___testt_3330(_name, _base, _expect, _ranges);
    }
}
