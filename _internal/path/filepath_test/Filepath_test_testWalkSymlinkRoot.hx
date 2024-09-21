package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function testWalkSymlinkRoot(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.internal.testenv.Testenv_mustHaveSymlink.mustHaveSymlink(stdgo.Go.asInterface(_t));
        var _td = (_t.tempDir()?.__copy__() : stdgo.GoString);
        var _dir = (stdgo._internal.path.filepath.Filepath_join.join(_td?.__copy__(), ("dir" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        {
            var _err = (stdgo._internal.os.Os_mkdirAll.mkdirAll(stdgo._internal.path.filepath.Filepath_join.join(_td?.__copy__(), ("dir" : stdgo.GoString))?.__copy__(), (493u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        _internal.path.filepath_test.Filepath_test__touch._touch(_t, stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), ("foo" : stdgo.GoString))?.__copy__());
        var _link = (stdgo._internal.path.filepath.Filepath_join.join(_td?.__copy__(), ("link" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        {
            var _err = (stdgo._internal.os.Os_symlink.symlink(("dir" : stdgo.GoString), _link?.__copy__()) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _abslink = (stdgo._internal.path.filepath.Filepath_join.join(_td?.__copy__(), ("abslink" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        {
            var _err = (stdgo._internal.os.Os_symlink.symlink(_dir?.__copy__(), _abslink?.__copy__()) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _linklink = (stdgo._internal.path.filepath.Filepath_join.join(_td?.__copy__(), ("linklink" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        {
            var _err = (stdgo._internal.os.Os_symlink.symlink(("link" : stdgo.GoString), _linklink?.__copy__()) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        for (__8 => _tt in (new stdgo.Slice<_internal.path.filepath_test.Filepath_test_T__struct_2.T__struct_2>(6, 6, ...[({ _desc : ("no slash" : stdgo.GoString), _root : _link?.__copy__(), _want : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_link?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _buggyGOOS : (null : stdgo.Slice<stdgo.GoString>) } : _internal.path.filepath_test.Filepath_test_T__struct_2.T__struct_2), ({ _desc : ("slash" : stdgo.GoString), _root : (_link + ((47 : stdgo.GoInt32) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _want : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[_link?.__copy__(), stdgo._internal.path.filepath.Filepath_join.join(_link?.__copy__(), ("foo" : stdgo.GoString))?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _buggyGOOS : (null : stdgo.Slice<stdgo.GoString>) } : _internal.path.filepath_test.Filepath_test_T__struct_2.T__struct_2), ({ _desc : ("abs no slash" : stdgo.GoString), _root : _abslink?.__copy__(), _want : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_abslink?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _buggyGOOS : (null : stdgo.Slice<stdgo.GoString>) } : _internal.path.filepath_test.Filepath_test_T__struct_2.T__struct_2), ({ _desc : ("abs with slash" : stdgo.GoString), _root : (_abslink + ((47 : stdgo.GoInt32) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _want : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[_abslink?.__copy__(), stdgo._internal.path.filepath.Filepath_join.join(_abslink?.__copy__(), ("foo" : stdgo.GoString))?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _buggyGOOS : (null : stdgo.Slice<stdgo.GoString>) } : _internal.path.filepath_test.Filepath_test_T__struct_2.T__struct_2), ({ _desc : ("double link no slash" : stdgo.GoString), _root : _linklink?.__copy__(), _want : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_linklink?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _buggyGOOS : (null : stdgo.Slice<stdgo.GoString>) } : _internal.path.filepath_test.Filepath_test_T__struct_2.T__struct_2), ({ _desc : ("double link with slash" : stdgo.GoString), _root : (_linklink + ((47 : stdgo.GoInt32) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _want : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[_linklink?.__copy__(), stdgo._internal.path.filepath.Filepath_join.join(_linklink?.__copy__(), ("foo" : stdgo.GoString))?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _buggyGOOS : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("darwin" : stdgo.GoString), ("ios" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>) } : _internal.path.filepath_test.Filepath_test_T__struct_2.T__struct_2)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _desc : ("" : stdgo.GoString), _root : ("" : stdgo.GoString), _want : (null : stdgo.Slice<stdgo.GoString>), _buggyGOOS : (null : stdgo.Slice<stdgo.GoString>) } : _internal.path.filepath_test.Filepath_test_T__struct_2.T__struct_2)])) : stdgo.Slice<_internal.path.filepath_test.Filepath_test_T__struct_2.T__struct_2>)) {
            var _tt = ({
                final x = _tt;
                ({ _desc : x._desc?.__copy__(), _root : x._root?.__copy__(), _want : x._want, _buggyGOOS : x._buggyGOOS } : _internal.path.filepath_test.Filepath_test_T__struct_2.T__struct_2);
            } : _internal.path.filepath_test.Filepath_test_T__struct_2.T__struct_2);
            _t.run(_tt._desc?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                var _walked:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
                var _err = (stdgo._internal.path.filepath.Filepath_walk.walk(_tt._root?.__copy__(), function(_path:stdgo.GoString, _info:stdgo._internal.io.fs.Fs_FileInfo.FileInfo, _err:stdgo.Error):stdgo.Error {
                    if (_err != null) {
                        return _err;
                    };
                    _t.logf(("%#q: %v" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(stdgo.Go.asInterface(_info.mode())));
                    _walked = (_walked.__append__(stdgo._internal.path.filepath.Filepath_clean.clean(_path?.__copy__())?.__copy__()));
                    return (null : stdgo.Error);
                }) : stdgo.Error);
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
                if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_walked), stdgo.Go.toInterface(_tt._want))) {
                    _t.logf(("Walk(%#q) visited %#q; want %#q" : stdgo.GoString), stdgo.Go.toInterface(_tt._root), stdgo.Go.toInterface(_walked), stdgo.Go.toInterface(_tt._want));
                    if (stdgo._internal.slices.Slices_contains.contains(_tt._buggyGOOS, ("js" : stdgo.GoString))) {
                        _t.logf(("(ignoring known bug on %v)" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)));
                    } else {
                        _t.fail();
                    };
                };
            });
        };
    }
