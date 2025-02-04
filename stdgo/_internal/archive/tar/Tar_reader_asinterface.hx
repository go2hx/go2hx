package stdgo._internal.archive.tar;
class Reader_asInterface {
    @:keep
    @:tdfield
    public dynamic function _writeTo(_w:stdgo._internal.io.Io_writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_0 __self__.value._writeTo(_w);
    @:keep
    @:tdfield
    public dynamic function read(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.read(_b);
    @:keep
    @:tdfield
    public dynamic function _readOldGNUSparseMap(_hdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>, _blk:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block>):{ var _0 : stdgo._internal.archive.tar.Tar_t_sparsedatas.T_sparseDatas; var _1 : stdgo.Error; } return @:_0 __self__.value._readOldGNUSparseMap(_hdr, _blk);
    @:keep
    @:tdfield
    public dynamic function _readHeader():{ var _0 : stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>; var _1 : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block>; var _2 : stdgo.Error; } return @:_0 __self__.value._readHeader();
    @:keep
    @:tdfield
    public dynamic function _readGNUSparsePAXHeaders(_hdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>):{ var _0 : stdgo._internal.archive.tar.Tar_t_sparsedatas.T_sparseDatas; var _1 : stdgo.Error; } return @:_0 __self__.value._readGNUSparsePAXHeaders(_hdr);
    @:keep
    @:tdfield
    public dynamic function _handleSparseFile(_hdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>, _rawHdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block>):stdgo.Error return @:_0 __self__.value._handleSparseFile(_hdr, _rawHdr);
    @:keep
    @:tdfield
    public dynamic function _handleRegularFile(_hdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>):stdgo.Error return @:_0 __self__.value._handleRegularFile(_hdr);
    @:keep
    @:tdfield
    public dynamic function _next():{ var _0 : stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>; var _1 : stdgo.Error; } return @:_0 __self__.value._next();
    @:keep
    @:tdfield
    public dynamic function next():{ var _0 : stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>; var _1 : stdgo.Error; } return @:_0 __self__.value.next();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.archive.tar.Tar_readerpointer.ReaderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
