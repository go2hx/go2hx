package stdgo._internal.text.scanner;
function testIssue29723(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>).init(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader(("x \"" : stdgo.GoString))));
        (@:checkr _s ?? throw "null pointer dereference").error = function(_s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>, __0:stdgo.GoString):Void {
            var _got = (_s.tokenText()?.__copy__() : stdgo.GoString);
            {};
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L707"
            if (_got != (("\"" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L708"
                _t.errorf(("got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("\"" : stdgo.GoString)));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L711"
        {
            var _r = (_s.scan() : stdgo.GoInt32);
            while (_r != ((-1 : stdgo.GoInt32))) {
                {};
                _r = _s.scan();
            };
        };
    }
