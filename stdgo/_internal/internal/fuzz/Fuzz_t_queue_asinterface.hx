package stdgo._internal.internal.fuzz;
class T_queue_asInterface {
    @:keep
    @:tdfield
    public dynamic function _clear():Void @:_0 __self__.value._clear();
    @:keep
    @:tdfield
    public dynamic function _peek():{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:_0 __self__.value._peek();
    @:keep
    @:tdfield
    public dynamic function _dequeue():{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:_0 __self__.value._dequeue();
    @:keep
    @:tdfield
    public dynamic function _enqueue(_e:stdgo.AnyInterface):Void @:_0 __self__.value._enqueue(_e);
    @:keep
    @:tdfield
    public dynamic function _grow():Void @:_0 __self__.value._grow();
    @:keep
    @:tdfield
    public dynamic function _cap():stdgo.GoInt return @:_0 __self__.value._cap();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.fuzz.Fuzz_t_queuepointer.T_queuePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
