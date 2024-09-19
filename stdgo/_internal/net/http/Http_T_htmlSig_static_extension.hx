package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_htmlSig_asInterface) class T_htmlSig_static_extension {
    @:keep
    static public function _match( _h:stdgo._internal.net.http.Http_T_htmlSig.T_htmlSig, _data:stdgo.Slice<stdgo.GoUInt8>, _firstNonWS:stdgo.GoInt):stdgo.GoString {
        @:recv var _h:stdgo._internal.net.http.Http_T_htmlSig.T_htmlSig = _h;
        _data = (_data.__slice__(_firstNonWS) : stdgo.Slice<stdgo.GoUInt8>);
        if (((_data.length) < ((_h.length) + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            return stdgo.Go.str()?.__copy__();
        };
        for (_i => _b in _h) {
            var _db = (_data[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
            if ((((65 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                _db = (_db & ((223 : stdgo.GoUInt8)) : stdgo.GoUInt8);
            };
            if (_b != (_db)) {
                return stdgo.Go.str()?.__copy__();
            };
        };
        if (!stdgo._internal.net.http.Http__isTT._isTT(_data[(_h.length : stdgo.GoInt)])) {
            return stdgo.Go.str()?.__copy__();
        };
        return ("text/html; charset=utf-8" : stdgo.GoString);
    }
}
