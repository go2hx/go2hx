package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_socksCommand_asInterface) class T_socksCommand_static_extension {
    @:keep
    @:tdfield
    static public function string( _cmd:stdgo._internal.net.http.Http_t_sockscommand.T_socksCommand):stdgo.GoString {
        @:recv var _cmd:stdgo._internal.net.http.Http_t_sockscommand.T_socksCommand = _cmd;
        {
            final __value__ = _cmd;
            if (__value__ == ((1 : stdgo._internal.net.http.Http_t_sockscommand.T_socksCommand))) {
                return ("socks connect" : stdgo.GoString);
            } else if (__value__ == ((2 : stdgo._internal.net.http.Http_t_sockscommand.T_socksCommand))) {
                return ("socks bind" : stdgo.GoString);
            } else {
                return (("socks " : stdgo.GoString) + stdgo._internal.net.http.Http__strconv._strconv.itoa((_cmd : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
    }
}
