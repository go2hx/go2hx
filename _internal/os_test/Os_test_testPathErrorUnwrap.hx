package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testPathErrorUnwrap(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _pe = (stdgo.Go.setRef(({ err : stdgo._internal.io.fs.Fs_errInvalid.errInvalid } : stdgo._internal.io.fs.Fs_PathError.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>);
        if (!stdgo._internal.errors.Errors_is_.is_(stdgo.Go.asInterface(_pe), stdgo._internal.io.fs.Fs_errInvalid.errInvalid)) {
            _t.error(stdgo.Go.toInterface(("errors.Is failed, wanted success" : stdgo.GoString)));
        };
    }
