package stdgo._internal.compress.bzip2;
@:keep @:allow(stdgo._internal.compress.bzip2.Bzip2.T_bitReader_asInterface) class T_bitReader_static_extension {
    @:keep
    @:tdfield
    static public function err( _br:stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_t_bitreader.T_bitReader>):stdgo.Error {
        @:recv var _br:stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_t_bitreader.T_bitReader> = _br;
        return (@:checkr _br ?? throw "null pointer dereference")._err;
    }
    @:keep
    @:tdfield
    static public function readBit( _br:stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_t_bitreader.T_bitReader>):Bool {
        @:recv var _br:stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_t_bitreader.T_bitReader> = _br;
        var _n = (@:check2r _br.readBits((1u32 : stdgo.GoUInt)) : stdgo.GoInt);
        return _n != ((0 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function readBits( _br:stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_t_bitreader.T_bitReader>, _bits:stdgo.GoUInt):stdgo.GoInt {
        @:recv var _br:stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_t_bitreader.T_bitReader> = _br;
        var _n = (0 : stdgo.GoInt);
        var _n64 = (@:check2r _br.readBits64(_bits) : stdgo.GoUInt64);
        return _n = (_n64 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function readBits64( _br:stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_t_bitreader.T_bitReader>, _bits:stdgo.GoUInt):stdgo.GoUInt64 {
        @:recv var _br:stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_t_bitreader.T_bitReader> = _br;
        var _n = (0 : stdgo.GoUInt64);
        while ((_bits > (@:checkr _br ?? throw "null pointer dereference")._bits : Bool)) {
            var __tmp__ = (@:checkr _br ?? throw "null pointer dereference")._r.readByte(), _b:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                _err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
            };
            if (_err != null) {
                (@:checkr _br ?? throw "null pointer dereference")._err = _err;
                return _n = (0i64 : stdgo.GoUInt64);
            };
            (@:checkr _br ?? throw "null pointer dereference")._n = ((@:checkr _br ?? throw "null pointer dereference")._n << ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            (@:checkr _br ?? throw "null pointer dereference")._n = ((@:checkr _br ?? throw "null pointer dereference")._n | ((_b : stdgo.GoUInt64)) : stdgo.GoUInt64);
            (@:checkr _br ?? throw "null pointer dereference")._bits = ((@:checkr _br ?? throw "null pointer dereference")._bits + ((8u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        };
        _n = ((((@:checkr _br ?? throw "null pointer dereference")._n >> (((@:checkr _br ?? throw "null pointer dereference")._bits - _bits : stdgo.GoUInt)) : stdgo.GoUInt64)) & (((((1i64 : stdgo.GoUInt64) << _bits : stdgo.GoUInt64)) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _br ?? throw "null pointer dereference")._bits = ((@:checkr _br ?? throw "null pointer dereference")._bits - (_bits) : stdgo.GoUInt);
        return _n;
    }
}
