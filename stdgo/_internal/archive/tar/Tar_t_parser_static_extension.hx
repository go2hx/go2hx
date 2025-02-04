package stdgo._internal.archive.tar;
@:keep @:allow(stdgo._internal.archive.tar.Tar.T_parser_asInterface) class T_parser_static_extension {
    @:keep
    @:tdfield
    static public function _parseOctal( _p:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_parser.T_parser>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt64 {
        @:recv var _p:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_parser.T_parser> = _p;
        _b = stdgo._internal.bytes.Bytes_trim.trim(_b, (stdgo.Go.str(" ", 0) : stdgo.GoString)?.__copy__());
        if ((_b.length) == ((0 : stdgo.GoInt))) {
            return (0i64 : stdgo.GoInt64);
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(@:check2r _p._parseString(_b)?.__copy__(), (8 : stdgo.GoInt), (64 : stdgo.GoInt)), _x:stdgo.GoUInt64 = __tmp__._0, _perr:stdgo.Error = __tmp__._1;
        if (_perr != null) {
            (@:checkr _p ?? throw "null pointer dereference")._err = stdgo._internal.archive.tar.Tar_errheader.errHeader;
        };
        return (_x : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function _parseNumeric( _p:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_parser.T_parser>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt64 {
        @:recv var _p:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_parser.T_parser> = _p;
        if ((((_b.length) > (0 : stdgo.GoInt) : Bool) && ((_b[(0 : stdgo.GoInt)] & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != (0 : stdgo.GoUInt8)) : Bool)) {
            var _inv:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
            if ((_b[(0 : stdgo.GoInt)] & (64 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                _inv = (255 : stdgo.GoUInt8);
            };
            var _x:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
            for (_i => _c in _b) {
                _c = (_c ^ (_inv) : stdgo.GoUInt8);
                if (_i == ((0 : stdgo.GoInt))) {
                    _c = (_c & ((127 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                };
                if ((((_x >> (56i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) > (0i64 : stdgo.GoUInt64) : Bool)) {
                    (@:checkr _p ?? throw "null pointer dereference")._err = stdgo._internal.archive.tar.Tar_errheader.errHeader;
                    return (0i64 : stdgo.GoInt64);
                };
                _x = ((_x << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (_c : stdgo.GoUInt64) : stdgo.GoUInt64);
            };
            if ((((_x >> (63i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) > (0i64 : stdgo.GoUInt64) : Bool)) {
                (@:checkr _p ?? throw "null pointer dereference")._err = stdgo._internal.archive.tar.Tar_errheader.errHeader;
                return (0i64 : stdgo.GoInt64);
            };
            if (_inv == ((255 : stdgo.GoUInt8))) {
                return (-1 ^ (_x : stdgo.GoInt64));
            };
            return (_x : stdgo.GoInt64);
        };
        return @:check2r _p._parseOctal(_b);
    }
    @:keep
    @:tdfield
    static public function _parseString( _:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_parser.T_parser>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString {
        @:recv var _:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_parser.T_parser> = _;
        {
            var _i = (stdgo._internal.bytes.Bytes_indexbyte.indexByte(_b, (0 : stdgo.GoUInt8)) : stdgo.GoInt);
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                return ((_b.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
            };
        };
        return (_b : stdgo.GoString)?.__copy__();
    }
}
