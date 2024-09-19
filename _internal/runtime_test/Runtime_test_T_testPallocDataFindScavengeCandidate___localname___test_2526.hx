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
@:structInit class T_testPallocDataFindScavengeCandidate___localname___test_2526 {
    public var _alloc : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange> = (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
    public var _scavenged : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange> = (null : stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>);
    public var _min : stdgo.GoUIntptr = 0;
    public var _max : stdgo.GoUIntptr = 0;
    public var _want : stdgo._internal.runtime.Runtime_BitRange.BitRange = ({} : stdgo._internal.runtime.Runtime_BitRange.BitRange);
    public function new(?_alloc:stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>, ?_scavenged:stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>, ?_min:stdgo.GoUIntptr, ?_max:stdgo.GoUIntptr, ?_want:stdgo._internal.runtime.Runtime_BitRange.BitRange) {
        if (_alloc != null) this._alloc = _alloc;
        if (_scavenged != null) this._scavenged = _scavenged;
        if (_min != null) this._min = _min;
        if (_max != null) this._max = _max;
        if (_want != null) this._want = _want;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testPallocDataFindScavengeCandidate___localname___test_2526(_alloc, _scavenged, _min, _max, _want);
    }
}
