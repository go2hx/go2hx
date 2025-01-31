package stdgo._internal.text.scanner;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.os.Os;
import stdgo._internal.unicode.Unicode;
function testIOError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _s = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>).init(stdgo.Go.asInterface((new stdgo._internal.text.scanner.Scanner_T_errReader.T_errReader() : stdgo._internal.text.scanner.Scanner_T_errReader.T_errReader)));
        var _errorCalled = (false : Bool);
        (@:checkr _s ?? throw "null pointer dereference").error = function(_s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>, _msg:stdgo.GoString):Void {
            if (!_errorCalled) {
                {
                    var _want = (stdgo._internal.io.Io_errNoProgress.errNoProgress.error()?.__copy__() : stdgo.GoString);
                    if (_msg != (_want)) {
                        @:check2r _t.errorf(("msg = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_want));
                    };
                };
                _errorCalled = true;
            };
        };
        var _tok = (@:check2r _s.scan() : stdgo.GoInt32);
        if (_tok != ((-1 : stdgo.GoInt32))) {
            @:check2r _t.errorf(("tok = %s, want EOF" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenString.tokenString(_tok)));
        };
        if (!_errorCalled) {
            @:check2r _t.errorf(("error handler not called" : stdgo.GoString));
        };
    }
