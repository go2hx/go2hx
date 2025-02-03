package stdgo.text.scanner;
class Scanner_static_extension {
    static public function tokenText(_s:Scanner_):String {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>);
        return stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension.tokenText(_s);
    }
    static public function pos(_s:Scanner_):Position {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>);
        return stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension.pos(_s);
    }
    static public function scan(_s:Scanner_):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>);
        return stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension.scan(_s);
    }
    static public function _scanComment(_s:Scanner_, _ch:StdTypes.Int):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>);
        final _ch = (_ch : stdgo.GoInt32);
        return stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension._scanComment(_s, _ch);
    }
    static public function _scanChar(_s:Scanner_):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>);
        stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension._scanChar(_s);
    }
    static public function _scanRawString(_s:Scanner_):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>);
        stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension._scanRawString(_s);
    }
    static public function _scanString(_s:Scanner_, _quote:StdTypes.Int):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>);
        final _quote = (_quote : stdgo.GoInt32);
        return stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension._scanString(_s, _quote);
    }
    static public function _scanEscape(_s:Scanner_, _quote:StdTypes.Int):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>);
        final _quote = (_quote : stdgo.GoInt32);
        return stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension._scanEscape(_s, _quote);
    }
    static public function _scanDigits(_s:Scanner_, _ch:StdTypes.Int, _base:StdTypes.Int, _n:StdTypes.Int):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>);
        final _ch = (_ch : stdgo.GoInt32);
        final _base = (_base : stdgo.GoInt);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension._scanDigits(_s, _ch, _base, _n);
    }
    static public function _scanNumber(_s:Scanner_, _ch:StdTypes.Int, _seenDot:Bool):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>);
        final _ch = (_ch : stdgo.GoInt32);
        return {
            final obj = stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension._scanNumber(_s, _ch, _seenDot);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _digits(_s:Scanner_, _ch0:StdTypes.Int, _base:StdTypes.Int, _invalid:stdgo.Pointer<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>);
        final _ch0 = (_ch0 : stdgo.GoInt32);
        final _base = (_base : stdgo.GoInt);
        return {
            final obj = stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension._digits(_s, _ch0, _base, _invalid);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _scanIdentifier(_s:Scanner_):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>);
        return stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension._scanIdentifier(_s);
    }
    static public function _isIdentRune(_s:Scanner_, _ch:StdTypes.Int, _i:StdTypes.Int):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>);
        final _ch = (_ch : stdgo.GoInt32);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension._isIdentRune(_s, _ch, _i);
    }
    static public function _errorf(_s:Scanner_, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension._errorf(_s, _format, ...[for (i in _args) i]);
    }
    static public function _error(_s:Scanner_, _msg:String):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>);
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension._error(_s, _msg);
    }
    static public function peek(_s:Scanner_):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>);
        return stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension.peek(_s);
    }
    static public function next(_s:Scanner_):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>);
        return stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension.next(_s);
    }
    static public function _next(_s:Scanner_):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>);
        return stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension._next(_s);
    }
    static public function init(_s:Scanner_, _src:stdgo._internal.io.Io_Reader.Reader):Scanner_ {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>);
        return stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension.init(_s, _src);
    }
    public static function string(__self__:stdgo._internal.text.scanner.Scanner_Scanner.Scanner):String {
        return stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension.string(__self__);
    }
    public static function isValid(__self__:stdgo._internal.text.scanner.Scanner_Scanner.Scanner):Bool {
        return stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension.isValid(__self__);
    }
}
