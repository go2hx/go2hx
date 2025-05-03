package stdgo._internal.text.scanner;
function _checkTok(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>, _line:stdgo.GoInt, _got:stdgo.GoInt32, _want:stdgo.GoInt32, _text:stdgo.GoString):Void {
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L237"
        if (_got != (_want)) {
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L238"
            _t.fatalf(("tok = %s, want %s for %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenstring.tokenString(_got)), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenstring.tokenString(_want)), stdgo.Go.toInterface(_text));
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L240"
        if ((@:checkr _s ?? throw "null pointer dereference").position.line != (_line)) {
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L241"
            _t.errorf(("line = %d, want %d for %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").position.line), stdgo.Go.toInterface(_line), stdgo.Go.toInterface(_text));
        };
        var _stext = (_s.tokenText()?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L244"
        if (_stext != (_text)) {
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L245"
            _t.errorf(("text = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_stext), stdgo.Go.toInterface(_text));
        } else {
            _stext = _s.tokenText()?.__copy__();
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L249"
            if (_stext != (_text)) {
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L250"
                _t.errorf(("text = %q, want %q (idempotency check)" : stdgo.GoString), stdgo.Go.toInterface(_stext), stdgo.Go.toInterface(_text));
            };
        };
    }
