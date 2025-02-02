package stdgo._internal.crypto.tls;
function newResumptionState(_ticket:stdgo.Slice<stdgo.GoUInt8>, _state:stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientSessionState.ClientSessionState>; var _1 : stdgo.Error; } {
        return { _0 : (stdgo.Go.setRef(({ _ticket : _ticket, _session : _state } : stdgo._internal.crypto.tls.Tls_ClientSessionState.ClientSessionState)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientSessionState.ClientSessionState>), _1 : (null : stdgo.Error) };
    }
