package stdgo._internal.strings;
function lastIndexAny(_s:stdgo.GoString, _chars:stdgo.GoString):stdgo.GoInt {
        if (_chars == ((stdgo.Go.str() : stdgo.GoString))) {
            return (-1 : stdgo.GoInt);
        };
        if ((_s.length) == ((1 : stdgo.GoInt))) {
            var _rc = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
            if ((_rc >= (128 : stdgo.GoInt32) : Bool)) {
                _rc = (65533 : stdgo.GoInt32);
            };
            if ((stdgo._internal.strings.Strings_indexrune.indexRune(_chars?.__copy__(), _rc) >= (0 : stdgo.GoInt) : Bool)) {
                return (0 : stdgo.GoInt);
            };
            return (-1 : stdgo.GoInt);
        };
        if (((_s.length) > (8 : stdgo.GoInt) : Bool)) {
            {
                var __tmp__ = stdgo._internal.strings.Strings__makeasciiset._makeASCIISet(_chars?.__copy__()), _as:stdgo._internal.strings.Strings_t_asciiset.T_asciiSet = __tmp__._0, _isASCII:Bool = __tmp__._1;
                if (_isASCII) {
                    {
                        var _i = ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                            if (@:check2 _as._contains(_s[(_i : stdgo.GoInt)])) {
                                return _i;
                            };
                            _i--;
                        };
                    };
                    return (-1 : stdgo.GoInt);
                };
            };
        };
        if ((_chars.length) == ((1 : stdgo.GoInt))) {
            var _rc = (_chars[(0 : stdgo.GoInt)] : stdgo.GoInt32);
            if ((_rc >= (128 : stdgo.GoInt32) : Bool)) {
                _rc = (65533 : stdgo.GoInt32);
            };
            {
                var _i = (_s.length : stdgo.GoInt);
                while ((_i > (0 : stdgo.GoInt) : Bool)) {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodelastruneinstring.decodeLastRuneInString((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                    _i = (_i - (_size) : stdgo.GoInt);
                    if (_rc == (_r)) {
                        return _i;
                    };
                };
            };
            return (-1 : stdgo.GoInt);
        };
        {
            var _i = (_s.length : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodelastruneinstring.decodeLastRuneInString((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                _i = (_i - (_size) : stdgo.GoInt);
                if ((stdgo._internal.strings.Strings_indexrune.indexRune(_chars?.__copy__(), _r) >= (0 : stdgo.GoInt) : Bool)) {
                    return _i;
                };
            };
        };
        return (-1 : stdgo.GoInt);
    }
