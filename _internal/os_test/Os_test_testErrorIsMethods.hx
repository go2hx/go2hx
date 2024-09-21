package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testErrorIsMethods(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (stdgo._internal.os.Os_isPermission.isPermission(stdgo.Go.asInterface((new _internal.os_test.Os_test_T_myErrorIs.T_myErrorIs(stdgo._internal.io.fs.Fs_errPermission.errPermission) : _internal.os_test.Os_test_T_myErrorIs.T_myErrorIs)))) {
            _t.error(stdgo.Go.toInterface(("os.IsPermission(err) = true when err.Is(fs.ErrPermission), wanted false" : stdgo.GoString)));
        };
    }
