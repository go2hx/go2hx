package stdgo._internal.text.scanner;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.os.Os;
import stdgo._internal.unicode.Unicode;
@:structInit @:using(stdgo._internal.text.scanner.Scanner_T_token_static_extension.T_token_static_extension) class T_token {
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
