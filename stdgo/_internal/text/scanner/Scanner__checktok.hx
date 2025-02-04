package stdgo._internal.text.scanner;
function _checkTok(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>, _line:stdgo.GoInt, _got:stdgo.GoInt32, _want:stdgo.GoInt32, _text:stdgo.GoString):Void {
        if (_got != (_want)) {
            @:check2r _t.fatalf(("tok = %s, want %s for %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenstring.tokenString(_got)), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenstring.tokenString(_want)), stdgo.Go.toInterface(_text));
        };
        if ((@:checkr _s ?? throw "null pointer dereference").position.line != (_line)) {
            @:check2r _t.errorf(("line = %d, want %d for %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").position.line), stdgo.Go.toInterface(_line), stdgo.Go.toInterface(_text));
        };
        var _stext = (@:check2r _s.tokenText()?.__copy__() : stdgo.GoString);
        if (_stext != (_text)) {
            @:check2r _t.errorf(("text = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_stext), stdgo.Go.toInterface(_text));
        } else {
            _stext = @:check2r _s.tokenText()?.__copy__();
            if (_stext != (_text)) {
                @:check2r _t.errorf(("text = %q, want %q (idempotency check)" : stdgo.GoString), stdgo.Go.toInterface(_stext), stdgo.Go.toInterface(_text));
            };
        };
    }
