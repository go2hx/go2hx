package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testRemoveAllNoFcntl(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (stdgo._internal.testing.Testing_short.short()) {
            _t.skip(stdgo.Go.toInterface(("skipping in short mode" : stdgo.GoString)));
        };
        {};
        {
            var _dir = (stdgo._internal.os.Os_getenv.getenv(("GO_TEST_REMOVE_ALL_NO_FCNTL" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_dir != (stdgo.Go.str())) {
                {
                    var _err = (stdgo._internal.os.Os_removeAll.removeAll(_dir?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                };
                return;
            };
        };
        if (true) {
            _t.skipf(("skipping test on %s" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)));
        };
        {
            var __tmp__ = stdgo._internal.os.Os_stat.stat(("/bin/strace" : stdgo.GoString)), __0:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.skipf(("skipping test because /bin/strace not found: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        var __tmp__ = stdgo._internal.os.Os_executable.executable(), _me:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.skipf(("skipping because Executable failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _tmpdir = (_t.tempDir()?.__copy__() : stdgo.GoString);
        var _subdir = (stdgo._internal.path.filepath.Filepath_join.join(_tmpdir?.__copy__(), ("subdir" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        {
            var _err = (stdgo._internal.os.Os_mkdir.mkdir(_subdir?.__copy__(), (493u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                var _subsubdir = (stdgo._internal.path.filepath.Filepath_join.join(_subdir?.__copy__(), stdgo._internal.strconv.Strconv_itoa.itoa(_i)?.__copy__())?.__copy__() : stdgo.GoString);
                {
                    var _err = (stdgo._internal.os.Os_mkdir.mkdir(stdgo._internal.path.filepath.Filepath_join.join(_subdir?.__copy__(), stdgo._internal.strconv.Strconv_itoa.itoa(_i)?.__copy__())?.__copy__(), (493u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                };
                {
                    var _err = (stdgo._internal.os.Os_writeFile.writeFile(stdgo._internal.path.filepath.Filepath_join.join(_subsubdir?.__copy__(), ("file" : stdgo.GoString))?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), (420u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                };
            });
        };
        var _cmd = stdgo._internal.internal.testenv.Testenv_command.command(stdgo.Go.asInterface(_t), ("/bin/strace" : stdgo.GoString), ("-f" : stdgo.GoString), ("-e" : stdgo.GoString), ("fcntl" : stdgo.GoString), _me?.__copy__(), ("-test.run=TestRemoveAllNoFcntl" : stdgo.GoString));
        _cmd = stdgo._internal.internal.testenv.Testenv_cleanCmdEnv.cleanCmdEnv(_cmd);
        _cmd.env = (_cmd.env.__append__((("GO_TEST_REMOVE_ALL_NO_FCNTL=" : stdgo.GoString) + _subdir?.__copy__() : stdgo.GoString)?.__copy__()));
        var __tmp__ = _cmd.combinedOutput(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_out.length) > (0 : stdgo.GoInt) : Bool)) {
            _t.logf(("%s" : stdgo.GoString), stdgo.Go.toInterface(_out));
        };
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var _got = (stdgo._internal.bytes.Bytes_count.count(_out, (("fcntl" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
            if ((_got >= (100 : stdgo.GoInt) : Bool)) {
                _t.errorf(("found %d fcntl calls, want < 100" : stdgo.GoString), stdgo.Go.toInterface(_got));
            };
        };
    }
