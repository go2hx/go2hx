package stdgo._internal.text.scanner;
function testIOError(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>).init(stdgo.Go.asInterface((new stdgo._internal.text.scanner.Scanner_t_errreader.T_errReader() : stdgo._internal.text.scanner.Scanner_t_errreader.T_errReader)));
        var _errorCalled = (false : Bool);
        (@:checkr _s ?? throw "null pointer dereference").error = function(_s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>, _msg:stdgo.GoString):Void {
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L531"
            if (!_errorCalled) {
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L532"
                {
                    var _want = (stdgo._internal.io.Io_errnoprogress.errNoProgress.error()?.__copy__() : stdgo.GoString);
                    if (_msg != (_want)) {
                        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L533"
                        _t.errorf(("msg = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_want));
                    };
                };
                _errorCalled = true;
            };
        };
        var _tok = (_s.scan() : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L539"
        if (_tok != ((-1 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L540"
            _t.errorf(("tok = %s, want EOF" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenstring.tokenString(_tok)));
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L542"
        if (!_errorCalled) {
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L543"
            _t.errorf(("error handler not called" : stdgo.GoString));
        };
    }
