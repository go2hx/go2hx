package stdgo._internal.encoding.ascii85;
import stdgo._internal.strconv.Strconv;
function maxEncodedLen(_n:stdgo.GoInt):stdgo.GoInt {
        return ((((_n + (3 : stdgo.GoInt) : stdgo.GoInt)) / (4 : stdgo.GoInt) : stdgo.GoInt) * (5 : stdgo.GoInt) : stdgo.GoInt);
    }
