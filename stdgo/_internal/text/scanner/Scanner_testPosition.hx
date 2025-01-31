package stdgo._internal.text.scanner;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.os.Os;
import stdgo._internal.unicode.Unicode;
function testPosition(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _src = stdgo._internal.text.scanner.Scanner__makeSource._makeSource(("\t\t\t\t%s\n" : stdgo.GoString));
        var _s = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>).init(stdgo.Go.asInterface(_src));
        (@:checkr _s ?? throw "null pointer dereference").mode = (500u32 : stdgo.GoUInt);
        @:check2r _s.scan();
        var _pos = (new stdgo._internal.text.scanner.Scanner_Position.Position(stdgo.Go.str()?.__copy__(), (4 : stdgo.GoInt), (1 : stdgo.GoInt), (5 : stdgo.GoInt)) : stdgo._internal.text.scanner.Scanner_Position.Position);
        for (__0 => _k in stdgo._internal.text.scanner.Scanner__tokenList._tokenList) {
            if ((@:checkr _s ?? throw "null pointer dereference").position.offset != (_pos.offset)) {
                @:check2r _t.errorf(("offset = %d, want %d for %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").position.offset), stdgo.Go.toInterface(_pos.offset), stdgo.Go.toInterface(_k._text));
            };
            if ((@:checkr _s ?? throw "null pointer dereference").position.line != (_pos.line)) {
                @:check2r _t.errorf(("line = %d, want %d for %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").position.line), stdgo.Go.toInterface(_pos.line), stdgo.Go.toInterface(_k._text));
            };
            if ((@:checkr _s ?? throw "null pointer dereference").position.column != (_pos.column)) {
                @:check2r _t.errorf(("column = %d, want %d for %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").position.column), stdgo.Go.toInterface(_pos.column), stdgo.Go.toInterface(_k._text));
            };
            _pos.offset = (_pos.offset + ((((4 : stdgo.GoInt) + (_k._text.length) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            _pos.line = (_pos.line + ((stdgo._internal.text.scanner.Scanner__countNewlines._countNewlines(_k._text?.__copy__()) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            @:check2r _s.scan();
        };
        if ((@:checkr _s ?? throw "null pointer dereference").errorCount != ((0 : stdgo.GoInt))) {
            @:check2r _t.errorf(("%d errors" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").errorCount));
        };
    }
