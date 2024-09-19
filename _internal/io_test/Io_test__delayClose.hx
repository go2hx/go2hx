package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function _delayClose(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _cl:_internal.io_test.Io_test_T_closer.T_closer, _ch:stdgo.Chan<stdgo.GoInt>, _tt:_internal.io_test.Io_test_T_pipeTest.T_pipeTest):Void {
        stdgo._internal.time.Time_sleep.sleep((1000000i64 : stdgo._internal.time.Time_Duration.Duration));
        var _err:stdgo.Error = (null : stdgo.Error);
        if (_tt._closeWithError) {
            _err = _cl.closeWithError(_tt._err);
        } else {
            _err = _cl.close();
        };
        if (_err != null) {
            _t.errorf(("delayClose: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        _ch.__send__((0 : stdgo.GoInt));
    }
