package stdgo._internal.text.scanner;
function _testScanSelectedMode(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _mode:stdgo.GoUInt, _class:stdgo.GoInt32):Void {
        var _src = stdgo._internal.text.scanner.Scanner__makesource._makeSource(("%s\n" : stdgo.GoString));
        var _s = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>).init(stdgo.Go.asInterface(_src));
        (@:checkr _s ?? throw "null pointer dereference").mode = _mode;
        var _tok = (@:check2r _s.scan() : stdgo.GoInt32);
        while (_tok != ((-1 : stdgo.GoInt32))) {
            if (((_tok < (0 : stdgo.GoInt32) : Bool) && (_tok != _class) : Bool)) {
                @:check2r _t.fatalf(("tok = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenstring.tokenString(_tok)), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenstring.tokenString(_class)));
            };
            _tok = @:check2r _s.scan();
        };
        if ((@:checkr _s ?? throw "null pointer dereference").errorCount != ((0 : stdgo.GoInt))) {
            @:check2r _t.errorf(("%d errors" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").errorCount));
        };
    }
