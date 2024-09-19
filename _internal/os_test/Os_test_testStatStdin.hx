package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testStatStdin(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            final __value__ = ("js" : stdgo.GoString);
            if (__value__ == (("android" : stdgo.GoString)) || __value__ == (("plan9" : stdgo.GoString))) {
                _t.skipf(("%s doesn\'t have /bin/sh" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)));
            };
        };
        if (stdgo._internal.os.Os_getenv.getenv(("GO_WANT_HELPER_PROCESS" : stdgo.GoString)) == (("1" : stdgo.GoString))) {
            var __tmp__ = stdgo._internal.os.Os_stdin.stdin.stat(), _st:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Stat failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo.Go.asInterface((_st.mode() & (33554432u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) : stdgo._internal.io.fs.Fs_FileMode.FileMode))));
            stdgo._internal.os.Os_exit.exit((0 : stdgo.GoInt));
        };
        stdgo._internal.internal.testenv.Testenv_mustHaveExec.mustHaveExec(stdgo.Go.asInterface(_t));
        _t.parallel();
        var __tmp__ = stdgo._internal.os.Os_stdin.stdin.stat(), _fi:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var _mode = (_fi.mode() : stdgo._internal.io.fs.Fs_FileMode.FileMode);
            if ((((_mode & (2097152u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) : stdgo._internal.io.fs.Fs_FileMode.FileMode) != (0u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) && ((_mode & (67108864u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) : stdgo._internal.io.fs.Fs_FileMode.FileMode) != (0u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : Bool)) {} else if ((_mode & (33554432u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) : stdgo._internal.io.fs.Fs_FileMode.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))) {} else {
                _t.fatalf(("unexpected Stdin mode (%v), want ModeCharDevice or ModeNamedPipe" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)));
            };
        };
        var _cmd:stdgo.Ref<stdgo._internal.os.exec.Exec_Cmd.Cmd> = (null : stdgo.Ref<stdgo._internal.os.exec.Exec_Cmd.Cmd>);
        if (false) {
            _cmd = stdgo._internal.internal.testenv.Testenv_command.command(stdgo.Go.asInterface(_t), ("cmd" : stdgo.GoString), ("/c" : stdgo.GoString), ((("echo output | " : stdgo.GoString) + stdgo._internal.os.Os_args.args[(0 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + (" -test.run=TestStatStdin" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
        } else {
            _cmd = stdgo._internal.internal.testenv.Testenv_command.command(stdgo.Go.asInterface(_t), ("/bin/sh" : stdgo.GoString), ("-c" : stdgo.GoString), ((("echo output | " : stdgo.GoString) + stdgo._internal.os.Os_args.args[(0 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + (" -test.run=TestStatStdin" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
        };
        _cmd.env = (stdgo._internal.os.Os_environ_.environ_().__append__(("GO_WANT_HELPER_PROCESS=1" : stdgo.GoString)));
        var __tmp__ = _cmd.combinedOutput(), _output:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Failed to spawn child process: %v %q" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((_output : stdgo.GoString)));
        };
        if ((((_output.length) < (1 : stdgo.GoInt) : Bool) || (_output[(0 : stdgo.GoInt)] != (112 : stdgo.GoUInt8)) : Bool)) {
            _t.fatalf(("Child process reports stdin is not pipe \'%v\'" : stdgo.GoString), stdgo.Go.toInterface((_output : stdgo.GoString)));
        };
    }
