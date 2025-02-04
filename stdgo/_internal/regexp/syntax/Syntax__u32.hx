package stdgo._internal.regexp.syntax;
function _u32(_i:stdgo.GoUInt32):stdgo.GoString {
        return stdgo._internal.strconv.Strconv_formatuint.formatUint((_i : stdgo.GoUInt64), (10 : stdgo.GoInt))?.__copy__();
    }
