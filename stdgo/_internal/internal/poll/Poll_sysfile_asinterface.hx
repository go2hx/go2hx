package stdgo._internal.internal.poll;
class SysFile_asInterface {
    @:keep
    @:tdfield
    public dynamic function _destroy(_fd:stdgo.GoInt):stdgo.Error return @:_0 __self__.value._destroy(_fd);
    @:keep
    @:tdfield
    public dynamic function _init():Void @:_0 __self__.value._init();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.poll.Poll_sysfilepointer.SysFilePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
