package stdgo._internal.encoding.ascii85;
function maxEncodedLen(_n:stdgo.GoInt):stdgo.GoInt {
        return ((((_n + (3 : stdgo.GoInt) : stdgo.GoInt)) / (4 : stdgo.GoInt) : stdgo.GoInt) * (5 : stdgo.GoInt) : stdgo.GoInt);
    }
