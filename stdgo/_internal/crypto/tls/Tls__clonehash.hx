package stdgo._internal.crypto.tls;
function _cloneHash(_in:stdgo._internal.hash.Hash_hash.Hash, _h:stdgo._internal.crypto.Crypto_hash.Hash):stdgo._internal.hash.Hash_hash.Hash {
        {};
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_in) : stdgo._internal.crypto.tls.Tls_t__clonehash___localname___binarymarshaler_12373.T__cloneHash___localname___binaryMarshaler_12373)) : stdgo._internal.crypto.tls.Tls_t__clonehash___localname___binarymarshaler_12373.T__cloneHash___localname___binaryMarshaler_12373), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.crypto.tls.Tls_t__clonehash___localname___binarymarshaler_12373.T__cloneHash___localname___binaryMarshaler_12373), _1 : false };
        }, _marshaler = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return (null : stdgo._internal.hash.Hash_hash.Hash);
        };
        var __tmp__ = _marshaler.marshalBinary(), _state:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return (null : stdgo._internal.hash.Hash_hash.Hash);
        };
        var _out = (_h.new_() : stdgo._internal.hash.Hash_hash.Hash);
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_out) : stdgo._internal.crypto.tls.Tls_t__clonehash___localname___binarymarshaler_12373.T__cloneHash___localname___binaryMarshaler_12373)) : stdgo._internal.crypto.tls.Tls_t__clonehash___localname___binarymarshaler_12373.T__cloneHash___localname___binaryMarshaler_12373), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.crypto.tls.Tls_t__clonehash___localname___binarymarshaler_12373.T__cloneHash___localname___binaryMarshaler_12373), _1 : false };
        }, _unmarshaler = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return (null : stdgo._internal.hash.Hash_hash.Hash);
        };
        {
            var _err = (_unmarshaler.unmarshalBinary(_state) : stdgo.Error);
            if (_err != null) {
                return (null : stdgo._internal.hash.Hash_hash.Hash);
            };
        };
        return _out;
    }
