package stdgo._internal.strconv;
function _quoteRuneWith(_r:stdgo.GoInt32, _quote:stdgo.GoUInt8, aSCIIonly:Bool, _graphicOnly:Bool):stdgo.GoString {
        return (stdgo._internal.strconv.Strconv__appendquotedrunewith._appendQuotedRuneWith((null : stdgo.Slice<stdgo.GoUInt8>), _r, _quote, aSCIIonly, _graphicOnly) : stdgo.GoString)?.__copy__();
    }
