package stdgo._internal.net.url;
@:keep @:allow(stdgo._internal.net.url.Url.EscapeError_asInterface) class EscapeError_static_extension {
    @:keep
    static public function error( _e:stdgo._internal.net.url.Url_EscapeError.EscapeError):stdgo.GoString {
        @:recv var _e:stdgo._internal.net.url.Url_EscapeError.EscapeError = _e;
        return (("invalid URL escape " : stdgo.GoString) + stdgo._internal.strconv.Strconv_quote.quote((_e : stdgo.GoString)?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__();
    }
}