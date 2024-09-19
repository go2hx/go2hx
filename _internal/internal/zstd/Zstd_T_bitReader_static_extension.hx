package _internal.internal.zstd;
@:keep @:allow(_internal.internal.zstd.Zstd.T_bitReader_asInterface) class T_bitReader_static_extension {
    @:keep
    static public function _makeError( _br:stdgo.Ref<_internal.internal.zstd.Zstd_T_bitReader.T_bitReader>, _msg:stdgo.GoString):stdgo.Error {
        @:recv var _br:stdgo.Ref<_internal.internal.zstd.Zstd_T_bitReader.T_bitReader> = _br;
        return _br._r._makeError((_br._off : stdgo.GoInt), _msg?.__copy__());
    }
    @:keep
    static public function _backup( _br:stdgo.Ref<_internal.internal.zstd.Zstd_T_bitReader.T_bitReader>):Void {
        @:recv var _br:stdgo.Ref<_internal.internal.zstd.Zstd_T_bitReader.T_bitReader> = _br;
        while ((_br._cnt >= (8u32 : stdgo.GoUInt32) : Bool)) {
            _br._off--;
            _br._cnt = (_br._cnt - ((8u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
        };
    }
    @:keep
    static public function _val( _br:stdgo.Ref<_internal.internal.zstd.Zstd_T_bitReader.T_bitReader>, _b:stdgo.GoUInt8):stdgo.GoUInt32 {
        @:recv var _br:stdgo.Ref<_internal.internal.zstd.Zstd_T_bitReader.T_bitReader> = _br;
        var _r = (_br._bits & (((((1u32 : stdgo.GoUInt32) << _b : stdgo.GoUInt32)) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _br._bits = (_br._bits >> (_b) : stdgo.GoUInt32);
        _br._cnt = (_br._cnt - ((_b : stdgo.GoUInt32)) : stdgo.GoUInt32);
        return _r;
    }
    @:keep
    static public function _moreBits( _br:stdgo.Ref<_internal.internal.zstd.Zstd_T_bitReader.T_bitReader>):stdgo.Error {
        @:recv var _br:stdgo.Ref<_internal.internal.zstd.Zstd_T_bitReader.T_bitReader> = _br;
        while ((_br._cnt < (16u32 : stdgo.GoUInt32) : Bool)) {
            if ((_br._off >= (_br._data.length : stdgo.GoUInt32) : Bool)) {
                return _br._r._makeEOFError((_br._off : stdgo.GoInt));
            };
            var _c = (_br._data[(_br._off : stdgo.GoInt)] : stdgo.GoUInt8);
            _br._off++;
            _br._bits = (_br._bits | (((_c : stdgo.GoUInt32) << _br._cnt : stdgo.GoUInt32)) : stdgo.GoUInt32);
            _br._cnt = (_br._cnt + ((8u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
        };
        return (null : stdgo.Error);
    }
}
