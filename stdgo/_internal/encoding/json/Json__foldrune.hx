package stdgo._internal.encoding.json;
function _foldRune(_r:stdgo.GoInt32):stdgo.GoInt32 {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/fold.go#L41"
        while (true) {
            var _r2 = (stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r) : stdgo.GoInt32);
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/fold.go#L43"
            if ((_r2 <= _r : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/fold.go#L44"
                return _r2;
            };
            _r = _r2;
        };
    }
