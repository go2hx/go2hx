package stdgo._internal.strings;
function cutPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        var _after = ("" : stdgo.GoString), _found = false;
        if (!stdgo._internal.strings.Strings_hasprefix.hasPrefix(_s?.__copy__(), _prefix?.__copy__())) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : _s?.__copy__(), _1 : false };
                _after = __tmp__._0;
                _found = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (_s.__slice__((_prefix.length)) : stdgo.GoString)?.__copy__(), _1 : true };
            _after = __tmp__._0;
            _found = __tmp__._1;
            __tmp__;
        };
    }
