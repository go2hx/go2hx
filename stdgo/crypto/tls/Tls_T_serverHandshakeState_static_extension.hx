package stdgo.crypto.tls;
class T_serverHandshakeState_static_extension {
    static public function _sendFinished(_hs:T_serverHandshakeState, _out:Array<std.UInt>):stdgo.Error {
        final _hs = (_hs : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState>);
        final _out = ([for (i in _out) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.tls.Tls_T_serverHandshakeState_static_extension.T_serverHandshakeState_static_extension._sendFinished(_hs, _out);
    }
    static public function _sendSessionTicket(_hs:T_serverHandshakeState):stdgo.Error {
        final _hs = (_hs : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState>);
        return stdgo._internal.crypto.tls.Tls_T_serverHandshakeState_static_extension.T_serverHandshakeState_static_extension._sendSessionTicket(_hs);
    }
    static public function _readFinished(_hs:T_serverHandshakeState, _out:Array<std.UInt>):stdgo.Error {
        final _hs = (_hs : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState>);
        final _out = ([for (i in _out) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.tls.Tls_T_serverHandshakeState_static_extension.T_serverHandshakeState_static_extension._readFinished(_hs, _out);
    }
    static public function _establishKeys(_hs:T_serverHandshakeState):stdgo.Error {
        final _hs = (_hs : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState>);
        return stdgo._internal.crypto.tls.Tls_T_serverHandshakeState_static_extension.T_serverHandshakeState_static_extension._establishKeys(_hs);
    }
    static public function _doFullHandshake(_hs:T_serverHandshakeState):stdgo.Error {
        final _hs = (_hs : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState>);
        return stdgo._internal.crypto.tls.Tls_T_serverHandshakeState_static_extension.T_serverHandshakeState_static_extension._doFullHandshake(_hs);
    }
    static public function _doResumeHandshake(_hs:T_serverHandshakeState):stdgo.Error {
        final _hs = (_hs : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState>);
        return stdgo._internal.crypto.tls.Tls_T_serverHandshakeState_static_extension.T_serverHandshakeState_static_extension._doResumeHandshake(_hs);
    }
    static public function _checkForResumption(_hs:T_serverHandshakeState):stdgo.Error {
        final _hs = (_hs : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState>);
        return stdgo._internal.crypto.tls.Tls_T_serverHandshakeState_static_extension.T_serverHandshakeState_static_extension._checkForResumption(_hs);
    }
    static public function _cipherSuiteOk(_hs:T_serverHandshakeState, _c:T_cipherSuite):Bool {
        final _hs = (_hs : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState>);
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite>);
        return stdgo._internal.crypto.tls.Tls_T_serverHandshakeState_static_extension.T_serverHandshakeState_static_extension._cipherSuiteOk(_hs, _c);
    }
    static public function _pickCipherSuite(_hs:T_serverHandshakeState):stdgo.Error {
        final _hs = (_hs : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState>);
        return stdgo._internal.crypto.tls.Tls_T_serverHandshakeState_static_extension.T_serverHandshakeState_static_extension._pickCipherSuite(_hs);
    }
    static public function _processClientHello(_hs:T_serverHandshakeState):stdgo.Error {
        final _hs = (_hs : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState>);
        return stdgo._internal.crypto.tls.Tls_T_serverHandshakeState_static_extension.T_serverHandshakeState_static_extension._processClientHello(_hs);
    }
    static public function _handshake(_hs:T_serverHandshakeState):stdgo.Error {
        final _hs = (_hs : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState>);
        return stdgo._internal.crypto.tls.Tls_T_serverHandshakeState_static_extension.T_serverHandshakeState_static_extension._handshake(_hs);
    }
}
