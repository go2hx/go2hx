package stdgo._internal.go.internal.gccgoimporter;
class GccgoInstallation_asInterface {
    @:keep
    @:tdfield
    public dynamic function getImporter(_incpaths:stdgo.Slice<stdgo.GoString>, _initmap:stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_initdata.InitData>):stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_importer.Importer return @:_0 __self__.value.getImporter(_incpaths, _initmap);
    @:keep
    @:tdfield
    public dynamic function searchPaths():stdgo.Slice<stdgo.GoString> return @:_0 __self__.value.searchPaths();
    @:keep
    @:tdfield
    public dynamic function initFromDriver(_gccgoPath:stdgo.GoString, _args:haxe.Rest<stdgo.GoString>):stdgo.Error return @:_0 __self__.value.initFromDriver(_gccgoPath, ..._args);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_gccgoinstallationpointer.GccgoInstallationPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
