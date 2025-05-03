package stdgo._internal.strconv;
function isGraphic(_r:stdgo.GoInt32):Bool {
        //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L587"
        if (stdgo._internal.strconv.Strconv_isprint.isPrint(_r)) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L588"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L590"
        return stdgo._internal.strconv.Strconv__isingraphiclist._isInGraphicList(_r);
    }
