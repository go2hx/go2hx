package stdgo._internal.text.scanner;
function testPosition(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _src = stdgo._internal.text.scanner.Scanner__makeSource._makeSource(("\t\t\t\t%s\n" : stdgo.GoString));
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>).init(stdgo.Go.asInterface(_src));
        _s.mode = (500u32 : stdgo.GoUInt);
        _s.scan();
        var _pos = (new stdgo._internal.text.scanner.Scanner_Position.Position(stdgo.Go.str()?.__copy__(), (4 : stdgo.GoInt), (1 : stdgo.GoInt), (5 : stdgo.GoInt)) : stdgo._internal.text.scanner.Scanner_Position.Position);
        for (__0 => _k in stdgo._internal.text.scanner.Scanner__tokenList._tokenList) {
            if (_s.position.offset != (_pos.offset)) {
                _t.errorf(("offset = %d, want %d for %q" : stdgo.GoString), stdgo.Go.toInterface(_s.position.offset), stdgo.Go.toInterface(_pos.offset), stdgo.Go.toInterface(_k._text));
            };
            if (_s.position.line != (_pos.line)) {
                _t.errorf(("line = %d, want %d for %q" : stdgo.GoString), stdgo.Go.toInterface(_s.position.line), stdgo.Go.toInterface(_pos.line), stdgo.Go.toInterface(_k._text));
            };
            if (_s.position.column != (_pos.column)) {
                _t.errorf(("column = %d, want %d for %q" : stdgo.GoString), stdgo.Go.toInterface(_s.position.column), stdgo.Go.toInterface(_pos.column), stdgo.Go.toInterface(_k._text));
            };
            _pos.offset = (_pos.offset + ((((4 : stdgo.GoInt) + (_k._text.length) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            _pos.line = (_pos.line + ((stdgo._internal.text.scanner.Scanner__countNewlines._countNewlines(_k._text?.__copy__()) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            _s.scan();
        };
        if (_s.errorCount != ((0 : stdgo.GoInt))) {
            _t.errorf(("%d errors" : stdgo.GoString), stdgo.Go.toInterface(_s.errorCount));
        };
    }
