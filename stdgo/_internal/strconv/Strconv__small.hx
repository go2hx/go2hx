package stdgo._internal.strconv;
function _small(_i:stdgo.GoInt):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/strconv/itoa.go#L60"
        if ((_i < (10 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/itoa.go#L61"
            return (("0123456789abcdefghijklmnopqrstuvwxyz" : stdgo.GoString).__slice__(_i, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/itoa.go#L63"
        return (("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : stdgo.GoString).__slice__((_i * (2 : stdgo.GoInt) : stdgo.GoInt), ((_i * (2 : stdgo.GoInt) : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
    }
