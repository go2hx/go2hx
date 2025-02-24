package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.AlertError_asInterface) class AlertError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.crypto.tls.Tls_alerterror.AlertError):stdgo.GoString {
        @:recv var _e:stdgo._internal.crypto.tls.Tls_alerterror.AlertError = _e;
        return ((_e : stdgo._internal.crypto.tls.Tls_t_alert.T_alert).string() : stdgo.GoString)?.__copy__();
    }
}
