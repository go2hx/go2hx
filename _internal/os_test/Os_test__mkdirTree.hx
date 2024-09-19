package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function _mkdirTree(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _root:stdgo.GoString, _level:stdgo.GoInt, _max:stdgo.GoInt):Void {
        if ((_level >= _max : Bool)) {
            return;
        };
        _level++;
        {
            var _i = (97 : stdgo.GoInt32);
            stdgo.Go.cfor((_i < (99 : stdgo.GoInt32) : Bool), _i++, {
                var _dir = (stdgo._internal.path.filepath.Filepath_join.join(_root?.__copy__(), (_i : stdgo.GoString)?.__copy__())?.__copy__() : stdgo.GoString);
                {
                    var _err = (stdgo._internal.os.Os_mkdir.mkdir(_dir?.__copy__(), (448u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                };
                _internal.os_test.Os_test__mkdirTree._mkdirTree(_t, _dir?.__copy__(), _level, _max);
            });
        };
    }
