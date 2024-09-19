package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function testOnce(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _o = _new(_internal.sync_test.Sync_test__one._one);
        var _once = _new(stdgo._internal.sync.Sync_once.once);
        var _c = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        {};
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                stdgo.Go.routine(() -> _internal.sync_test.Sync_test__run._run(_t, _once, _o, _c));
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                _c.__get__();
            });
        };
        if (_o.value != ((1 : _internal.sync_test.Sync_test_T_one.T_one))) {
            _t.errorf(("once failed outside run: %d is not 1" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_o.value)));
        };
    }
