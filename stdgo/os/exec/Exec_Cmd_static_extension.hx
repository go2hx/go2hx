package stdgo.os.exec;
class Cmd_static_extension {
    static public function environ_(_c:Cmd):Array<String> {
        final _c = (_c : stdgo.Ref<stdgo._internal.os.exec.Exec_Cmd.Cmd>);
        return [for (i in stdgo._internal.os.exec.Exec_Cmd_static_extension.Cmd_static_extension.environ_(_c)) i];
    }
    static public function _environ(_c:Cmd):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.os.exec.Exec_Cmd.Cmd>);
        return {
            final obj = stdgo._internal.os.exec.Exec_Cmd_static_extension.Cmd_static_extension._environ(_c);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function stderrPipe(_c:Cmd):stdgo.Tuple<stdgo._internal.io.Io_ReadCloser.ReadCloser, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.os.exec.Exec_Cmd.Cmd>);
        return {
            final obj = stdgo._internal.os.exec.Exec_Cmd_static_extension.Cmd_static_extension.stderrPipe(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function stdoutPipe(_c:Cmd):stdgo.Tuple<stdgo._internal.io.Io_ReadCloser.ReadCloser, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.os.exec.Exec_Cmd.Cmd>);
        return {
            final obj = stdgo._internal.os.exec.Exec_Cmd_static_extension.Cmd_static_extension.stdoutPipe(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function stdinPipe(_c:Cmd):stdgo.Tuple<stdgo._internal.io.Io_WriteCloser.WriteCloser, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.os.exec.Exec_Cmd.Cmd>);
        return {
            final obj = stdgo._internal.os.exec.Exec_Cmd_static_extension.Cmd_static_extension.stdinPipe(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function combinedOutput(_c:Cmd):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.os.exec.Exec_Cmd.Cmd>);
        return {
            final obj = stdgo._internal.os.exec.Exec_Cmd_static_extension.Cmd_static_extension.combinedOutput(_c);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function output(_c:Cmd):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.os.exec.Exec_Cmd.Cmd>);
        return {
            final obj = stdgo._internal.os.exec.Exec_Cmd_static_extension.Cmd_static_extension.output(_c);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _awaitGoroutines(_c:Cmd, _timer:stdgo._internal.time.Time_Timer.Timer):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.os.exec.Exec_Cmd.Cmd>);
        final _timer = (_timer : stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>);
        return stdgo._internal.os.exec.Exec_Cmd_static_extension.Cmd_static_extension._awaitGoroutines(_c, _timer);
    }
    static public function wait_(_c:Cmd):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.os.exec.Exec_Cmd.Cmd>);
        return stdgo._internal.os.exec.Exec_Cmd_static_extension.Cmd_static_extension.wait_(_c);
    }
    static public function _watchCtx(_c:Cmd, _resultc:stdgo.Chan<stdgo._internal.os.exec.Exec_T_ctxResult.T_ctxResult>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.os.exec.Exec_Cmd.Cmd>);
        final _resultc = (_resultc : stdgo.Chan<stdgo._internal.os.exec.Exec_T_ctxResult.T_ctxResult>);
        stdgo._internal.os.exec.Exec_Cmd_static_extension.Cmd_static_extension._watchCtx(_c, _resultc);
    }
    static public function start(_c:Cmd):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.os.exec.Exec_Cmd.Cmd>);
        return stdgo._internal.os.exec.Exec_Cmd_static_extension.Cmd_static_extension.start(_c);
    }
    static public function run(_c:Cmd):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.os.exec.Exec_Cmd.Cmd>);
        return stdgo._internal.os.exec.Exec_Cmd_static_extension.Cmd_static_extension.run(_c);
    }
    static public function _writerDescriptor(_c:Cmd, _w:stdgo._internal.io.Io_Writer.Writer):stdgo.Tuple<stdgo._internal.os.Os_File.File, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.os.exec.Exec_Cmd.Cmd>);
        return {
            final obj = stdgo._internal.os.exec.Exec_Cmd_static_extension.Cmd_static_extension._writerDescriptor(_c, _w);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _childStderr(_c:Cmd, _childStdout:stdgo._internal.os.Os_File.File):stdgo.Tuple<stdgo._internal.os.Os_File.File, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.os.exec.Exec_Cmd.Cmd>);
        final _childStdout = (_childStdout : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        return {
            final obj = stdgo._internal.os.exec.Exec_Cmd_static_extension.Cmd_static_extension._childStderr(_c, _childStdout);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _childStdout(_c:Cmd):stdgo.Tuple<stdgo._internal.os.Os_File.File, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.os.exec.Exec_Cmd.Cmd>);
        return {
            final obj = stdgo._internal.os.exec.Exec_Cmd_static_extension.Cmd_static_extension._childStdout(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _childStdin(_c:Cmd):stdgo.Tuple<stdgo._internal.os.Os_File.File, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.os.exec.Exec_Cmd.Cmd>);
        return {
            final obj = stdgo._internal.os.exec.Exec_Cmd_static_extension.Cmd_static_extension._childStdin(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _argv(_c:Cmd):Array<String> {
        final _c = (_c : stdgo.Ref<stdgo._internal.os.exec.Exec_Cmd.Cmd>);
        return [for (i in stdgo._internal.os.exec.Exec_Cmd_static_extension.Cmd_static_extension._argv(_c)) i];
    }
    static public function string(_c:Cmd):String {
        final _c = (_c : stdgo.Ref<stdgo._internal.os.exec.Exec_Cmd.Cmd>);
        return stdgo._internal.os.exec.Exec_Cmd_static_extension.Cmd_static_extension.string(_c);
    }
}
