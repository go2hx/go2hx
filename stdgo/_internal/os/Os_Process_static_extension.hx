package stdgo._internal.os;
@:keep @:allow(stdgo._internal.os.Os.Process_asInterface) class Process_static_extension {
    @:keep
    static public function _blockUntilWaitable( _p:stdgo.Ref<stdgo._internal.os.Os_Process.Process>):{ var _0 : Bool; var _1 : stdgo.Error; } throw "Process:os._blockUntilWaitable is not yet implemented";
    @:keep
    static public function _release( _p:stdgo.Ref<stdgo._internal.os.Os_Process.Process>):stdgo.Error throw "Process:os._release is not yet implemented";
    @:keep
    static public function _signal( _p:stdgo.Ref<stdgo._internal.os.Os_Process.Process>, _sig:stdgo._internal.os.Os_Signal.Signal):stdgo.Error throw "Process:os._signal is not yet implemented";
    @:keep
    static public function _wait( _p:stdgo.Ref<stdgo._internal.os.Os_Process.Process>):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_ProcessState.ProcessState>; var _1 : stdgo.Error; } throw "Process:os._wait is not yet implemented";
    @:keep
    static public function _kill( _p:stdgo.Ref<stdgo._internal.os.Os_Process.Process>):stdgo.Error throw "Process:os._kill is not yet implemented";
    @:keep
    static public function signal( _p:stdgo.Ref<stdgo._internal.os.Os_Process.Process>, _sig:stdgo._internal.os.Os_Signal.Signal):stdgo.Error throw "Process:os.signal is not yet implemented";
    @:keep
    static public function wait_( _p:stdgo.Ref<stdgo._internal.os.Os_Process.Process>):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_ProcessState.ProcessState>; var _1 : stdgo.Error; } throw "Process:os.wait_ is not yet implemented";
    @:keep
    static public function kill( _p:stdgo.Ref<stdgo._internal.os.Os_Process.Process>):stdgo.Error throw "Process:os.kill is not yet implemented";
    @:keep
    static public function release( _p:stdgo.Ref<stdgo._internal.os.Os_Process.Process>):stdgo.Error throw "Process:os.release is not yet implemented";
    @:keep
    static public function _done( _p:stdgo.Ref<stdgo._internal.os.Os_Process.Process>):Bool throw "Process:os._done is not yet implemented";
    @:keep
    static public function _setDone( _p:stdgo.Ref<stdgo._internal.os.Os_Process.Process>):Void throw "Process:os._setDone is not yet implemented";
}
