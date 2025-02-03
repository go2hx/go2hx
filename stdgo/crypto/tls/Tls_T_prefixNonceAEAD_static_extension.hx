package stdgo.crypto.tls;
class T_prefixNonceAEAD_static_extension {
    static public function open(_f:T_prefixNonceAEAD, _out:Array<std.UInt>, _nonce:Array<std.UInt>, _ciphertext:Array<std.UInt>, _additionalData:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_prefixNonceAEAD.T_prefixNonceAEAD>);
        final _out = ([for (i in _out) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _nonce = ([for (i in _nonce) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _ciphertext = ([for (i in _ciphertext) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _additionalData = ([for (i in _additionalData) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_T_prefixNonceAEAD_static_extension.T_prefixNonceAEAD_static_extension.open(_f, _out, _nonce, _ciphertext, _additionalData);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function seal(_f:T_prefixNonceAEAD, _out:Array<std.UInt>, _nonce:Array<std.UInt>, _plaintext:Array<std.UInt>, _additionalData:Array<std.UInt>):Array<std.UInt> {
        final _f = (_f : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_prefixNonceAEAD.T_prefixNonceAEAD>);
        final _out = ([for (i in _out) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _nonce = ([for (i in _nonce) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _plaintext = ([for (i in _plaintext) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _additionalData = ([for (i in _additionalData) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.crypto.tls.Tls_T_prefixNonceAEAD_static_extension.T_prefixNonceAEAD_static_extension.seal(_f, _out, _nonce, _plaintext, _additionalData)) i];
    }
    static public function _explicitNonceLen(_f:T_prefixNonceAEAD):StdTypes.Int {
        final _f = (_f : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_prefixNonceAEAD.T_prefixNonceAEAD>);
        return stdgo._internal.crypto.tls.Tls_T_prefixNonceAEAD_static_extension.T_prefixNonceAEAD_static_extension._explicitNonceLen(_f);
    }
    static public function overhead(_f:T_prefixNonceAEAD):StdTypes.Int {
        final _f = (_f : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_prefixNonceAEAD.T_prefixNonceAEAD>);
        return stdgo._internal.crypto.tls.Tls_T_prefixNonceAEAD_static_extension.T_prefixNonceAEAD_static_extension.overhead(_f);
    }
    static public function nonceSize(_f:T_prefixNonceAEAD):StdTypes.Int {
        final _f = (_f : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_prefixNonceAEAD.T_prefixNonceAEAD>);
        return stdgo._internal.crypto.tls.Tls_T_prefixNonceAEAD_static_extension.T_prefixNonceAEAD_static_extension.nonceSize(_f);
    }
}
