package _internal.internal.zstd;
@:keep @:allow(_internal.internal.zstd.Zstd.T_reverseBitReader_asInterface) class T_reverseBitReader_static_extension {
    @:keep
    static public function _makeError( _rbr:stdgo.Ref<_internal.internal.zstd.Zstd_T_reverseBitReader.T_reverseBitReader>, _msg:stdgo.GoString):stdgo.Error {
        @:recv var _rbr:stdgo.Ref<_internal.internal.zstd.Zstd_T_reverseBitReader.T_reverseBitReader> = _rbr;
        return _rbr._r._makeError((_rbr._off : stdgo.GoInt), _msg?.__copy__());
    }
    @:keep
    static public function _fetch( _rbr:stdgo.Ref<_internal.internal.zstd.Zstd_T_reverseBitReader.T_reverseBitReader>, _b:stdgo.GoUInt8):Bool {
        @:recv var _rbr:stdgo.Ref<_internal.internal.zstd.Zstd_T_reverseBitReader.T_reverseBitReader> = _rbr;
        while ((_rbr._cnt < (_b : stdgo.GoUInt32) : Bool)) {
            if ((_rbr._off <= _rbr._start : Bool)) {
                return false;
            };
            _rbr._off--;
            var _c = (_rbr._data[(_rbr._off : stdgo.GoInt)] : stdgo.GoUInt8);
            _rbr._bits = (_rbr._bits << ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
            _rbr._bits = (_rbr._bits | ((_c : stdgo.GoUInt32)) : stdgo.GoUInt32);
            _rbr._cnt = (_rbr._cnt + ((8u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
        };
        return true;
    }
    @:keep
    static public function _val( _rbr:stdgo.Ref<_internal.internal.zstd.Zstd_T_reverseBitReader.T_reverseBitReader>, _b:stdgo.GoUInt8):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.Error; } {
        @:recv var _rbr:stdgo.Ref<_internal.internal.zstd.Zstd_T_reverseBitReader.T_reverseBitReader> = _rbr;
        if (!_rbr._fetch(_b)) {
            return { _0 : (0u32 : stdgo.GoUInt32), _1 : _rbr._r._makeEOFError((_rbr._off : stdgo.GoInt)) };
        };
        _rbr._cnt = (_rbr._cnt - ((_b : stdgo.GoUInt32)) : stdgo.GoUInt32);
        var _v = (((_rbr._bits >> _rbr._cnt : stdgo.GoUInt32)) & (((((1u32 : stdgo.GoUInt32) << _b : stdgo.GoUInt32)) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        return { _0 : _v, _1 : (null : stdgo.Error) };
    }
}
