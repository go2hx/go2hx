package stdgo._internal.strings;
function indexAny(_s:stdgo.GoString, _chars:stdgo.GoString):stdgo.GoInt {
        if (_chars == ((stdgo.Go.str() : stdgo.GoString))) {
            return (-1 : stdgo.GoInt);
        };
        if ((_chars.length) == ((1 : stdgo.GoInt))) {
            var _r = (_chars[(0 : stdgo.GoInt)] : stdgo.GoInt32);
            if ((_r >= (128 : stdgo.GoInt32) : Bool)) {
                _r = (65533 : stdgo.GoInt32);
            };
            return stdgo._internal.strings.Strings_indexrune.indexRune(_s?.__copy__(), _r);
        };
        if (((_s.length) > (8 : stdgo.GoInt) : Bool)) {
            {
                var __tmp__ = stdgo._internal.strings.Strings__makeasciiset._makeASCIISet(_chars?.__copy__()), _as:stdgo._internal.strings.Strings_t_asciiset.T_asciiSet = __tmp__._0, _isASCII:Bool = __tmp__._1;
                if (_isASCII) {
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < (_s.length) : Bool)) {
                            if (@:check2 _as._contains(_s[(_i : stdgo.GoInt)])) {
                                return _i;
                            };
                            _i++;
                        };
                    };
                    return (-1 : stdgo.GoInt);
                };
            };
        };
        for (_i => _c in _s) {
            if ((stdgo._internal.strings.Strings_indexrune.indexRune(_chars?.__copy__(), _c) >= (0 : stdgo.GoInt) : Bool)) {
                return _i;
            };
        };
        return (-1 : stdgo.GoInt);
    }
