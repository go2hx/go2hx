package stdgo._internal.encoding.json;
function _nlines(_s:stdgo.GoString, _n:stdgo.GoInt):stdgo.GoString {
        if ((_n <= (0 : stdgo.GoInt) : Bool)) {
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        for (_i => _c in _s) {
            if (_c == ((10 : stdgo.GoInt32))) {
                {
                    _n--;
                    if (_n == ((0 : stdgo.GoInt))) {
                        return (_s.__slice__((0 : stdgo.GoInt), (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    };
                };
            };
        };
        return _s?.__copy__();
    }
