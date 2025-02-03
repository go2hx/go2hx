package stdgo.encoding.csv;
@:structInit @:using(stdgo.encoding.csv.Csv.Reader_static_extension) abstract Reader(stdgo._internal.encoding.csv.Csv_Reader.Reader) from stdgo._internal.encoding.csv.Csv_Reader.Reader to stdgo._internal.encoding.csv.Csv_Reader.Reader {
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
    public var _r(get, set) : stdgo._internal.bufio.Bufio_Reader.Reader;
    function get__r():stdgo._internal.bufio.Bufio_Reader.Reader return this._r;
    function set__r(v:stdgo._internal.bufio.Bufio_Reader.Reader):stdgo._internal.bufio.Bufio_Reader.Reader {
        this._r = (v : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
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
        this._fieldPositions = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.csv.Csv_T_position.T_position>);
        return v;
    }
    public var _lastRecord(get, set) : Array<String>;
    function get__lastRecord():Array<String> return [for (i in this._lastRecord) i];
    function set__lastRecord(v:Array<String>):Array<String> {
        this._lastRecord = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?comma:StdTypes.Int, ?comment:StdTypes.Int, ?fieldsPerRecord:StdTypes.Int, ?lazyQuotes:Bool, ?trimLeadingSpace:Bool, ?reuseRecord:Bool, ?trailingComma:Bool, ?_r:stdgo._internal.bufio.Bufio_Reader.Reader, ?_numLine:StdTypes.Int, ?_offset:haxe.Int64, ?_rawBuffer:Array<std.UInt>, ?_recordBuffer:Array<std.UInt>, ?_fieldIndexes:Array<StdTypes.Int>, ?_fieldPositions:Array<T_position>, ?_lastRecord:Array<String>) this = new stdgo._internal.encoding.csv.Csv_Reader.Reader(
(comma : stdgo.GoInt32),
(comment : stdgo.GoInt32),
(fieldsPerRecord : stdgo.GoInt),
lazyQuotes,
trimLeadingSpace,
reuseRecord,
trailingComma,
(_r : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>),
(_numLine : stdgo.GoInt),
(_offset : stdgo.GoInt64),
([for (i in _rawBuffer) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _recordBuffer) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _fieldIndexes) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>),
([for (i in _fieldPositions) i] : stdgo.Slice<stdgo._internal.encoding.csv.Csv_T_position.T_position>),
([for (i in _lastRecord) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
