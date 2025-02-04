package stdgo._internal.os.exec;
class Cmd_asInterface {
    @:keep
    @:tdfield
    public dynamic function environ_():stdgo.Slice<stdgo.GoString> return @:_0 __self__.value.environ_();
    @:keep
    @:tdfield
    public dynamic function _environ():{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_0 __self__.value._environ();
    @:keep
    @:tdfield
    public dynamic function stderrPipe():{ var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo.Error; } return @:_0 __self__.value.stderrPipe();
    @:keep
    @:tdfield
    public dynamic function stdoutPipe():{ var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo.Error; } return @:_0 __self__.value.stdoutPipe();
    @:keep
    @:tdfield
    public dynamic function stdinPipe():{ var _0 : stdgo._internal.io.Io_writecloser.WriteCloser; var _1 : stdgo.Error; } return @:_0 __self__.value.stdinPipe();
    @:keep
    @:tdfield
    public dynamic function combinedOutput():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.combinedOutput();
    @:keep
    @:tdfield
    public dynamic function output():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.output();
    @:keep
    @:tdfield
    public dynamic function _awaitGoroutines(_timer:stdgo.Ref<stdgo._internal.time.Time_timer.Timer>):stdgo.Error return @:_0 __self__.value._awaitGoroutines(_timer);
    @:keep
    @:tdfield
    public dynamic function wait_():stdgo.Error return @:_0 __self__.value.wait_();
    @:keep
    @:tdfield
    public dynamic function _watchCtx(_resultc:stdgo.Chan<stdgo._internal.os.exec.Exec_t_ctxresult.T_ctxResult>):Void @:_0 __self__.value._watchCtx(_resultc);
    @:keep
    @:tdfield
    public dynamic function start():stdgo.Error return @:_0 __self__.value.start();
    @:keep
    @:tdfield
    public dynamic function run():stdgo.Error return @:_0 __self__.value.run();
    @:keep
    @:tdfield
    public dynamic function _writerDescriptor(_w:stdgo._internal.io.Io_writer.Writer):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } return @:_0 __self__.value._writerDescriptor(_w);
    @:keep
    @:tdfield
    public dynamic function _childStderr(_childStdout:stdgo.Ref<stdgo._internal.os.Os_file.File>):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } return @:_0 __self__.value._childStderr(_childStdout);
    @:keep
    @:tdfield
    public dynamic function _childStdout():{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } return @:_0 __self__.value._childStdout();
    @:keep
    @:tdfield
    public dynamic function _childStdin():{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } return @:_0 __self__.value._childStdin();
    @:keep
    @:tdfield
    public dynamic function _argv():stdgo.Slice<stdgo.GoString> return @:_0 __self__.value._argv();
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.os.exec.Exec_cmdpointer.CmdPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
