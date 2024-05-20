package stdgo.text.scanner;
final scanIdents : haxe.UInt64 = stdgo._internal.text.scanner.Scanner.scanIdents;
final scanInts : haxe.UInt64 = stdgo._internal.text.scanner.Scanner.scanInts;
final scanFloats : haxe.UInt64 = stdgo._internal.text.scanner.Scanner.scanFloats;
final scanChars : haxe.UInt64 = stdgo._internal.text.scanner.Scanner.scanChars;
final scanStrings : haxe.UInt64 = stdgo._internal.text.scanner.Scanner.scanStrings;
final scanRawStrings : haxe.UInt64 = stdgo._internal.text.scanner.Scanner.scanRawStrings;
final scanComments : haxe.UInt64 = stdgo._internal.text.scanner.Scanner.scanComments;
final skipComments : haxe.UInt64 = stdgo._internal.text.scanner.Scanner.skipComments;
final goTokens : haxe.UInt64 = stdgo._internal.text.scanner.Scanner.goTokens;
final eof : haxe.UInt64 = stdgo._internal.text.scanner.Scanner.eof;
final ident = stdgo._internal.text.scanner.Scanner.ident;
final int_ = stdgo._internal.text.scanner.Scanner.int_;
final float_ = stdgo._internal.text.scanner.Scanner.float_;
final char = stdgo._internal.text.scanner.Scanner.char;
final string = stdgo._internal.text.scanner.Scanner.string;
final rawString = stdgo._internal.text.scanner.Scanner.rawString;
final comment = stdgo._internal.text.scanner.Scanner.comment;
final goWhitespace : haxe.UInt64 = stdgo._internal.text.scanner.Scanner.goWhitespace;
@:structInit @:using(stdgo.text.scanner.Scanner.Position_static_extension) abstract Position(stdgo._internal.text.scanner.Scanner.Position) from stdgo._internal.text.scanner.Scanner.Position to stdgo._internal.text.scanner.Scanner.Position {
    public var filename(get, set) : String;
    function get_filename():String return this.filename;
    function set_filename(v:String):String {
        this.filename = v;
        return v;
    }
    public var offset(get, set) : StdTypes.Int;
    function get_offset():StdTypes.Int return this.offset;
    function set_offset(v:StdTypes.Int):StdTypes.Int {
        this.offset = v;
        return v;
    }
    public var line(get, set) : StdTypes.Int;
    function get_line():StdTypes.Int return this.line;
    function set_line(v:StdTypes.Int):StdTypes.Int {
        this.line = v;
        return v;
    }
    public var column(get, set) : StdTypes.Int;
    function get_column():StdTypes.Int return this.column;
    function set_column(v:StdTypes.Int):StdTypes.Int {
        this.column = v;
        return v;
    }
    public function new(?filename:String, ?offset:StdTypes.Int, ?line:StdTypes.Int, ?column:StdTypes.Int) this = new stdgo._internal.text.scanner.Scanner.Position(filename, offset, line, column);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.scanner.Scanner.Scanner__static_extension) abstract Scanner_(stdgo._internal.text.scanner.Scanner.Scanner) from stdgo._internal.text.scanner.Scanner.Scanner to stdgo._internal.text.scanner.Scanner.Scanner {
    public var _src(get, set) : stdgo._internal.io.Io.Reader;
    function get__src():stdgo._internal.io.Io.Reader return this._src;
    function set__src(v:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        this._src = v;
        return v;
    }
    public var _srcBuf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__srcBuf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._srcBuf) i]);
    function set__srcBuf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._srcBuf = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _srcPos(get, set) : StdTypes.Int;
    function get__srcPos():StdTypes.Int return this._srcPos;
    function set__srcPos(v:StdTypes.Int):StdTypes.Int {
        this._srcPos = v;
        return v;
    }
    public var _srcEnd(get, set) : StdTypes.Int;
    function get__srcEnd():StdTypes.Int return this._srcEnd;
    function set__srcEnd(v:StdTypes.Int):StdTypes.Int {
        this._srcEnd = v;
        return v;
    }
    public var _srcBufOffset(get, set) : StdTypes.Int;
    function get__srcBufOffset():StdTypes.Int return this._srcBufOffset;
    function set__srcBufOffset(v:StdTypes.Int):StdTypes.Int {
        this._srcBufOffset = v;
        return v;
    }
    public var _line(get, set) : StdTypes.Int;
    function get__line():StdTypes.Int return this._line;
    function set__line(v:StdTypes.Int):StdTypes.Int {
        this._line = v;
        return v;
    }
    public var _column(get, set) : StdTypes.Int;
    function get__column():StdTypes.Int return this._column;
    function set__column(v:StdTypes.Int):StdTypes.Int {
        this._column = v;
        return v;
    }
    public var _lastLineLen(get, set) : StdTypes.Int;
    function get__lastLineLen():StdTypes.Int return this._lastLineLen;
    function set__lastLineLen(v:StdTypes.Int):StdTypes.Int {
        this._lastLineLen = v;
        return v;
    }
    public var _lastCharLen(get, set) : StdTypes.Int;
    function get__lastCharLen():StdTypes.Int return this._lastCharLen;
    function set__lastCharLen(v:StdTypes.Int):StdTypes.Int {
        this._lastCharLen = v;
        return v;
    }
    public var _tokBuf(get, set) : stdgo._internal.bytes.Bytes.Buffer;
    function get__tokBuf():stdgo._internal.bytes.Bytes.Buffer return this._tokBuf;
    function set__tokBuf(v:stdgo._internal.bytes.Bytes.Buffer):stdgo._internal.bytes.Bytes.Buffer {
        this._tokBuf = v;
        return v;
    }
    public var _tokPos(get, set) : StdTypes.Int;
    function get__tokPos():StdTypes.Int return this._tokPos;
    function set__tokPos(v:StdTypes.Int):StdTypes.Int {
        this._tokPos = v;
        return v;
    }
    public var _tokEnd(get, set) : StdTypes.Int;
    function get__tokEnd():StdTypes.Int return this._tokEnd;
    function set__tokEnd(v:StdTypes.Int):StdTypes.Int {
        this._tokEnd = v;
        return v;
    }
    public var _ch(get, set) : StdTypes.Int;
    function get__ch():StdTypes.Int return this._ch;
    function set__ch(v:StdTypes.Int):StdTypes.Int {
        this._ch = v;
        return v;
    }
    public var error(get, set) : (stdgo.Ref<stdgo._internal.text.scanner.Scanner.Scanner>, stdgo.GoString) -> Void;
    function get_error():(stdgo.Ref<stdgo._internal.text.scanner.Scanner.Scanner>, stdgo.GoString) -> Void return (_0, _1) -> this.error(_0, _1);
    function set_error(v:(stdgo.Ref<stdgo._internal.text.scanner.Scanner.Scanner>, stdgo.GoString) -> Void):(stdgo.Ref<stdgo._internal.text.scanner.Scanner.Scanner>, stdgo.GoString) -> Void {
        this.error = v;
        return v;
    }
    public var errorCount(get, set) : StdTypes.Int;
    function get_errorCount():StdTypes.Int return this.errorCount;
    function set_errorCount(v:StdTypes.Int):StdTypes.Int {
        this.errorCount = v;
        return v;
    }
    public var mode(get, set) : std.UInt;
    function get_mode():std.UInt return this.mode;
    function set_mode(v:std.UInt):std.UInt {
        this.mode = v;
        return v;
    }
    public var whitespace(get, set) : haxe.UInt64;
    function get_whitespace():haxe.UInt64 return this.whitespace;
    function set_whitespace(v:haxe.UInt64):haxe.UInt64 {
        this.whitespace = v;
        return v;
    }
    public var isIdentRune(get, set) : (stdgo.GoInt32, stdgo.GoInt) -> Bool;
    function get_isIdentRune():(stdgo.GoInt32, stdgo.GoInt) -> Bool return (_0, _1) -> this.isIdentRune(_0, _1);
    function set_isIdentRune(v:(stdgo.GoInt32, stdgo.GoInt) -> Bool):(stdgo.GoInt32, stdgo.GoInt) -> Bool {
        this.isIdentRune = v;
        return v;
    }
    public var position(get, set) : stdgo._internal.text.scanner.Scanner.Position;
    function get_position():stdgo._internal.text.scanner.Scanner.Position return this.position;
    function set_position(v:stdgo._internal.text.scanner.Scanner.Position):stdgo._internal.text.scanner.Scanner.Position {
        this.position = v;
        return v;
    }
    public function new(?_src:stdgo._internal.io.Io.Reader, ?_srcBuf:haxe.ds.Vector<std.UInt>, ?_srcPos:StdTypes.Int, ?_srcEnd:StdTypes.Int, ?_srcBufOffset:StdTypes.Int, ?_line:StdTypes.Int, ?_column:StdTypes.Int, ?_lastLineLen:StdTypes.Int, ?_lastCharLen:StdTypes.Int, ?_tokBuf:stdgo._internal.bytes.Bytes.Buffer, ?_tokPos:StdTypes.Int, ?_tokEnd:StdTypes.Int, ?_ch:StdTypes.Int, ?error:(stdgo.Ref<stdgo._internal.text.scanner.Scanner.Scanner>, stdgo.GoString) -> Void, ?errorCount:StdTypes.Int, ?mode:std.UInt, ?whitespace:haxe.UInt64, ?isIdentRune:(stdgo.GoInt32, stdgo.GoInt) -> Bool, ?position:stdgo._internal.text.scanner.Scanner.Position) this = new stdgo._internal.text.scanner.Scanner.Scanner(
_src,
([for (i in _srcBuf) i] : stdgo.GoArray<stdgo.GoUInt8>),
_srcPos,
_srcEnd,
_srcBufOffset,
_line,
_column,
_lastLineLen,
_lastCharLen,
_tokBuf,
_tokPos,
_tokEnd,
_ch,
error,
errorCount,
mode,
whitespace,
isIdentRune,
position);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.scanner.Scanner.StringReader_static_extension) abstract StringReader(stdgo._internal.text.scanner.Scanner.StringReader) from stdgo._internal.text.scanner.Scanner.StringReader to stdgo._internal.text.scanner.Scanner.StringReader {
    public var _data(get, set) : Array<String>;
    function get__data():Array<String> return [for (i in this._data) i];
    function set__data(v:Array<String>):Array<String> {
        this._data = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _step(get, set) : StdTypes.Int;
    function get__step():StdTypes.Int return this._step;
    function set__step(v:StdTypes.Int):StdTypes.Int {
        this._step = v;
        return v;
    }
    public function new(?_data:Array<String>, ?_step:StdTypes.Int) this = new stdgo._internal.text.scanner.Scanner.StringReader(([for (i in _data) i] : stdgo.Slice<stdgo.GoString>), _step);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_token(stdgo._internal.text.scanner.Scanner.T_token) from stdgo._internal.text.scanner.Scanner.T_token to stdgo._internal.text.scanner.Scanner.T_token {
    public var _tok(get, set) : StdTypes.Int;
    function get__tok():StdTypes.Int return this._tok;
    function set__tok(v:StdTypes.Int):StdTypes.Int {
        this._tok = v;
        return v;
    }
    public var _text(get, set) : String;
    function get__text():String return this._text;
    function set__text(v:String):String {
        this._text = v;
        return v;
    }
    public function new(?_tok:StdTypes.Int, ?_text:String) this = new stdgo._internal.text.scanner.Scanner.T_token(_tok, _text);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.text.scanner.Scanner.T_errReader_static_extension) abstract T_errReader(stdgo._internal.text.scanner.Scanner.T_errReader) from stdgo._internal.text.scanner.Scanner.T_errReader to stdgo._internal.text.scanner.Scanner.T_errReader {
    public function new() this = new stdgo._internal.text.scanner.Scanner.T_errReader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.text.scanner.Scanner.T__struct_0;
class T__struct_1_static_extension {

}
typedef T__struct_1 = stdgo._internal.text.scanner.Scanner.T__struct_1;
typedef T_countReader = stdgo._internal.text.scanner.Scanner.T_countReader;
class Position_static_extension {
    static public function string(_pos:Position):String {
        return stdgo._internal.text.scanner.Scanner.Position_static_extension.string(_pos);
    }
    static public function isValid(_pos:Position):Bool {
        return stdgo._internal.text.scanner.Scanner.Position_static_extension.isValid(_pos);
    }
}
class Scanner__static_extension {
    static public function tokenText(_s:Scanner_):String {
        return stdgo._internal.text.scanner.Scanner.Scanner_static_extension.tokenText(_s);
    }
    static public function pos(_s:Scanner_):Position {
        return stdgo._internal.text.scanner.Scanner.Scanner_static_extension.pos(_s);
    }
    static public function scan(_s:Scanner_):StdTypes.Int {
        return stdgo._internal.text.scanner.Scanner.Scanner_static_extension.scan(_s);
    }
    static public function _scanComment(_s:Scanner_, _ch:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.text.scanner.Scanner.Scanner_static_extension._scanComment(_s, _ch);
    }
    static public function _scanChar(_s:Scanner_):Void {
        stdgo._internal.text.scanner.Scanner.Scanner_static_extension._scanChar(_s);
    }
    static public function _scanRawString(_s:Scanner_):Void {
        stdgo._internal.text.scanner.Scanner.Scanner_static_extension._scanRawString(_s);
    }
    static public function _scanString(_s:Scanner_, _quote:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.text.scanner.Scanner.Scanner_static_extension._scanString(_s, _quote);
    }
    static public function _scanEscape(_s:Scanner_, _quote:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.text.scanner.Scanner.Scanner_static_extension._scanEscape(_s, _quote);
    }
    static public function _scanDigits(_s:Scanner_, _ch:StdTypes.Int, _base:StdTypes.Int, _n:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.text.scanner.Scanner.Scanner_static_extension._scanDigits(_s, _ch, _base, _n);
    }
    static public function _scanNumber(_s:Scanner_, _ch:StdTypes.Int, _seenDot:Bool):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        return {
            final obj = stdgo._internal.text.scanner.Scanner.Scanner_static_extension._scanNumber(_s, _ch, _seenDot);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _digits(_s:Scanner_, _ch0:StdTypes.Int, _base:StdTypes.Int, _invalid:stdgo.Pointer<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        return {
            final obj = stdgo._internal.text.scanner.Scanner.Scanner_static_extension._digits(_s, _ch0, _base, _invalid);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _scanIdentifier(_s:Scanner_):StdTypes.Int {
        return stdgo._internal.text.scanner.Scanner.Scanner_static_extension._scanIdentifier(_s);
    }
    static public function _isIdentRune(_s:Scanner_, _ch:StdTypes.Int, _i:StdTypes.Int):Bool {
        return stdgo._internal.text.scanner.Scanner.Scanner_static_extension._isIdentRune(_s, _ch, _i);
    }
    static public function _errorf(_s:Scanner_, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.text.scanner.Scanner.Scanner_static_extension._errorf(_s, _format, ...[for (i in _args) i]);
    }
    static public function _error(_s:Scanner_, _msg:String):Void {
        stdgo._internal.text.scanner.Scanner.Scanner_static_extension._error(_s, _msg);
    }
    static public function peek(_s:Scanner_):StdTypes.Int {
        return stdgo._internal.text.scanner.Scanner.Scanner_static_extension.peek(_s);
    }
    static public function next(_s:Scanner_):StdTypes.Int {
        return stdgo._internal.text.scanner.Scanner.Scanner_static_extension.next(_s);
    }
    static public function _next(_s:Scanner_):StdTypes.Int {
        return stdgo._internal.text.scanner.Scanner.Scanner_static_extension._next(_s);
    }
    static public function init(_s:Scanner_, _src:stdgo._internal.io.Io.Reader):Scanner_ {
        return stdgo._internal.text.scanner.Scanner.Scanner_static_extension.init(_s, _src);
    }
    public static function string(__self__:Scanner_):String {
        return stdgo._internal.text.scanner.Scanner.Scanner_static_extension.string(__self__);
    }
    public static function isValid(__self__:Scanner_):Bool {
        return stdgo._internal.text.scanner.Scanner.Scanner_static_extension.isValid(__self__);
    }
}
class StringReader_static_extension {
    static public function read(_r:StringReader, _p:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.text.scanner.Scanner.StringReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_errReader_static_extension {
    static public function read(_:T_errReader, _b:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.text.scanner.Scanner.T_errReader_static_extension.read(_, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_countReader_static_extension {
    static public function read(____:T_countReader, _r:stdgo.Pointer<T_countReader>, _0:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.text.scanner.Scanner.T_countReader_static_extension.read(____, _r, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
/**
    Package scanner provides a scanner and tokenizer for UTF-8-encoded text.
    It takes an io.Reader providing the source, which then can be tokenized
    through repeated calls to the Scan function. For compatibility with
    existing tools, the NUL character is not allowed. If the first character
    in the source is a UTF-8 encoded byte order mark (BOM), it is discarded.
    
    By default, a Scanner skips white space and Go comments and recognizes all
    literals as defined by the Go language specification. It may be
    customized to recognize only a subset of those literals and to recognize
    different identifier and white space characters.
**/
class Scanner {
    /**
        TokenString returns a printable string for a token or Unicode character.
    **/
    static public function tokenString(_tok:StdTypes.Int):String {
        return stdgo._internal.text.scanner.Scanner.tokenString(_tok);
    }
    static public function testNext(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.scanner.Scanner.testNext(_t);
    }
    static public function testScan(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.scanner.Scanner.testScan(_t);
    }
    static public function testInvalidExponent(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.scanner.Scanner.testInvalidExponent(_t);
    }
    static public function testPosition(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.scanner.Scanner.testPosition(_t);
    }
    static public function testScanZeroMode(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.scanner.Scanner.testScanZeroMode(_t);
    }
    static public function testScanSelectedMask(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.scanner.Scanner.testScanSelectedMask(_t);
    }
    static public function testScanCustomIdent(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.scanner.Scanner.testScanCustomIdent(_t);
    }
    static public function testScanNext(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.scanner.Scanner.testScanNext(_t);
    }
    static public function testScanWhitespace(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.scanner.Scanner.testScanWhitespace(_t);
    }
    static public function testError(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.scanner.Scanner.testError(_t);
    }
    static public function testIOError(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.scanner.Scanner.testIOError(_t);
    }
    static public function testPos(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.scanner.Scanner.testPos(_t);
    }
    static public function testNextEOFHandling(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.scanner.Scanner.testNextEOFHandling(_t);
    }
    static public function testScanEOFHandling(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.scanner.Scanner.testScanEOFHandling(_t);
    }
    static public function testIssue29723(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.scanner.Scanner.testIssue29723(_t);
    }
    static public function testNumbers(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.scanner.Scanner.testNumbers(_t);
    }
    static public function testIssue30320(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.scanner.Scanner.testIssue30320(_t);
    }
    static public function testIssue50909(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.scanner.Scanner.testIssue50909(_t);
    }
}
