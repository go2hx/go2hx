package stdgo._internal.crypto.rsa;
function _checkPub(_pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>):stdgo.Error {
        if (((@:checkr _pub ?? throw "null pointer dereference").n == null || ((@:checkr _pub ?? throw "null pointer dereference").n : Dynamic).__nil__)) {
            return stdgo._internal.crypto.rsa.Rsa__errpublicmodulus._errPublicModulus;
        };
        if (((@:checkr _pub ?? throw "null pointer dereference").e < (2 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.crypto.rsa.Rsa__errpublicexponentsmall._errPublicExponentSmall;
        };
        if (((@:checkr _pub ?? throw "null pointer dereference").e > (2147483647 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.crypto.rsa.Rsa__errpublicexponentlarge._errPublicExponentLarge;
        };
        return (null : stdgo.Error);
    }
