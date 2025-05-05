package stdgo._internal.mime;
function _checkMediaTypeDisposition(_s:stdgo.GoString):stdgo.Error {
        var __tmp__ = stdgo._internal.mime.Mime__consumetoken._consumeToken(_s?.__copy__()), _typ:stdgo.GoString = __tmp__._0, _rest:stdgo.GoString = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L105"
        if (_typ == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L106"
            return stdgo._internal.errors.Errors_new_.new_(("mime: no media type" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L108"
        if (_rest == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L109"
            return (null : stdgo.Error);
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L111"
        if (!stdgo._internal.strings.Strings_hasprefix.hasPrefix(_rest?.__copy__(), ("/" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L112"
            return stdgo._internal.errors.Errors_new_.new_(("mime: expected slash after first token" : stdgo.GoString));
        };
        var __tmp__ = stdgo._internal.mime.Mime__consumetoken._consumeToken((_rest.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()), _subtype:stdgo.GoString = __tmp__._0, _rest:stdgo.GoString = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L115"
        if (_subtype == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L116"
            return stdgo._internal.errors.Errors_new_.new_(("mime: expected token after slash" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L118"
        if (_rest != ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L119"
            return stdgo._internal.errors.Errors_new_.new_(("mime: unexpected content after media subtype" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L121"
        return (null : stdgo.Error);
    }
