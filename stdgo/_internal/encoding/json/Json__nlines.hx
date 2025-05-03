package stdgo._internal.encoding.json;
function _nlines(_s:stdgo.GoString, _n:stdgo.GoInt):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L265"
        if ((_n <= (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L266"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L268"
        for (_i => _c in _s) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L269"
            if (_c == ((10 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L270"
                {
                    _n--;
                    if (_n == ((0 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L271"
                        return (_s.__slice__((0 : stdgo.GoInt), (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L275"
        return _s?.__copy__();
    }
