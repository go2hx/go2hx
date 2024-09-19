package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function testWaitGroupRace(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (1000 : stdgo.GoInt) : Bool), _i++, {
                var _wg = (stdgo.Go.setRef((new stdgo._internal.sync.Sync_WaitGroup.WaitGroup() : stdgo._internal.sync.Sync_WaitGroup.WaitGroup)) : stdgo.Ref<stdgo._internal.sync.Sync_WaitGroup.WaitGroup>);
                var _n = _new(_internal.sync_test.Sync_test__int32._int32);
                _wg.add((1 : stdgo.GoInt));
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        stdgo._internal.sync.atomic_.Atomic__addInt32.addInt32(_n, (1 : stdgo.GoInt32));
                        _wg.done();
                    };
                    a();
                });
                _wg.add((1 : stdgo.GoInt));
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        stdgo._internal.sync.atomic_.Atomic__addInt32.addInt32(_n, (1 : stdgo.GoInt32));
                        _wg.done();
                    };
                    a();
                });
                _wg.wait_();
                if (stdgo._internal.sync.atomic_.Atomic__loadInt32.loadInt32(_n) != ((2 : stdgo.GoInt32))) {
                    _t.fatal(stdgo.Go.toInterface(("Spurious wakeup from Wait" : stdgo.GoString)));
                };
            });
        };
    }
