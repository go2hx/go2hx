package stdgo._internal.strconv;
function isGraphic(_r:stdgo.GoInt32):Bool {
        if (stdgo._internal.strconv.Strconv_isPrint.isPrint(_r)) {
            return true;
        };
        return stdgo._internal.strconv.Strconv__isInGraphicList._isInGraphicList(_r);
    }
