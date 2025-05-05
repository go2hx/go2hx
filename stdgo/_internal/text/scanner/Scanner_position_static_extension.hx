package stdgo._internal.text.scanner;
@:keep @:allow(stdgo._internal.text.scanner.Scanner.Position_asInterface) class Position_static_extension {
    @:keep
    @:tdfield
    static public function string( _pos:stdgo._internal.text.scanner.Scanner_position.Position):stdgo.GoString {
        @:recv var _pos:stdgo._internal.text.scanner.Scanner_position.Position = _pos?.__copy__();
        var _s = (_pos.filename?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L40"
        if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
            _s = ("<input>" : stdgo.GoString);
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L43"
        if (_pos.isValid()) {
            _s = (_s + (stdgo._internal.fmt.Fmt_sprintf.sprintf(((":%d:%d" : stdgo.GoString) : stdgo.GoString), stdgo.Go.toInterface(_pos.line), stdgo.Go.toInterface(_pos.column)))?.__copy__() : stdgo.GoString);
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L46"
        return _s?.__copy__();
    }
    @:keep
    @:tdfield
    static public function isValid( _pos:stdgo.Ref<stdgo._internal.text.scanner.Scanner_position.Position>):Bool {
        @:recv var _pos:stdgo.Ref<stdgo._internal.text.scanner.Scanner_position.Position> = _pos;
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L36"
        return ((@:checkr _pos ?? throw "null pointer dereference").line > (0 : stdgo.GoInt) : Bool);
    }
}
