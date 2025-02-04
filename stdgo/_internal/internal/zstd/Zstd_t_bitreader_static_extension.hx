package stdgo._internal.internal.zstd;
@:keep @:allow(stdgo._internal.internal.zstd.Zstd.T_bitReader_asInterface) class T_bitReader_static_extension {
    @:keep
    @:tdfield
    static public function _makeError( _br:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_bitreader.T_bitReader>, _msg:stdgo.GoString):stdgo.Error {
        @:recv var _br:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_bitreader.T_bitReader> = _br;
        return @:check2r (@:checkr _br ?? throw "null pointer dereference")._r._makeError(((@:checkr _br ?? throw "null pointer dereference")._off : stdgo.GoInt), _msg?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _backup( _br:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_bitreader.T_bitReader>):Void {
        @:recv var _br:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_bitreader.T_bitReader> = _br;
        while (((@:checkr _br ?? throw "null pointer dereference")._cnt >= (8u32 : stdgo.GoUInt32) : Bool)) {
            (@:checkr _br ?? throw "null pointer dereference")._off--;
            (@:checkr _br ?? throw "null pointer dereference")._cnt = ((@:checkr _br ?? throw "null pointer dereference")._cnt - ((8u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
        };
    }
    @:keep
    @:tdfield
    static public function _val( _br:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_bitreader.T_bitReader>, _b:stdgo.GoUInt8):stdgo.GoUInt32 {
        @:recv var _br:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_bitreader.T_bitReader> = _br;
        var _r = ((@:checkr _br ?? throw "null pointer dereference")._bits & (((((1u32 : stdgo.GoUInt32) << _b : stdgo.GoUInt32)) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        (@:checkr _br ?? throw "null pointer dereference")._bits = ((@:checkr _br ?? throw "null pointer dereference")._bits >> (_b) : stdgo.GoUInt32);
        (@:checkr _br ?? throw "null pointer dereference")._cnt = ((@:checkr _br ?? throw "null pointer dereference")._cnt - ((_b : stdgo.GoUInt32)) : stdgo.GoUInt32);
        return _r;
    }
    @:keep
    @:tdfield
    static public function _moreBits( _br:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_bitreader.T_bitReader>):stdgo.Error {
        @:recv var _br:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_bitreader.T_bitReader> = _br;
        while (((@:checkr _br ?? throw "null pointer dereference")._cnt < (16u32 : stdgo.GoUInt32) : Bool)) {
            if (((@:checkr _br ?? throw "null pointer dereference")._off >= ((@:checkr _br ?? throw "null pointer dereference")._data.length : stdgo.GoUInt32) : Bool)) {
                return @:check2r (@:checkr _br ?? throw "null pointer dereference")._r._makeEOFError(((@:checkr _br ?? throw "null pointer dereference")._off : stdgo.GoInt));
            };
            var _c = ((@:checkr _br ?? throw "null pointer dereference")._data[((@:checkr _br ?? throw "null pointer dereference")._off : stdgo.GoInt)] : stdgo.GoUInt8);
            (@:checkr _br ?? throw "null pointer dereference")._off++;
            (@:checkr _br ?? throw "null pointer dereference")._bits = ((@:checkr _br ?? throw "null pointer dereference")._bits | (((_c : stdgo.GoUInt32) << (@:checkr _br ?? throw "null pointer dereference")._cnt : stdgo.GoUInt32)) : stdgo.GoUInt32);
            (@:checkr _br ?? throw "null pointer dereference")._cnt = ((@:checkr _br ?? throw "null pointer dereference")._cnt + ((8u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
        };
        return (null : stdgo.Error);
    }
}
