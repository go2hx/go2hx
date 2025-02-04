package stdgo._internal.regexp.syntax;
function _minFoldRune(_r:stdgo.GoInt32):stdgo.GoInt32 {
        if (((_r < (65 : stdgo.GoInt32) : Bool) || (_r > (125251 : stdgo.GoInt32) : Bool) : Bool)) {
            return _r;
        };
        var _min = (_r : stdgo.GoInt32);
        var _r0 = (_r : stdgo.GoInt32);
        {
            _r = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r);
            while (_r != (_r0)) {
                if ((_min > _r : Bool)) {
                    _min = _r;
                };
                _r = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r);
            };
        };
        return _min;
    }
