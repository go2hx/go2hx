package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_socksReply_asInterface) class T_socksReply_static_extension {
    @:keep
    @:tdfield
    static public function string( _code:stdgo._internal.net.http.Http_t_socksreply.T_socksReply):stdgo.GoString {
        @:recv var _code:stdgo._internal.net.http.Http_t_socksreply.T_socksReply = _code;
        {
            final __value__ = _code;
            if (__value__ == ((0 : stdgo._internal.net.http.Http_t_socksreply.T_socksReply))) {
                return ("succeeded" : stdgo.GoString);
            } else if (__value__ == ((1 : stdgo._internal.net.http.Http_t_socksreply.T_socksReply))) {
                return ("general SOCKS server failure" : stdgo.GoString);
            } else if (__value__ == ((2 : stdgo._internal.net.http.Http_t_socksreply.T_socksReply))) {
                return ("connection not allowed by ruleset" : stdgo.GoString);
            } else if (__value__ == ((3 : stdgo._internal.net.http.Http_t_socksreply.T_socksReply))) {
                return ("network unreachable" : stdgo.GoString);
            } else if (__value__ == ((4 : stdgo._internal.net.http.Http_t_socksreply.T_socksReply))) {
                return ("host unreachable" : stdgo.GoString);
            } else if (__value__ == ((5 : stdgo._internal.net.http.Http_t_socksreply.T_socksReply))) {
                return ("connection refused" : stdgo.GoString);
            } else if (__value__ == ((6 : stdgo._internal.net.http.Http_t_socksreply.T_socksReply))) {
                return ("TTL expired" : stdgo.GoString);
            } else if (__value__ == ((7 : stdgo._internal.net.http.Http_t_socksreply.T_socksReply))) {
                return ("command not supported" : stdgo.GoString);
            } else if (__value__ == ((8 : stdgo._internal.net.http.Http_t_socksreply.T_socksReply))) {
                return ("address type not supported" : stdgo.GoString);
            } else {
                return (("unknown code: " : stdgo.GoString) + stdgo._internal.net.http.Http__strconv._strconv.itoa((_code : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
    }
}
