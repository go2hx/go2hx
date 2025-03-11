package stdgo._internal.text.scanner;
@:structInit @:using(stdgo._internal.text.scanner.Scanner_scanner_static_extension.Scanner_static_extension) class Scanner {
    public var _src : stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
    public var _srcBuf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1025, 1025).__setNumber32__();
    public var _srcPos : stdgo.GoInt = 0;
    public var _srcEnd : stdgo.GoInt = 0;
    public var _srcBufOffset : stdgo.GoInt = 0;
    public var _line : stdgo.GoInt = 0;
    public var _column : stdgo.GoInt = 0;
    public var _lastLineLen : stdgo.GoInt = 0;
    public var _lastCharLen : stdgo.GoInt = 0;
    public var _tokBuf : stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
    public var _tokPos : stdgo.GoInt = 0;
    public var _tokEnd : stdgo.GoInt = 0;
    public var _ch : stdgo.GoInt32 = 0;
    public var error : (stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>, stdgo.GoString) -> Void = null;
    public var errorCount : stdgo.GoInt = 0;
    public var mode : stdgo.GoUInt = 0;
    public var whitespace : stdgo.GoUInt64 = 0;
    public var isIdentRune : (stdgo.GoInt32, stdgo.GoInt) -> Bool = null;
    @:embedded
    public var position : stdgo._internal.text.scanner.Scanner_position.Position = ({} : stdgo._internal.text.scanner.Scanner_position.Position);
    public function new(?_src:stdgo._internal.io.Io_reader.Reader, ?_srcBuf:stdgo.GoArray<stdgo.GoUInt8>, ?_srcPos:stdgo.GoInt, ?_srcEnd:stdgo.GoInt, ?_srcBufOffset:stdgo.GoInt, ?_line:stdgo.GoInt, ?_column:stdgo.GoInt, ?_lastLineLen:stdgo.GoInt, ?_lastCharLen:stdgo.GoInt, ?_tokBuf:stdgo._internal.bytes.Bytes_buffer.Buffer, ?_tokPos:stdgo.GoInt, ?_tokEnd:stdgo.GoInt, ?_ch:stdgo.GoInt32, ?error:(stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>, stdgo.GoString) -> Void, ?errorCount:stdgo.GoInt, ?mode:stdgo.GoUInt, ?whitespace:stdgo.GoUInt64, ?isIdentRune:(stdgo.GoInt32, stdgo.GoInt) -> Bool, ?position:stdgo._internal.text.scanner.Scanner_position.Position) {
        if (_src != null) this._src = _src;
        if (_srcBuf != null) this._srcBuf = _srcBuf;
        if (_srcPos != null) this._srcPos = _srcPos;
        if (_srcEnd != null) this._srcEnd = _srcEnd;
        if (_srcBufOffset != null) this._srcBufOffset = _srcBufOffset;
        if (_line != null) this._line = _line;
        if (_column != null) this._column = _column;
        if (_lastLineLen != null) this._lastLineLen = _lastLineLen;
        if (_lastCharLen != null) this._lastCharLen = _lastCharLen;
        if (_tokBuf != null) this._tokBuf = _tokBuf;
        if (_tokPos != null) this._tokPos = _tokPos;
        if (_tokEnd != null) this._tokEnd = _tokEnd;
        if (_ch != null) this._ch = _ch;
        if (error != null) this.error = error;
        if (errorCount != null) this.errorCount = errorCount;
        if (mode != null) this.mode = mode;
        if (whitespace != null) this.whitespace = whitespace;
        if (isIdentRune != null) this.isIdentRune = isIdentRune;
        if (position != null) this.position = position;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var isValid(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_isValid():() -> Bool return @:check32 this.position.isValid;
    public var string(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_string():() -> stdgo.GoString return @:check31 (this.position ?? throw "null pointer dereference").string;
    public function __copy__() {
        return new Scanner(
_src,
_srcBuf,
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
    }
}
