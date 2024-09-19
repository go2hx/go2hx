package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function _run(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _once:stdgo.Ref<stdgo._internal.sync.Sync_Once.Once>, _o:stdgo.Pointer<_internal.sync_test.Sync_test_T_one.T_one>, _c:stdgo.Chan<Bool>):Void {
        _once.do_(function():Void {
            _o.value.increment(_o);
        });
        {
            var _v = (_o.value : _internal.sync_test.Sync_test_T_one.T_one);
            if (_v != ((1 : _internal.sync_test.Sync_test_T_one.T_one))) {
                _t.errorf(("once failed inside run: %d is not 1" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_v)));
            };
        };
        _c.__send__(true);
    }
