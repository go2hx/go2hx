package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testSeekError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            final __value__ = ("js" : stdgo.GoString);
            if (__value__ == (("js" : stdgo.GoString)) || __value__ == (("plan9" : stdgo.GoString)) || __value__ == (("wasip1" : stdgo.GoString))) {
                _t.skipf(("skipping test on %v" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)));
            };
        };
        _t.parallel();
        var __tmp__ = stdgo._internal.os.Os_pipe.pipe(), _r:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _w:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = _r.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt));
            _err = __tmp__._1;
        };
        if (_err == null) {
            _t.fatal(stdgo.Go.toInterface(("Seek on pipe should fail" : stdgo.GoString)));
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>)) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>), _1 : false };
            }, _perr = __tmp__._0, _ok = __tmp__._1;
            if ((!_ok || (stdgo.Go.toInterface(_perr.err) != stdgo.Go.toInterface(stdgo.Go.asInterface((29 : stdgo._internal.syscall.Syscall_Errno.Errno)))) : Bool)) {
                _t.errorf(("Seek returned error %v, want &PathError{Err: syscall.ESPIPE}" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _w.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt));
            _err = __tmp__._1;
        };
        if (_err == null) {
            _t.fatal(stdgo.Go.toInterface(("Seek on pipe should fail" : stdgo.GoString)));
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>)) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>), _1 : false };
            }, _perr = __tmp__._0, _ok = __tmp__._1;
            if ((!_ok || (stdgo.Go.toInterface(_perr.err) != stdgo.Go.toInterface(stdgo.Go.asInterface((29 : stdgo._internal.syscall.Syscall_Errno.Errno)))) : Bool)) {
                _t.errorf(("Seek returned error %v, want &PathError{Err: syscall.ESPIPE}" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
    }
