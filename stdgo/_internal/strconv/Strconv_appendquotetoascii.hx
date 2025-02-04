package stdgo._internal.strconv;
function appendQuoteToASCII(_dst:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> {
        return stdgo._internal.strconv.Strconv__appendquotedwith._appendQuotedWith(_dst, _s?.__copy__(), (34 : stdgo.GoUInt8), true, false);
    }
