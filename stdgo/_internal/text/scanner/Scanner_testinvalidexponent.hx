package stdgo._internal.text.scanner;
function testInvalidExponent(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>).init(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader(("1.5e 1.5E 1e+ 1e- 1.5z" : stdgo.GoString))));
        (@:checkr _s ?? throw "null pointer dereference").error = function(_s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>, _msg:stdgo.GoString):Void {
            {};
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L298"
            if (_msg != (("exponent has no digits" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L299"
                _t.errorf(("%s: got error %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_s.tokenText()), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(("exponent has no digits" : stdgo.GoString)));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L302"
        stdgo._internal.text.scanner.Scanner__checktokerr._checkTokErr(_t, _s, (1 : stdgo.GoInt), (-4 : stdgo.GoInt32), ("1.5e" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L303"
        stdgo._internal.text.scanner.Scanner__checktokerr._checkTokErr(_t, _s, (1 : stdgo.GoInt), (-4 : stdgo.GoInt32), ("1.5E" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L304"
        stdgo._internal.text.scanner.Scanner__checktokerr._checkTokErr(_t, _s, (1 : stdgo.GoInt), (-4 : stdgo.GoInt32), ("1e+" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L305"
        stdgo._internal.text.scanner.Scanner__checktokerr._checkTokErr(_t, _s, (1 : stdgo.GoInt), (-4 : stdgo.GoInt32), ("1e-" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L306"
        stdgo._internal.text.scanner.Scanner__checktok._checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-4 : stdgo.GoInt32), ("1.5" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L307"
        stdgo._internal.text.scanner.Scanner__checktok._checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-2 : stdgo.GoInt32), ("z" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L308"
        stdgo._internal.text.scanner.Scanner__checktok._checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-1 : stdgo.GoInt32), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L309"
        if ((@:checkr _s ?? throw "null pointer dereference").errorCount != ((4 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L310"
            _t.errorf(("%d errors, want 4" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").errorCount));
        };
    }
