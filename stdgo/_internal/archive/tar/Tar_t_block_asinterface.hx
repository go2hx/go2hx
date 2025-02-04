package stdgo._internal.archive.tar;
class T_block_asInterface {
    @:keep
    @:tdfield
    public dynamic function _reset():Void @:_0 __self__.value._reset();
    @:keep
    @:tdfield
    public dynamic function _computeChecksum():{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt64; } return @:_0 __self__.value._computeChecksum();
    @:keep
    @:tdfield
    public dynamic function _setFormat(_format:stdgo._internal.archive.tar.Tar_format.Format):Void @:_0 __self__.value._setFormat(_format);
    @:keep
    @:tdfield
    public dynamic function _getFormat():stdgo._internal.archive.tar.Tar_format.Format return @:_0 __self__.value._getFormat();
    @:keep
    @:tdfield
    public dynamic function _toSparse():stdgo._internal.archive.tar.Tar_t_sparsearray.T_sparseArray return @:_0 __self__.value._toSparse();
    @:keep
    @:tdfield
    public dynamic function _toUSTAR():stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerustar.T_headerUSTAR> return @:_0 __self__.value._toUSTAR();
    @:keep
    @:tdfield
    public dynamic function _toSTAR():stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerstar.T_headerSTAR> return @:_0 __self__.value._toSTAR();
    @:keep
    @:tdfield
    public dynamic function _toGNU():stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headergnu.T_headerGNU> return @:_0 __self__.value._toGNU();
    @:keep
    @:tdfield
    public dynamic function _toV7():stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerv7.T_headerV7> return @:_0 __self__.value._toV7();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.archive.tar.Tar_t_blockpointer.T_blockPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
