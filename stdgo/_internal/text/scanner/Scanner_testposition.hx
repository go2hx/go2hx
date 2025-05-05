package stdgo._internal.text.scanner;
function testPosition(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _src = stdgo._internal.text.scanner.Scanner__makesource._makeSource(("\t\t\t\t%s\n" : stdgo.GoString));
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>).init(stdgo.Go.asInterface(_src));
        (@:checkr _s ?? throw "null pointer dereference").mode = (500u32 : stdgo.GoUInt);
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L318"
        _s.scan();
        var _pos = (new stdgo._internal.text.scanner.Scanner_position.Position((stdgo.Go.str() : stdgo.GoString)?.__copy__(), (4 : stdgo.GoInt), (1 : stdgo.GoInt), (5 : stdgo.GoInt)) : stdgo._internal.text.scanner.Scanner_position.Position);
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L320"
        for (__0 => _k in stdgo._internal.text.scanner.Scanner__tokenlist._tokenList) {
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L321"
            if ((@:checkr _s ?? throw "null pointer dereference").position.offset != (_pos.offset)) {
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L322"
                _t.errorf(("offset = %d, want %d for %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").position.offset), stdgo.Go.toInterface(_pos.offset), stdgo.Go.toInterface(_k._text));
            };
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L324"
            if ((@:checkr _s ?? throw "null pointer dereference").position.line != (_pos.line)) {
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L325"
                _t.errorf(("line = %d, want %d for %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").position.line), stdgo.Go.toInterface(_pos.line), stdgo.Go.toInterface(_k._text));
            };
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L327"
            if ((@:checkr _s ?? throw "null pointer dereference").position.column != (_pos.column)) {
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L328"
                _t.errorf(("column = %d, want %d for %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").position.column), stdgo.Go.toInterface(_pos.column), stdgo.Go.toInterface(_k._text));
            };
            _pos.offset = (_pos.offset + ((((4 : stdgo.GoInt) + (_k._text.length) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            _pos.line = (_pos.line + ((stdgo._internal.text.scanner.Scanner__countnewlines._countNewlines(_k._text?.__copy__()) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L332"
            _s.scan();
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L335"
        if ((@:checkr _s ?? throw "null pointer dereference").errorCount != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L336"
            _t.errorf(("%d errors" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").errorCount));
        };
    }
