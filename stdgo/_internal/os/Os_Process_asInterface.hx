package stdgo._internal.os;
class Process_asInterface {
    @:keep
    public dynamic function _blockUntilWaitable():{ var _0 : Bool; var _1 : stdgo.Error; } return __self__.value._blockUntilWaitable();
    @:keep
    public dynamic function _release():stdgo.Error return __self__.value._release();
    @:keep
    public dynamic function _signal(_sig:stdgo._internal.os.Os_Signal.Signal):stdgo.Error return __self__.value._signal(_sig);
    @:keep
    public dynamic function _wait():{ var _0 : stdgo.Ref<stdgo._internal.os.Os_ProcessState.ProcessState>; var _1 : stdgo.Error; } return __self__.value._wait();
    @:keep
    public dynamic function _kill():stdgo.Error return __self__.value._kill();
    @:keep
    public dynamic function signal(_sig:stdgo._internal.os.Os_Signal.Signal):stdgo.Error return __self__.value.signal(_sig);
    @:keep
    public dynamic function wait_():{ var _0 : stdgo.Ref<stdgo._internal.os.Os_ProcessState.ProcessState>; var _1 : stdgo.Error; } return __self__.value.wait_();
    @:keep
    public dynamic function kill():stdgo.Error return __self__.value.kill();
    @:keep
    public dynamic function release():stdgo.Error return __self__.value.release();
    @:keep
    public dynamic function _done():Bool return __self__.value._done();
    @:keep
    public dynamic function _setDone():Void __self__.value._setDone();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.os.Os_Process.Process>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
