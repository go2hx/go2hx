package stdgo._internal.text.scanner;
function testScanZeroMode(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _src = stdgo._internal.text.scanner.Scanner__makeSource._makeSource(("%s\n" : stdgo.GoString));
        var _str = ((_src.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>).init(stdgo.Go.asInterface(_src));
        _s.mode = (0u32 : stdgo.GoUInt);
        _s.whitespace = (0i64 : stdgo.GoUInt64);
        var _tok = (_s.scan() : stdgo.GoInt32);
        for (_i => _ch in _str) {
            if (_tok != (_ch)) {
                _t.fatalf(("%d. tok = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenString.tokenString(_tok)), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenString.tokenString(_ch)));
            };
            _tok = _s.scan();
        };
        if (_tok != ((-1 : stdgo.GoInt32))) {
            _t.fatalf(("tok = %s, want EOF" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenString.tokenString(_tok)));
        };
        if (_s.errorCount != ((0 : stdgo.GoInt))) {
            _t.errorf(("%d errors" : stdgo.GoString), stdgo.Go.toInterface(_s.errorCount));
        };
    }
