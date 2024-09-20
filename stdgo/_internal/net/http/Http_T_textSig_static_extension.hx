package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_textSig_asInterface) class T_textSig_static_extension {
    @:keep
    static public function _match( _:stdgo._internal.net.http.Http_T_textSig.T_textSig, _data:stdgo.Slice<stdgo.GoUInt8>, _firstNonWS:stdgo.GoInt):stdgo.GoString {
        @:recv var _:stdgo._internal.net.http.Http_T_textSig.T_textSig = _?.__copy__();
        for (__35052 => _b in (_data.__slice__(_firstNonWS) : stdgo.Slice<stdgo.GoUInt8>)) {
            if ((_b <= (8 : stdgo.GoUInt8) : Bool) || _b == ((11 : stdgo.GoUInt8)) || (((14 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (26 : stdgo.GoUInt8) : Bool) : Bool) || (((28 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (31 : stdgo.GoUInt8) : Bool) : Bool)) {
                return stdgo.Go.str()?.__copy__();
            };
        };
        return ("text/plain; charset=utf-8" : stdgo.GoString);
    }
}
