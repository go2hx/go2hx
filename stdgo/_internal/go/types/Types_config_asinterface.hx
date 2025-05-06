package stdgo._internal.go.types;
class Config_asInterface {
    @:keep
    @:tdfield
    public dynamic function _sizeof(t:stdgo._internal.go.types.Types_type_.Type_):stdgo.GoInt64 return @:_0 __self__.value._sizeof(t);
    @:keep
    @:tdfield
    public dynamic function _offsetof(t:stdgo._internal.go.types.Types_type_.Type_, _index:stdgo.Slice<stdgo.GoInt>):stdgo.GoInt64 return @:_0 __self__.value._offsetof(t, _index);
    @:keep
    @:tdfield
    public dynamic function _offsetsof(t:stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>):stdgo.Slice<stdgo.GoInt64> return @:_0 __self__.value._offsetsof(t);
    @:keep
    @:tdfield
    public dynamic function _alignof(t:stdgo._internal.go.types.Types_type_.Type_):stdgo.GoInt64 return @:_0 __self__.value._alignof(t);
    @:keep
    @:tdfield
    public dynamic function check(_path:stdgo.GoString, _fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _files:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>, _info:stdgo.Ref<stdgo._internal.go.types.Types_info.Info>):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } return @:_0 __self__.value.check(_path, _fset, _files, _info);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.types.Types_configpointer.ConfigPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
