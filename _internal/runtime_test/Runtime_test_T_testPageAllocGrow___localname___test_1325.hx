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
@:structInit class T_testPageAllocGrow___localname___test_1325 {
    public var _chunks : stdgo.Slice<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx> = (null : stdgo.Slice<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx>);
    public var _inUse : stdgo.Slice<stdgo._internal.runtime.Runtime_AddrRange.AddrRange> = (null : stdgo.Slice<stdgo._internal.runtime.Runtime_AddrRange.AddrRange>);
    public function new(?_chunks:stdgo.Slice<stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx>, ?_inUse:stdgo.Slice<stdgo._internal.runtime.Runtime_AddrRange.AddrRange>) {
        if (_chunks != null) this._chunks = _chunks;
        if (_inUse != null) this._inUse = _inUse;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testPageAllocGrow___localname___test_1325(_chunks, _inUse);
    }
}
