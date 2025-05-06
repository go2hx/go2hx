package stdgo._internal.go.token;
@:keep @:allow(stdgo._internal.go.token.Token.Position_asInterface) class Position_static_extension {
    @:keep
    @:tdfield
    static public function string( _pos:stdgo._internal.go.token.Token_position.Position):stdgo.GoString {
        @:recv var _pos:stdgo._internal.go.token.Token_position.Position = _pos?.__copy__();
        var _s = (_pos.filename?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L41"
        if (_pos.isValid()) {
            //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L42"
            if (_s != ((stdgo.Go.str() : stdgo.GoString))) {
                _s = (_s + ((":" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
            _s = (_s + (stdgo._internal.strconv.Strconv_itoa.itoa(_pos.line))?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L46"
            if (_pos.column != ((0 : stdgo.GoInt))) {
                _s = (_s + (stdgo._internal.fmt.Fmt_sprintf.sprintf(((":%d" : stdgo.GoString) : stdgo.GoString), stdgo.Go.toInterface(_pos.column)))?.__copy__() : stdgo.GoString);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L50"
        if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
            _s = ("-" : stdgo.GoString);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L53"
        return _s?.__copy__();
    }
    @:keep
    @:tdfield
    static public function isValid( _pos:stdgo.Ref<stdgo._internal.go.token.Token_position.Position>):Bool {
        @:recv var _pos:stdgo.Ref<stdgo._internal.go.token.Token_position.Position> = _pos;
        //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L29"
        return ((@:checkr _pos ?? throw "null pointer dereference").line > (0 : stdgo.GoInt) : Bool);
    }
}
