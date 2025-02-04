package stdgo._internal.os.exec;
@:keep @:allow(stdgo._internal.os.exec.Exec.Cmd_asInterface) class Cmd_static_extension {
    @:keep
    @:tdfield
    static public function environ_( _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>):stdgo.Slice<stdgo.GoString> throw "Cmd:os.exec.environ_ is not yet implemented";
    @:keep
    @:tdfield
    static public function _environ( _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } throw "Cmd:os.exec._environ is not yet implemented";
    @:keep
    @:tdfield
    static public function stderrPipe( _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>):{ var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo.Error; } throw "Cmd:os.exec.stderrPipe is not yet implemented";
    @:keep
    @:tdfield
    static public function stdoutPipe( _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>):{ var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo.Error; } throw "Cmd:os.exec.stdoutPipe is not yet implemented";
    @:keep
    @:tdfield
    static public function stdinPipe( _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>):{ var _0 : stdgo._internal.io.Io_writecloser.WriteCloser; var _1 : stdgo.Error; } throw "Cmd:os.exec.stdinPipe is not yet implemented";
    @:keep
    @:tdfield
    static public function combinedOutput( _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } throw "Cmd:os.exec.combinedOutput is not yet implemented";
    @:keep
    @:tdfield
    static public function output( _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } throw "Cmd:os.exec.output is not yet implemented";
    @:keep
    @:tdfield
    static public function _awaitGoroutines( _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>, _timer:stdgo.Ref<stdgo._internal.time.Time_timer.Timer>):stdgo.Error throw "Cmd:os.exec._awaitGoroutines is not yet implemented";
    @:keep
    @:tdfield
    static public function wait_( _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>):stdgo.Error throw "Cmd:os.exec.wait_ is not yet implemented";
    @:keep
    @:tdfield
    static public function _watchCtx( _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>, _resultc:stdgo.Chan<stdgo._internal.os.exec.Exec_t_ctxresult.T_ctxResult>):Void throw "Cmd:os.exec._watchCtx is not yet implemented";
    @:keep
    @:tdfield
    static public function start( _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>):stdgo.Error throw "Cmd:os.exec.start is not yet implemented";
    @:keep
    @:tdfield
    static public function run( _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>):stdgo.Error throw "Cmd:os.exec.run is not yet implemented";
    @:keep
    @:tdfield
    static public function _writerDescriptor( _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>, _w:stdgo._internal.io.Io_writer.Writer):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } throw "Cmd:os.exec._writerDescriptor is not yet implemented";
    @:keep
    @:tdfield
    static public function _childStderr( _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>, _childStdout:stdgo.Ref<stdgo._internal.os.Os_file.File>):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } throw "Cmd:os.exec._childStderr is not yet implemented";
    @:keep
    @:tdfield
    static public function _childStdout( _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } throw "Cmd:os.exec._childStdout is not yet implemented";
    @:keep
    @:tdfield
    static public function _childStdin( _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } throw "Cmd:os.exec._childStdin is not yet implemented";
    @:keep
    @:tdfield
    static public function _argv( _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>):stdgo.Slice<stdgo.GoString> throw "Cmd:os.exec._argv is not yet implemented";
    @:keep
    @:tdfield
    static public function string( _c:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>):stdgo.GoString throw "Cmd:os.exec.string is not yet implemented";
}
