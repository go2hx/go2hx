package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.Dialer_asInterface) class Dialer_static_extension {
    @:keep
    @:tdfield
    static public function dialContext( _d:stdgo.Ref<stdgo._internal.crypto.tls.Tls_dialer.Dialer>, _ctx:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _addr:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.crypto.tls.Tls_dialer.Dialer> = _d;
        var __tmp__ = stdgo._internal.crypto.tls.Tls__dial._dial(_ctx, @:check2r _d._netDialer(), _network?.__copy__(), _addr?.__copy__(), (@:checkr _d ?? throw "null pointer dereference").config), _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.net.Net_conn.Conn), _1 : _err };
        };
        return { _0 : stdgo.Go.asInterface(_c), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _netDialer( _d:stdgo.Ref<stdgo._internal.crypto.tls.Tls_dialer.Dialer>):stdgo.Ref<stdgo._internal.net.Net_dialer.Dialer> {
        @:recv var _d:stdgo.Ref<stdgo._internal.crypto.tls.Tls_dialer.Dialer> = _d;
        if (((@:checkr _d ?? throw "null pointer dereference").netDialer != null && (((@:checkr _d ?? throw "null pointer dereference").netDialer : Dynamic).__nil__ == null || !((@:checkr _d ?? throw "null pointer dereference").netDialer : Dynamic).__nil__))) {
            return (@:checkr _d ?? throw "null pointer dereference").netDialer;
        };
        return (stdgo.Go.setRef(({} : stdgo._internal.net.Net_dialer.Dialer)) : stdgo.Ref<stdgo._internal.net.Net_dialer.Dialer>);
    }
    @:keep
    @:tdfield
    static public function dial( _d:stdgo.Ref<stdgo._internal.crypto.tls.Tls_dialer.Dialer>, _network:stdgo.GoString, _addr:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.crypto.tls.Tls_dialer.Dialer> = _d;
        return @:check2r _d.dialContext(stdgo._internal.context.Context_background.background(), _network?.__copy__(), _addr?.__copy__());
    }
}
