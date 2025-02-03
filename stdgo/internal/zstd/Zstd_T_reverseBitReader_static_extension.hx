package stdgo.internal.zstd;
class T_reverseBitReader_static_extension {
    static public function _makeError(_rbr:T_reverseBitReader, _msg:String):stdgo.Error {
        final _rbr = (_rbr : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_T_reverseBitReader.T_reverseBitReader>);
        final _msg = (_msg : stdgo.GoString);
        return stdgo._internal.internal.zstd.Zstd_T_reverseBitReader_static_extension.T_reverseBitReader_static_extension._makeError(_rbr, _msg);
    }
    static public function _fetch(_rbr:T_reverseBitReader, _b:std.UInt):Bool {
        final _rbr = (_rbr : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_T_reverseBitReader.T_reverseBitReader>);
        final _b = (_b : stdgo.GoUInt8);
        return stdgo._internal.internal.zstd.Zstd_T_reverseBitReader_static_extension.T_reverseBitReader_static_extension._fetch(_rbr, _b);
    }
    static public function _val(_rbr:T_reverseBitReader, _b:std.UInt):stdgo.Tuple<std.UInt, stdgo.Error> {
        final _rbr = (_rbr : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_T_reverseBitReader.T_reverseBitReader>);
        final _b = (_b : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.internal.zstd.Zstd_T_reverseBitReader_static_extension.T_reverseBitReader_static_extension._val(_rbr, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
