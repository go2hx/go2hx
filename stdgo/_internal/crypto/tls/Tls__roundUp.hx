package stdgo._internal.crypto.tls;
function _roundUp(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt {
        return (_a + (((_b - (_a % _b : stdgo.GoInt) : stdgo.GoInt)) % _b : stdgo.GoInt) : stdgo.GoInt);
    }
