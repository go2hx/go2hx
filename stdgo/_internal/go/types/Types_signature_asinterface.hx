package stdgo._internal.go.types;
class Signature_asInterface {
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function underlying():stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value.underlying();
    @:keep
    @:tdfield
    public dynamic function variadic():Bool return @:_0 __self__.value.variadic();
    @:keep
    @:tdfield
    public dynamic function results():stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple> return @:_0 __self__.value.results();
    @:keep
    @:tdfield
    public dynamic function params():stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple> return @:_0 __self__.value.params();
    @:keep
    @:tdfield
    public dynamic function recvTypeParams():stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList> return @:_0 __self__.value.recvTypeParams();
    @:keep
    @:tdfield
    public dynamic function typeParams():stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList> return @:_0 __self__.value.typeParams();
    @:keep
    @:tdfield
    public dynamic function recv():stdgo.Ref<stdgo._internal.go.types.Types_var.Var> return @:_0 __self__.value.recv();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.types.Types_signaturepointer.SignaturePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
