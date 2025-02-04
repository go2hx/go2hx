package stdgo._internal.text.scanner;
function _checkScanPos(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>, _offset:stdgo.GoInt, _line:stdgo.GoInt, _column:stdgo.GoInt, _char:stdgo.GoInt32):Void {
        var _want = ({ offset : _offset, line : _line, column : _column } : stdgo._internal.text.scanner.Scanner_position.Position);
        stdgo._internal.text.scanner.Scanner__checkpos._checkPos(_t, @:check2r _s.pos()?.__copy__(), _want?.__copy__());
        {
            var _ch = (@:check2r _s.scan() : stdgo.GoInt32);
            if (_ch != (_char)) {
                @:check2r _t.errorf(("ch = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenstring.tokenString(_ch)), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenstring.tokenString(_char)));
                if ((_ch : stdgo.GoString) != (@:check2r _s.tokenText())) {
                    @:check2r _t.errorf(("tok = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(@:check2r _s.tokenText()), stdgo.Go.toInterface((_ch : stdgo.GoString)));
                };
            };
        };
        stdgo._internal.text.scanner.Scanner__checkpos._checkPos(_t, (@:checkr _s ?? throw "null pointer dereference").position?.__copy__(), _want?.__copy__());
    }
