package stdgo._internal.crypto.rsa;
function _checkPub(_pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>):stdgo.Error {
        if (_pub.n == null || (_pub.n : Dynamic).__nil__) {
            return stdgo._internal.crypto.rsa.Rsa__errPublicModulus._errPublicModulus;
        };
        if ((_pub.e < (2 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.crypto.rsa.Rsa__errPublicExponentSmall._errPublicExponentSmall;
        };
        if ((_pub.e > (2147483647 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.crypto.rsa.Rsa__errPublicExponentLarge._errPublicExponentLarge;
        };
        return (null : stdgo.Error);
    }
