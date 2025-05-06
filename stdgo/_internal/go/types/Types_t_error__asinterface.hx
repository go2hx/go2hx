package stdgo._internal.go.types;
class T_error__asInterface {
    @:keep
    @:tdfield
    public dynamic function _errorf(_at:stdgo._internal.go.token.Token_pos.Pos, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value._errorf(_at, _format, ..._args);
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function _msg(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _qf:stdgo._internal.go.types.Types_qualifier.Qualifier):stdgo.GoString return @:_0 __self__.value._msg(_fset, _qf);
    @:keep
    @:tdfield
    public dynamic function _pos():stdgo._internal.go.token.Token_pos.Pos return @:_0 __self__.value._pos();
    @:keep
    @:tdfield
    public dynamic function _empty():Bool return @:_0 __self__.value._empty();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.types.Types_t_error_pointer.T_error_Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
