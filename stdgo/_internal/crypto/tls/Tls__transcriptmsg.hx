package stdgo._internal.crypto.tls;
function _transcriptMsg(_msg:stdgo._internal.crypto.tls.Tls_t_handshakemessage.T_handshakeMessage, _h:stdgo._internal.crypto.tls.Tls_t_transcripthash.T_transcriptHash):stdgo.Error {
        var __tmp__ = _msg._marshal(), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        _h.write(_data);
        return (null : stdgo.Error);
    }
