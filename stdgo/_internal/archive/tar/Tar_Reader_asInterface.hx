package stdgo._internal.archive.tar;
class Reader_asInterface {
    @:keep
    public dynamic function _writeTo(_w:stdgo._internal.io.Io_Writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value._writeTo(_w);
    @:keep
    public dynamic function read(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_b);
    @:keep
    public dynamic function _readOldGNUSparseMap(_hdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header>, _blk:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_block.T_block>):{ var _0 : stdgo._internal.archive.tar.Tar_T_sparseDatas.T_sparseDatas; var _1 : stdgo.Error; } return __self__.value._readOldGNUSparseMap(_hdr, _blk);
    @:keep
    public dynamic function _readHeader():{ var _0 : stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header>; var _1 : stdgo.Ref<stdgo._internal.archive.tar.Tar_T_block.T_block>; var _2 : stdgo.Error; } return __self__.value._readHeader();
    @:keep
    public dynamic function _readGNUSparsePAXHeaders(_hdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header>):{ var _0 : stdgo._internal.archive.tar.Tar_T_sparseDatas.T_sparseDatas; var _1 : stdgo.Error; } return __self__.value._readGNUSparsePAXHeaders(_hdr);
    @:keep
    public dynamic function _handleSparseFile(_hdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header>, _rawHdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_block.T_block>):stdgo.Error return __self__.value._handleSparseFile(_hdr, _rawHdr);
    @:keep
    public dynamic function _handleRegularFile(_hdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header>):stdgo.Error return __self__.value._handleRegularFile(_hdr);
    @:keep
    public dynamic function _next():{ var _0 : stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header>; var _1 : stdgo.Error; } return __self__.value._next();
    @:keep
    public dynamic function next():{ var _0 : stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header>; var _1 : stdgo.Error; } return __self__.value.next();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.archive.tar.Tar_Reader.Reader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
