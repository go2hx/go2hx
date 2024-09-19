package stdgo._internal.text.scanner;
function _testScanSelectedMode(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _mode:stdgo.GoUInt, _class:stdgo.GoInt32):Void {
        var _src = stdgo._internal.text.scanner.Scanner__makeSource._makeSource(("%s\n" : stdgo.GoString));
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>).init(stdgo.Go.asInterface(_src));
        _s.mode = _mode;
        var _tok = (_s.scan() : stdgo.GoInt32);
        while (_tok != ((-1 : stdgo.GoInt32))) {
            if (((_tok < (0 : stdgo.GoInt32) : Bool) && (_tok != _class) : Bool)) {
                _t.fatalf(("tok = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenString.tokenString(_tok)), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenString.tokenString(_class)));
            };
            _tok = _s.scan();
        };
        if (_s.errorCount != ((0 : stdgo.GoInt))) {
            _t.errorf(("%d errors" : stdgo.GoString), stdgo.Go.toInterface(_s.errorCount));
        };
    }
