package stdgo._internal.text.scanner;
function testIOError(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _s = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>).init(stdgo.Go.asInterface((new stdgo._internal.text.scanner.Scanner_t_errreader.T_errReader() : stdgo._internal.text.scanner.Scanner_t_errreader.T_errReader)));
        var _errorCalled = (false : Bool);
        (@:checkr _s ?? throw "null pointer dereference").error = function(_s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>, _msg:stdgo.GoString):Void {
            if (!_errorCalled) {
                {
                    var _want = (stdgo._internal.io.Io_errnoprogress.errNoProgress.error()?.__copy__() : stdgo.GoString);
                    if (_msg != (_want)) {
                        @:check2r _t.errorf(("msg = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_want));
                    };
                };
                _errorCalled = true;
            };
        };
        var _tok = (@:check2r _s.scan() : stdgo.GoInt32);
        if (_tok != ((-1 : stdgo.GoInt32))) {
            @:check2r _t.errorf(("tok = %s, want EOF" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenstring.tokenString(_tok)));
        };
        if (!_errorCalled) {
            @:check2r _t.errorf(("error handler not called" : stdgo.GoString));
        };
    }
