package stdgo.crypto.tls;
class ClientSessionState_static_extension {
    static public function resumptionState(_cs:ClientSessionState):stdgo.Tuple.Tuple3<Array<std.UInt>, SessionState, stdgo.Error> {
        final _cs = (_cs : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientSessionState.ClientSessionState>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_ClientSessionState_static_extension.ClientSessionState_static_extension.resumptionState(_cs);
            { _0 : [for (i in obj._0) i], _1 : obj._1, _2 : obj._2 };
        };
    }
}
