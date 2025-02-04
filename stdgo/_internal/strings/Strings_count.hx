package stdgo._internal.strings;
function count(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt {
        if ((_substr.length) == ((0 : stdgo.GoInt))) {
            return (stdgo._internal.unicode.utf8.Utf8_runecountinstring.runeCountInString(_s?.__copy__()) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        if ((_substr.length) == ((1 : stdgo.GoInt))) {
            return stdgo._internal.internal.bytealg.Bytealg_countstring.countString(_s?.__copy__(), _substr[(0 : stdgo.GoInt)]);
        };
        var _n = (0 : stdgo.GoInt);
        while (true) {
            var _i = (stdgo._internal.strings.Strings_index.index(_s?.__copy__(), _substr?.__copy__()) : stdgo.GoInt);
            if (_i == ((-1 : stdgo.GoInt))) {
                return _n;
            };
            _n++;
            _s = (_s.__slice__((_i + (_substr.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
    }
