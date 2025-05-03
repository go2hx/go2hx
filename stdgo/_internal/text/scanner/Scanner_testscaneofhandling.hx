package stdgo._internal.text.scanner;
function testScanEOFHandling(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _r:stdgo._internal.text.scanner.Scanner_t_countreader.T_countReader = ((0 : stdgo.GoInt) : stdgo._internal.text.scanner.Scanner_t_countreader.T_countReader), _r__pointer__ = stdgo.Go.pointer(_r);
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>).init(stdgo.Go.asInterface(_r__pointer__));
        var _tok = (_s.scan() : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L688"
        if (_tok != ((-1 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L689"
            _t.error(stdgo.Go.toInterface(("1) EOF not reported" : stdgo.GoString)));
        };
        _tok = _s.peek();
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L693"
        if (_tok != ((-1 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L694"
            _t.error(stdgo.Go.toInterface(("2) EOF not reported" : stdgo.GoString)));
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L697"
        if (_r != ((1 : stdgo._internal.text.scanner.Scanner_t_countreader.T_countReader))) {
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L698"
            _t.errorf(("scanner called Read %d times, not once" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)));
        };
    }
