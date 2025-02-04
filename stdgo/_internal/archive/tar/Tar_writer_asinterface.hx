package stdgo._internal.archive.tar;
class Writer_asInterface {
    @:keep
    @:tdfield
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    @:keep
    @:tdfield
    public dynamic function _readFrom(_r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_0 __self__.value._readFrom(_r);
    @:keep
    @:tdfield
    public dynamic function write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.write(_b);
    @:keep
    @:tdfield
    public dynamic function _writeRawHeader(_blk:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block>, _size:stdgo.GoInt64, _flag:stdgo.GoUInt8):stdgo.Error return @:_0 __self__.value._writeRawHeader(_blk, _size, _flag);
    @:keep
    @:tdfield
    public dynamic function _writeRawFile(_name:stdgo.GoString, _data:stdgo.GoString, _flag:stdgo.GoUInt8, _format:stdgo._internal.archive.tar.Tar_format.Format):stdgo.Error return @:_0 __self__.value._writeRawFile(_name, _data, _flag, _format);
    @:keep
    @:tdfield
    public dynamic function _templateV7Plus(_hdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>, _fmtStr:stdgo._internal.archive.tar.Tar_t_stringformatter.T_stringFormatter, _fmtNum:stdgo._internal.archive.tar.Tar_t_numberformatter.T_numberFormatter):stdgo.Ref<stdgo._internal.archive.tar.Tar_t_block.T_block> return @:_0 __self__.value._templateV7Plus(_hdr, _fmtStr, _fmtNum);
    @:keep
    @:tdfield
    public dynamic function _writeGNUHeader(_hdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>):stdgo.Error return @:_0 __self__.value._writeGNUHeader(_hdr);
    @:keep
    @:tdfield
    public dynamic function _writePAXHeader(_hdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>, _paxHdrs:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.Error return @:_0 __self__.value._writePAXHeader(_hdr, _paxHdrs);
    @:keep
    @:tdfield
    public dynamic function _writeUSTARHeader(_hdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>):stdgo.Error return @:_0 __self__.value._writeUSTARHeader(_hdr);
    @:keep
    @:tdfield
    public dynamic function writeHeader(_hdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>):stdgo.Error return @:_0 __self__.value.writeHeader(_hdr);
    @:keep
    @:tdfield
    public dynamic function flush():stdgo.Error return @:_0 __self__.value.flush();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.archive.tar.Tar_writerpointer.WriterPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
