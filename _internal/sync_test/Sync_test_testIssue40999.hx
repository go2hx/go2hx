package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function testIssue40999(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _m:stdgo._internal.sync.Sync_Map_.Map_ = ({} : stdgo._internal.sync.Sync_Map_.Map_);
        _m.store((null : stdgo.AnyInterface), stdgo.Go.toInterface((new _internal.sync_test.Sync_test_T_httpPkg.T_httpPkg() : _internal.sync_test.Sync_test_T_httpPkg.T_httpPkg)));
        var _finalized:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        while (stdgo._internal.sync.atomic_.Atomic__loadUint32.loadUint32(stdgo.Go.pointer(_finalized)) == ((0u32 : stdgo.GoUInt32))) {
            var _p = _new(_internal.sync_test.Sync_test__int._int);
            stdgo._internal.runtime.Runtime_setFinalizer.setFinalizer(stdgo.Go.toInterface(_p), stdgo.Go.toInterface(function(_0:stdgo.Pointer<stdgo.GoInt>):Void {
                stdgo._internal.sync.atomic_.Atomic__addUint32.addUint32(stdgo.Go.pointer(_finalized), (1u32 : stdgo.GoUInt32));
            }));
            _m.store(stdgo.Go.toInterface(_p), stdgo.Go.toInterface((new _internal.sync_test.Sync_test_T_httpPkg.T_httpPkg() : _internal.sync_test.Sync_test_T_httpPkg.T_httpPkg)));
            _m.delete(stdgo.Go.toInterface(_p));
            stdgo._internal.runtime.Runtime_gc.gc();
        };
    }
