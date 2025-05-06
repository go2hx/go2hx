package stdgo._internal.go.scanner;
@:structInit @:using(stdgo._internal.go.scanner.Scanner_t_elt_static_extension.T_elt_static_extension) class T_elt {
    public var _tok : stdgo._internal.go.token.Token_token.Token = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_token.Token);
    public var _lit : stdgo.GoString = "";
    public var _class : stdgo.GoInt = 0;
    public function new(?_tok:stdgo._internal.go.token.Token_token.Token, ?_lit:stdgo.GoString, ?_class:stdgo.GoInt) {
        if (_tok != null) this._tok = _tok;
        if (_lit != null) this._lit = _lit;
        if (_class != null) this._class = _class;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_elt(_tok, _lit, _class);
    }
}
