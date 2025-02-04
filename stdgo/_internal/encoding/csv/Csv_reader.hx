package stdgo._internal.encoding.csv;
@:structInit @:using(stdgo._internal.encoding.csv.Csv_reader_static_extension.Reader_static_extension) class Reader {
    public var comma : stdgo.GoInt32 = 0;
    public var comment : stdgo.GoInt32 = 0;
    public var fieldsPerRecord : stdgo.GoInt = 0;
    public var lazyQuotes : Bool = false;
    public var trimLeadingSpace : Bool = false;
    public var reuseRecord : Bool = false;
    public var trailingComma : Bool = false;
    public var _r : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
    public var _numLine : stdgo.GoInt = 0;
    public var _offset : stdgo.GoInt64 = 0;
    public var _rawBuffer : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _recordBuffer : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _fieldIndexes : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _fieldPositions : stdgo.Slice<stdgo._internal.encoding.csv.Csv_t_position.T_position> = (null : stdgo.Slice<stdgo._internal.encoding.csv.Csv_t_position.T_position>);
    public var _lastRecord : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?comma:stdgo.GoInt32, ?comment:stdgo.GoInt32, ?fieldsPerRecord:stdgo.GoInt, ?lazyQuotes:Bool, ?trimLeadingSpace:Bool, ?reuseRecord:Bool, ?trailingComma:Bool, ?_r:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>, ?_numLine:stdgo.GoInt, ?_offset:stdgo.GoInt64, ?_rawBuffer:stdgo.Slice<stdgo.GoUInt8>, ?_recordBuffer:stdgo.Slice<stdgo.GoUInt8>, ?_fieldIndexes:stdgo.Slice<stdgo.GoInt>, ?_fieldPositions:stdgo.Slice<stdgo._internal.encoding.csv.Csv_t_position.T_position>, ?_lastRecord:stdgo.Slice<stdgo.GoString>) {
        if (comma != null) this.comma = comma;
        if (comment != null) this.comment = comment;
        if (fieldsPerRecord != null) this.fieldsPerRecord = fieldsPerRecord;
        if (lazyQuotes != null) this.lazyQuotes = lazyQuotes;
        if (trimLeadingSpace != null) this.trimLeadingSpace = trimLeadingSpace;
        if (reuseRecord != null) this.reuseRecord = reuseRecord;
        if (trailingComma != null) this.trailingComma = trailingComma;
        if (_r != null) this._r = _r;
        if (_numLine != null) this._numLine = _numLine;
        if (_offset != null) this._offset = _offset;
        if (_rawBuffer != null) this._rawBuffer = _rawBuffer;
        if (_recordBuffer != null) this._recordBuffer = _recordBuffer;
        if (_fieldIndexes != null) this._fieldIndexes = _fieldIndexes;
        if (_fieldPositions != null) this._fieldPositions = _fieldPositions;
        if (_lastRecord != null) this._lastRecord = _lastRecord;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Reader(
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
_rawBuffer,
_recordBuffer,
_fieldIndexes,
_fieldPositions,
_lastRecord);
    }
}
