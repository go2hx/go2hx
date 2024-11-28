package stdgo._internal.strings;
function cut(_s:stdgo.GoString, _sep:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } {
        var _before = ("" : stdgo.GoString), _after = ("" : stdgo.GoString), _found = false;
        {
            var _i = (stdgo._internal.strings.Strings_index.index(_s?.__copy__(), _sep?.__copy__()) : stdgo.GoInt);
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                return { _0 : _before = (_s.__slice__(0, _i) : stdgo.GoString)?.__copy__(), _1 : _after = (_s.__slice__((_i + (_sep.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _2 : _found = true };
            };
        };
        return { _0 : _before = _s?.__copy__(), _1 : _after = stdgo.Go.str()?.__copy__(), _2 : _found = false };
    }
