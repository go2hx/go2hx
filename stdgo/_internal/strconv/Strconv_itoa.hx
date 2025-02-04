package stdgo._internal.strconv;
function itoa(_i:stdgo.GoInt):stdgo.GoString {
        return stdgo._internal.strconv.Strconv_formatint.formatInt((_i : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__();
    }
