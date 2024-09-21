package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function testBug3486(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (false) {
            _t.skipf(("skipping on %s/%s" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)), stdgo.Go.toInterface(("wasm" : stdgo.GoString)));
        };
        var _root = (stdgo._internal.path.filepath.Filepath_join.join(stdgo._internal.internal.testenv.Testenv_goroot.goroot(stdgo.Go.asInterface(_t))?.__copy__(), ("src" : stdgo.GoString), ("unicode" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _utf16 = (stdgo._internal.path.filepath.Filepath_join.join(_root?.__copy__(), ("utf16" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _utf8 = (stdgo._internal.path.filepath.Filepath_join.join(_root?.__copy__(), ("utf8" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _seenUTF16 = (false : Bool);
        var _seenUTF8 = (false : Bool);
        var _err = (stdgo._internal.path.filepath.Filepath_walk.walk(_root?.__copy__(), function(_pth:stdgo.GoString, _info:stdgo._internal.io.fs.Fs_FileInfo.FileInfo, _err:stdgo.Error):stdgo.Error {
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            {
                final __value__ = _pth;
                if (__value__ == (_utf16)) {
                    _seenUTF16 = true;
                    return stdgo._internal.path.filepath.Filepath_skipDir.skipDir;
                } else if (__value__ == (_utf8)) {
                    if (!_seenUTF16) {
                        _t.fatal(stdgo.Go.toInterface(("filepath.Walk out of order - utf8 before utf16" : stdgo.GoString)));
                    };
                    _seenUTF8 = true;
                };
            };
            return (null : stdgo.Error);
        }) : stdgo.Error);
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        if (!_seenUTF8) {
            _t.fatalf(("%q not seen" : stdgo.GoString), stdgo.Go.toInterface(_utf8));
        };
    }
