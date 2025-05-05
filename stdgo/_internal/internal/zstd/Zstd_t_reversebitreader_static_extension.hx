package stdgo._internal.internal.zstd;
@:keep @:allow(stdgo._internal.internal.zstd.Zstd.T_reverseBitReader_asInterface) class T_reverseBitReader_static_extension {
    @:keep
    @:tdfield
    static public function _makeError( _rbr:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader>, _msg:stdgo.GoString):stdgo.Error {
        @:recv var _rbr:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader> = _rbr;
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/bits.go#L129"
        return (@:checkr _rbr ?? throw "null pointer dereference")._r._makeError(((@:checkr _rbr ?? throw "null pointer dereference")._off : stdgo.GoInt), _msg?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _fetch( _rbr:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader>, _b:stdgo.GoUInt8):Bool {
        @:recv var _rbr:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader> = _rbr;
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/bits.go#L114"
        while (((@:checkr _rbr ?? throw "null pointer dereference")._cnt < (_b : stdgo.GoUInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/bits.go#L115"
            if (((@:checkr _rbr ?? throw "null pointer dereference")._off <= (@:checkr _rbr ?? throw "null pointer dereference")._start : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/bits.go#L116"
                return false;
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/bits.go#L118"
            (@:checkr _rbr ?? throw "null pointer dereference")._off--;
            var _c = ((@:checkr _rbr ?? throw "null pointer dereference")._data[((@:checkr _rbr ?? throw "null pointer dereference")._off : stdgo.GoInt)] : stdgo.GoUInt8);
            (@:checkr _rbr ?? throw "null pointer dereference")._bits = ((@:checkr _rbr ?? throw "null pointer dereference")._bits << ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
            (@:checkr _rbr ?? throw "null pointer dereference")._bits = ((@:checkr _rbr ?? throw "null pointer dereference")._bits | ((_c : stdgo.GoUInt32)) : stdgo.GoUInt32);
            (@:checkr _rbr ?? throw "null pointer dereference")._cnt = ((@:checkr _rbr ?? throw "null pointer dereference")._cnt + ((8u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/bits.go#L124"
        return true;
    }
    @:keep
    @:tdfield
    static public function _val( _rbr:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader>, _b:stdgo.GoUInt8):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.Error; } {
        @:recv var _rbr:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader> = _rbr;
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/bits.go#L101"
        if (!_rbr._fetch(_b)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/bits.go#L102"
            return { _0 : (0u32 : stdgo.GoUInt32), _1 : (@:checkr _rbr ?? throw "null pointer dereference")._r._makeEOFError(((@:checkr _rbr ?? throw "null pointer dereference")._off : stdgo.GoInt)) };
        };
        (@:checkr _rbr ?? throw "null pointer dereference")._cnt = ((@:checkr _rbr ?? throw "null pointer dereference")._cnt - ((_b : stdgo.GoUInt32)) : stdgo.GoUInt32);
        var _v = ((((@:checkr _rbr ?? throw "null pointer dereference")._bits >> (@:checkr _rbr ?? throw "null pointer dereference")._cnt : stdgo.GoUInt32)) & (((((1u32 : stdgo.GoUInt32) << _b : stdgo.GoUInt32)) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/bits.go#L107"
        return { _0 : _v, _1 : (null : stdgo.Error) };
    }
}
