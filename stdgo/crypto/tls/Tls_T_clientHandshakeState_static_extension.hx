package stdgo.crypto.tls;
class T_clientHandshakeState_static_extension {
    static public function _sendFinished(_hs:T_clientHandshakeState, _out:Array<std.UInt>):stdgo.Error {
        final _hs = (_hs : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeState.T_clientHandshakeState>);
        final _out = ([for (i in _out) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.tls.Tls_T_clientHandshakeState_static_extension.T_clientHandshakeState_static_extension._sendFinished(_hs, _out);
    }
    static public function _saveSessionTicket(_hs:T_clientHandshakeState):stdgo.Error {
        final _hs = (_hs : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeState.T_clientHandshakeState>);
        return stdgo._internal.crypto.tls.Tls_T_clientHandshakeState_static_extension.T_clientHandshakeState_static_extension._saveSessionTicket(_hs);
    }
    static public function _readSessionTicket(_hs:T_clientHandshakeState):stdgo.Error {
        final _hs = (_hs : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeState.T_clientHandshakeState>);
        return stdgo._internal.crypto.tls.Tls_T_clientHandshakeState_static_extension.T_clientHandshakeState_static_extension._readSessionTicket(_hs);
    }
    static public function _readFinished(_hs:T_clientHandshakeState, _out:Array<std.UInt>):stdgo.Error {
        final _hs = (_hs : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeState.T_clientHandshakeState>);
        final _out = ([for (i in _out) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.tls.Tls_T_clientHandshakeState_static_extension.T_clientHandshakeState_static_extension._readFinished(_hs, _out);
    }
    static public function _processServerHello(_hs:T_clientHandshakeState):stdgo.Tuple<Bool, stdgo.Error> {
        final _hs = (_hs : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeState.T_clientHandshakeState>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_T_clientHandshakeState_static_extension.T_clientHandshakeState_static_extension._processServerHello(_hs);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _serverResumedSession(_hs:T_clientHandshakeState):Bool {
        final _hs = (_hs : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeState.T_clientHandshakeState>);
        return stdgo._internal.crypto.tls.Tls_T_clientHandshakeState_static_extension.T_clientHandshakeState_static_extension._serverResumedSession(_hs);
    }
    static public function _establishKeys(_hs:T_clientHandshakeState):stdgo.Error {
        final _hs = (_hs : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeState.T_clientHandshakeState>);
        return stdgo._internal.crypto.tls.Tls_T_clientHandshakeState_static_extension.T_clientHandshakeState_static_extension._establishKeys(_hs);
    }
    static public function _doFullHandshake(_hs:T_clientHandshakeState):stdgo.Error {
        final _hs = (_hs : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeState.T_clientHandshakeState>);
        return stdgo._internal.crypto.tls.Tls_T_clientHandshakeState_static_extension.T_clientHandshakeState_static_extension._doFullHandshake(_hs);
    }
    static public function _pickCipherSuite(_hs:T_clientHandshakeState):stdgo.Error {
        final _hs = (_hs : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeState.T_clientHandshakeState>);
        return stdgo._internal.crypto.tls.Tls_T_clientHandshakeState_static_extension.T_clientHandshakeState_static_extension._pickCipherSuite(_hs);
    }
    static public function _handshake(_hs:T_clientHandshakeState):stdgo.Error {
        final _hs = (_hs : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHandshakeState.T_clientHandshakeState>);
        return stdgo._internal.crypto.tls.Tls_T_clientHandshakeState_static_extension.T_clientHandshakeState_static_extension._handshake(_hs);
    }
}
