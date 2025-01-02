package stdgo._internal.text.scanner;
@:keep @:allow(stdgo._internal.text.scanner.Scanner.Position_asInterface) class Position_static_extension {
    @:keep
    @:tdfield
    static public function string( _pos:stdgo._internal.text.scanner.Scanner_Position.Position):stdgo.GoString {
        @:recv var _pos:stdgo._internal.text.scanner.Scanner_Position.Position = _pos?.__copy__();
        var _s = (_pos.filename?.__copy__() : stdgo.GoString);
        if (_s == (stdgo.Go.str())) {
            _s = ("<input>" : stdgo.GoString);
        };
        if (@:check2 _pos.isValid()) {
            _s = (_s + (stdgo._internal.fmt.Fmt_sprintf.sprintf((":%d:%d" : stdgo.GoString), stdgo.Go.toInterface(_pos.line), stdgo.Go.toInterface(_pos.column)))?.__copy__() : stdgo.GoString);
        };
        return _s?.__copy__();
    }
    @:keep
    @:tdfield
    static public function isValid( _pos:stdgo.Ref<stdgo._internal.text.scanner.Scanner_Position.Position>):Bool {
        @:recv var _pos:stdgo.Ref<stdgo._internal.text.scanner.Scanner_Position.Position> = _pos;
        return ((@:checkr _pos ?? throw "null pointer dereference").line > (0 : stdgo.GoInt) : Bool);
    }
}
