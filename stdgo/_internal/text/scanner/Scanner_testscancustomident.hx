package stdgo._internal.text.scanner;
function testScanCustomIdent(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>).init(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader(("faab12345 a12b123 a12 3b" : stdgo.GoString))));
        (@:checkr _s ?? throw "null pointer dereference").isIdentRune = function(_ch:stdgo.GoInt32, _i:stdgo.GoInt):Bool {
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L396"
            return ((_i == ((0 : stdgo.GoInt)) && (((_ch == (97 : stdgo.GoInt32)) || (_ch == (98 : stdgo.GoInt32)) : Bool)) : Bool) || (((((0 : stdgo.GoInt) < _i : Bool) && (_i < (4 : stdgo.GoInt) : Bool) : Bool) && ((48 : stdgo.GoInt32) <= _ch : Bool) : Bool) && (_ch <= (51 : stdgo.GoInt32) : Bool) : Bool) : Bool);
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L398"
        stdgo._internal.text.scanner.Scanner__checktok._checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (102 : stdgo.GoInt32), ("f" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L399"
        stdgo._internal.text.scanner.Scanner__checktok._checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-2 : stdgo.GoInt32), ("a" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L400"
        stdgo._internal.text.scanner.Scanner__checktok._checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-2 : stdgo.GoInt32), ("a" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L401"
        stdgo._internal.text.scanner.Scanner__checktok._checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-2 : stdgo.GoInt32), ("b123" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L402"
        stdgo._internal.text.scanner.Scanner__checktok._checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-3 : stdgo.GoInt32), ("45" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L403"
        stdgo._internal.text.scanner.Scanner__checktok._checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-2 : stdgo.GoInt32), ("a12" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L404"
        stdgo._internal.text.scanner.Scanner__checktok._checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-2 : stdgo.GoInt32), ("b123" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L405"
        stdgo._internal.text.scanner.Scanner__checktok._checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-2 : stdgo.GoInt32), ("a12" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L406"
        stdgo._internal.text.scanner.Scanner__checktok._checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-3 : stdgo.GoInt32), ("3" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L407"
        stdgo._internal.text.scanner.Scanner__checktok._checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-2 : stdgo.GoInt32), ("b" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L408"
        stdgo._internal.text.scanner.Scanner__checktok._checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-1 : stdgo.GoInt32), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
    }
