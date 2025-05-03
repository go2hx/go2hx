package stdgo._internal.text.scanner;
function _extractInts(_t:stdgo.GoString, _mode:stdgo.GoUInt):stdgo.GoString {
        var _res = ("" : stdgo.GoString);
        var _s:stdgo._internal.text.scanner.Scanner_scanner.Scanner = ({} : stdgo._internal.text.scanner.Scanner_scanner.Scanner);
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L902"
        _s.init(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader(_t?.__copy__())));
        _s.mode = _mode;
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L904"
        while (true) {
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L905"
            {
                var _tok = (_s.scan() : stdgo.GoInt32);
                {
                    final __value__ = _tok;
                    if (__value__ == ((-3 : stdgo.GoInt32)) || __value__ == ((-4 : stdgo.GoInt32))) {
                        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L907"
                        if (((_res.length) > (0 : stdgo.GoInt) : Bool)) {
                            _res = (_res + ((" " : stdgo.GoString))?.__copy__() : stdgo.GoString);
                        };
                        _res = (_res + (_s.tokenText())?.__copy__() : stdgo.GoString);
                    } else if (__value__ == ((-1 : stdgo.GoInt32))) {
                        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L912"
                        return _res;
                    };
                };
            };
        };
    }
