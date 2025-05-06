package stdgo._internal.go.importer;
class T_gcimports_asInterface {
    @:keep
    @:tdfield
    public dynamic function importFrom(_path:stdgo.GoString, _srcDir:stdgo.GoString, _mode:stdgo._internal.go.types.Types_importmode.ImportMode):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } return @:_0 __self__.value.importFrom(_path, _srcDir, _mode);
    @:keep
    @:tdfield
    public dynamic function import_(_path:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } return @:_0 __self__.value.import_(_path);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.importer.Importer_t_gcimportspointer.T_gcimportsPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
