package stdgo._internal.text.scanner;
function testIOError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>).init(stdgo.Go.asInterface((new stdgo._internal.text.scanner.Scanner_T_errReader.T_errReader() : stdgo._internal.text.scanner.Scanner_T_errReader.T_errReader)));
        var _errorCalled = (false : Bool);
        _s.error = function(_s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>, _msg:stdgo.GoString):Void {
            if (!_errorCalled) {
                {
                    var _want = (stdgo._internal.io.Io_errNoProgress.errNoProgress.error()?.__copy__() : stdgo.GoString);
                    if (_msg != (_want)) {
                        _t.errorf(("msg = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_want));
                    };
                };
                _errorCalled = true;
            };
        };
        var _tok = (_s.scan() : stdgo.GoInt32);
        if (_tok != ((-1 : stdgo.GoInt32))) {
            _t.errorf(("tok = %s, want EOF" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenString.tokenString(_tok)));
        };
        if (!_errorCalled) {
            _t.errorf(("error handler not called" : stdgo.GoString));
        };
    }
