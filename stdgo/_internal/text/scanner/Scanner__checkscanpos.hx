package stdgo._internal.text.scanner;
function _checkScanPos(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>, _offset:stdgo.GoInt, _line:stdgo.GoInt, _column:stdgo.GoInt, _char:stdgo.GoInt32):Void {
        var _want = ({ offset : _offset, line : _line, column : _column } : stdgo._internal.text.scanner.Scanner_position.Position);
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L564"
        stdgo._internal.text.scanner.Scanner__checkpos._checkPos(_t, _s.pos()?.__copy__(), _want?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L565"
        {
            var _ch = (_s.scan() : stdgo.GoInt32);
            if (_ch != (_char)) {
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L566"
                _t.errorf(("ch = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenstring.tokenString(_ch)), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenstring.tokenString(_char)));
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L567"
                if ((_ch : stdgo.GoString) != (_s.tokenText())) {
                    //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L568"
                    _t.errorf(("tok = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_s.tokenText()), stdgo.Go.toInterface((_ch : stdgo.GoString)));
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L571"
        stdgo._internal.text.scanner.Scanner__checkpos._checkPos(_t, (@:checkr _s ?? throw "null pointer dereference").position?.__copy__(), _want?.__copy__());
    }
