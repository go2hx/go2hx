package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_alert_asInterface) class T_alert_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.crypto.tls.Tls_t_alert.T_alert):stdgo.GoString {
        @:recv var _e:stdgo._internal.crypto.tls.Tls_t_alert.T_alert = _e;
        return (_e.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _e:stdgo._internal.crypto.tls.Tls_t_alert.T_alert):stdgo.GoString {
        @:recv var _e:stdgo._internal.crypto.tls.Tls_t_alert.T_alert = _e;
        var __tmp__ = (stdgo._internal.crypto.tls.Tls__alerttext._alertText != null && stdgo._internal.crypto.tls.Tls__alerttext._alertText.__exists__(_e) ? { _0 : stdgo._internal.crypto.tls.Tls__alerttext._alertText[_e], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _s:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
        if (_ok) {
            return (("tls: " : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return ((("tls: alert(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((_e : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
