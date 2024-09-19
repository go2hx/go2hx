package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_socksAddr_asInterface) class T_socksAddr_static_extension {
    @:keep
    static public function string( _a:stdgo.Ref<stdgo._internal.net.http.Http_T_socksAddr.T_socksAddr>):stdgo.GoString {
        @:recv var _a:stdgo.Ref<stdgo._internal.net.http.Http_T_socksAddr.T_socksAddr> = _a;
        if (_a == null || (_a : Dynamic).__nil__) {
            return ("<nil>" : stdgo.GoString);
        };
        var _port = (stdgo._internal.strconv.Strconv_itoa.itoa(_a.port)?.__copy__() : stdgo.GoString);
        if (_a.ip == null) {
            return stdgo._internal.net.Net_joinHostPort.joinHostPort(_a.name?.__copy__(), _port?.__copy__())?.__copy__();
        };
        return stdgo._internal.net.Net_joinHostPort.joinHostPort((_a.ip.string() : stdgo.GoString)?.__copy__(), _port?.__copy__())?.__copy__();
    }
    @:keep
    static public function network( _a:stdgo.Ref<stdgo._internal.net.http.Http_T_socksAddr.T_socksAddr>):stdgo.GoString {
        @:recv var _a:stdgo.Ref<stdgo._internal.net.http.Http_T_socksAddr.T_socksAddr> = _a;
        return ("socks" : stdgo.GoString);
    }
}
