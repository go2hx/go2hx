package stdgo._internal.archive.zip;
@:keep @:allow(stdgo._internal.archive.zip.Zip.T_readBuf_asInterface) class T_readBuf_static_extension {
    @:keep
    @:tdfield
    static public function _sub( _b:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf>, _n:stdgo.GoInt):stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf {
        @:recv var _b:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf> = _b;
        var _b2 = (((_b : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf)).__slice__(0, _n) : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
        (_b : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf).__setData__((((_b : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf)).__slice__(_n) : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf));
        return _b2;
    }
    @:keep
    @:tdfield
    static public function _uint64( _b:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf>):stdgo.GoUInt64 {
        @:recv var _b:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf> = _b;
        var _v = (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint64((_b : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf)) : stdgo.GoUInt64);
        (_b : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf).__setData__((((_b : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf)).__slice__((8 : stdgo.GoInt)) : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf));
        return _v;
    }
    @:keep
    @:tdfield
    static public function _uint32( _b:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf>):stdgo.GoUInt32 {
        @:recv var _b:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf> = _b;
        var _v = (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32((_b : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf)) : stdgo.GoUInt32);
        (_b : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf).__setData__((((_b : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf)).__slice__((4 : stdgo.GoInt)) : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf));
        return _v;
    }
    @:keep
    @:tdfield
    static public function _uint16( _b:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf>):stdgo.GoUInt16 {
        @:recv var _b:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf> = _b;
        var _v = (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint16((_b : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf)) : stdgo.GoUInt16);
        (_b : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf).__setData__((((_b : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf)).__slice__((2 : stdgo.GoInt)) : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf));
        return _v;
    }
    @:keep
    @:tdfield
    static public function _uint8( _b:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf>):stdgo.GoUInt8 {
        @:recv var _b:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf> = _b;
        var _v = (((_b : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf))[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        (_b : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf).__setData__((((_b : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf)).__slice__((1 : stdgo.GoInt)) : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf));
        return _v;
    }
}
