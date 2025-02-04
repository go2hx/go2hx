package stdgo._internal.strconv;
function appendQuoteRuneToASCII(_dst:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo.GoInt32):stdgo.Slice<stdgo.GoUInt8> {
        return stdgo._internal.strconv.Strconv__appendquotedrunewith._appendQuotedRuneWith(_dst, _r, (39 : stdgo.GoUInt8), true, false);
    }
