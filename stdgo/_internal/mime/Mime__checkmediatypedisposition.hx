package stdgo._internal.mime;
function _checkMediaTypeDisposition(_s:stdgo.GoString):stdgo.Error {
        var __tmp__ = stdgo._internal.mime.Mime__consumetoken._consumeToken(_s?.__copy__()), _typ:stdgo.GoString = __tmp__._0, _rest:stdgo.GoString = __tmp__._1;
        if (_typ == ((stdgo.Go.str() : stdgo.GoString))) {
            return stdgo._internal.errors.Errors_new_.new_(("mime: no media type" : stdgo.GoString));
        };
        if (_rest == ((stdgo.Go.str() : stdgo.GoString))) {
            return (null : stdgo.Error);
        };
        if (!stdgo._internal.strings.Strings_hasprefix.hasPrefix(_rest?.__copy__(), ("/" : stdgo.GoString))) {
            return stdgo._internal.errors.Errors_new_.new_(("mime: expected slash after first token" : stdgo.GoString));
        };
        var __tmp__ = stdgo._internal.mime.Mime__consumetoken._consumeToken((_rest.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()), _subtype:stdgo.GoString = __tmp__._0, _rest:stdgo.GoString = __tmp__._1;
        if (_subtype == ((stdgo.Go.str() : stdgo.GoString))) {
            return stdgo._internal.errors.Errors_new_.new_(("mime: expected token after slash" : stdgo.GoString));
        };
        if (_rest != ((stdgo.Go.str() : stdgo.GoString))) {
            return stdgo._internal.errors.Errors_new_.new_(("mime: unexpected content after media subtype" : stdgo.GoString));
        };
        return (null : stdgo.Error);
    }
