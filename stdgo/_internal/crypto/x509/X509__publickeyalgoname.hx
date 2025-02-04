package stdgo._internal.crypto.x509;
var _publicKeyAlgoName : stdgo.GoArray<stdgo.GoString> = {
        var s:stdgo.GoArray<stdgo.GoString> = new stdgo.GoArray<stdgo.GoString>(5, 5, ...[for (i in 0 ... 5) ""]);
        s[1] = ("RSA" : stdgo.GoString);
        s[2] = ("DSA" : stdgo.GoString);
        s[3] = ("ECDSA" : stdgo.GoString);
        s[4] = ("Ed25519" : stdgo.GoString);
        s;
    };
