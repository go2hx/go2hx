package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
function _u32(_i:stdgo.GoUInt32):stdgo.GoString {
        return stdgo._internal.strconv.Strconv_formatUint.formatUint((_i : stdgo.GoUInt64), (10 : stdgo.GoInt))?.__copy__();
    }
