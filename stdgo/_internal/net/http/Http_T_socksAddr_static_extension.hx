package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_socksAddr_asInterface) class T_socksAddr_static_extension {
    @:keep
    @:tdfield
    static public function string( _a:stdgo.Ref<stdgo._internal.net.http.Http_T_socksAddr.T_socksAddr>):stdgo.GoString {
        @:recv var _a:stdgo.Ref<stdgo._internal.net.http.Http_T_socksAddr.T_socksAddr> = _a;
        if ((_a == null || (_a : Dynamic).__nil__)) {
            return ("<nil>" : stdgo.GoString);
        };
        var _port = (stdgo._internal.strconv.Strconv_itoa.itoa((@:checkr _a ?? throw "null pointer dereference").port)?.__copy__() : stdgo.GoString);
        if ((@:checkr _a ?? throw "null pointer dereference").iP == null) {
            return stdgo._internal.net.Net_joinHostPort.joinHostPort((@:checkr _a ?? throw "null pointer dereference").name?.__copy__(), _port?.__copy__())?.__copy__();
        };
        return stdgo._internal.net.Net_joinHostPort.joinHostPort(((@:checkr _a ?? throw "null pointer dereference").iP.string() : stdgo.GoString)?.__copy__(), _port?.__copy__())?.__copy__();
    }
    @:keep
    @:tdfield
    static public function network( _a:stdgo.Ref<stdgo._internal.net.http.Http_T_socksAddr.T_socksAddr>):stdgo.GoString {
        @:recv var _a:stdgo.Ref<stdgo._internal.net.http.Http_T_socksAddr.T_socksAddr> = _a;
        return ("socks" : stdgo.GoString);
    }
}
