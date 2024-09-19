package stdgo._internal.text.scanner;
function _testError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _src:stdgo.GoString, _pos:stdgo.GoString, _msg:stdgo.GoString, _tok:stdgo.GoInt32):Void {
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>).init(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(_src?.__copy__())));
        var _errorCalled = (false : Bool);
        _s.error = function(_s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>, _m:stdgo.GoString):Void {
            if (!_errorCalled) {
                {
                    var _p = ((_s.pos().string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    if (_p != (_pos)) {
                        _t.errorf(("pos = %q, want %q for %q" : stdgo.GoString), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_pos), stdgo.Go.toInterface(_src));
                    };
                };
                if (_m != (_msg)) {
                    _t.errorf(("msg = %q, want %q for %q" : stdgo.GoString), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_src));
                };
                _errorCalled = true;
            };
        };
        var _tk = (_s.scan() : stdgo.GoInt32);
        if (_tk != (_tok)) {
            _t.errorf(("tok = %s, want %s for %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenString.tokenString(_tk)), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenString.tokenString(_tok)), stdgo.Go.toInterface(_src));
        };
        if (!_errorCalled) {
            _t.errorf(("error handler not called for %q" : stdgo.GoString), stdgo.Go.toInterface(_src));
        };
        if (_s.errorCount == ((0 : stdgo.GoInt))) {
            _t.errorf(("count = %d, want > 0 for %q" : stdgo.GoString), stdgo.Go.toInterface(_s.errorCount), stdgo.Go.toInterface(_src));
        };
    }