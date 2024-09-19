package _internal.io.fs_test;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
function testReadDir(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _check = function(_desc:stdgo.GoString, _dirs:stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>, _err:stdgo.Error):Void {
            _t.helper();
            if ((((_err != null || (_dirs.length) != ((2 : stdgo.GoInt)) : Bool) || _dirs[(0 : stdgo.GoInt)].name() != (("hello.txt" : stdgo.GoString)) : Bool) || (_dirs[(1 : stdgo.GoInt)].name() != ("sub" : stdgo.GoString)) : Bool)) {
                var _names:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
                for (__8 => _d in _dirs) {
                    _names = (_names.__append__(_d.name()?.__copy__()));
                };
                _t.errorf(("ReadDir(%s) = %v, %v, want %v, nil" : stdgo.GoString), stdgo.Go.toInterface(_desc), stdgo.Go.toInterface(_names), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("hello.txt" : stdgo.GoString), ("sub" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)));
            };
        };
        var __tmp__ = stdgo._internal.io.fs.Fs_readDir.readDir(stdgo.Go.asInterface((new _internal.io.fs_test.Fs_test_T_readDirOnly.T_readDirOnly(stdgo.Go.asInterface(_internal.io.fs_test.Fs_test__testFsys._testFsys)) : _internal.io.fs_test.Fs_test_T_readDirOnly.T_readDirOnly)), ("." : stdgo.GoString)), _dirs:stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _check(("readDirOnly" : stdgo.GoString), _dirs, _err);
        {
            var __tmp__ = stdgo._internal.io.fs.Fs_readDir.readDir(stdgo.Go.asInterface((new _internal.io.fs_test.Fs_test_T_openOnly.T_openOnly(stdgo.Go.asInterface(_internal.io.fs_test.Fs_test__testFsys._testFsys)) : _internal.io.fs_test.Fs_test_T_openOnly.T_openOnly)), ("." : stdgo.GoString));
            _dirs = __tmp__._0;
            _err = __tmp__._1;
        };
        _check(("openOnly" : stdgo.GoString), _dirs, _err);
        var __tmp__ = stdgo._internal.io.fs.Fs_sub.sub(stdgo.Go.asInterface(_internal.io.fs_test.Fs_test__testFsys._testFsys), ("." : stdgo.GoString)), _sub:stdgo._internal.io.fs.Fs_FS.FS = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = stdgo._internal.io.fs.Fs_readDir.readDir(_sub, ("." : stdgo.GoString));
            _dirs = __tmp__._0;
            _err = __tmp__._1;
        };
        _check(("sub(.)" : stdgo.GoString), _dirs, _err);
    }
