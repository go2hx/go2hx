package stdgo._internal.os;
class Process_asInterface {
    @:keep
    @:tdfield
    public dynamic function _blockUntilWaitable():{ var _0 : Bool; var _1 : stdgo.Error; } return @:_0 __self__.value._blockUntilWaitable();
    @:keep
    @:tdfield
    public dynamic function _release():stdgo.Error return @:_0 __self__.value._release();
    @:keep
    @:tdfield
    public dynamic function _signal(_sig:stdgo._internal.os.Os_signal.Signal):stdgo.Error return @:_0 __self__.value._signal(_sig);
    @:keep
    @:tdfield
    public dynamic function _wait():{ var _0 : stdgo.Ref<stdgo._internal.os.Os_processstate.ProcessState>; var _1 : stdgo.Error; } return @:_0 __self__.value._wait();
    @:keep
    @:tdfield
    public dynamic function _kill():stdgo.Error return @:_0 __self__.value._kill();
    @:keep
    @:tdfield
    public dynamic function signal(_sig:stdgo._internal.os.Os_signal.Signal):stdgo.Error return @:_0 __self__.value.signal(_sig);
    @:keep
    @:tdfield
    public dynamic function wait_():{ var _0 : stdgo.Ref<stdgo._internal.os.Os_processstate.ProcessState>; var _1 : stdgo.Error; } return @:_0 __self__.value.wait_();
    @:keep
    @:tdfield
    public dynamic function kill():stdgo.Error return @:_0 __self__.value.kill();
    @:keep
    @:tdfield
    public dynamic function release():stdgo.Error return @:_0 __self__.value.release();
    @:keep
    @:tdfield
    public dynamic function _done():Bool return @:_0 __self__.value._done();
    @:keep
    @:tdfield
    public dynamic function _setDone():Void @:_0 __self__.value._setDone();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.os.Os_processpointer.ProcessPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
