package stdgo._internal.net.url;
@:keep @:allow(stdgo._internal.net.url.Url.InvalidHostError_asInterface) class InvalidHostError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.net.url.Url_invalidhosterror.InvalidHostError):stdgo.GoString {
        @:recv var _e:stdgo._internal.net.url.Url_invalidhosterror.InvalidHostError = _e;
        return ((("invalid character " : stdgo.GoString) + stdgo._internal.strconv.Strconv_quote.quote((_e : stdgo.GoString)?.__copy__())?.__copy__() : stdgo.GoString) + (" in host name" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
