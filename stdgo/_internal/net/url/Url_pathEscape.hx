package stdgo._internal.net.url;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.Path;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
function pathEscape(_s:stdgo.GoString):stdgo.GoString {
        return stdgo._internal.net.url.Url__escape._escape(_s?.__copy__(), (2 : stdgo._internal.net.url.Url_T_encoding.T_encoding))?.__copy__();
    }
