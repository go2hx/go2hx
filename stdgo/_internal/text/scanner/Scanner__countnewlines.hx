package stdgo._internal.text.scanner;
function _countNewlines(_s:stdgo.GoString):stdgo.GoInt {
        var _n = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L265"
        for (__0 => _ch in _s) {
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L266"
            if (_ch == ((10 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L267"
                _n++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L270"
        return _n;
    }
