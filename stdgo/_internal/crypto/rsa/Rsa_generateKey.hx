package stdgo._internal.crypto.rsa;
function generateKey(_random:stdgo._internal.io.Io_Reader.Reader, _bits:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>; var _1 : stdgo.Error; } {
        return stdgo._internal.crypto.rsa.Rsa_generateMultiPrimeKey.generateMultiPrimeKey(_random, (2 : stdgo.GoInt), _bits);
    }
