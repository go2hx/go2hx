package stdgo;
final scanIdents : haxe.UInt64 = stdgo._internal.text.scanner.Scanner_scanidents.scanIdents;
final scanInts : haxe.UInt64 = stdgo._internal.text.scanner.Scanner_scanints.scanInts;
final scanFloats : haxe.UInt64 = stdgo._internal.text.scanner.Scanner_scanfloats.scanFloats;
final scanChars : haxe.UInt64 = stdgo._internal.text.scanner.Scanner_scanchars.scanChars;
final scanStrings : haxe.UInt64 = stdgo._internal.text.scanner.Scanner_scanstrings.scanStrings;
final scanRawStrings : haxe.UInt64 = stdgo._internal.text.scanner.Scanner_scanrawstrings.scanRawStrings;
final scanComments : haxe.UInt64 = stdgo._internal.text.scanner.Scanner_scancomments.scanComments;
final skipComments : haxe.UInt64 = stdgo._internal.text.scanner.Scanner_skipcomments.skipComments;
final goTokens : haxe.UInt64 = stdgo._internal.text.scanner.Scanner_gotokens.goTokens;
final eOF : haxe.UInt64 = stdgo._internal.text.scanner.Scanner_eof.eOF;
final ident = stdgo._internal.text.scanner.Scanner_ident.ident;
final int_ = stdgo._internal.text.scanner.Scanner_int_.int_;
final float_ = stdgo._internal.text.scanner.Scanner_float_.float_;
final char = stdgo._internal.text.scanner.Scanner_char.char;
final string = stdgo._internal.text.scanner.Scanner_string.string;
final rawString = stdgo._internal.text.scanner.Scanner_rawstring.rawString;
final comment = stdgo._internal.text.scanner.Scanner_comment.comment;
final goWhitespace : haxe.UInt64 = stdgo._internal.text.scanner.Scanner_gowhitespace.goWhitespace;
@:structInit @:using(stdgo.text.scanner.Scanner.Position_static_extension) abstract Position(stdgo._internal.text.scanner.Scanner_position.Position) from stdgo._internal.text.scanner.Scanner_position.Position to stdgo._internal.text.scanner.Scanner_position.Position {
    public var filename(get, set) : String;
    function get_filename():String return this.filename;
    function set_filename(v:String):String {
        this.filename = (v : stdgo.GoString);
        return v;
    }
    public var offset(get, set) : StdTypes.Int;
    function get_offset():StdTypes.Int return this.offset;
    function set_offset(v:StdTypes.Int):StdTypes.Int {
        this.offset = (v : stdgo.GoInt);
        return v;
    }
    public var line(get, set) : StdTypes.Int;
    function get_line():StdTypes.Int return this.line;
    function set_line(v:StdTypes.Int):StdTypes.Int {
        this.line = (v : stdgo.GoInt);
        return v;
    }
    public var column(get, set) : StdTypes.Int;
    function get_column():StdTypes.Int return this.column;
    function set_column(v:StdTypes.Int):StdTypes.Int {
        this.column = (v : stdgo.GoInt);
        return v;
    }
    public function new(?filename:String, ?offset:StdTypes.Int, ?line:StdTypes.Int, ?column:StdTypes.Int) this = new stdgo._internal.text.scanner.Scanner_position.Position((filename : stdgo.GoString), (offset : stdgo.GoInt), (line : stdgo.GoInt), (column : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.scanner.Scanner.Scanner_static_extension) abstract Scanner_(stdgo._internal.text.scanner.Scanner_scanner.Scanner) from stdgo._internal.text.scanner.Scanner_scanner.Scanner to stdgo._internal.text.scanner.Scanner_scanner.Scanner {
    public var _src(get, set) : stdgo._internal.io.Io_reader.Reader;
    function get__src():stdgo._internal.io.Io_reader.Reader return this._src;
    function set__src(v:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        this._src = v;
        return v;
    }
    public var _srcBuf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__srcBuf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._srcBuf) i]);
    function set__srcBuf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._srcBuf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _srcPos(get, set) : StdTypes.Int;
    function get__srcPos():StdTypes.Int return this._srcPos;
    function set__srcPos(v:StdTypes.Int):StdTypes.Int {
        this._srcPos = (v : stdgo.GoInt);
        return v;
    }
    public var _srcEnd(get, set) : StdTypes.Int;
    function get__srcEnd():StdTypes.Int return this._srcEnd;
    function set__srcEnd(v:StdTypes.Int):StdTypes.Int {
        this._srcEnd = (v : stdgo.GoInt);
        return v;
    }
    public var _srcBufOffset(get, set) : StdTypes.Int;
    function get__srcBufOffset():StdTypes.Int return this._srcBufOffset;
    function set__srcBufOffset(v:StdTypes.Int):StdTypes.Int {
        this._srcBufOffset = (v : stdgo.GoInt);
        return v;
    }
    public var _line(get, set) : StdTypes.Int;
    function get__line():StdTypes.Int return this._line;
    function set__line(v:StdTypes.Int):StdTypes.Int {
        this._line = (v : stdgo.GoInt);
        return v;
    }
    public var _column(get, set) : StdTypes.Int;
    function get__column():StdTypes.Int return this._column;
    function set__column(v:StdTypes.Int):StdTypes.Int {
        this._column = (v : stdgo.GoInt);
        return v;
    }
    public var _lastLineLen(get, set) : StdTypes.Int;
    function get__lastLineLen():StdTypes.Int return this._lastLineLen;
    function set__lastLineLen(v:StdTypes.Int):StdTypes.Int {
        this._lastLineLen = (v : stdgo.GoInt);
        return v;
    }
    public var _lastCharLen(get, set) : StdTypes.Int;
    function get__lastCharLen():StdTypes.Int return this._lastCharLen;
    function set__lastCharLen(v:StdTypes.Int):StdTypes.Int {
        this._lastCharLen = (v : stdgo.GoInt);
        return v;
    }
    public var _tokBuf(get, set) : stdgo._internal.bytes.Bytes_buffer.Buffer;
    function get__tokBuf():stdgo._internal.bytes.Bytes_buffer.Buffer return this._tokBuf;
    function set__tokBuf(v:stdgo._internal.bytes.Bytes_buffer.Buffer):stdgo._internal.bytes.Bytes_buffer.Buffer {
        this._tokBuf = v;
        return v;
    }
    public var _tokPos(get, set) : StdTypes.Int;
    function get__tokPos():StdTypes.Int return this._tokPos;
    function set__tokPos(v:StdTypes.Int):StdTypes.Int {
        this._tokPos = (v : stdgo.GoInt);
        return v;
    }
    public var _tokEnd(get, set) : StdTypes.Int;
    function get__tokEnd():StdTypes.Int return this._tokEnd;
    function set__tokEnd(v:StdTypes.Int):StdTypes.Int {
        this._tokEnd = (v : stdgo.GoInt);
        return v;
    }
    public var _ch(get, set) : StdTypes.Int;
    function get__ch():StdTypes.Int return this._ch;
    function set__ch(v:StdTypes.Int):StdTypes.Int {
        this._ch = (v : stdgo.GoInt32);
        return v;
    }
    public var error(get, set) : (Scanner_, String) -> Void;
    function get_error():(Scanner_, String) -> Void return (_0, _1) -> this.error(_0, _1);
    function set_error(v:(Scanner_, String) -> Void):(Scanner_, String) -> Void {
        this.error = v;
        return v;
    }
    public var errorCount(get, set) : StdTypes.Int;
    function get_errorCount():StdTypes.Int return this.errorCount;
    function set_errorCount(v:StdTypes.Int):StdTypes.Int {
        this.errorCount = (v : stdgo.GoInt);
        return v;
    }
    public var mode(get, set) : std.UInt;
    function get_mode():std.UInt return this.mode;
    function set_mode(v:std.UInt):std.UInt {
        this.mode = (v : stdgo.GoUInt);
        return v;
    }
    public var whitespace(get, set) : haxe.UInt64;
    function get_whitespace():haxe.UInt64 return this.whitespace;
    function set_whitespace(v:haxe.UInt64):haxe.UInt64 {
        this.whitespace = (v : stdgo.GoUInt64);
        return v;
    }
    public var isIdentRune(get, set) : (StdTypes.Int, StdTypes.Int) -> Bool;
    function get_isIdentRune():(StdTypes.Int, StdTypes.Int) -> Bool return (_0, _1) -> this.isIdentRune(_0, _1);
    function set_isIdentRune(v:(StdTypes.Int, StdTypes.Int) -> Bool):(StdTypes.Int, StdTypes.Int) -> Bool {
        this.isIdentRune = v;
        return v;
    }
    public var position(get, set) : Position;
    function get_position():Position return this.position;
    function set_position(v:Position):Position {
        this.position = v;
        return v;
    }
    public function new(?_src:stdgo._internal.io.Io_reader.Reader, ?_srcBuf:haxe.ds.Vector<std.UInt>, ?_srcPos:StdTypes.Int, ?_srcEnd:StdTypes.Int, ?_srcBufOffset:StdTypes.Int, ?_line:StdTypes.Int, ?_column:StdTypes.Int, ?_lastLineLen:StdTypes.Int, ?_lastCharLen:StdTypes.Int, ?_tokBuf:stdgo._internal.bytes.Bytes_buffer.Buffer, ?_tokPos:StdTypes.Int, ?_tokEnd:StdTypes.Int, ?_ch:StdTypes.Int, ?error:(Scanner_, String) -> Void, ?errorCount:StdTypes.Int, ?mode:std.UInt, ?whitespace:haxe.UInt64, ?isIdentRune:(StdTypes.Int, StdTypes.Int) -> Bool, ?position:Position) this = new stdgo._internal.text.scanner.Scanner_scanner.Scanner(
_src,
([for (i in _srcBuf) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>),
(_srcPos : stdgo.GoInt),
(_srcEnd : stdgo.GoInt),
(_srcBufOffset : stdgo.GoInt),
(_line : stdgo.GoInt),
(_column : stdgo.GoInt),
(_lastLineLen : stdgo.GoInt),
(_lastCharLen : stdgo.GoInt),
_tokBuf,
(_tokPos : stdgo.GoInt),
(_tokEnd : stdgo.GoInt),
(_ch : stdgo.GoInt32),
error,
(errorCount : stdgo.GoInt),
(mode : stdgo.GoUInt),
(whitespace : stdgo.GoUInt64),
isIdentRune,
position);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.scanner.Scanner.StringReader_static_extension) abstract StringReader(stdgo._internal.text.scanner.Scanner_stringreader.StringReader) from stdgo._internal.text.scanner.Scanner_stringreader.StringReader to stdgo._internal.text.scanner.Scanner_stringreader.StringReader {
    public var _data(get, set) : Array<String>;
    function get__data():Array<String> return [for (i in this._data) i];
    function set__data(v:Array<String>):Array<String> {
        this._data = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _step(get, set) : StdTypes.Int;
    function get__step():StdTypes.Int return this._step;
    function set__step(v:StdTypes.Int):StdTypes.Int {
        this._step = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_data:Array<String>, ?_step:StdTypes.Int) this = new stdgo._internal.text.scanner.Scanner_stringreader.StringReader(([for (i in _data) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), (_step : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.scanner.Scanner.T_token_static_extension) @:dox(hide) abstract T_token(stdgo._internal.text.scanner.Scanner_t_token.T_token) from stdgo._internal.text.scanner.Scanner_t_token.T_token to stdgo._internal.text.scanner.Scanner_t_token.T_token {
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
    public function new(?_tok:StdTypes.Int, ?_text:String) this = new stdgo._internal.text.scanner.Scanner_t_token.T_token((_tok : stdgo.GoInt32), (_text : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.scanner.Scanner.T_errReader_static_extension) @:dox(hide) abstract T_errReader(stdgo._internal.text.scanner.Scanner_t_errreader.T_errReader) from stdgo._internal.text.scanner.Scanner_t_errreader.T_errReader to stdgo._internal.text.scanner.Scanner_t_errreader.T_errReader {
    public function new() this = new stdgo._internal.text.scanner.Scanner_t_errreader.T_errReader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.text.scanner.Scanner_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {

}
@:dox(hide) typedef T__struct_0 = stdgo._internal.text.scanner.Scanner_t__struct_0.T__struct_0;
@:dox(hide) typedef T__struct_1Pointer = stdgo._internal.text.scanner.Scanner_t__struct_1pointer.T__struct_1Pointer;
@:dox(hide) class T__struct_1_static_extension {

}
@:dox(hide) typedef T__struct_1 = stdgo._internal.text.scanner.Scanner_t__struct_1.T__struct_1;
@:dox(hide) typedef T_countReader = stdgo._internal.text.scanner.Scanner_t_countreader.T_countReader;
typedef PositionPointer = stdgo._internal.text.scanner.Scanner_positionpointer.PositionPointer;
class Position_static_extension {
    static public function string(_pos:Position):String {
        return stdgo._internal.text.scanner.Scanner_position_static_extension.Position_static_extension.string(_pos);
    }
    static public function isValid(_pos:Position):Bool {
        final _pos = (_pos : stdgo.Ref<stdgo._internal.text.scanner.Scanner_position.Position>);
        return stdgo._internal.text.scanner.Scanner_position_static_extension.Position_static_extension.isValid(_pos);
    }
}
typedef ScannerPointer = stdgo._internal.text.scanner.Scanner_scannerpointer.ScannerPointer;
class Scanner_static_extension {
    static public function tokenText(_s:Scanner_):String {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>);
        return stdgo._internal.text.scanner.Scanner_scanner_static_extension.Scanner_static_extension.tokenText(_s);
    }
    static public function pos(_s:Scanner_):Position {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>);
        return stdgo._internal.text.scanner.Scanner_scanner_static_extension.Scanner_static_extension.pos(_s);
    }
    static public function scan(_s:Scanner_):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>);
        return stdgo._internal.text.scanner.Scanner_scanner_static_extension.Scanner_static_extension.scan(_s);
    }
    static public function _scanComment(_s:Scanner_, _ch:StdTypes.Int):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>);
        final _ch = (_ch : stdgo.GoInt32);
        return stdgo._internal.text.scanner.Scanner_scanner_static_extension.Scanner_static_extension._scanComment(_s, _ch);
    }
    static public function _scanChar(_s:Scanner_):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>);
        stdgo._internal.text.scanner.Scanner_scanner_static_extension.Scanner_static_extension._scanChar(_s);
    }
    static public function _scanRawString(_s:Scanner_):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>);
        stdgo._internal.text.scanner.Scanner_scanner_static_extension.Scanner_static_extension._scanRawString(_s);
    }
    static public function _scanString(_s:Scanner_, _quote:StdTypes.Int):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>);
        final _quote = (_quote : stdgo.GoInt32);
        return stdgo._internal.text.scanner.Scanner_scanner_static_extension.Scanner_static_extension._scanString(_s, _quote);
    }
    static public function _scanEscape(_s:Scanner_, _quote:StdTypes.Int):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>);
        final _quote = (_quote : stdgo.GoInt32);
        return stdgo._internal.text.scanner.Scanner_scanner_static_extension.Scanner_static_extension._scanEscape(_s, _quote);
    }
    static public function _scanDigits(_s:Scanner_, _ch:StdTypes.Int, _base:StdTypes.Int, _n:StdTypes.Int):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>);
        final _ch = (_ch : stdgo.GoInt32);
        final _base = (_base : stdgo.GoInt);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.text.scanner.Scanner_scanner_static_extension.Scanner_static_extension._scanDigits(_s, _ch, _base, _n);
    }
    static public function _scanNumber(_s:Scanner_, _ch:StdTypes.Int, _seenDot:Bool):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>);
        final _ch = (_ch : stdgo.GoInt32);
        return {
            final obj = stdgo._internal.text.scanner.Scanner_scanner_static_extension.Scanner_static_extension._scanNumber(_s, _ch, _seenDot);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _digits(_s:Scanner_, _ch0:StdTypes.Int, _base:StdTypes.Int, _invalid:stdgo.Pointer<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>);
        final _ch0 = (_ch0 : stdgo.GoInt32);
        final _base = (_base : stdgo.GoInt);
        return {
            final obj = stdgo._internal.text.scanner.Scanner_scanner_static_extension.Scanner_static_extension._digits(_s, _ch0, _base, _invalid);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _scanIdentifier(_s:Scanner_):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>);
        return stdgo._internal.text.scanner.Scanner_scanner_static_extension.Scanner_static_extension._scanIdentifier(_s);
    }
    static public function _isIdentRune(_s:Scanner_, _ch:StdTypes.Int, _i:StdTypes.Int):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>);
        final _ch = (_ch : stdgo.GoInt32);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.text.scanner.Scanner_scanner_static_extension.Scanner_static_extension._isIdentRune(_s, _ch, _i);
    }
    static public function _errorf(_s:Scanner_, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.text.scanner.Scanner_scanner_static_extension.Scanner_static_extension._errorf(_s, _format, ...[for (i in _args) i]);
    }
    static public function _error(_s:Scanner_, _msg:String):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>);
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.text.scanner.Scanner_scanner_static_extension.Scanner_static_extension._error(_s, _msg);
    }
    static public function peek(_s:Scanner_):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>);
        return stdgo._internal.text.scanner.Scanner_scanner_static_extension.Scanner_static_extension.peek(_s);
    }
    static public function next(_s:Scanner_):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>);
        return stdgo._internal.text.scanner.Scanner_scanner_static_extension.Scanner_static_extension.next(_s);
    }
    static public function _next(_s:Scanner_):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>);
        return stdgo._internal.text.scanner.Scanner_scanner_static_extension.Scanner_static_extension._next(_s);
    }
    static public function init(_s:Scanner_, _src:stdgo._internal.io.Io_reader.Reader):Scanner_ {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>);
        return stdgo._internal.text.scanner.Scanner_scanner_static_extension.Scanner_static_extension.init(_s, _src);
    }
    public static function string(__self__:stdgo._internal.text.scanner.Scanner_scanner.Scanner):String {
        return stdgo._internal.text.scanner.Scanner_scanner_static_extension.Scanner_static_extension.string(__self__);
    }
    public static function isValid(__self__:stdgo._internal.text.scanner.Scanner_scanner.Scanner):Bool {
        return stdgo._internal.text.scanner.Scanner_scanner_static_extension.Scanner_static_extension.isValid(__self__);
    }
}
typedef StringReaderPointer = stdgo._internal.text.scanner.Scanner_stringreaderpointer.StringReaderPointer;
class StringReader_static_extension {
    static public function read(_r:StringReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.text.scanner.Scanner_stringreader.StringReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.text.scanner.Scanner_stringreader_static_extension.StringReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_tokenPointer = stdgo._internal.text.scanner.Scanner_t_tokenpointer.T_tokenPointer;
@:dox(hide) class T_token_static_extension {

}
@:dox(hide) typedef T_errReaderPointer = stdgo._internal.text.scanner.Scanner_t_errreaderpointer.T_errReaderPointer;
@:dox(hide) class T_errReader_static_extension {
    static public function read(_:T_errReader, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.text.scanner.Scanner_t_errreader_static_extension.T_errReader_static_extension.read(_, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.text.scanner.Scanner_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
@:dox(hide) typedef T__struct_1PointerPointer = stdgo._internal.text.scanner.Scanner_t__struct_1pointerpointer.T__struct_1PointerPointer;
@:dox(hide) class T__struct_1Pointer_static_extension {

}
@:dox(hide) typedef T_countReaderPointer = stdgo._internal.text.scanner.Scanner_t_countreaderpointer.T_countReaderPointer;
@:dox(hide) class T_countReader_static_extension {
    static public function read(_r:stdgo.Pointer<T_countReader>, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.text.scanner.Scanner_t_countreader_static_extension.T_countReader_static_extension.read(_r, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
/**
    * Package scanner provides a scanner and tokenizer for UTF-8-encoded text.
    * It takes an io.Reader providing the source, which then can be tokenized
    * through repeated calls to the Scan function. For compatibility with
    * existing tools, the NUL character is not allowed. If the first character
    * in the source is a UTF-8 encoded byte order mark (BOM), it is discarded.
    * 
    * By default, a Scanner skips white space and Go comments and recognizes all
    * literals as defined by the Go language specification. It may be
    * customized to recognize only a subset of those literals and to recognize
    * different identifier and white space characters.
**/
class Scanner {
    /**
        * TokenString returns a printable string for a token or Unicode character.
    **/
    static public inline function tokenString(_tok:StdTypes.Int):String {
        final _tok = (_tok : stdgo.GoInt32);
        return stdgo._internal.text.scanner.Scanner_tokenstring.tokenString(_tok);
    }
    static public inline function testNext(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.scanner.Scanner_testnext.testNext(_t);
    }
    static public inline function testScan(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.scanner.Scanner_testscan.testScan(_t);
    }
    static public inline function testInvalidExponent(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.scanner.Scanner_testinvalidexponent.testInvalidExponent(_t);
    }
    static public inline function testPosition(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.scanner.Scanner_testposition.testPosition(_t);
    }
    static public inline function testScanZeroMode(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.scanner.Scanner_testscanzeromode.testScanZeroMode(_t);
    }
    static public inline function testScanSelectedMask(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.scanner.Scanner_testscanselectedmask.testScanSelectedMask(_t);
    }
    static public inline function testScanCustomIdent(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.scanner.Scanner_testscancustomident.testScanCustomIdent(_t);
    }
    static public inline function testScanNext(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.scanner.Scanner_testscannext.testScanNext(_t);
    }
    static public inline function testScanWhitespace(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.scanner.Scanner_testscanwhitespace.testScanWhitespace(_t);
    }
    static public inline function testError(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.scanner.Scanner_testerror.testError(_t);
    }
    static public inline function testIOError(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.scanner.Scanner_testioerror.testIOError(_t);
    }
    static public inline function testPos(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.scanner.Scanner_testpos.testPos(_t);
    }
    static public inline function testNextEOFHandling(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.scanner.Scanner_testnexteofhandling.testNextEOFHandling(_t);
    }
    static public inline function testScanEOFHandling(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.scanner.Scanner_testscaneofhandling.testScanEOFHandling(_t);
    }
    static public inline function testIssue29723(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.scanner.Scanner_testissue29723.testIssue29723(_t);
    }
    static public inline function testNumbers(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.scanner.Scanner_testnumbers.testNumbers(_t);
    }
    static public inline function testIssue30320(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.scanner.Scanner_testissue30320.testIssue30320(_t);
    }
    static public inline function testIssue50909(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.text.scanner.Scanner_testissue50909.testIssue50909(_t);
    }
}
