package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testTruncateNonexistentFile(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        var _assertPathError = (function(_t:stdgo._internal.testing.Testing_TB.TB, _path:stdgo.GoString, _err:stdgo.Error):Void {
            _t.helper();
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>)) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>), _1 : false };
                }, _pe = __tmp__._0, _ok = __tmp__._1;
                if (((!_ok || !stdgo._internal.os.Os_isNotExist.isNotExist(_err) : Bool) || (_pe.path != _path) : Bool)) {
                    _t.errorf(("got error: %v\nwant an ErrNotExist PathError with path %q" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_path));
                };
            };
        } : (stdgo._internal.testing.Testing_TB.TB, stdgo.GoString, stdgo.Error) -> Void);
        var _path = (stdgo._internal.path.filepath.Filepath_join.join(_t.tempDir()?.__copy__(), ("nonexistent" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _err = (stdgo._internal.os.Os_truncate.truncate(_path?.__copy__(), (1i64 : stdgo.GoInt64)) : stdgo.Error);
        _assertPathError(stdgo.Go.asInterface(_t), _path?.__copy__(), _err);
        {
            var __tmp__ = stdgo._internal.os.Os_stat.stat(_path?.__copy__());
            _err = __tmp__._1;
        };
        _assertPathError(stdgo.Go.asInterface(_t), _path?.__copy__(), _err);
    }
