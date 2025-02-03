package stdgo.text.scanner;
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
    public var _tokBuf(get, set) : stdgo._internal.bytes.Bytes_Buffer.Buffer;
    function get__tokBuf():stdgo._internal.bytes.Bytes_Buffer.Buffer return this._tokBuf;
    function set__tokBuf(v:stdgo._internal.bytes.Bytes_Buffer.Buffer):stdgo._internal.bytes.Bytes_Buffer.Buffer {
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
    public var error(get, set) : (stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>, stdgo.GoString) -> Void;
    function get_error():(stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>, stdgo.GoString) -> Void return (_0, _1) -> this.error(_0, _1);
    function set_error(v:(stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>, stdgo.GoString) -> Void):(stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>, stdgo.GoString) -> Void {
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
