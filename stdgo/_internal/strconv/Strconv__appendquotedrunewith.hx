package stdgo._internal.strconv;
function _appendQuotedRuneWith(_buf:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo.GoInt32, _quote:stdgo.GoUInt8, aSCIIonly:Bool, _graphicOnly:Bool):stdgo.Slice<stdgo.GoUInt8> {
        _buf = (_buf.__append__(_quote) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L60"
        if (!stdgo._internal.unicode.utf8.Utf8_validrune.validRune(_r)) {
            _r = (65533 : stdgo.GoInt32);
        };
        _buf = stdgo._internal.strconv.Strconv__appendescapedrune._appendEscapedRune(_buf, _r, _quote, aSCIIonly, _graphicOnly);
        _buf = (_buf.__append__(_quote) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L65"
        return _buf;
    }
