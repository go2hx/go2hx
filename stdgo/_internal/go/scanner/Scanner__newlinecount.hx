package stdgo._internal.go.scanner;
function _newlineCount(_s:stdgo.GoString):stdgo.GoInt {
        var _n = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L199"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L200"
                if (_s[(_i : stdgo.GoInt)] == ((10 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L201"
                    _n++;
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L204"
        return _n;
    }
