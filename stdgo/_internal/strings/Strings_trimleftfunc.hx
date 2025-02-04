package stdgo._internal.strings;
function trimLeftFunc(_s:stdgo.GoString, _f:stdgo.GoInt32 -> Bool):stdgo.GoString {
        var _i = (stdgo._internal.strings.Strings__indexfunc._indexFunc(_s?.__copy__(), _f, false) : stdgo.GoInt);
        if (_i == ((-1 : stdgo.GoInt))) {
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        return (_s.__slice__(_i) : stdgo.GoString)?.__copy__();
    }
