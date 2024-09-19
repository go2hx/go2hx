package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testMkdirAllAtSlash(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            final __value__ = ("js" : stdgo.GoString);
            if (__value__ == (("android" : stdgo.GoString)) || __value__ == (("ios" : stdgo.GoString)) || __value__ == (("plan9" : stdgo.GoString)) || __value__ == (("windows" : stdgo.GoString))) {
                _t.skipf(("skipping on %s" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)));
            };
        };
        if (stdgo._internal.internal.testenv.Testenv_builder.builder() == (stdgo.Go.str())) {
            _t.skipf(("skipping non-hermetic test outside of Go builders" : stdgo.GoString));
        };
        stdgo._internal.os.Os_removeAll.removeAll(("/_go_os_test" : stdgo.GoString));
        {};
        var _err = (stdgo._internal.os.Os_mkdirAll.mkdirAll(("/_go_os_test/dir" : stdgo.GoString), (511u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
        if (_err != null) {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>)) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>), _1 : false };
            }, _pathErr = __tmp__._0, _ok = __tmp__._1;
            if ((_ok && (((stdgo.Go.toInterface(_pathErr.err) == stdgo.Go.toInterface(stdgo.Go.asInterface((13 : stdgo._internal.syscall.Syscall_Errno.Errno)))) || _internal.os_test.Os_test__isReadonlyError._isReadonlyError(_pathErr.err) : Bool)) : Bool)) {
                _t.skipf(("could not create %v: %v" : stdgo.GoString), stdgo.Go.toInterface(("/_go_os_test/dir" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            _t.fatalf(("MkdirAll \"/_go_os_test/dir\": %v, %s" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_pathErr.err));
        };
        stdgo._internal.os.Os_removeAll.removeAll(("/_go_os_test" : stdgo.GoString));
    }
