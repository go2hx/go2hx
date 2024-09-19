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
function _checkPageAlloc(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _want:stdgo.Ref<stdgo._internal.runtime.Runtime_PageAlloc.PageAlloc>, _got:stdgo.Ref<stdgo._internal.runtime.Runtime_PageAlloc.PageAlloc>):Void {
        var __tmp__ = _want.bounds(), _wantStart:stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx = __tmp__._0, _wantEnd:stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx = __tmp__._1;
        var __tmp__ = _got.bounds(), _gotStart:stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx = __tmp__._0, _gotEnd:stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx = __tmp__._1;
        if (_gotStart != (_wantStart)) {
            _t.fatalf(("start values not equal: got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_gotStart), stdgo.Go.toInterface(_wantStart));
        };
        if (_gotEnd != (_wantEnd)) {
            _t.fatalf(("end values not equal: got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_gotEnd), stdgo.Go.toInterface(_wantEnd));
        };
        {
            var _i = (_gotStart : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx);
            stdgo.Go.cfor((_i < _gotEnd : Bool), _i++, {
                var __0 = _got.pallocData(_i), __1 = _want.pallocData(_i);
var _wb = __1, _gb = __0;
                if (((_gb == null) || (_gb : Dynamic).__nil__ && (_wb == null) || (_wb : Dynamic).__nil__ : Bool)) {
                    continue;
                };
                if (((((_gb == null) || (_gb : Dynamic).__nil__ && ((_wb != null) && ((_wb : Dynamic).__nil__ == null || !(_wb : Dynamic).__nil__)) : Bool)) || ((((_gb != null) && ((_gb : Dynamic).__nil__ == null || !(_gb : Dynamic).__nil__)) && (_wb == null) || (_wb : Dynamic).__nil__ : Bool)) : Bool)) {
                    _t.errorf(("chunk %d nilness mismatch" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
                if (!_internal.runtime_test.Runtime_test__checkPallocBits._checkPallocBits(_t, _gb.pallocBits(), _wb.pallocBits())) {
                    _t.logf(("in chunk %d (mallocBits)" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
                if (!_internal.runtime_test.Runtime_test__checkPallocBits._checkPallocBits(_t, _gb.scavenged(), _wb.scavenged())) {
                    _t.logf(("in chunk %d (scavenged)" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
            });
        };
    }
