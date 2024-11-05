package stdgo.text.scanner;
final scanIdents : haxe.UInt64 = stdgo._internal.text.scanner.Scanner_scanIdents.scanIdents;
final scanInts : haxe.UInt64 = stdgo._internal.text.scanner.Scanner_scanInts.scanInts;
final scanFloats : haxe.UInt64 = stdgo._internal.text.scanner.Scanner_scanFloats.scanFloats;
final scanChars : haxe.UInt64 = stdgo._internal.text.scanner.Scanner_scanChars.scanChars;
final scanStrings : haxe.UInt64 = stdgo._internal.text.scanner.Scanner_scanStrings.scanStrings;
final scanRawStrings : haxe.UInt64 = stdgo._internal.text.scanner.Scanner_scanRawStrings.scanRawStrings;
final scanComments : haxe.UInt64 = stdgo._internal.text.scanner.Scanner_scanComments.scanComments;
final skipComments : haxe.UInt64 = stdgo._internal.text.scanner.Scanner_skipComments.skipComments;
final goTokens : haxe.UInt64 = stdgo._internal.text.scanner.Scanner_goTokens.goTokens;
final eof : haxe.UInt64 = stdgo._internal.text.scanner.Scanner_eof.eof;
final ident = stdgo._internal.text.scanner.Scanner_ident.ident;
final int_ = stdgo._internal.text.scanner.Scanner_int_.int_;
final float_ = stdgo._internal.text.scanner.Scanner_float_.float_;
final char = stdgo._internal.text.scanner.Scanner_char.char;
final string = stdgo._internal.text.scanner.Scanner_string.string;
final rawString = stdgo._internal.text.scanner.Scanner_rawString.rawString;
final comment = stdgo._internal.text.scanner.Scanner_comment.comment;
final goWhitespace : haxe.UInt64 = stdgo._internal.text.scanner.Scanner_goWhitespace.goWhitespace;
@:structInit @:using(stdgo.text.scanner.Scanner.Position_static_extension) abstract Position(stdgo._internal.text.scanner.Scanner_Position.Position) from stdgo._internal.text.scanner.Scanner_Position.Position to stdgo._internal.text.scanner.Scanner_Position.Position {
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
    public function new(?filename:String, ?offset:StdTypes.Int, ?line:StdTypes.Int, ?column:StdTypes.Int) this = new stdgo._internal.text.scanner.Scanner_Position.Position(filename, offset, line, column);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.scanner.Scanner.Scanner_static_extension) abstract Scanner_(stdgo._internal.text.scanner.Scanner_Scanner.Scanner) from stdgo._internal.text.scanner.Scanner_Scanner.Scanner to stdgo._internal.text.scanner.Scanner_Scanner.Scanner {
    public var _src(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get__src():stdgo._internal.io.Io_Reader.Reader return this._src;
    function set__src(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
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
    public var _tokBuf(get, set) : stdgo._internal.bytes.Bytes_Buffer.Buffer;
    function get__tokBuf():stdgo._internal.bytes.Bytes_Buffer.Buffer return this._tokBuf;
    function set__tokBuf(v:stdgo._internal.bytes.Bytes_Buffer.Buffer):stdgo._internal.bytes.Bytes_Buffer.Buffer {
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
    public var error(get, set) : (stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>, stdgo.GoString) -> Void;
    function get_error():(stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>, stdgo.GoString) -> Void return (_0, _1) -> this.error(_0, _1);
    function set_error(v:(stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>, stdgo.GoString) -> Void):(stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>, stdgo.GoString) -> Void {
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
    public var position(get, set) : Position;
    function get_position():Position return this.position;
    function set_position(v:Position):Position {
        this.position = v;
        return v;
    }
    public function new(?_src:stdgo._internal.io.Io_Reader.Reader, ?_srcBuf:haxe.ds.Vector<std.UInt>, ?_srcPos:StdTypes.Int, ?_srcEnd:StdTypes.Int, ?_srcBufOffset:StdTypes.Int, ?_line:StdTypes.Int, ?_column:StdTypes.Int, ?_lastLineLen:StdTypes.Int, ?_lastCharLen:StdTypes.Int, ?_tokBuf:stdgo._internal.bytes.Bytes_Buffer.Buffer, ?_tokPos:StdTypes.Int, ?_tokEnd:StdTypes.Int, ?_ch:StdTypes.Int, ?error:(stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>, stdgo.GoString) -> Void, ?errorCount:StdTypes.Int, ?mode:std.UInt, ?whitespace:haxe.UInt64, ?isIdentRune:(stdgo.GoInt32, stdgo.GoInt) -> Bool, ?position:Position) this = new stdgo._internal.text.scanner.Scanner_Scanner.Scanner(
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
@:structInit @:using(stdgo.text.scanner.Scanner.StringReader_static_extension) abstract StringReader(stdgo._internal.text.scanner.Scanner_StringReader.StringReader) from stdgo._internal.text.scanner.Scanner_StringReader.StringReader to stdgo._internal.text.scanner.Scanner_StringReader.StringReader {
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
    public function new(?_data:Array<String>, ?_step:StdTypes.Int) this = new stdgo._internal.text.scanner.Scanner_StringReader.StringReader(([for (i in _data) i] : stdgo.Slice<stdgo.GoString>), _step);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_token(stdgo._internal.text.scanner.Scanner_T_token.T_token) from stdgo._internal.text.scanner.Scanner_T_token.T_token to stdgo._internal.text.scanner.Scanner_T_token.T_token {
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
    public function new(?_tok:StdTypes.Int, ?_text:String) this = new stdgo._internal.text.scanner.Scanner_T_token.T_token(_tok, _text);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.scanner.Scanner.T_errReader_static_extension) abstract T_errReader(stdgo._internal.text.scanner.Scanner_T_errReader.T_errReader) from stdgo._internal.text.scanner.Scanner_T_errReader.T_errReader to stdgo._internal.text.scanner.Scanner_T_errReader.T_errReader {
    public function new() this = new stdgo._internal.text.scanner.Scanner_T_errReader.T_errReader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.text.scanner.Scanner_T__struct_0.T__struct_0;
class T__struct_1_static_extension {

}
typedef T__struct_1 = stdgo._internal.text.scanner.Scanner_T__struct_1.T__struct_1;
typedef T_countReader = stdgo._internal.text.scanner.Scanner_T_countReader.T_countReader;
class Position_static_extension {
    static public function string(_pos:Position):String {
        return stdgo._internal.text.scanner.Scanner_Position_static_extension.Position_static_extension.string(_pos);
    }
    static public function isValid(_pos:Position):Bool {
        return stdgo._internal.text.scanner.Scanner_Position_static_extension.Position_static_extension.isValid(_pos);
    }
}
class Scanner_static_extension {
    static public function tokenText(_s:Scanner_):String {
        return stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension.tokenText(_s);
    }
    static public function pos(_s:Scanner_):Position {
        return stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension.pos(_s);
    }
    static public function scan(_s:Scanner_):StdTypes.Int {
        return stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension.scan(_s);
    }
    static public function _scanComment(_s:Scanner_, _ch:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension._scanComment(_s, _ch);
    }
    static public function _scanChar(_s:Scanner_):Void {
        stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension._scanChar(_s);
    }
    static public function _scanRawString(_s:Scanner_):Void {
        stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension._scanRawString(_s);
    }
    static public function _scanString(_s:Scanner_, _quote:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension._scanString(_s, _quote);
    }
    static public function _scanEscape(_s:Scanner_, _quote:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension._scanEscape(_s, _quote);
    }
    static public function _scanDigits(_s:Scanner_, _ch:StdTypes.Int, _base:StdTypes.Int, _n:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension._scanDigits(_s, _ch, _base, _n);
    }
    static public function _scanNumber(_s:Scanner_, _ch:StdTypes.Int, _seenDot:Bool):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        return {
            final obj = stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension._scanNumber(_s, _ch, _seenDot);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _digits(_s:Scanner_, _ch0:StdTypes.Int, _base:StdTypes.Int, _invalid:stdgo.Pointer<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        return {
            final obj = stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension._digits(_s, _ch0, _base, _invalid);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _scanIdentifier(_s:Scanner_):StdTypes.Int {
        return stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension._scanIdentifier(_s);
    }
    static public function _isIdentRune(_s:Scanner_, _ch:StdTypes.Int, _i:StdTypes.Int):Bool {
        return stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension._isIdentRune(_s, _ch, _i);
    }
    static public function _errorf(_s:Scanner_, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension._errorf(_s, _format, ...[for (i in _args) i]);
    }
    static public function _error(_s:Scanner_, _msg:String):Void {
        stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension._error(_s, _msg);
    }
    static public function peek(_s:Scanner_):StdTypes.Int {
        return stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension.peek(_s);
    }
    static public function next(_s:Scanner_):StdTypes.Int {
        return stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension.next(_s);
    }
    static public function _next(_s:Scanner_):StdTypes.Int {
        return stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension._next(_s);
    }
    static public function init(_s:Scanner_, _src:stdgo._internal.io.Io_Reader.Reader):Scanner_ {
        return stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension.init(_s, _src);
    }
    public static function string(__self__:stdgo._internal.text.scanner.Scanner_Scanner.Scanner):String {
        return stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension.string(__self__);
    }
    public static function isValid(__self__:stdgo._internal.text.scanner.Scanner_Scanner.Scanner):Bool {
        return stdgo._internal.text.scanner.Scanner_Scanner_static_extension.Scanner_static_extension.isValid(__self__);
    }
}
class StringReader_static_extension {
    static public function read(_r:StringReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.text.scanner.Scanner_StringReader_static_extension.StringReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_errReader_static_extension {
    static public function read(_:T_errReader, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.text.scanner.Scanner_T_errReader_static_extension.T_errReader_static_extension.read(_, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_countReader_static_extension {
    static public function read(____:T_countReader, _r:stdgo.Pointer<T_countReader>, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.text.scanner.Scanner_T_countReader_static_extension.T_countReader_static_extension.read(____, _r, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
/**
    /|*{
    	ch_4424438 = s.Peek()
    	s.tokPos = -1
    	s.Line = 0
    	gotoNext = 4424512
    	_ = gotoNext == 4424512
    	_ = 0
    	redoBreak = false
    	gotoNext = 4424540
    	_ = gotoNext == 4424540
    	if !redoBreak && (s.Whitespace&(1<<uint(ch_4424438)) != 0) {
    		gotoNext = 4424576
    		_ = gotoNext == 4424576
    		ch_4424438 = s.next()
    		gotoNext = 4424540
    	} else {
    		gotoNext = 4424631
    	}
    	_ = gotoNext == 4424631
    	s.tokBuf.Reset()
    	s.tokPos = s.srcPos - s.lastCharLen
    	s.Offset = s.srcBufOffset + s.tokPos
    	if s.column > 0 {
    		gotoNext = 4424828
    		_ = gotoNext == 4424828
    		s.Line = s.line
    		s.Column = s.column
    		gotoNext = 4425137
    	} else {
    		gotoNext = 4424926
    		_ = gotoNext == 4424926
    		s.Line = s.line - 1
    		s.Column = s.lastLineLen
    		gotoNext = 4425137
    	}
    	_ = gotoNext == 4425137
    	tok_4425137 = ch_4424438
    	_ = 0
    	gotoNext = 4425148
    	_ = gotoNext == 4425148
    	switch {
    	case s.isIdentRune(ch_4424438, 0):
    		gotoNext = 4425158
    		_ = gotoNext == 4425158
    		if s.Mode&4 != 0 {
    			gotoNext = 4425213
    			_ = gotoNext == 4425213
    			tok_4425137 = -2
    			ch_4424438 = s.scanIdentifier()
    			gotoNext = 4426226
    		} else {
    			gotoNext = 4425266
    			_ = gotoNext == 4425266
    			ch_4424438 = s.next()
    			gotoNext = 4426226
    		}
    		gotoNext = 4426226
    	case isDecimal(ch_4424438):
    		gotoNext = 4425290
    		_ = gotoNext == 4425290
    		if s.Mode&24 != 0 {
    			gotoNext = 4425349
    			_ = gotoNext == 4425349
    			tok_4425137, ch_4424438 = s.scanNumber(ch_4424438, false)
    			gotoNext = 4426226
    		} else {
    			gotoNext = 4425397
    			_ = gotoNext == 4425397
    			ch_4424438 = s.next()
    			gotoNext = 4426226
    		}
    		gotoNext = 4426226
    	default:
    		gotoNext = 4425421
    		_ = gotoNext == 4425421
    		_ = 0
    		gotoNext = 4425432
    		_ = gotoNext == 4425432
    		switch ch_4424438 {
    		case -1:
    			gotoNext = 4425446
    			_ = gotoNext == 4425446
    			gotoNext = 4426226
    			gotoNext = 4426226
    		case 34:
    			gotoNext = 4425467
    			_ = gotoNext == 4425467
    			if s.Mode&64 != 0 {
    				gotoNext = 4425507
    				_ = gotoNext == 4425507
    				s.scanString(34)
    				tok_4425137 = -6
    				gotoNext = 4425556
    			} else {
    				gotoNext = 4425556
    			}
    			_ = gotoNext == 4425556
    			ch_4424438 = s.next()
    			gotoNext = 4426226
    		case 39:
    			gotoNext = 4425572
    			_ = gotoNext == 4425572
    			if s.Mode&32 != 0 {
    				gotoNext = 4425611
    				_ = gotoNext == 4425611
    				s.scanChar()
    				tok_4425137 = -5
    				gotoNext = 4425653
    			} else {
    				gotoNext = 4425653
    			}
    			_ = gotoNext == 4425653
    			ch_4424438 = s.next()
    			gotoNext = 4426226
    		case 46:
    			gotoNext = 4425669
    			_ = gotoNext == 4425669
    			ch_4424438 = s.next()
    			if isDecimal(ch_4424438) && s.Mode&16 != 0 {
    				gotoNext = 4425742
    				_ = gotoNext == 4425742
    				tok_4425137, ch_4424438 = s.scanNumber(ch_4424438, true)
    				gotoNext = 4426226
    			} else {
    				gotoNext = 4426226
    			}
    			gotoNext = 4426226
    		case 47:
    			gotoNext = 4425788
    			_ = gotoNext == 4425788
    			ch_4424438 = s.next()
    			if (ch_4424438 == 47 || ch_4424438 == 42) && s.Mode&256 != 0 {
    				gotoNext = 4425874
    				_ = gotoNext == 4425874
    				if s.Mode&512 != 0 {
    					gotoNext = 4425908
    					_ = gotoNext == 4425908
    					s.tokPos = -1
    					ch_4424438 = s.scanComment(ch_4424438)
    					gotoNext = 4424512
    					gotoNext = 4426010
    				} else {
    					gotoNext = 4426010
    				}
    				_ = gotoNext == 4426010
    				ch_4424438 = s.scanComment(ch_4424438)
    				tok_4425137 = -8
    				gotoNext = 4426226
    			} else {
    				gotoNext = 4426226
    			}
    			gotoNext = 4426226
    		case 96:
    			gotoNext = 4426058
    			_ = gotoNext == 4426058
    			if s.Mode&128 != 0 {
    				gotoNext = 4426101
    				_ = gotoNext == 4426101
    				s.scanRawString()
    				tok_4425137 = -7
    				gotoNext = 4426153
    			} else {
    				gotoNext = 4426153
    			}
    			_ = gotoNext == 4426153
    			ch_4424438 = s.next()
    			gotoNext = 4426226
    		default:
    			gotoNext = 4426169
    			_ = gotoNext == 4426169
    			ch_4424438 = s.next()
    			gotoNext = 4426226
    		}
    		gotoNext = 4426226
    	}
    	_ = gotoNext == 4426226
    	s.tokEnd = s.srcPos - s.lastCharLen
    	s.ch = ch_4424438
    	return tok_4425137
    	gotoNext = -1
    }*|/
**/
class Scanner {
    /**
        TokenString returns a printable string for a token or Unicode character.
    **/
    static public function tokenString(_tok:StdTypes.Int):String {
        return stdgo._internal.text.scanner.Scanner_tokenString.tokenString(_tok);
    }
    static public function testNext(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.text.scanner.Scanner_testNext.testNext(_t);
    }
    static public function testScan(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.text.scanner.Scanner_testScan.testScan(_t);
    }
    static public function testInvalidExponent(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.text.scanner.Scanner_testInvalidExponent.testInvalidExponent(_t);
    }
    static public function testPosition(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.text.scanner.Scanner_testPosition.testPosition(_t);
    }
    static public function testScanZeroMode(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.text.scanner.Scanner_testScanZeroMode.testScanZeroMode(_t);
    }
    static public function testScanSelectedMask(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.text.scanner.Scanner_testScanSelectedMask.testScanSelectedMask(_t);
    }
    static public function testScanCustomIdent(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.text.scanner.Scanner_testScanCustomIdent.testScanCustomIdent(_t);
    }
    static public function testScanNext(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.text.scanner.Scanner_testScanNext.testScanNext(_t);
    }
    static public function testScanWhitespace(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.text.scanner.Scanner_testScanWhitespace.testScanWhitespace(_t);
    }
    static public function testError(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.text.scanner.Scanner_testError.testError(_t);
    }
    static public function testIOError(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.text.scanner.Scanner_testIOError.testIOError(_t);
    }
    static public function testPos(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.text.scanner.Scanner_testPos.testPos(_t);
    }
    static public function testNextEOFHandling(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.text.scanner.Scanner_testNextEOFHandling.testNextEOFHandling(_t);
    }
    static public function testScanEOFHandling(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.text.scanner.Scanner_testScanEOFHandling.testScanEOFHandling(_t);
    }
    static public function testIssue29723(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.text.scanner.Scanner_testIssue29723.testIssue29723(_t);
    }
    static public function testNumbers(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.text.scanner.Scanner_testNumbers.testNumbers(_t);
    }
    static public function testIssue30320(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.text.scanner.Scanner_testIssue30320.testIssue30320(_t);
    }
    static public function testIssue50909(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.text.scanner.Scanner_testIssue50909.testIssue50909(_t);
    }
}
