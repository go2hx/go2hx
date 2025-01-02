package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_maskedSig_asInterface) class T_maskedSig_static_extension {
    @:keep
    @:tdfield
    static public function _match( _m:stdgo.Ref<stdgo._internal.net.http.Http_T_maskedSig.T_maskedSig>, _data:stdgo.Slice<stdgo.GoUInt8>, _firstNonWS:stdgo.GoInt):stdgo.GoString {
        @:recv var _m:stdgo.Ref<stdgo._internal.net.http.Http_T_maskedSig.T_maskedSig> = _m;
        if ((@:checkr _m ?? throw "null pointer dereference")._skipWS) {
            _data = (_data.__slice__(_firstNonWS) : stdgo.Slice<stdgo.GoUInt8>);
        };
        if (((@:checkr _m ?? throw "null pointer dereference")._pat.length) != (((@:checkr _m ?? throw "null pointer dereference")._mask.length))) {
            return stdgo.Go.str()?.__copy__();
        };
        if (((_data.length) < ((@:checkr _m ?? throw "null pointer dereference")._pat.length) : Bool)) {
            return stdgo.Go.str()?.__copy__();
        };
        for (_i => _pb in (@:checkr _m ?? throw "null pointer dereference")._pat) {
            var _maskedData = (_data[(_i : stdgo.GoInt)] & (@:checkr _m ?? throw "null pointer dereference")._mask[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
            if (_maskedData != (_pb)) {
                return stdgo.Go.str()?.__copy__();
            };
        };
        return (@:checkr _m ?? throw "null pointer dereference")._ct?.__copy__();
    }
}
