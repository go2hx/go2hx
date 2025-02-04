package stdgo._internal.encoding.json;
function _foldRune(_r:stdgo.GoInt32):stdgo.GoInt32 {
        while (true) {
            var _r2 = (stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r) : stdgo.GoInt32);
            if ((_r2 <= _r : Bool)) {
                return _r2;
            };
            _r = _r2;
        };
    }
