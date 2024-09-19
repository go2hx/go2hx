package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function testWaitGroupAlign(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _x:_internal.sync_test.Sync_test_T_testWaitGroupAlign___localname___X_1662.T_testWaitGroupAlign___localname___X_1662 = ({} : _internal.sync_test.Sync_test_T_testWaitGroupAlign___localname___X_1662.T_testWaitGroupAlign___localname___X_1662);
        _x._wg.add((1 : stdgo.GoInt));
        stdgo.Go.routine(() -> {
            var a = function(_x:stdgo.Ref<_internal.sync_test.Sync_test_T_testWaitGroupAlign___localname___X_1662.T_testWaitGroupAlign___localname___X_1662>):Void {
                _x._wg.done();
            };
            a((stdgo.Go.setRef(_x) : stdgo.Ref<_internal.sync_test.Sync_test_T_testWaitGroupAlign___localname___X_1662.T_testWaitGroupAlign___localname___X_1662>));
        });
        _x._wg.wait_();
    }
