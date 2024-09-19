package _internal.io.fs_test;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
function testSub(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _check = (function(_desc:stdgo.GoString, _sub:stdgo._internal.io.fs.Fs_FS.FS, _err:stdgo.Error):Void {
            _t.helper();
            if (_err != null) {
                _t.errorf(("Sub(sub): %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                return;
            };
            var __tmp__ = stdgo._internal.io.fs.Fs_readFile.readFile(_sub, ("goodbye.txt" : stdgo.GoString)), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((((_data : stdgo.GoString) != ("goodbye, world" : stdgo.GoString)) || (_err != null) : Bool)) {
                _t.errorf(("ReadFile(%s, \"goodbye.txt\" = %q, %v, want %q, nil" : stdgo.GoString), stdgo.Go.toInterface(_desc), stdgo.Go.toInterface((_data : stdgo.GoString)), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(("goodbye, world" : stdgo.GoString)));
            };
            var __tmp__ = stdgo._internal.io.fs.Fs_readDir.readDir(_sub, ("." : stdgo.GoString)), _dirs:stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null || (_dirs.length) != ((1 : stdgo.GoInt)) : Bool) || (_dirs[(0 : stdgo.GoInt)].name() != ("goodbye.txt" : stdgo.GoString)) : Bool)) {
                var _names:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
                for (__8 => _d in _dirs) {
                    _names = (_names.__append__(_d.name()?.__copy__()));
                };
                _t.errorf(("ReadDir(%s, \".\") = %v, %v, want %v, nil" : stdgo.GoString), stdgo.Go.toInterface(_desc), stdgo.Go.toInterface(_names), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("goodbye.txt" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)));
            };
        } : (stdgo.GoString, stdgo._internal.io.fs.Fs_FS.FS, stdgo.Error) -> Void);
        var __tmp__ = stdgo._internal.io.fs.Fs_sub.sub(stdgo.Go.asInterface((new _internal.io.fs_test.Fs_test_T_subOnly.T_subOnly(stdgo.Go.asInterface(_internal.io.fs_test.Fs_test__testFsys._testFsys)) : _internal.io.fs_test.Fs_test_T_subOnly.T_subOnly)), ("sub" : stdgo.GoString)), _sub:stdgo._internal.io.fs.Fs_FS.FS = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _check(("subOnly" : stdgo.GoString), _sub, _err);
        {
            var __tmp__ = stdgo._internal.io.fs.Fs_sub.sub(stdgo.Go.asInterface((new _internal.io.fs_test.Fs_test_T_openOnly.T_openOnly(stdgo.Go.asInterface(_internal.io.fs_test.Fs_test__testFsys._testFsys)) : _internal.io.fs_test.Fs_test_T_openOnly.T_openOnly)), ("sub" : stdgo.GoString));
            _sub = __tmp__._0;
            _err = __tmp__._1;
        };
        _check(("openOnly" : stdgo.GoString), _sub, _err);
        {
            var __tmp__ = _sub.open(("nonexist" : stdgo.GoString));
            _err = __tmp__._1;
        };
        if (_err == null) {
            _t.fatal(stdgo.Go.toInterface(("Open(nonexist): succeeded" : stdgo.GoString)));
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>)) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>), _1 : false };
        }, _pe = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _t.fatalf(("Open(nonexist): error is %T, want *PathError" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (_pe.path != (("nonexist" : stdgo.GoString))) {
            _t.fatalf(("Open(nonexist): err.Path = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_pe.path), stdgo.Go.toInterface(("nonexist" : stdgo.GoString)));
        };
    }
