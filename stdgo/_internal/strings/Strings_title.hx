package stdgo._internal.strings;
function title(_s:stdgo.GoString):stdgo.GoString {
        var _prev = (32 : stdgo.GoInt32);
        return stdgo._internal.strings.Strings_map_.map_(function(_r:stdgo.GoInt32):stdgo.GoInt32 {
            if (stdgo._internal.strings.Strings__isseparator._isSeparator(_prev)) {
                _prev = _r;
                return stdgo._internal.unicode.Unicode_totitle.toTitle(_r);
            };
            _prev = _r;
            return _r;
        }, _s?.__copy__())?.__copy__();
    }
