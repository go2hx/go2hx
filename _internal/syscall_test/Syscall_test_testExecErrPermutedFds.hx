package _internal.syscall_test;
function testExecErrPermutedFds(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.internal.testenv.Testenv_mustHaveExec.mustHaveExec(stdgo.Go.asInterface(_t));
        var _attr = (stdgo.Go.setRef(({ files : (new stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os_File.File>>(3, 3, ...[stdgo._internal.os.Os_stdin.stdin, stdgo._internal.os.Os_stderr.stderr, stdgo._internal.os.Os_stdout.stdout]) : stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os_File.File>>) } : stdgo._internal.os.Os_ProcAttr.ProcAttr)) : stdgo.Ref<stdgo._internal.os.Os_ProcAttr.ProcAttr>);
        var __tmp__ = stdgo._internal.os.Os_startProcess.startProcess(("/" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("/" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _attr), __0:stdgo.Ref<stdgo._internal.os.Os_Process.Process> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _t.fatalf(("StartProcess of invalid program returned err = nil" : stdgo.GoString));
        };
    }
