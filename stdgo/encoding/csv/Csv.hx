package stdgo.encoding.csv;
var errBareQuote(get, set) : stdgo.Error;
private function get_errBareQuote():stdgo.Error return stdgo._internal.encoding.csv.Csv_errBareQuote.errBareQuote;
private function set_errBareQuote(v:stdgo.Error):stdgo.Error {
        stdgo._internal.encoding.csv.Csv_errBareQuote.errBareQuote = v;
        return v;
    }
var errQuote(get, set) : stdgo.Error;
private function get_errQuote():stdgo.Error return stdgo._internal.encoding.csv.Csv_errQuote.errQuote;
private function set_errQuote(v:stdgo.Error):stdgo.Error {
        stdgo._internal.encoding.csv.Csv_errQuote.errQuote = v;
        return v;
    }
var errFieldCount(get, set) : stdgo.Error;
private function get_errFieldCount():stdgo.Error return stdgo._internal.encoding.csv.Csv_errFieldCount.errFieldCount;
private function set_errFieldCount(v:stdgo.Error):stdgo.Error {
        stdgo._internal.encoding.csv.Csv_errFieldCount.errFieldCount = v;
        return v;
    }
var errTrailingComma(get, set) : stdgo.Error;
private function get_errTrailingComma():stdgo.Error return stdgo._internal.encoding.csv.Csv_errTrailingComma.errTrailingComma;
private function set_errTrailingComma(v:stdgo.Error):stdgo.Error {
        stdgo._internal.encoding.csv.Csv_errTrailingComma.errTrailingComma = v;
        return v;
    }
@:structInit @:using(stdgo.encoding.csv.Csv.ParseError_static_extension) abstract ParseError(stdgo._internal.encoding.csv.Csv_ParseError.ParseError) from stdgo._internal.encoding.csv.Csv_ParseError.ParseError to stdgo._internal.encoding.csv.Csv_ParseError.ParseError {
    public var startLine(get, set) : StdTypes.Int;
    function get_startLine():StdTypes.Int return this.startLine;
    function set_startLine(v:StdTypes.Int):StdTypes.Int {
        this.startLine = v;
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
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = v;
        return v;
    }
    public function new(?startLine:StdTypes.Int, ?line:StdTypes.Int, ?column:StdTypes.Int, ?err:stdgo.Error) this = new stdgo._internal.encoding.csv.Csv_ParseError.ParseError(startLine, line, column, err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.csv.Csv.Reader_static_extension) abstract Reader(stdgo._internal.encoding.csv.Csv_Reader.Reader) from stdgo._internal.encoding.csv.Csv_Reader.Reader to stdgo._internal.encoding.csv.Csv_Reader.Reader {
    public var comma(get, set) : StdTypes.Int;
    function get_comma():StdTypes.Int return this.comma;
    function set_comma(v:StdTypes.Int):StdTypes.Int {
        this.comma = v;
        return v;
    }
    public var comment(get, set) : StdTypes.Int;
    function get_comment():StdTypes.Int return this.comment;
    function set_comment(v:StdTypes.Int):StdTypes.Int {
        this.comment = v;
        return v;
    }
    public var fieldsPerRecord(get, set) : StdTypes.Int;
    function get_fieldsPerRecord():StdTypes.Int return this.fieldsPerRecord;
    function set_fieldsPerRecord(v:StdTypes.Int):StdTypes.Int {
        this.fieldsPerRecord = v;
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
    public var _r(get, set) : stdgo._internal.bufio.Bufio_Reader.Reader;
    function get__r():stdgo._internal.bufio.Bufio_Reader.Reader return this._r;
    function set__r(v:stdgo._internal.bufio.Bufio_Reader.Reader):stdgo._internal.bufio.Bufio_Reader.Reader {
        this._r = v;
        return v;
    }
    public var _numLine(get, set) : StdTypes.Int;
    function get__numLine():StdTypes.Int return this._numLine;
    function set__numLine(v:StdTypes.Int):StdTypes.Int {
        this._numLine = v;
        return v;
    }
    public var _offset(get, set) : haxe.Int64;
    function get__offset():haxe.Int64 return this._offset;
    function set__offset(v:haxe.Int64):haxe.Int64 {
        this._offset = v;
        return v;
    }
    public var _rawBuffer(get, set) : Array<std.UInt>;
    function get__rawBuffer():Array<std.UInt> return [for (i in this._rawBuffer) i];
    function set__rawBuffer(v:Array<std.UInt>):Array<std.UInt> {
        this._rawBuffer = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _recordBuffer(get, set) : Array<std.UInt>;
    function get__recordBuffer():Array<std.UInt> return [for (i in this._recordBuffer) i];
    function set__recordBuffer(v:Array<std.UInt>):Array<std.UInt> {
        this._recordBuffer = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _fieldIndexes(get, set) : Array<StdTypes.Int>;
    function get__fieldIndexes():Array<StdTypes.Int> return [for (i in this._fieldIndexes) i];
    function set__fieldIndexes(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._fieldIndexes = ([for (i in v) i] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var _fieldPositions(get, set) : Array<T_position>;
    function get__fieldPositions():Array<T_position> return [for (i in this._fieldPositions) i];
    function set__fieldPositions(v:Array<T_position>):Array<T_position> {
        this._fieldPositions = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.csv.Csv_T_position.T_position>);
        return v;
    }
    public var _lastRecord(get, set) : Array<String>;
    function get__lastRecord():Array<String> return [for (i in this._lastRecord) i];
    function set__lastRecord(v:Array<String>):Array<String> {
        this._lastRecord = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?comma:StdTypes.Int, ?comment:StdTypes.Int, ?fieldsPerRecord:StdTypes.Int, ?lazyQuotes:Bool, ?trimLeadingSpace:Bool, ?reuseRecord:Bool, ?trailingComma:Bool, ?_r:stdgo._internal.bufio.Bufio_Reader.Reader, ?_numLine:StdTypes.Int, ?_offset:haxe.Int64, ?_rawBuffer:Array<std.UInt>, ?_recordBuffer:Array<std.UInt>, ?_fieldIndexes:Array<StdTypes.Int>, ?_fieldPositions:Array<T_position>, ?_lastRecord:Array<String>) this = new stdgo._internal.encoding.csv.Csv_Reader.Reader(
comma,
comment,
fieldsPerRecord,
lazyQuotes,
trimLeadingSpace,
reuseRecord,
trailingComma,
_r,
_numLine,
_offset,
([for (i in _rawBuffer) i] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _recordBuffer) i] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _fieldIndexes) i] : stdgo.Slice<stdgo.GoInt>),
([for (i in _fieldPositions) i] : stdgo.Slice<stdgo._internal.encoding.csv.Csv_T_position.T_position>),
([for (i in _lastRecord) i] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_position(stdgo._internal.encoding.csv.Csv_T_position.T_position) from stdgo._internal.encoding.csv.Csv_T_position.T_position to stdgo._internal.encoding.csv.Csv_T_position.T_position {
    public var _line(get, set) : StdTypes.Int;
    function get__line():StdTypes.Int return this._line;
    function set__line(v:StdTypes.Int):StdTypes.Int {
        this._line = v;
        return v;
    }
    public var _col(get, set) : StdTypes.Int;
    function get__col():StdTypes.Int return this._col;
    function set__col(v:StdTypes.Int):StdTypes.Int {
        this._col = v;
        return v;
    }
    public function new(?_line:StdTypes.Int, ?_col:StdTypes.Int) this = new stdgo._internal.encoding.csv.Csv_T_position.T_position(_line, _col);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.csv.Csv.Writer_static_extension) abstract Writer(stdgo._internal.encoding.csv.Csv_Writer.Writer) from stdgo._internal.encoding.csv.Csv_Writer.Writer to stdgo._internal.encoding.csv.Csv_Writer.Writer {
    public var comma(get, set) : StdTypes.Int;
    function get_comma():StdTypes.Int return this.comma;
    function set_comma(v:StdTypes.Int):StdTypes.Int {
        this.comma = v;
        return v;
    }
    public var useCRLF(get, set) : Bool;
    function get_useCRLF():Bool return this.useCRLF;
    function set_useCRLF(v:Bool):Bool {
        this.useCRLF = v;
        return v;
    }
    public var _w(get, set) : stdgo._internal.bufio.Bufio_Writer.Writer;
    function get__w():stdgo._internal.bufio.Bufio_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.bufio.Bufio_Writer.Writer):stdgo._internal.bufio.Bufio_Writer.Writer {
        this._w = v;
        return v;
    }
    public function new(?comma:StdTypes.Int, ?useCRLF:Bool, ?_w:stdgo._internal.bufio.Bufio_Writer.Writer) this = new stdgo._internal.encoding.csv.Csv_Writer.Writer(comma, useCRLF, _w);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef ParseErrorPointer = stdgo._internal.encoding.csv.Csv_ParseErrorPointer.ParseErrorPointer;
class ParseError_static_extension {
    static public function unwrap(_e:ParseError):stdgo.Error {
        return stdgo._internal.encoding.csv.Csv_ParseError_static_extension.ParseError_static_extension.unwrap(_e);
    }
    static public function error(_e:ParseError):String {
        return stdgo._internal.encoding.csv.Csv_ParseError_static_extension.ParseError_static_extension.error(_e);
    }
}
typedef ReaderPointer = stdgo._internal.encoding.csv.Csv_ReaderPointer.ReaderPointer;
class Reader_static_extension {
    static public function _readRecord(_r:Reader, _dst:Array<String>):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoString>);
        return {
            final obj = stdgo._internal.encoding.csv.Csv_Reader_static_extension.Reader_static_extension._readRecord(_r, _dst);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _readLine(_r:Reader):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.csv.Csv_Reader_static_extension.Reader_static_extension._readLine(_r);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readAll(_r:Reader):stdgo.Tuple<Array<Array<String>>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.csv.Csv_Reader_static_extension.Reader_static_extension.readAll(_r);
            { _0 : [for (i in obj._0) [for (i in i) i]], _1 : obj._1 };
        };
    }
    static public function inputOffset(_r:Reader):haxe.Int64 {
        return stdgo._internal.encoding.csv.Csv_Reader_static_extension.Reader_static_extension.inputOffset(_r);
    }
    static public function fieldPos(_r:Reader, _field:StdTypes.Int):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        return {
            final obj = stdgo._internal.encoding.csv.Csv_Reader_static_extension.Reader_static_extension.fieldPos(_r, _field);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_r:Reader):stdgo.Tuple<Array<String>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.csv.Csv_Reader_static_extension.Reader_static_extension.read(_r);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef WriterPointer = stdgo._internal.encoding.csv.Csv_WriterPointer.WriterPointer;
class Writer_static_extension {
    static public function _fieldNeedsQuotes(_w:Writer, _field:String):Bool {
        return stdgo._internal.encoding.csv.Csv_Writer_static_extension.Writer_static_extension._fieldNeedsQuotes(_w, _field);
    }
    static public function writeAll(_w:Writer, _records:Array<Array<String>>):stdgo.Error {
        final _records = ([for (i in _records) ([for (i in i) i] : stdgo.Slice<stdgo.GoString>)] : stdgo.Slice<stdgo.Slice<stdgo.GoString>>);
        return stdgo._internal.encoding.csv.Csv_Writer_static_extension.Writer_static_extension.writeAll(_w, _records);
    }
    static public function error(_w:Writer):stdgo.Error {
        return stdgo._internal.encoding.csv.Csv_Writer_static_extension.Writer_static_extension.error(_w);
    }
    static public function flush(_w:Writer):Void {
        stdgo._internal.encoding.csv.Csv_Writer_static_extension.Writer_static_extension.flush(_w);
    }
    static public function write(_w:Writer, _record:Array<String>):stdgo.Error {
        final _record = ([for (i in _record) i] : stdgo.Slice<stdgo.GoString>);
        return stdgo._internal.encoding.csv.Csv_Writer_static_extension.Writer_static_extension.write(_w, _record);
    }
}
/**
    /|*{
    	if r.Comma == r.Comment || !validDelim(r.Comma) || (r.Comment != 0 && !validDelim(r.Comment)) {
    		gotoNext = 3656891
    		_ = gotoNext == 3656891
    		return nil, errInvalidDelim
    		gotoNext = 3657002
    	} else {
    		gotoNext = 3657002
    	}
    	_ = gotoNext == 3657002
    	_ = 0
    	gotoNext = 3657038
    	_ = gotoNext == 3657038
    	if errRead_3657023 == nil {
    		gotoNext = 3657057
    		_ = gotoNext == 3657057
    		line_3657006, errRead_3657023 = r.readLine()
    		if r.Comment != 0 && nextRune(line_3657006) == r.Comment {
    			gotoNext = 3657141
    			_ = gotoNext == 3657141
    			line_3657006 = nil
    			_ = 0
    			gotoNext = 3657038
    			gotoNext = 3657197
    		} else {
    			gotoNext = 3657197
    		}
    		_ = gotoNext == 3657197
    		if errRead_3657023 == nil && len(line_3657006) == lengthNL(line_3657006) {
    			gotoNext = 3657246
    			_ = gotoNext == 3657246
    			line_3657006 = nil
    			_ = 0
    			gotoNext = 3657038
    			gotoNext = 3657300
    		} else {
    			gotoNext = 3657300
    		}
    		_ = gotoNext == 3657300
    		gotoNext = 3657310
    		gotoNext = 3657038
    	} else {
    		gotoNext = 3657310
    	}
    	_ = gotoNext == 3657310
    	if errRead_3657023 == io.EOF {
    		gotoNext = 3657331
    		_ = gotoNext == 3657331
    		return nil, errRead_3657023
    		gotoNext = 3657396
    	} else {
    		gotoNext = 3657396
    	}
    	_ = gotoNext == 3657396
    	quoteLen_3657417 = len("\"")
    	commaLen_3657438 = utf8.RuneLen(r.Comma)
    	recLine_3657473 = r.numLine
    	r.recordBuffer = r.recordBuffer[:0]
    	r.fieldIndexes = r.fieldIndexes[:0]
    	r.fieldPositions = r.fieldPositions[:0]
    	pos_3657638 = position{line_3657006: r.numLine, col: 1}
    	gotoNext = 3657679
    	_ = gotoNext == 3657679
    	_ = 0
    	parseFieldBreak = false
    	gotoNext = 3657692
    	_ = gotoNext == 3657692
    	if !parseFieldBreak {
    		gotoNext = 3657696
    		_ = gotoNext == 3657696
    		if r.TrimLeadingSpace {
    			gotoNext = 3657722
    			_ = gotoNext == 3657722
    			i_3657727 = bytes.IndexFunc(line_3657006, func(r rune) bool {
    				return !unicode.IsSpace(r)
    			})
    			if i_3657727 < 0 {
    				gotoNext = 3657823
    				_ = gotoNext == 3657823
    				i_3657727 = len(line_3657006)
    				pos_3657638.col -= lengthNL(line_3657006)
    				gotoNext = 3657881
    			} else {
    				gotoNext = 3657881
    			}
    			_ = gotoNext == 3657881
    			line_3657006 = line_3657006[i_3657727:]
    			pos_3657638.col += i_3657727
    			gotoNext = 3657919
    		} else {
    			gotoNext = 3657919
    		}
    		_ = gotoNext == 3657919
    		if len(line_3657006) == 0 || line_3657006[0] != 34 {
    			gotoNext = 3657955
    			_ = gotoNext == 3657955
    			i_3657990 = bytes.IndexRune(line_3657006, r.Comma)
    			field_3658029 = line_3657006
    			if i_3657990 >= 0 {
    				gotoNext = 3658056
    				_ = gotoNext == 3658056
    				field_3658029 = field_3658029[:i_3657990]
    				gotoNext = 3658206
    			} else {
    				gotoNext = 3658090
    				_ = gotoNext == 3658090
    				gotoNext = 3658090
    				_ = gotoNext == 3658090
    				field_3658029 = field_3658029[:len(field_3658029)-lengthNL(field_3658029)]
    				_ = 0
    				gotoNext = 3658206
    			}
    			_ = gotoNext == 3658206
    			if !r.LazyQuotes {
    				gotoNext = 3658223
    				_ = gotoNext == 3658223
    				if j_3658232 = bytes.IndexByte(field_3658029, 34); j_3658232 >= 0 {
    					gotoNext = 3658273
    					_ = gotoNext == 3658273
    					col_3658280 = pos_3657638.col + j_3658232
    					err_3657400 = &ParseError{StartLine: recLine_3657473, Line: r.numLine, Column: col_3658280, Err: ErrBareQuote}
    					parseFieldBreak = true
    					gotoNext = 3657692
    					gotoNext = 3658427
    				} else {
    					gotoNext = 3658427
    				}
    				gotoNext = 3658427
    			} else {
    				gotoNext = 3658427
    			}
    			_ = gotoNext == 3658427
    			r.recordBuffer = append(r.recordBuffer, field_3658029...)
    			r.fieldIndexes = append(r.fieldIndexes, len(r.recordBuffer))
    			r.fieldPositions = append(r.fieldPositions, pos_3657638)
    			if i_3657990 >= 0 {
    				gotoNext = 3658606
    				_ = gotoNext == 3658606
    				line_3657006 = line_3657006[i_3657990+commaLen_3657438:]
    				pos_3657638.col += i_3657990 + commaLen_3657438
    				gotoNext = 3657692
    				gotoNext = 3658697
    			} else {
    				gotoNext = 3658697
    			}
    			_ = gotoNext == 3658697
    			parseFieldBreak = true
    			gotoNext = 3657692
    			gotoNext = 3657692
    		} else {
    			gotoNext = 3658723
    			_ = gotoNext == 3658723
    			gotoNext = 3658723
    			_ = gotoNext == 3658723
    			fieldPos_3658754 = pos_3657638
    			line_3657006 = line_3657006[1:]
    			pos_3657638.col += 1
    			_ = 0
    			gotoNext = 3658822
    			_ = gotoNext == 3658822
    			if true {
    				gotoNext = 3658826
    				_ = gotoNext == 3658826
    				i_3658832 = bytes.IndexByte(line_3657006, 34)
    				if i_3658832 >= 0 {
    					gotoNext = 3658878
    					_ = gotoNext == 3658878
    					r.recordBuffer = append(r.recordBuffer, line_3657006[:i_3658832]...)
    					line_3657006 = line_3657006[i_3658832+1:]
    					pos_3657638.col += i_3658832 + 1
    					gotoNext = 3659026
    					_ = gotoNext == 3659026
    					switch rn_3659033 = nextRune(line_3657006); {
    					case rn_3659033 == 34:
    						gotoNext = 3659062
    						_ = gotoNext == 3659062
    						r.recordBuffer = append(r.recordBuffer, 34)
    						line_3657006 = line_3657006[1:]
    						pos_3657638.col += 1
    						gotoNext = 3658822
    					case rn_3659033 == r.Comma:
    						gotoNext = 3659228
    						_ = gotoNext == 3659228
    						line_3657006 = line_3657006[commaLen_3657438:]
    						pos_3657638.col += commaLen_3657438
    						r.fieldIndexes = append(r.fieldIndexes, len(r.recordBuffer))
    						r.fieldPositions = append(r.fieldPositions, fieldPos_3658754)
    						gotoNext = 3657692
    						gotoNext = 3658822
    					case lengthNL(line_3657006) == len(line_3657006):
    						gotoNext = 3659500
    						_ = gotoNext == 3659500
    						r.fieldIndexes = append(r.fieldIndexes, len(r.recordBuffer))
    						r.fieldPositions = append(r.fieldPositions, fieldPos_3658754)
    						parseFieldBreak = true
    						gotoNext = 3657692
    						gotoNext = 3658822
    					case r.LazyQuotes:
    						gotoNext = 3659728
    						_ = gotoNext == 3659728
    						r.recordBuffer = append(r.recordBuffer, 34)
    						gotoNext = 3658822
    					default:
    						gotoNext = 3659839
    						_ = gotoNext == 3659839
    						err_3657400 = &ParseError{StartLine: recLine_3657473, Line: r.numLine, Column: pos_3657638.col - 1, Err: ErrQuote}
    						parseFieldBreak = true
    						gotoNext = 3657692
    						gotoNext = 3658822
    					}
    					gotoNext = 3658822
    				} else if len(line_3657006) > 0 {
    					gotoNext = 3660062
    					_ = gotoNext == 3660062
    					r.recordBuffer = append(r.recordBuffer, line_3657006...)
    					if errRead_3657023 != nil {
    						gotoNext = 3660189
    						_ = gotoNext == 3660189
    						parseFieldBreak = true
    						gotoNext = 3657692
    						gotoNext = 3660226
    					} else {
    						gotoNext = 3660226
    					}
    					_ = gotoNext == 3660226
    					pos_3657638.col += len(line_3657006)
    					line_3657006, errRead_3657023 = r.readLine()
    					if len(line_3657006) > 0 {
    						gotoNext = 3660303
    						_ = gotoNext == 3660303
    						pos_3657638.line++
    						pos_3657638.col = 1
    						gotoNext = 3660352
    					} else {
    						gotoNext = 3660352
    					}
    					_ = gotoNext == 3660352
    					if errRead_3657023 == io.EOF {
    						gotoNext = 3660373
    						_ = gotoNext == 3660373
    						errRead_3657023 = nil
    						gotoNext = 3658822
    					} else {
    						gotoNext = 3658822
    					}
    					gotoNext = 3658822
    				} else {
    					gotoNext = 3660413
    					_ = gotoNext == 3660413
    					gotoNext = 3660413
    					_ = gotoNext == 3660413
    					if !r.LazyQuotes && errRead_3657023 == nil {
    						gotoNext = 3660498
    						_ = gotoNext == 3660498
    						err_3657400 = &ParseError{StartLine: recLine_3657473, Line: pos_3657638.line, Column: pos_3657638.col, Err: ErrQuote}
    						parseFieldBreak = true
    						gotoNext = 3657692
    						gotoNext = 3660627
    					} else {
    						gotoNext = 3660627
    					}
    					_ = gotoNext == 3660627
    					r.fieldIndexes = append(r.fieldIndexes, len(r.recordBuffer))
    					r.fieldPositions = append(r.fieldPositions, fieldPos_3658754)
    					parseFieldBreak = true
    					gotoNext = 3657692
    					_ = 0
    					gotoNext = 3658822
    				}
    				gotoNext = 3658822
    			} else {
    				gotoNext = 3657692
    			}
    			_ = 0
    			gotoNext = 3657692
    		}
    		gotoNext = 3657692
    	} else {
    		gotoNext = 3660788
    	}
    	_ = gotoNext == 3660788
    	if err_3657400 == nil {
    		gotoNext = 3660802
    		_ = gotoNext == 3660802
    		err_3657400 = errRead_3657023
    		gotoNext = 3660950
    	} else {
    		gotoNext = 3660950
    	}
    	_ = gotoNext == 3660950
    	str_3660950 = string(r.recordBuffer)
    	dst = dst[:0]
    	if cap(dst) < len(r.fieldIndexes) {
    		gotoNext = 3661077
    		_ = gotoNext == 3661077
    		dst = make([]string, len(r.fieldIndexes))
    		gotoNext = 3661127
    	} else {
    		gotoNext = 3661127
    	}
    	_ = gotoNext == 3661127
    	dst = dst[:len(r.fieldIndexes)]
    	if 0 < len(r.fieldIndexes) {
    		gotoNext = 3661255
    		_ = gotoNext == 3661255
    		i_3661180, idx_3661183 = 0, r.fieldIndexes[0]
    		gotoNext = 3661256
    		_ = gotoNext == 3661256
    		if i_3661180 < len(r.fieldIndexes) {
    			gotoNext = 3661211
    			_ = gotoNext == 3661211
    			idx_3661183 = r.fieldIndexes[i_3661180]
    			dst[i_3661180] = str_3660950[preIdx_3661164:idx_3661183]
    			preIdx_3661164 = idx_3661183
    			i_3661180++
    			gotoNext = 3661256
    		} else {
    			gotoNext = 3661312
    		}
    		gotoNext = 3661312
    	} else {
    		gotoNext = 3661312
    	}
    	_ = gotoNext == 3661312
    	if r.FieldsPerRecord > 0 {
    		gotoNext = 3661337
    		_ = gotoNext == 3661337
    		if len(dst) != r.FieldsPerRecord && err_3657400 == nil {
    			gotoNext = 3661388
    			_ = gotoNext == 3661388
    			err_3657400 = &ParseError{StartLine: recLine_3657473, Line: recLine_3657473, Column: 1, Err: ErrFieldCount}
    			gotoNext = 3661588
    		} else {
    			gotoNext = 3661588
    		}
    		gotoNext = 3661588
    	} else if r.FieldsPerRecord == 0 {
    		gotoNext = 3661551
    		_ = gotoNext == 3661551
    		r.FieldsPerRecord = len(dst)
    		gotoNext = 3661588
    	} else {
    		gotoNext = 3661588
    	}
    	_ = gotoNext == 3661588
    	return dst, err_3657400
    	gotoNext = -1
    }*|/
**/
class Csv {
    /**
        NewReader returns a new Reader that reads from r.
    **/
    static public function newReader(_r:stdgo._internal.io.Io_Reader.Reader):Reader {
        return stdgo._internal.encoding.csv.Csv_newReader.newReader(_r);
    }
    /**
        NewWriter returns a new Writer that writes to w.
    **/
    static public function newWriter(_w:stdgo._internal.io.Io_Writer.Writer):Writer {
        return stdgo._internal.encoding.csv.Csv_newWriter.newWriter(_w);
    }
}
