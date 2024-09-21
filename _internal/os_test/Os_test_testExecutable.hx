package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testExecutable(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.internal.testenv.Testenv_mustHaveExec.mustHaveExec(stdgo.Go.asInterface(_t));
        _t.parallel();
        var __tmp__ = stdgo._internal.os.Os_executable.executable(), _ep:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Executable failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _dir = (stdgo._internal.path.filepath.Filepath_dir.dir(stdgo._internal.path.filepath.Filepath_dir.dir(_ep?.__copy__())?.__copy__())?.__copy__() : stdgo.GoString);
        var __tmp__ = stdgo._internal.path.filepath.Filepath_rel.rel(_dir?.__copy__(), _ep?.__copy__()), _fn:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("filepath.Rel: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _cmd = stdgo._internal.internal.testenv.Testenv_command.command(stdgo.Go.asInterface(_t), _fn?.__copy__(), ("-test.run=XXXX" : stdgo.GoString));
        _cmd.dir = _dir?.__copy__();
        _cmd.path = _fn?.__copy__();
        if (false) {} else {
            _cmd.args[(0 : stdgo.GoInt)] = ("-" : stdgo.GoString);
        };
        _cmd.env = (_cmd.environ_().__append__(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s=1" : stdgo.GoString), stdgo.Go.toInterface(("OSTEST_OUTPUT_EXECPATH" : stdgo.GoString)))?.__copy__()));
        var __tmp__ = _cmd.combinedOutput(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("exec(self) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _outs = ((_out : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (!stdgo._internal.path.filepath.Filepath_isAbs.isAbs(_outs?.__copy__())) {
            _t.fatalf(("Child returned %q, want an absolute path" : stdgo.GoString), stdgo.Go.toInterface(_out));
        };
        if (!_internal.os_test.Os_test__sameFile._sameFile(_outs?.__copy__(), _ep?.__copy__())) {
            _t.fatalf(("Child returned %q, not the same file as %q" : stdgo.GoString), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_ep));
        };
    }
