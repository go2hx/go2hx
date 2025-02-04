package stdgo._internal.unicode;
function simpleFold(_r:stdgo.GoInt32):stdgo.GoInt32 {
        if (((_r < (0 : stdgo.GoInt32) : Bool) || (_r > (1114111 : stdgo.GoInt32) : Bool) : Bool)) {
            return _r;
        };
        if (((_r : stdgo.GoInt) < (stdgo._internal.unicode.Unicode__asciifold._asciiFold.length) : Bool)) {
            return (stdgo._internal.unicode.Unicode__asciifold._asciiFold[(_r : stdgo.GoInt)] : stdgo.GoInt32);
        };
        var _lo = (0 : stdgo.GoInt);
        var _hi = (stdgo._internal.unicode.Unicode__caseorbit._caseOrbit.length : stdgo.GoInt);
        while ((_lo < _hi : Bool)) {
            var _m = (_lo + (((_hi - _lo : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
            if (((stdgo._internal.unicode.Unicode__caseorbit._caseOrbit[(_m : stdgo.GoInt)].from : stdgo.GoInt32) < _r : Bool)) {
                _lo = (_m + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _hi = _m;
            };
        };
        if (((_lo < (stdgo._internal.unicode.Unicode__caseorbit._caseOrbit.length) : Bool) && ((stdgo._internal.unicode.Unicode__caseorbit._caseOrbit[(_lo : stdgo.GoInt)].from : stdgo.GoInt32) == _r) : Bool)) {
            return (stdgo._internal.unicode.Unicode__caseorbit._caseOrbit[(_lo : stdgo.GoInt)].to : stdgo.GoInt32);
        };
        {
            var _l = (stdgo._internal.unicode.Unicode_tolower.toLower(_r) : stdgo.GoInt32);
            if (_l != (_r)) {
                return _l;
            };
        };
        return stdgo._internal.unicode.Unicode_toupper.toUpper(_r);
    }
