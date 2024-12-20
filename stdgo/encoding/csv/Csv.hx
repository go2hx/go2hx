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
class ParseError_static_extension {
    static public function unwrap(_e:ParseError):stdgo.Error {
        return stdgo._internal.encoding.csv.Csv_ParseError_static_extension.ParseError_static_extension.unwrap(_e);
    }
    static public function error(_e:ParseError):String {
        return stdgo._internal.encoding.csv.Csv_ParseError_static_extension.ParseError_static_extension.error(_e);
    }
}
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
    		gotoNext = 3652049
    		_ = gotoNext == 3652049
    		return nil, errInvalidDelim
    		gotoNext = 3652160
    	} else {
    		gotoNext = 3652160
    	}
    	_ = gotoNext == 3652160
    	_ = 0
    	gotoNext = 3652196
    	_ = gotoNext == 3652196
    	if errRead_3652181 == nil {
    		gotoNext = 3652215
    		_ = gotoNext == 3652215
    		line_3652164, errRead_3652181 = r.readLine()
    		if r.Comment != 0 && nextRune(line_3652164) == r.Comment {
    			gotoNext = 3652299
    			_ = gotoNext == 3652299
    			line_3652164 = nil
    			_ = 0
    			gotoNext = 3652196
    			gotoNext = 3652355
    		} else {
    			gotoNext = 3652355
    		}
    		_ = gotoNext == 3652355
    		if errRead_3652181 == nil && len(line_3652164) == lengthNL(line_3652164) {
    			gotoNext = 3652404
    			_ = gotoNext == 3652404
    			line_3652164 = nil
    			_ = 0
    			gotoNext = 3652196
    			gotoNext = 3652458
    		} else {
    			gotoNext = 3652458
    		}
    		_ = gotoNext == 3652458
    		gotoNext = 3652468
    		gotoNext = 3652196
    	} else {
    		gotoNext = 3652468
    	}
    	_ = gotoNext == 3652468
    	if errRead_3652181 == io.EOF {
    		gotoNext = 3652489
    		_ = gotoNext == 3652489
    		return nil, errRead_3652181
    		gotoNext = 3652554
    	} else {
    		gotoNext = 3652554
    	}
    	_ = gotoNext == 3652554
    	quoteLen_3652575 = len("\"")
    	commaLen_3652596 = utf8.RuneLen(r.Comma)
    	recLine_3652631 = r.numLine
    	r.recordBuffer = r.recordBuffer[:0]
    	r.fieldIndexes = r.fieldIndexes[:0]
    	r.fieldPositions = r.fieldPositions[:0]
    	pos_3652796 = position{line_3652164: r.numLine, col: 1}
    	gotoNext = 3652837
    	_ = gotoNext == 3652837
    	_ = 0
    	parseFieldBreak = false
    	gotoNext = 3652850
    	_ = gotoNext == 3652850
    	if !parseFieldBreak {
    		gotoNext = 3652854
    		_ = gotoNext == 3652854
    		if r.TrimLeadingSpace {
    			gotoNext = 3652880
    			_ = gotoNext == 3652880
    			i_3652885 = bytes.IndexFunc(line_3652164, func(r rune) bool {
    				return !unicode.IsSpace(r)
    			})
    			if i_3652885 < 0 {
    				gotoNext = 3652981
    				_ = gotoNext == 3652981
    				i_3652885 = len(line_3652164)
    				pos_3652796.col -= lengthNL(line_3652164)
    				gotoNext = 3653039
    			} else {
    				gotoNext = 3653039
    			}
    			_ = gotoNext == 3653039
    			line_3652164 = line_3652164[i_3652885:]
    			pos_3652796.col += i_3652885
    			gotoNext = 3653077
    		} else {
    			gotoNext = 3653077
    		}
    		_ = gotoNext == 3653077
    		if len(line_3652164) == 0 || line_3652164[0] != 34 {
    			gotoNext = 3653113
    			_ = gotoNext == 3653113
    			i_3653148 = bytes.IndexRune(line_3652164, r.Comma)
    			field_3653187 = line_3652164
    			if i_3653148 >= 0 {
    				gotoNext = 3653214
    				_ = gotoNext == 3653214
    				field_3653187 = field_3653187[:i_3653148]
    				gotoNext = 3653364
    			} else {
    				gotoNext = 3653248
    				_ = gotoNext == 3653248
    				gotoNext = 3653248
    				_ = gotoNext == 3653248
    				field_3653187 = field_3653187[:len(field_3653187)-lengthNL(field_3653187)]
    				_ = 0
    				gotoNext = 3653364
    			}
    			_ = gotoNext == 3653364
    			if !r.LazyQuotes {
    				gotoNext = 3653381
    				_ = gotoNext == 3653381
    				if j_3653390 = bytes.IndexByte(field_3653187, 34); j_3653390 >= 0 {
    					gotoNext = 3653431
    					_ = gotoNext == 3653431
    					col_3653438 = pos_3652796.col + j_3653390
    					err_3652558 = &ParseError{StartLine: recLine_3652631, Line: r.numLine, Column: col_3653438, Err: ErrBareQuote}
    					parseFieldBreak = true
    					gotoNext = 3652850
    					gotoNext = 3653585
    				} else {
    					gotoNext = 3653585
    				}
    				gotoNext = 3653585
    			} else {
    				gotoNext = 3653585
    			}
    			_ = gotoNext == 3653585
    			r.recordBuffer = append(r.recordBuffer, field_3653187...)
    			r.fieldIndexes = append(r.fieldIndexes, len(r.recordBuffer))
    			r.fieldPositions = append(r.fieldPositions, pos_3652796)
    			if i_3653148 >= 0 {
    				gotoNext = 3653764
    				_ = gotoNext == 3653764
    				line_3652164 = line_3652164[i_3653148+commaLen_3652596:]
    				pos_3652796.col += i_3653148 + commaLen_3652596
    				gotoNext = 3652850
    				gotoNext = 3653855
    			} else {
    				gotoNext = 3653855
    			}
    			_ = gotoNext == 3653855
    			parseFieldBreak = true
    			gotoNext = 3652850
    			gotoNext = 3652850
    		} else {
    			gotoNext = 3653881
    			_ = gotoNext == 3653881
    			gotoNext = 3653881
    			_ = gotoNext == 3653881
    			fieldPos_3653912 = pos_3652796
    			line_3652164 = line_3652164[1:]
    			pos_3652796.col += 1
    			_ = 0
    			gotoNext = 3653980
    			_ = gotoNext == 3653980
    			if true {
    				gotoNext = 3653984
    				_ = gotoNext == 3653984
    				i_3653990 = bytes.IndexByte(line_3652164, 34)
    				if i_3653990 >= 0 {
    					gotoNext = 3654036
    					_ = gotoNext == 3654036
    					r.recordBuffer = append(r.recordBuffer, line_3652164[:i_3653990]...)
    					line_3652164 = line_3652164[i_3653990+1:]
    					pos_3652796.col += i_3653990 + 1
    					gotoNext = 3654184
    					_ = gotoNext == 3654184
    					switch rn_3654191 = nextRune(line_3652164); {
    					case rn_3654191 == 34:
    						gotoNext = 3654220
    						_ = gotoNext == 3654220
    						r.recordBuffer = append(r.recordBuffer, 34)
    						line_3652164 = line_3652164[1:]
    						pos_3652796.col += 1
    						gotoNext = 3653980
    					case rn_3654191 == r.Comma:
    						gotoNext = 3654386
    						_ = gotoNext == 3654386
    						line_3652164 = line_3652164[commaLen_3652596:]
    						pos_3652796.col += commaLen_3652596
    						r.fieldIndexes = append(r.fieldIndexes, len(r.recordBuffer))
    						r.fieldPositions = append(r.fieldPositions, fieldPos_3653912)
    						gotoNext = 3652850
    						gotoNext = 3653980
    					case lengthNL(line_3652164) == len(line_3652164):
    						gotoNext = 3654658
    						_ = gotoNext == 3654658
    						r.fieldIndexes = append(r.fieldIndexes, len(r.recordBuffer))
    						r.fieldPositions = append(r.fieldPositions, fieldPos_3653912)
    						parseFieldBreak = true
    						gotoNext = 3652850
    						gotoNext = 3653980
    					case r.LazyQuotes:
    						gotoNext = 3654886
    						_ = gotoNext == 3654886
    						r.recordBuffer = append(r.recordBuffer, 34)
    						gotoNext = 3653980
    					default:
    						gotoNext = 3654997
    						_ = gotoNext == 3654997
    						err_3652558 = &ParseError{StartLine: recLine_3652631, Line: r.numLine, Column: pos_3652796.col - 1, Err: ErrQuote}
    						parseFieldBreak = true
    						gotoNext = 3652850
    						gotoNext = 3653980
    					}
    					gotoNext = 3653980
    				} else if len(line_3652164) > 0 {
    					gotoNext = 3655220
    					_ = gotoNext == 3655220
    					r.recordBuffer = append(r.recordBuffer, line_3652164...)
    					if errRead_3652181 != nil {
    						gotoNext = 3655347
    						_ = gotoNext == 3655347
    						parseFieldBreak = true
    						gotoNext = 3652850
    						gotoNext = 3655384
    					} else {
    						gotoNext = 3655384
    					}
    					_ = gotoNext == 3655384
    					pos_3652796.col += len(line_3652164)
    					line_3652164, errRead_3652181 = r.readLine()
    					if len(line_3652164) > 0 {
    						gotoNext = 3655461
    						_ = gotoNext == 3655461
    						pos_3652796.line++
    						pos_3652796.col = 1
    						gotoNext = 3655510
    					} else {
    						gotoNext = 3655510
    					}
    					_ = gotoNext == 3655510
    					if errRead_3652181 == io.EOF {
    						gotoNext = 3655531
    						_ = gotoNext == 3655531
    						errRead_3652181 = nil
    						gotoNext = 3653980
    					} else {
    						gotoNext = 3653980
    					}
    					gotoNext = 3653980
    				} else {
    					gotoNext = 3655571
    					_ = gotoNext == 3655571
    					gotoNext = 3655571
    					_ = gotoNext == 3655571
    					if !r.LazyQuotes && errRead_3652181 == nil {
    						gotoNext = 3655656
    						_ = gotoNext == 3655656
    						err_3652558 = &ParseError{StartLine: recLine_3652631, Line: pos_3652796.line, Column: pos_3652796.col, Err: ErrQuote}
    						parseFieldBreak = true
    						gotoNext = 3652850
    						gotoNext = 3655785
    					} else {
    						gotoNext = 3655785
    					}
    					_ = gotoNext == 3655785
    					r.fieldIndexes = append(r.fieldIndexes, len(r.recordBuffer))
    					r.fieldPositions = append(r.fieldPositions, fieldPos_3653912)
    					parseFieldBreak = true
    					gotoNext = 3652850
    					_ = 0
    					gotoNext = 3653980
    				}
    				gotoNext = 3653980
    			} else {
    				gotoNext = 3652850
    			}
    			_ = 0
    			gotoNext = 3652850
    		}
    		gotoNext = 3652850
    	} else {
    		gotoNext = 3655946
    	}
    	_ = gotoNext == 3655946
    	if err_3652558 == nil {
    		gotoNext = 3655960
    		_ = gotoNext == 3655960
    		err_3652558 = errRead_3652181
    		gotoNext = 3656108
    	} else {
    		gotoNext = 3656108
    	}
    	_ = gotoNext == 3656108
    	str_3656108 = string(r.recordBuffer)
    	dst = dst[:0]
    	if cap(dst) < len(r.fieldIndexes) {
    		gotoNext = 3656235
    		_ = gotoNext == 3656235
    		dst = make([]string, len(r.fieldIndexes))
    		gotoNext = 3656285
    	} else {
    		gotoNext = 3656285
    	}
    	_ = gotoNext == 3656285
    	dst = dst[:len(r.fieldIndexes)]
    	if 0 < len(r.fieldIndexes) {
    		gotoNext = 3656413
    		_ = gotoNext == 3656413
    		i_3656338, idx_3656341 = 0, r.fieldIndexes[0]
    		gotoNext = 3656414
    		_ = gotoNext == 3656414
    		if i_3656338 < len(r.fieldIndexes) {
    			gotoNext = 3656369
    			_ = gotoNext == 3656369
    			idx_3656341 = r.fieldIndexes[i_3656338]
    			dst[i_3656338] = str_3656108[preIdx_3656322:idx_3656341]
    			preIdx_3656322 = idx_3656341
    			i_3656338++
    			gotoNext = 3656414
    		} else {
    			gotoNext = 3656470
    		}
    		gotoNext = 3656470
    	} else {
    		gotoNext = 3656470
    	}
    	_ = gotoNext == 3656470
    	if r.FieldsPerRecord > 0 {
    		gotoNext = 3656495
    		_ = gotoNext == 3656495
    		if len(dst) != r.FieldsPerRecord && err_3652558 == nil {
    			gotoNext = 3656546
    			_ = gotoNext == 3656546
    			err_3652558 = &ParseError{StartLine: recLine_3652631, Line: recLine_3652631, Column: 1, Err: ErrFieldCount}
    			gotoNext = 3656746
    		} else {
    			gotoNext = 3656746
    		}
    		gotoNext = 3656746
    	} else if r.FieldsPerRecord == 0 {
    		gotoNext = 3656709
    		_ = gotoNext == 3656709
    		r.FieldsPerRecord = len(dst)
    		gotoNext = 3656746
    	} else {
    		gotoNext = 3656746
    	}
    	_ = gotoNext == 3656746
    	return dst, err_3652558
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
