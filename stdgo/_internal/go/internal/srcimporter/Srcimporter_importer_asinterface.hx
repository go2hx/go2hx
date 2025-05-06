package stdgo._internal.go.internal.srcimporter;
class Importer_asInterface {
    @:keep
    @:tdfield
    public dynamic function _joinPath(_elem:haxe.Rest<stdgo.GoString>):stdgo.GoString return @:_0 __self__.value._joinPath(..._elem);
    @:keep
    @:tdfield
    public dynamic function _isAbsPath(_path:stdgo.GoString):Bool return @:_0 __self__.value._isAbsPath(_path);
    @:keep
    @:tdfield
    public dynamic function _absPath(_path:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:_0 __self__.value._absPath(_path);
    @:keep
    @:tdfield
    public dynamic function _cgo(_bp:stdgo.Ref<stdgo._internal.go.build.Build_package.Package>):{ var _0 : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>; var _1 : stdgo.Error; } return @:_0 __self__.value._cgo(_bp);
    @:keep
    @:tdfield
    public dynamic function _parseFiles(_dir:stdgo.GoString, _filenames:stdgo.Slice<stdgo.GoString>):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>; var _1 : stdgo.Error; } return @:_0 __self__.value._parseFiles(_dir, _filenames);
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
    var __self__ : stdgo._internal.go.internal.srcimporter.Srcimporter_importerpointer.ImporterPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
