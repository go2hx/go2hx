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
@:structInit class T_testPageAllocAlloc___localname___test_8096 {
    public var _scav : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>> = (null : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>);
    public var _before : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>> = (null : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>);
    public var _after : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>> = (null : stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>);
    public var _hits : stdgo.Slice<_internal.runtime_test.Runtime_test_T_testPageAllocAlloc___localname___hit_8045.T_testPageAllocAlloc___localname___hit_8045> = (null : stdgo.Slice<_internal.runtime_test.Runtime_test_T_testPageAllocAlloc___localname___hit_8045.T_testPageAllocAlloc___localname___hit_8045>);
    public function new(?_scav:stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>, ?_before:stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>, ?_after:stdgo.GoMap<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx, stdgo.Slice<stdgo._internal.runtime.Runtime_BitRange.BitRange>>, ?_hits:stdgo.Slice<_internal.runtime_test.Runtime_test_T_testPageAllocAlloc___localname___hit_8045.T_testPageAllocAlloc___localname___hit_8045>) {
        if (_scav != null) this._scav = _scav;
        if (_before != null) this._before = _before;
        if (_after != null) this._after = _after;
        if (_hits != null) this._hits = _hits;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testPageAllocAlloc___localname___test_8096(_scav, _before, _after, _hits);
    }
}
