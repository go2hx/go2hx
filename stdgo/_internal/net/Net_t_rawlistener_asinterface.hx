package stdgo._internal.net;
class T_rawListener_asInterface {
    @:keep
    @:tdfield
    public dynamic function write(_0:stdgo.GoUIntptr -> Bool):stdgo.Error return @:_0 __self__.value.write(_0);
    @:keep
    @:tdfield
    public dynamic function read(_0:stdgo.GoUIntptr -> Bool):stdgo.Error return @:_0 __self__.value.read(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _ok():Bool return @:_0 __self__.value._ok();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function pollFD():stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> return @:_0 __self__.value.pollFD();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function control(_0:stdgo.GoUIntptr -> Void):stdgo.Error return @:_0 __self__.value.control(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.Net_t_rawlistenerpointer.T_rawListenerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
