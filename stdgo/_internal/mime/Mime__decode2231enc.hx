package stdgo._internal.mime;
function _decode2231Enc(_v:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        var _sv = stdgo._internal.strings.Strings_splitn.splitN(_v?.__copy__(), ("\'" : stdgo.GoString), (3 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L237"
        if ((_sv.length) != ((3 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L238"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
        };
        var _charset = (stdgo._internal.strings.Strings_tolower.toLower(_sv[(0 : stdgo.GoInt)]?.__copy__())?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L244"
        if ((_charset.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L245"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L247"
        if (((_charset != ("us-ascii" : stdgo.GoString)) && (_charset != ("utf-8" : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L249"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
        };
        var __tmp__ = stdgo._internal.mime.Mime__percenthexunescape._percentHexUnescape(_sv[(2 : stdgo.GoInt)]?.__copy__()), _encv:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L252"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L253"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L255"
        return { _0 : _encv?.__copy__(), _1 : true };
    }
