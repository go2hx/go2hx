package stdgo.internal.zstd;
class T_bitReader_static_extension {
    static public function _makeError(_br:T_bitReader, _msg:String):stdgo.Error {
        final _br = (_br : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_T_bitReader.T_bitReader>);
        final _msg = (_msg : stdgo.GoString);
        return stdgo._internal.internal.zstd.Zstd_T_bitReader_static_extension.T_bitReader_static_extension._makeError(_br, _msg);
    }
    static public function _backup(_br:T_bitReader):Void {
        final _br = (_br : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_T_bitReader.T_bitReader>);
        stdgo._internal.internal.zstd.Zstd_T_bitReader_static_extension.T_bitReader_static_extension._backup(_br);
    }
    static public function _val(_br:T_bitReader, _b:std.UInt):std.UInt {
        final _br = (_br : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_T_bitReader.T_bitReader>);
        final _b = (_b : stdgo.GoUInt8);
        return stdgo._internal.internal.zstd.Zstd_T_bitReader_static_extension.T_bitReader_static_extension._val(_br, _b);
    }
    static public function _moreBits(_br:T_bitReader):stdgo.Error {
        final _br = (_br : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_T_bitReader.T_bitReader>);
        return stdgo._internal.internal.zstd.Zstd_T_bitReader_static_extension.T_bitReader_static_extension._moreBits(_br);
    }
}
