package stdgo._internal.text.scanner;
function testScanNext(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var bOMs = ((65279 : stdgo.GoInt32) : stdgo.GoString);
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>).init(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader((((((bOMs + ("if a == bcd /* com" : stdgo.GoString)?.__copy__() : stdgo.GoString) + bOMs?.__copy__() : stdgo.GoString) + ("ment */ {\n\ta += c\n}" : stdgo.GoString)?.__copy__() : stdgo.GoString) + bOMs?.__copy__() : stdgo.GoString) + ("// line comment ending in eof" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__())));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L415"
        stdgo._internal.text.scanner.Scanner__checktok._checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-2 : stdgo.GoInt32), ("if" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L416"
        stdgo._internal.text.scanner.Scanner__checktok._checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-2 : stdgo.GoInt32), ("a" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L417"
        stdgo._internal.text.scanner.Scanner__checktok._checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (61 : stdgo.GoInt32), ("=" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L418"
        stdgo._internal.text.scanner.Scanner__checktok._checkTok(_t, _s, (0 : stdgo.GoInt), _s.next(), (61 : stdgo.GoInt32), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L419"
        stdgo._internal.text.scanner.Scanner__checktok._checkTok(_t, _s, (0 : stdgo.GoInt), _s.next(), (32 : stdgo.GoInt32), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L420"
        stdgo._internal.text.scanner.Scanner__checktok._checkTok(_t, _s, (0 : stdgo.GoInt), _s.next(), (98 : stdgo.GoInt32), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L421"
        stdgo._internal.text.scanner.Scanner__checktok._checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-2 : stdgo.GoInt32), ("cd" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L422"
        stdgo._internal.text.scanner.Scanner__checktok._checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (123 : stdgo.GoInt32), ("{" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L423"
        stdgo._internal.text.scanner.Scanner__checktok._checkTok(_t, _s, (2 : stdgo.GoInt), _s.scan(), (-2 : stdgo.GoInt32), ("a" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L424"
        stdgo._internal.text.scanner.Scanner__checktok._checkTok(_t, _s, (2 : stdgo.GoInt), _s.scan(), (43 : stdgo.GoInt32), ("+" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L425"
        stdgo._internal.text.scanner.Scanner__checktok._checkTok(_t, _s, (0 : stdgo.GoInt), _s.next(), (61 : stdgo.GoInt32), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L426"
        stdgo._internal.text.scanner.Scanner__checktok._checkTok(_t, _s, (2 : stdgo.GoInt), _s.scan(), (-2 : stdgo.GoInt32), ("c" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L427"
        stdgo._internal.text.scanner.Scanner__checktok._checkTok(_t, _s, (3 : stdgo.GoInt), _s.scan(), (125 : stdgo.GoInt32), ("}" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L428"
        stdgo._internal.text.scanner.Scanner__checktok._checkTok(_t, _s, (3 : stdgo.GoInt), _s.scan(), (65279 : stdgo.GoInt32), bOMs?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L429"
        stdgo._internal.text.scanner.Scanner__checktok._checkTok(_t, _s, (3 : stdgo.GoInt), _s.scan(), (-1 : stdgo.GoInt32), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L430"
        if ((@:checkr _s ?? throw "null pointer dereference").errorCount != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L431"
            _t.errorf(("%d errors" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").errorCount));
        };
    }
