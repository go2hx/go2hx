package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function testEvalSymlinksAboveRoot(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.internal.testenv.Testenv_mustHaveSymlink.mustHaveSymlink(stdgo.Go.asInterface(_t));
        _t.parallel();
        var _tmpDir = (_t.tempDir()?.__copy__() : stdgo.GoString);
        var __tmp__ = stdgo._internal.path.filepath.Filepath_evalSymlinks.evalSymlinks(_tmpDir?.__copy__()), _evalTmpDir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var _err = (stdgo._internal.os.Os_mkdir.mkdir(stdgo._internal.path.filepath.Filepath_join.join(_evalTmpDir?.__copy__(), ("a" : stdgo.GoString))?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err = (stdgo._internal.os.Os_symlink.symlink(stdgo._internal.path.filepath.Filepath_join.join(_evalTmpDir?.__copy__(), ("a" : stdgo.GoString))?.__copy__(), stdgo._internal.path.filepath.Filepath_join.join(_evalTmpDir?.__copy__(), ("b" : stdgo.GoString))?.__copy__()) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err = (stdgo._internal.os.Os_writeFile.writeFile(stdgo._internal.path.filepath.Filepath_join.join(_evalTmpDir?.__copy__(), ("a" : stdgo.GoString), ("file" : stdgo.GoString))?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), (438u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _vol = (stdgo._internal.path.filepath.Filepath_volumeName.volumeName(_evalTmpDir?.__copy__())?.__copy__() : stdgo.GoString);
        var _c = (stdgo._internal.strings.Strings_count.count((_evalTmpDir.__slice__((_vol.length)) : stdgo.GoString)?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)) : stdgo.GoInt);
        var _dd:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_c + (2 : stdgo.GoInt) : stdgo.GoInt) : Bool), _i++, {
                _dd = (_dd.__append__((".." : stdgo.GoString)));
            });
        };
        var _wantSuffix = (stdgo._internal.strings.Strings_join.join((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("a" : stdgo.GoString), ("file" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ((47 : stdgo.GoInt32) : stdgo.GoString))?.__copy__() : stdgo.GoString);
        for (__16 => _i in (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[_c, (_c + (1 : stdgo.GoInt) : stdgo.GoInt), (_c + (2 : stdgo.GoInt) : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            var _check = (stdgo._internal.strings.Strings_join.join((new stdgo.Slice<stdgo.GoString>(5, 5, ...[_evalTmpDir?.__copy__(), stdgo._internal.strings.Strings_join.join((_dd.__slice__(0, _i) : stdgo.Slice<stdgo.GoString>), ((47 : stdgo.GoInt32) : stdgo.GoString))?.__copy__(), (_evalTmpDir.__slice__(((_vol.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("b" : stdgo.GoString), ("file" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ((47 : stdgo.GoInt32) : stdgo.GoString))?.__copy__() : stdgo.GoString);
            var __tmp__ = stdgo._internal.path.filepath.Filepath_evalSymlinks.evalSymlinks(_check?.__copy__()), _resolved:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((false && stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.io.fs.Fs_errNotExist.errNotExist) : Bool)) {
                stdgo._internal.internal.testenv.Testenv_skipFlaky.skipFlaky(stdgo.Go.asInterface(_t), (37910 : stdgo.GoInt));
            } else if (_err != null) {
                _t.errorf(("EvalSymlinks(%q) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_check), stdgo.Go.toInterface(_err));
            } else if (!stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_resolved?.__copy__(), _wantSuffix?.__copy__())) {
                _t.errorf(("EvalSymlinks(%q) = %q does not end with %q" : stdgo.GoString), stdgo.Go.toInterface(_check), stdgo.Go.toInterface(_resolved), stdgo.Go.toInterface(_wantSuffix));
            } else {
                _t.logf(("EvalSymlinks(%q) = %q" : stdgo.GoString), stdgo.Go.toInterface(_check), stdgo.Go.toInterface(_resolved));
            };
        };
    }
