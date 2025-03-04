package stdgo._internal.encoding.base32;
@:keep @:allow(stdgo._internal.encoding.base32.Base32.T_badReader_asInterface) class T_badReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _b:stdgo.Ref<stdgo._internal.encoding.base32.Base32_t_badreader.T_badReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.encoding.base32.Base32_t_badreader.T_badReader> = _b;
        var _lim = (_p.length : stdgo.GoInt);
        if ((((@:checkr _b ?? throw "null pointer dereference")._limit != (0 : stdgo.GoInt)) && ((@:checkr _b ?? throw "null pointer dereference")._limit < _lim : Bool) : Bool)) {
            _lim = (@:checkr _b ?? throw "null pointer dereference")._limit;
        };
        if ((((@:checkr _b ?? throw "null pointer dereference")._data.length) < _lim : Bool)) {
            _lim = ((@:checkr _b ?? throw "null pointer dereference")._data.length);
        };
        for (_i => _ in (_p.__slice__(0, _lim) : stdgo.Slice<stdgo.GoUInt8>)) {
            _p[(_i : stdgo.GoInt)] = (@:checkr _b ?? throw "null pointer dereference")._data[(_i : stdgo.GoInt)];
        };
        (@:checkr _b ?? throw "null pointer dereference")._data = ((@:checkr _b ?? throw "null pointer dereference")._data.__slice__(_lim) : stdgo.Slice<stdgo.GoUInt8>);
        var _err = (stdgo._internal.io.Io_eof.eOF : stdgo.Error);
        if (((@:checkr _b ?? throw "null pointer dereference")._called < ((@:checkr _b ?? throw "null pointer dereference")._errs.length) : Bool)) {
            _err = (@:checkr _b ?? throw "null pointer dereference")._errs[((@:checkr _b ?? throw "null pointer dereference")._called : stdgo.GoInt)];
        };
        (@:checkr _b ?? throw "null pointer dereference")._called++;
        return { _0 : _lim, _1 : _err };
    }
}
