package stdgo._internal.text.scanner;
function _countNewlines(_s:stdgo.GoString):stdgo.GoInt {
        var _n = (0 : stdgo.GoInt);
        for (__0 => _ch in _s) {
            if (_ch == ((10 : stdgo.GoInt32))) {
                _n++;
            };
        };
        return _n;
    }
