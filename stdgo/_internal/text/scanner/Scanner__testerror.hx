package stdgo._internal.text.scanner;
function _testError(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _src:stdgo.GoString, _pos:stdgo.GoString, _msg:stdgo.GoString, _tok:stdgo.GoInt32):Void {
        var _s = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>).init(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader(_src?.__copy__())));
        var _errorCalled = (false : Bool);
        (@:checkr _s ?? throw "null pointer dereference").error = function(_s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>, _m:stdgo.GoString):Void {
            if (!_errorCalled) {
                {
                    var _p = ((@:check2r _s.pos().string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    if (_p != (_pos)) {
                        @:check2r _t.errorf(("pos = %q, want %q for %q" : stdgo.GoString), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_pos), stdgo.Go.toInterface(_src));
                    };
                };
                if (_m != (_msg)) {
                    @:check2r _t.errorf(("msg = %q, want %q for %q" : stdgo.GoString), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_src));
                };
                _errorCalled = true;
            };
        };
        var _tk = (@:check2r _s.scan() : stdgo.GoInt32);
        if (_tk != (_tok)) {
            @:check2r _t.errorf(("tok = %s, want %s for %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenstring.tokenString(_tk)), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenstring.tokenString(_tok)), stdgo.Go.toInterface(_src));
        };
        if (!_errorCalled) {
            @:check2r _t.errorf(("error handler not called for %q" : stdgo.GoString), stdgo.Go.toInterface(_src));
        };
        if ((@:checkr _s ?? throw "null pointer dereference").errorCount == ((0 : stdgo.GoInt))) {
            @:check2r _t.errorf(("count = %d, want > 0 for %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").errorCount), stdgo.Go.toInterface(_src));
        };
    }
