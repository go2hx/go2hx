package stdgo._internal.net.http;
function _etagWeakMatch(_a:stdgo.GoString, _b:stdgo.GoString):Bool {
        return stdgo._internal.strings.Strings_trimPrefix.trimPrefix(_a?.__copy__(), ("W/" : stdgo.GoString)) == (stdgo._internal.strings.Strings_trimPrefix.trimPrefix(_b?.__copy__(), ("W/" : stdgo.GoString)));
    }
