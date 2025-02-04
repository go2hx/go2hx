package stdgo._internal.text.scanner;
@:structInit @:using(stdgo._internal.text.scanner.Scanner_t_token_static_extension.T_token_static_extension) class T_token {
    public var _tok : stdgo.GoInt32 = 0;
    public var _text : stdgo.GoString = "";
    public function new(?_tok:stdgo.GoInt32, ?_text:stdgo.GoString) {
        if (_tok != null) this._tok = _tok;
        if (_text != null) this._text = _text;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_token(_tok, _text);
    }
}
