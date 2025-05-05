package stdgo._internal.text.scanner;
function _testScanSelectedMode(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _mode:stdgo.GoUInt, _class:stdgo.GoInt32):Void {
        var _src = stdgo._internal.text.scanner.Scanner__makesource._makeSource(("%s\n" : stdgo.GoString));
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>).init(stdgo.Go.asInterface(_src));
        (@:checkr _s ?? throw "null pointer dereference").mode = _mode;
        var _tok = (_s.scan() : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L366"
        while (_tok != ((-1 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L367"
            if (((_tok < (0 : stdgo.GoInt32) : Bool) && (_tok != _class) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L368"
                _t.fatalf(("tok = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenstring.tokenString(_tok)), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenstring.tokenString(_class)));
            };
            _tok = _s.scan();
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L372"
        if ((@:checkr _s ?? throw "null pointer dereference").errorCount != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L373"
            _t.errorf(("%d errors" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").errorCount));
        };
    }
