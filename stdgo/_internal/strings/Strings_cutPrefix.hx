package stdgo._internal.strings;
function cutPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        var _after = ("" : stdgo.GoString), _found = false;
        if (!stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_s?.__copy__(), _prefix?.__copy__())) {
            return { _0 : _after = _s?.__copy__(), _1 : _found = false };
        };
        return { _0 : _after = (_s.__slice__((_prefix.length)) : stdgo.GoString)?.__copy__(), _1 : _found = true };
    }
