package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testIsPermission(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.os_test.Os_test__isPermissionTests._isPermissionTests) {
            {
                var _got = (stdgo._internal.os.Os_isPermission.isPermission(_tt._err) : Bool);
                if (_got != (_tt._want)) {
                    _t.errorf(("os.IsPermission(%#v) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._err), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
                };
            };
            {
                var _got = (stdgo._internal.errors.Errors_is_.is_(_tt._err, stdgo._internal.io.fs.Fs_errPermission.errPermission) : Bool);
                if (_got != (_tt._want)) {
                    _t.errorf(("errors.Is(%#v, fs.ErrPermission) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._err), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
                };
            };
        };
    }
