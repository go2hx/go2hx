package stdgo._internal.strconv;
function _isInGraphicList(_r:stdgo.GoInt32):Bool {
        //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L598"
        if ((_r > (65535 : stdgo.GoInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L599"
            return false;
        };
        var _rr = (_r : stdgo.GoUInt16);
        var _i = (stdgo._internal.strconv.Strconv__bsearch16._bsearch16(stdgo._internal.strconv.Strconv__isgraphic._isGraphic, _rr) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L603"
        return ((_i < (stdgo._internal.strconv.Strconv__isgraphic._isGraphic.length) : Bool) && (_rr == stdgo._internal.strconv.Strconv__isgraphic._isGraphic[(_i : stdgo.GoInt)]) : Bool);
    }
