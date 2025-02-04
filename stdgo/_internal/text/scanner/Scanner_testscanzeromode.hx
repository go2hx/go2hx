package stdgo._internal.text.scanner;
function testScanZeroMode(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _src = stdgo._internal.text.scanner.Scanner__makesource._makeSource(("%s\n" : stdgo.GoString));
        var _str = ((@:check2r _src.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _s = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>).init(stdgo.Go.asInterface(_src));
        (@:checkr _s ?? throw "null pointer dereference").mode = (0u32 : stdgo.GoUInt);
        (@:checkr _s ?? throw "null pointer dereference").whitespace = (0i64 : stdgo.GoUInt64);
        var _tok = (@:check2r _s.scan() : stdgo.GoInt32);
        for (_i => _ch in _str) {
            if (_tok != (_ch)) {
                @:check2r _t.fatalf(("%d. tok = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenstring.tokenString(_tok)), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenstring.tokenString(_ch)));
            };
            _tok = @:check2r _s.scan();
        };
        if (_tok != ((-1 : stdgo.GoInt32))) {
            @:check2r _t.fatalf(("tok = %s, want EOF" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenstring.tokenString(_tok)));
        };
        if ((@:checkr _s ?? throw "null pointer dereference").errorCount != ((0 : stdgo.GoInt))) {
            @:check2r _t.errorf(("%d errors" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").errorCount));
        };
    }
