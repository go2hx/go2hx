package stdgo.text.scanner;
@:structInit @:using(stdgo.text.scanner.Scanner.T_token_static_extension) abstract T_token(stdgo._internal.text.scanner.Scanner_T_token.T_token) from stdgo._internal.text.scanner.Scanner_T_token.T_token to stdgo._internal.text.scanner.Scanner_T_token.T_token {
    public var _tok(get, set) : StdTypes.Int;
    function get__tok():StdTypes.Int return this._tok;
    function set__tok(v:StdTypes.Int):StdTypes.Int {
        this._tok = (v : stdgo.GoInt32);
        return v;
    }
    public var _text(get, set) : String;
    function get__text():String return this._text;
    function set__text(v:String):String {
        this._text = (v : stdgo.GoString);
        return v;
    }
    public function new(?_tok:StdTypes.Int, ?_text:String) this = new stdgo._internal.text.scanner.Scanner_T_token.T_token((_tok : stdgo.GoInt32), (_text : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
