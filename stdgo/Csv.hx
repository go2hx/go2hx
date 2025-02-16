package stdgo;
var errBareQuote(get, set) : stdgo.Error;
private function get_errBareQuote():stdgo.Error return stdgo._internal.encoding.csv.Csv_errbarequote.errBareQuote;
private function set_errBareQuote(v:stdgo.Error):stdgo.Error {
        stdgo._internal.encoding.csv.Csv_errbarequote.errBareQuote = (v : stdgo.Error);
        return v;
    }
var errQuote(get, set) : stdgo.Error;
private function get_errQuote():stdgo.Error return stdgo._internal.encoding.csv.Csv_errquote.errQuote;
private function set_errQuote(v:stdgo.Error):stdgo.Error {
        stdgo._internal.encoding.csv.Csv_errquote.errQuote = (v : stdgo.Error);
        return v;
    }
var errFieldCount(get, set) : stdgo.Error;
private function get_errFieldCount():stdgo.Error return stdgo._internal.encoding.csv.Csv_errfieldcount.errFieldCount;
private function set_errFieldCount(v:stdgo.Error):stdgo.Error {
        stdgo._internal.encoding.csv.Csv_errfieldcount.errFieldCount = (v : stdgo.Error);
        return v;
    }
var errTrailingComma(get, set) : stdgo.Error;
private function get_errTrailingComma():stdgo.Error return stdgo._internal.encoding.csv.Csv_errtrailingcomma.errTrailingComma;
private function set_errTrailingComma(v:stdgo.Error):stdgo.Error {
        stdgo._internal.encoding.csv.Csv_errtrailingcomma.errTrailingComma = (v : stdgo.Error);
        return v;
    }
@:structInit @:using(stdgo.encoding.csv.Csv.ParseError_static_extension) abstract ParseError(stdgo._internal.encoding.csv.Csv_parseerror.ParseError) from stdgo._internal.encoding.csv.Csv_parseerror.ParseError to stdgo._internal.encoding.csv.Csv_parseerror.ParseError {
    public var startLine(get, set) : StdTypes.Int;
    function get_startLine():StdTypes.Int return this.startLine;
    function set_startLine(v:StdTypes.Int):StdTypes.Int {
        this.startLine = (v : stdgo.GoInt);
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
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public function new(?startLine:StdTypes.Int, ?line:StdTypes.Int, ?column:StdTypes.Int, ?err:stdgo.Error) this = new stdgo._internal.encoding.csv.Csv_parseerror.ParseError((startLine : stdgo.GoInt), (line : stdgo.GoInt), (column : stdgo.GoInt), (err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.csv.Csv.Reader_static_extension) abstract Reader(stdgo._internal.encoding.csv.Csv_reader.Reader) from stdgo._internal.encoding.csv.Csv_reader.Reader to stdgo._internal.encoding.csv.Csv_reader.Reader {
    public var comma(get, set) : StdTypes.Int;
    function get_comma():StdTypes.Int return this.comma;
    function set_comma(v:StdTypes.Int):StdTypes.Int {
        this.comma = (v : stdgo.GoInt32);
        return v;
    }
    public var comment(get, set) : StdTypes.Int;
    function get_comment():StdTypes.Int return this.comment;
    function set_comment(v:StdTypes.Int):StdTypes.Int {
        this.comment = (v : stdgo.GoInt32);
        return v;
    }
    public var fieldsPerRecord(get, set) : StdTypes.Int;
    function get_fieldsPerRecord():StdTypes.Int return this.fieldsPerRecord;
    function set_fieldsPerRecord(v:StdTypes.Int):StdTypes.Int {
        this.fieldsPerRecord = (v : stdgo.GoInt);
        return v;
    }
    public var lazyQuotes(get, set) : Bool;
    function get_lazyQuotes():Bool return this.lazyQuotes;
    function set_lazyQuotes(v:Bool):Bool {
        this.lazyQuotes = v;
        return v;
    }
    public var trimLeadingSpace(get, set) : Bool;
    function get_trimLeadingSpace():Bool return this.trimLeadingSpace;
    function set_trimLeadingSpace(v:Bool):Bool {
        this.trimLeadingSpace = v;
        return v;
    }
    public var reuseRecord(get, set) : Bool;
    function get_reuseRecord():Bool return this.reuseRecord;
    function set_reuseRecord(v:Bool):Bool {
        this.reuseRecord = v;
        return v;
    }
    public var trailingComma(get, set) : Bool;
    function get_trailingComma():Bool return this.trailingComma;
    function set_trailingComma(v:Bool):Bool {
        this.trailingComma = v;
        return v;
    }
    public var _r(get, set) : stdgo._internal.bufio.Bufio_reader.Reader;
    function get__r():stdgo._internal.bufio.Bufio_reader.Reader return this._r;
    function set__r(v:stdgo._internal.bufio.Bufio_reader.Reader):stdgo._internal.bufio.Bufio_reader.Reader {
        this._r = (v : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
        return v;
    }
    public var _numLine(get, set) : StdTypes.Int;
    function get__numLine():StdTypes.Int return this._numLine;
    function set__numLine(v:StdTypes.Int):StdTypes.Int {
        this._numLine = (v : stdgo.GoInt);
        return v;
    }
    public var _offset(get, set) : haxe.Int64;
    function get__offset():haxe.Int64 return this._offset;
    function set__offset(v:haxe.Int64):haxe.Int64 {
        this._offset = (v : stdgo.GoInt64);
        return v;
    }
    public var _rawBuffer(get, set) : Array<std.UInt>;
    function get__rawBuffer():Array<std.UInt> return [for (i in this._rawBuffer) i];
    function set__rawBuffer(v:Array<std.UInt>):Array<std.UInt> {
        this._rawBuffer = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _recordBuffer(get, set) : Array<std.UInt>;
    function get__recordBuffer():Array<std.UInt> return [for (i in this._recordBuffer) i];
    function set__recordBuffer(v:Array<std.UInt>):Array<std.UInt> {
        this._recordBuffer = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _fieldIndexes(get, set) : Array<StdTypes.Int>;
    function get__fieldIndexes():Array<StdTypes.Int> return [for (i in this._fieldIndexes) i];
    function set__fieldIndexes(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._fieldIndexes = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var _fieldPositions(get, set) : Array<T_position>;
    function get__fieldPositions():Array<T_position> return [for (i in this._fieldPositions) i];
    function set__fieldPositions(v:Array<T_position>):Array<T_position> {
        this._fieldPositions = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.csv.Csv_t_position.T_position>);
        return v;
    }
    public var _lastRecord(get, set) : Array<String>;
    function get__lastRecord():Array<String> return [for (i in this._lastRecord) i];
    function set__lastRecord(v:Array<String>):Array<String> {
        this._lastRecord = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?comma:StdTypes.Int, ?comment:StdTypes.Int, ?fieldsPerRecord:StdTypes.Int, ?lazyQuotes:Bool, ?trimLeadingSpace:Bool, ?reuseRecord:Bool, ?trailingComma:Bool, ?_r:stdgo._internal.bufio.Bufio_reader.Reader, ?_numLine:StdTypes.Int, ?_offset:haxe.Int64, ?_rawBuffer:Array<std.UInt>, ?_recordBuffer:Array<std.UInt>, ?_fieldIndexes:Array<StdTypes.Int>, ?_fieldPositions:Array<T_position>, ?_lastRecord:Array<String>) this = new stdgo._internal.encoding.csv.Csv_reader.Reader(
(comma : stdgo.GoInt32),
(comment : stdgo.GoInt32),
(fieldsPerRecord : stdgo.GoInt),
lazyQuotes,
trimLeadingSpace,
reuseRecord,
trailingComma,
(_r : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>),
(_numLine : stdgo.GoInt),
(_offset : stdgo.GoInt64),
([for (i in _rawBuffer) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _recordBuffer) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _fieldIndexes) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>),
([for (i in _fieldPositions) i] : stdgo.Slice<stdgo._internal.encoding.csv.Csv_t_position.T_position>),
([for (i in _lastRecord) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.csv.Csv.T_position_static_extension) @:dox(hide) abstract T_position(stdgo._internal.encoding.csv.Csv_t_position.T_position) from stdgo._internal.encoding.csv.Csv_t_position.T_position to stdgo._internal.encoding.csv.Csv_t_position.T_position {
    public var _line(get, set) : StdTypes.Int;
    function get__line():StdTypes.Int return this._line;
    function set__line(v:StdTypes.Int):StdTypes.Int {
        this._line = (v : stdgo.GoInt);
        return v;
    }
    public var _col(get, set) : StdTypes.Int;
    function get__col():StdTypes.Int return this._col;
    function set__col(v:StdTypes.Int):StdTypes.Int {
        this._col = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_line:StdTypes.Int, ?_col:StdTypes.Int) this = new stdgo._internal.encoding.csv.Csv_t_position.T_position((_line : stdgo.GoInt), (_col : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.csv.Csv.Writer_static_extension) abstract Writer(stdgo._internal.encoding.csv.Csv_writer.Writer) from stdgo._internal.encoding.csv.Csv_writer.Writer to stdgo._internal.encoding.csv.Csv_writer.Writer {
    public var comma(get, set) : StdTypes.Int;
    function get_comma():StdTypes.Int return this.comma;
    function set_comma(v:StdTypes.Int):StdTypes.Int {
        this.comma = (v : stdgo.GoInt32);
        return v;
    }
    public var useCRLF(get, set) : Bool;
    function get_useCRLF():Bool return this.useCRLF;
    function set_useCRLF(v:Bool):Bool {
        this.useCRLF = v;
        return v;
    }
    public var _w(get, set) : stdgo._internal.bufio.Bufio_writer.Writer;
    function get__w():stdgo._internal.bufio.Bufio_writer.Writer return this._w;
    function set__w(v:stdgo._internal.bufio.Bufio_writer.Writer):stdgo._internal.bufio.Bufio_writer.Writer {
        this._w = (v : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
        return v;
    }
    public function new(?comma:StdTypes.Int, ?useCRLF:Bool, ?_w:stdgo._internal.bufio.Bufio_writer.Writer) this = new stdgo._internal.encoding.csv.Csv_writer.Writer((comma : stdgo.GoInt32), useCRLF, (_w : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef ParseErrorPointer = stdgo._internal.encoding.csv.Csv_parseerrorpointer.ParseErrorPointer;
class ParseError_static_extension {
    static public function unwrap(_e:ParseError):stdgo.Error {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.csv.Csv_parseerror.ParseError>);
        return stdgo._internal.encoding.csv.Csv_parseerror_static_extension.ParseError_static_extension.unwrap(_e);
    }
    static public function error(_e:ParseError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.csv.Csv_parseerror.ParseError>);
        return stdgo._internal.encoding.csv.Csv_parseerror_static_extension.ParseError_static_extension.error(_e);
    }
}
typedef ReaderPointer = stdgo._internal.encoding.csv.Csv_readerpointer.ReaderPointer;
class Reader_static_extension {
    static public function _readRecord(_r:Reader, _dst:Array<String>):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.encoding.csv.Csv_reader.Reader>);
        final _dst = ([for (i in _dst) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return {
            final obj = stdgo._internal.encoding.csv.Csv_reader_static_extension.Reader_static_extension._readRecord(_r, _dst);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _readLine(_r:Reader):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.encoding.csv.Csv_reader.Reader>);
        return {
            final obj = stdgo._internal.encoding.csv.Csv_reader_static_extension.Reader_static_extension._readLine(_r);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readAll(_r:Reader):stdgo.Tuple<Array<Array<String>>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.encoding.csv.Csv_reader.Reader>);
        return {
            final obj = stdgo._internal.encoding.csv.Csv_reader_static_extension.Reader_static_extension.readAll(_r);
            { _0 : [for (i in obj._0) [for (i in i) i]], _1 : obj._1 };
        };
    }
    static public function inputOffset(_r:Reader):haxe.Int64 {
        final _r = (_r : stdgo.Ref<stdgo._internal.encoding.csv.Csv_reader.Reader>);
        return stdgo._internal.encoding.csv.Csv_reader_static_extension.Reader_static_extension.inputOffset(_r);
    }
    static public function fieldPos(_r:Reader, _field:StdTypes.Int):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        final _r = (_r : stdgo.Ref<stdgo._internal.encoding.csv.Csv_reader.Reader>);
        final _field = (_field : stdgo.GoInt);
        return {
            final obj = stdgo._internal.encoding.csv.Csv_reader_static_extension.Reader_static_extension.fieldPos(_r, _field);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_r:Reader):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.encoding.csv.Csv_reader.Reader>);
        return {
            final obj = stdgo._internal.encoding.csv.Csv_reader_static_extension.Reader_static_extension.read(_r);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_positionPointer = stdgo._internal.encoding.csv.Csv_t_positionpointer.T_positionPointer;
@:dox(hide) class T_position_static_extension {

}
typedef WriterPointer = stdgo._internal.encoding.csv.Csv_writerpointer.WriterPointer;
class Writer_static_extension {
    static public function _fieldNeedsQuotes(_w:Writer, _field:String):Bool {
        final _w = (_w : stdgo.Ref<stdgo._internal.encoding.csv.Csv_writer.Writer>);
        final _field = (_field : stdgo.GoString);
        return stdgo._internal.encoding.csv.Csv_writer_static_extension.Writer_static_extension._fieldNeedsQuotes(_w, _field);
    }
    static public function writeAll(_w:Writer, _records:Array<Array<String>>):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.encoding.csv.Csv_writer.Writer>);
        final _records = ([for (i in _records) ([for (i in i) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>)] : stdgo.Slice<stdgo.Slice<stdgo.GoString>>);
        return stdgo._internal.encoding.csv.Csv_writer_static_extension.Writer_static_extension.writeAll(_w, _records);
    }
    static public function error(_w:Writer):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.encoding.csv.Csv_writer.Writer>);
        return stdgo._internal.encoding.csv.Csv_writer_static_extension.Writer_static_extension.error(_w);
    }
    static public function flush(_w:Writer):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.encoding.csv.Csv_writer.Writer>);
        stdgo._internal.encoding.csv.Csv_writer_static_extension.Writer_static_extension.flush(_w);
    }
    static public function write(_w:Writer, _record:Array<String>):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.encoding.csv.Csv_writer.Writer>);
        final _record = ([for (i in _record) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return stdgo._internal.encoding.csv.Csv_writer_static_extension.Writer_static_extension.write(_w, _record);
    }
}
/**
    * Package csv reads and writes comma-separated values (CSV) files.
    * There are many kinds of CSV files; this package supports the format
    * described in RFC 4180.
    * 
    * A csv file contains zero or more records of one or more fields per record.
    * Each record is separated by the newline character. The final record may
    * optionally be followed by a newline character.
    * 
    * 	field1,field2,field3
    * 
    * White space is considered part of a field.
    * 
    * Carriage returns before newline characters are silently removed.
    * 
    * Blank lines are ignored. A line with only whitespace characters (excluding
    * the ending newline character) is not considered a blank line.
    * 
    * Fields which start and stop with the quote character " are called
    * quoted-fields. The beginning and ending quote are not part of the
    * field.
    * 
    * The source:
    * 
    * 	normal string,"quoted-field"
    * 
    * results in the fields
    * 
    * 	{`normal string`, `quoted-field`}
    * 
    * Within a quoted-field a quote character followed by a second quote
    * character is considered a single quote.
    * 
    * 	"the ""word"" is true","a ""quoted-field"""
    * 
    * results in
    * 
    * 	{`the "word" is true`, `a "quoted-field"`}
    * 
    * Newlines and commas may be included in a quoted-field
    * 
    * 	"Multi-line
    * 	field","comma is ,"
    * 
    * results in
    * 
    * 	{`Multi-line
    * 	field`, `comma is ,`}
**/
class Csv {
    /**
        * NewReader returns a new Reader that reads from r.
    **/
    static public inline function newReader(_r:stdgo._internal.io.Io_reader.Reader):Reader {
        return stdgo._internal.encoding.csv.Csv_newreader.newReader(_r);
    }
    /**
        * NewWriter returns a new Writer that writes to w.
    **/
    static public inline function newWriter(_w:stdgo._internal.io.Io_writer.Writer):Writer {
        return stdgo._internal.encoding.csv.Csv_newwriter.newWriter(_w);
    }
}
