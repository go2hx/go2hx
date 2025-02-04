package stdgo._internal.encoding.json;
function _newCondAddrEncoder(_canAddrEnc:stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc, _elseEnc:stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc):stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc {
        var _enc = ({ _canAddrEnc : _canAddrEnc, _elseEnc : _elseEnc } : stdgo._internal.encoding.json.Json_t_condaddrencoder.T_condAddrEncoder);
        return _enc._encode;
    }
