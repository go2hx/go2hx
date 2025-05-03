package stdgo._internal.encoding.ascii85;
function maxEncodedLen(_n:stdgo.GoInt):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85.go#L86"
        return ((((_n + (3 : stdgo.GoInt) : stdgo.GoInt)) / (4 : stdgo.GoInt) : stdgo.GoInt) * (5 : stdgo.GoInt) : stdgo.GoInt);
    }
