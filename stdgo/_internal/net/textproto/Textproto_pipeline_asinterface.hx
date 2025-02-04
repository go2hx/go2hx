package stdgo._internal.net.textproto;
class Pipeline_asInterface {
    @:keep
    @:tdfield
    public dynamic function endResponse(_id:stdgo.GoUInt):Void @:_0 __self__.value.endResponse(_id);
    @:keep
    @:tdfield
    public dynamic function startResponse(_id:stdgo.GoUInt):Void @:_0 __self__.value.startResponse(_id);
    @:keep
    @:tdfield
    public dynamic function endRequest(_id:stdgo.GoUInt):Void @:_0 __self__.value.endRequest(_id);
    @:keep
    @:tdfield
    public dynamic function startRequest(_id:stdgo.GoUInt):Void @:_0 __self__.value.startRequest(_id);
    @:keep
    @:tdfield
    public dynamic function next():stdgo.GoUInt return @:_0 __self__.value.next();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.textproto.Textproto_pipelinepointer.PipelinePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
