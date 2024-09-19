package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function _testDoubleCloseError(_path:stdgo.GoString):stdgo.Ref<stdgo._internal.testing.Testing_T_.T_> -> Void {
        return function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            _t.parallel();
            var __tmp__ = stdgo._internal.os.Os_open.open(_path?.__copy__()), _file:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            {
                var _err = (_file.close() : stdgo.Error);
                if (_err != null) {
                    _t.fatalf(("unexpected error from Close: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
            {
                var _err = (_file.close() : stdgo.Error);
                if (_err == null) {
                    _t.error(stdgo.Go.toInterface(("second Close did not fail" : stdgo.GoString)));
                } else {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>)) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>), _1 : false };
                    }, _pe = __tmp__._0, _ok = __tmp__._1;
                    if (!_ok) {
                        _t.errorf(("second Close: got %T, want %T" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(stdgo.Go.asInterface(_pe)));
                    } else if (stdgo.Go.toInterface(_pe.err) != (stdgo.Go.toInterface(stdgo._internal.os.Os_errClosed.errClosed))) {
                        _t.errorf(("second Close: got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_pe.err), stdgo.Go.toInterface(stdgo._internal.os.Os_errClosed.errClosed));
                    } else {
                        _t.logf(("second close returned expected error %q" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    };
                };
            };
        };
    }
