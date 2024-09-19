package stdgo._internal.archive.tar;
class T_block_asInterface {
    @:keep
    public dynamic function _reset():Void __self__.value._reset();
    @:keep
    public dynamic function _computeChecksum():{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt64; } return __self__.value._computeChecksum();
    @:keep
    public dynamic function _setFormat(_format:stdgo._internal.archive.tar.Tar_Format.Format):Void __self__.value._setFormat(_format);
    @:keep
    public dynamic function _getFormat():stdgo._internal.archive.tar.Tar_Format.Format return __self__.value._getFormat();
    @:keep
    public dynamic function _toSparse():stdgo._internal.archive.tar.Tar_T_sparseArray.T_sparseArray return __self__.value._toSparse();
    @:keep
    public dynamic function _toUSTAR():stdgo.Ref<stdgo._internal.archive.tar.Tar_T_headerUSTAR.T_headerUSTAR> return __self__.value._toUSTAR();
    @:keep
    public dynamic function _toSTAR():stdgo.Ref<stdgo._internal.archive.tar.Tar_T_headerSTAR.T_headerSTAR> return __self__.value._toSTAR();
    @:keep
    public dynamic function _toGNU():stdgo.Ref<stdgo._internal.archive.tar.Tar_T_headerGNU.T_headerGNU> return __self__.value._toGNU();
    @:keep
    public dynamic function _toV7():stdgo.Ref<stdgo._internal.archive.tar.Tar_T_headerV7.T_headerV7> return __self__.value._toV7();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.archive.tar.Tar_T_block.T_block>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
