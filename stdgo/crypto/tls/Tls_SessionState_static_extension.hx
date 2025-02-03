package stdgo.crypto.tls;
class SessionState_static_extension {
    static public function bytes(_s:SessionState):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_SessionState_static_extension.SessionState_static_extension.bytes(_s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
