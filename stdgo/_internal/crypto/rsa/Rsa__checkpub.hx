package stdgo._internal.crypto.rsa;
function _checkPub(_pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L96"
        if (({
            final value = (@:checkr _pub ?? throw "null pointer dereference").n;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L97"
            return stdgo._internal.crypto.rsa.Rsa__errpublicmodulus._errPublicModulus;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L99"
        if (((@:checkr _pub ?? throw "null pointer dereference").e < (2 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L100"
            return stdgo._internal.crypto.rsa.Rsa__errpublicexponentsmall._errPublicExponentSmall;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L102"
        if (((@:checkr _pub ?? throw "null pointer dereference").e > (2147483647 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L103"
            return stdgo._internal.crypto.rsa.Rsa__errpublicexponentlarge._errPublicExponentLarge;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L105"
        return (null : stdgo.Error);
    }
