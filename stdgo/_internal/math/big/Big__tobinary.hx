package stdgo._internal.math.big;
function _toBinary(_x:stdgo.GoInt64):stdgo.GoString {
        return stdgo._internal.strconv.Strconv_formatint.formatInt(_x, (2 : stdgo.GoInt))?.__copy__();
    }
