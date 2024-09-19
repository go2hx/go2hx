package _internal.internal.poll_test;
import stdgo._internal.internal.poll.Poll;
function testMutexClose(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _mu:stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex = ({} : stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex);
        if (!_mu.increfAndClose()) {
            _t.fatal(stdgo.Go.toInterface(("broken" : stdgo.GoString)));
        };
        if (_mu.incref()) {
            _t.fatal(stdgo.Go.toInterface(("broken" : stdgo.GoString)));
        };
        if (_mu.rwlock(true)) {
            _t.fatal(stdgo.Go.toInterface(("broken" : stdgo.GoString)));
        };
        if (_mu.rwlock(false)) {
            _t.fatal(stdgo.Go.toInterface(("broken" : stdgo.GoString)));
        };
        if (_mu.increfAndClose()) {
            _t.fatal(stdgo.Go.toInterface(("broken" : stdgo.GoString)));
        };
    }
