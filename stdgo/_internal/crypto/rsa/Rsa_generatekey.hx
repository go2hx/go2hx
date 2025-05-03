package stdgo._internal.crypto.rsa;
function generateKey(_random:stdgo._internal.io.Io_reader.Reader, _bits:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L272"
        return stdgo._internal.crypto.rsa.Rsa_generatemultiprimekey.generateMultiPrimeKey(_random, (2 : stdgo.GoInt), _bits);
    }
