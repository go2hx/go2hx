package stdgo._internal.strconv;
function appendQuoteRuneToGraphic(_dst:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo.GoInt32):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L209"
        return stdgo._internal.strconv.Strconv__appendquotedrunewith._appendQuotedRuneWith(_dst, _r, (39 : stdgo.GoUInt8), false, true);
    }
