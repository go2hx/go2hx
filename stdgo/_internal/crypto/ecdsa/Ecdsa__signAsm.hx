package stdgo._internal.crypto.ecdsa;
function _signAsm(_priv:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey>, _csprng:stdgo._internal.io.Io_Reader.Reader, _hash:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _sig = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        return {
            final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.ecdsa.Ecdsa__errNoAsm._errNoAsm };
            _sig = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
