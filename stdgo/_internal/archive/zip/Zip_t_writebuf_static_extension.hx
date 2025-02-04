package stdgo._internal.archive.zip;
@:keep @:allow(stdgo._internal.archive.zip.Zip.T_writeBuf_asInterface) class T_writeBuf_static_extension {
    @:keep
    @:tdfield
    static public function _uint64( _b:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf>, _v:stdgo.GoUInt64):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf> = _b;
        stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.putUint64((_b : stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf), _v);
        (_b : stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf).__setData__((((_b : stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf)).__slice__((8 : stdgo.GoInt)) : stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf));
    }
    @:keep
    @:tdfield
    static public function _uint32( _b:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf>, _v:stdgo.GoUInt32):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf> = _b;
        stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.putUint32((_b : stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf), _v);
        (_b : stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf).__setData__((((_b : stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf)).__slice__((4 : stdgo.GoInt)) : stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf));
    }
    @:keep
    @:tdfield
    static public function _uint16( _b:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf>, _v:stdgo.GoUInt16):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf> = _b;
        stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.putUint16((_b : stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf), _v);
        (_b : stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf).__setData__((((_b : stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf)).__slice__((2 : stdgo.GoInt)) : stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf));
    }
    @:keep
    @:tdfield
    static public function _uint8( _b:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf>, _v:stdgo.GoUInt8):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf> = _b;
        ((_b : stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf))[(0 : stdgo.GoInt)] = _v;
        (_b : stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf).__setData__((((_b : stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf)).__slice__((1 : stdgo.GoInt)) : stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf));
    }
}
