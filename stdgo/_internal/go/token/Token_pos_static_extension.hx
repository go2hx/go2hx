package stdgo._internal.go.token;
@:keep @:allow(stdgo._internal.go.token.Token.Pos_asInterface) class Pos_static_extension {
    @:keep
    @:tdfield
    static public function isValid( _p:stdgo._internal.go.token.Token_pos.Pos):Bool {
        @:recv var _p:stdgo._internal.go.token.Token_pos.Pos = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L88"
        return _p != ((0 : stdgo._internal.go.token.Token_pos.Pos));
    }
}
