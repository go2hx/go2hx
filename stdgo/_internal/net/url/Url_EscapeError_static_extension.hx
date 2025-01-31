package stdgo._internal.net.url;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.Path;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
@:keep @:allow(stdgo._internal.net.url.Url.EscapeError_asInterface) class EscapeError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.net.url.Url_EscapeError.EscapeError):stdgo.GoString {
        @:recv var _e:stdgo._internal.net.url.Url_EscapeError.EscapeError = _e;
        return (("invalid URL escape " : stdgo.GoString) + stdgo._internal.strconv.Strconv_quote.quote((_e : stdgo.GoString)?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
