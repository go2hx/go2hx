package stdgo._internal.mime;
function _decode2231Enc(_v:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        var _sv = stdgo._internal.strings.Strings_splitN.splitN(_v?.__copy__(), ("\'" : stdgo.GoString), (3 : stdgo.GoInt));
        if ((_sv.length) != ((3 : stdgo.GoInt))) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : false };
        };
        var _charset = (stdgo._internal.strings.Strings_toLower.toLower(_sv[(0 : stdgo.GoInt)]?.__copy__())?.__copy__() : stdgo.GoString);
        if ((_charset.length) == ((0 : stdgo.GoInt))) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : false };
        };
        if (((_charset != ("us-ascii" : stdgo.GoString)) && (_charset != ("utf-8" : stdgo.GoString)) : Bool)) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : false };
        };
        var __tmp__ = stdgo._internal.mime.Mime__percentHexUnescape._percentHexUnescape(_sv[(2 : stdgo.GoInt)]?.__copy__()), _encv:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : false };
        };
        return { _0 : _encv?.__copy__(), _1 : true };
    }
