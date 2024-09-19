package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function testCondSignalStealing(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _iters = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_iters < (1000 : stdgo.GoInt) : Bool), _iters++, {
                var _m:stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
                var _cond = stdgo._internal.sync.Sync_newCond.newCond(stdgo.Go.asInterface((stdgo.Go.setRef(_m) : stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>)));
                var _ch = (new stdgo.Chan<_internal.sync_test.Sync_test_T_httpPkg.T_httpPkg>(0, () -> ({} : _internal.sync_test.Sync_test_T_httpPkg.T_httpPkg)) : stdgo.Chan<_internal.sync_test.Sync_test_T_httpPkg.T_httpPkg>);
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        _m.lock();
                        _ch.__send__((new _internal.sync_test.Sync_test_T_httpPkg.T_httpPkg() : _internal.sync_test.Sync_test_T_httpPkg.T_httpPkg));
                        _cond.wait_();
                        _m.unlock();
                        _ch.__send__((new _internal.sync_test.Sync_test_T_httpPkg.T_httpPkg() : _internal.sync_test.Sync_test_T_httpPkg.T_httpPkg));
                    };
                    a();
                });
                _ch.__get__();
                _m.lock();
                _m.unlock();
                var _done = (false : Bool);
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        _cond.broadcast();
                    };
                    a();
                });
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        _m.lock();
                        while (!_done) {
                            _cond.wait_();
                        };
                        _m.unlock();
                    };
                    a();
                });
                _ch.__get__();
                _m.lock();
                _done = true;
                _m.unlock();
                _cond.broadcast();
            });
        };
    }
