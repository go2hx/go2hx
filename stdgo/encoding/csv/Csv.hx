package stdgo.encoding.csv;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:structInit class ParseError {
    public function unwrap():Error {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _e.value.err;
    }
    public function error():GoString {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (Go.toInterface(_e.value.err) == Go.toInterface(errFieldCount)) {
            return stdgo.fmt.Fmt.sprintf("record on line %d: %v", Go.toInterface(_e.value.line), Go.toInterface(_e.value.err));
        };
        if (_e.value.startLine != _e.value.line) {
            return stdgo.fmt.Fmt.sprintf("record on line %d; parse error on line %d, column %d: %v", Go.toInterface(_e.value.startLine), Go.toInterface(_e.value.line), Go.toInterface(_e.value.column), Go.toInterface(_e.value.err));
        };
        return stdgo.fmt.Fmt.sprintf("parse error on line %d, column %d: %v", Go.toInterface(_e.value.line), Go.toInterface(_e.value.column), Go.toInterface(_e.value.err));
    }
    public var startLine : GoInt = ((0 : GoInt));
    public var line : GoInt = ((0 : GoInt));
    public var column : GoInt = ((0 : GoInt));
    public var err : stdgo.Error = ((null : stdgo.Error));
    public function new(?startLine:GoInt, ?line:GoInt, ?column:GoInt, ?err:stdgo.Error) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(startLine) + " " + Go.string(line) + " " + Go.string(column) + " " + Go.string(err) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ParseError(startLine, line, column, err);
    }
    public function __set__(__tmp__) {
        this.startLine = __tmp__.startLine;
        this.line = __tmp__.line;
        this.column = __tmp__.column;
        this.err = __tmp__.err;
        return this;
    }
}
@:structInit class Reader {
    public function _readRecord(_dst:Slice<GoString>):{ var _0 : Slice<GoString>; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return stdgo.internal.Macro.controlFlow({
            if (_r.value.comma == _r.value.comment || !_validDelim(_r.value.comma) || (_r.value.comment != ((0 : GoInt32)) && !_validDelim(_r.value.comment))) {
                return { _0 : new Slice<GoString>().nil(), _1 : _errInvalidDelim };
            };
            var _line:Slice<GoByte> = new Slice<GoUInt8>().nil();
            var _errRead:Error = ((null : stdgo.Error));
            while (_errRead == null) {
                {
                    var __tmp__ = _r.value._readLine();
                    _line = __tmp__._0;
                    _errRead = __tmp__._1;
                };
                if (_r.value.comment != ((0 : GoInt32)) && _nextRune(_line) == _r.value.comment) {
                    _line = new Slice<GoUInt8>().nil();
                    continue;
                };
                if (_errRead == null && _line.length == _lengthNL(_line)) {
                    _line = new Slice<GoUInt8>().nil();
                    continue;
                };
                break;
            };
            if (Go.toInterface(_errRead) == Go.toInterface(stdgo.io.Io.eof)) {
                return { _0 : new Slice<GoString>().nil(), _1 : _errRead };
            };
            var _err:Error = ((null : stdgo.Error));
            final _quoteLen:GoInt = "\"".length;
            var _commaLen:GoInt = stdgo.unicode.utf8.Utf8.runeLen(_r.value.comma);
            var _recLine:GoInt = _r.value._numLine;
            _r.value._recordBuffer = _r.value._recordBuffer.__slice__(0, ((0 : GoInt)));
            _r.value._fieldIndexes = _r.value._fieldIndexes.__slice__(0, ((0 : GoInt)));
            _r.value._fieldPositions = _r.value._fieldPositions.__slice__(0, ((0 : GoInt)));
            var _pos:T_position = (({ _line : _r.value._numLine, _col : ((1 : GoInt)) } : T_position)).__copy__();
            @:label("parseField") while (true) {
                if (_r.value.trimLeadingSpace) {
                    var _i:GoInt = stdgo.bytes.Bytes.indexFunc(_line, function(_r:GoRune):Bool {
                        return !stdgo.unicode.Unicode.isSpace(_r);
                    });
                    if (_i < ((0 : GoInt))) {
                        _i = _line.length;
                        _pos._col = _pos._col - (_lengthNL(_line));
                    };
                    _line = _line.__slice__(_i);
                    _pos._col = _pos._col + (_i);
                };
                if (_line.length == ((0 : GoInt)) || _line[((0 : GoInt))] != (("\"".code : GoRune))) {
                    var _i:GoInt = stdgo.bytes.Bytes.indexRune(_line, _r.value.comma);
                    var _field:Slice<GoUInt8> = _line;
                    if (_i >= ((0 : GoInt))) {
                        _field = _field.__slice__(0, _i);
                    } else {
                        _field = _field.__slice__(0, _field.length - _lengthNL(_field));
                    };
                    if (!_r.value.lazyQuotes) {
                        {
                            var _j:GoInt = stdgo.bytes.Bytes.indexByte(_field, (("\"".code : GoRune)));
                            if (_j >= ((0 : GoInt))) {
                                var _col:GoInt = _pos._col + _j;
                                _err = Go.pointer((({ startLine : _recLine, line : _r.value._numLine, column : _col, err : errBareQuote } : ParseError))).value;
                                @:break {
                                    ____exit____ = true;
                                    ____break____ = true;
                                    break;
                                };
                            };
                        };
                    };
                    _r.value._recordBuffer = _r.value._recordBuffer.__append__(..._field.toArray());
                    _r.value._fieldIndexes = _r.value._fieldIndexes.__append__(_r.value._recordBuffer.length);
                    _r.value._fieldPositions = _r.value._fieldPositions.__append__(_pos.__copy__());
                    if (_i >= ((0 : GoInt))) {
                        _line = _line.__slice__(_i + _commaLen);
                        _pos._col = _pos._col + (_i + _commaLen);
                        continue;
                    };
                    @:break {
                        ____exit____ = true;
                        ____break____ = true;
                        break;
                    };
                } else {
                    var _fieldPos:T_position = _pos.__copy__();
                    _line = _line.__slice__(_quoteLen);
                    _pos._col = _pos._col + (_quoteLen);
                    while (true) {
                        var _i:GoInt = stdgo.bytes.Bytes.indexByte(_line, (("\"".code : GoRune)));
                        if (_i >= ((0 : GoInt))) {
                            _r.value._recordBuffer = _r.value._recordBuffer.__append__(..._line.__slice__(0, _i).toArray());
                            _line = _line.__slice__(_i + _quoteLen);
                            _pos._col = _pos._col + (_i + _quoteLen);
                            {
                                var _rn:GoInt32 = _nextRune(_line);
                                {
                                    var __switchIndex__ = -1;
                                    while (true) {
                                        if (_rn == (("\"".code : GoRune))) {
                                            _r.value._recordBuffer = _r.value._recordBuffer.__append__((("\"".code : GoRune)));
                                            _line = _line.__slice__(_quoteLen);
                                            _pos._col = _pos._col + (_quoteLen);
                                            break;
                                        } else if (_rn == _r.value.comma) {
                                            _line = _line.__slice__(_commaLen);
                                            _pos._col = _pos._col + (_commaLen);
                                            _r.value._fieldIndexes = _r.value._fieldIndexes.__append__(_r.value._recordBuffer.length);
                                            _r.value._fieldPositions = _r.value._fieldPositions.__append__(_fieldPos.__copy__());
                                            continue;
                                            break;
                                        } else if (_lengthNL(_line) == _line.length) {
                                            _r.value._fieldIndexes = _r.value._fieldIndexes.__append__(_r.value._recordBuffer.length);
                                            _r.value._fieldPositions = _r.value._fieldPositions.__append__(_fieldPos.__copy__());
                                            @:break {
                                                ____exit____ = true;
                                                ____break____ = true;
                                                break;
                                            };
                                            break;
                                        } else if (_r.value.lazyQuotes) {
                                            _r.value._recordBuffer = _r.value._recordBuffer.__append__((("\"".code : GoRune)));
                                            break;
                                        } else {
                                            _err = Go.pointer((({ startLine : _recLine, line : _r.value._numLine, column : _pos._col - _quoteLen, err : errQuote } : ParseError))).value;
                                            @:break {
                                                ____exit____ = true;
                                                ____break____ = true;
                                                break;
                                            };
                                        };
                                        break;
                                    };
                                };
                            };
                        } else if (_line.length > ((0 : GoInt))) {
                            _r.value._recordBuffer = _r.value._recordBuffer.__append__(..._line.toArray());
                            if (_errRead != null) {
                                @:break {
                                    ____exit____ = true;
                                    ____break____ = true;
                                    break;
                                };
                            };
                            _pos._col = _pos._col + (_line.length);
                            {
                                var __tmp__ = _r.value._readLine();
                                _line = __tmp__._0;
                                _errRead = __tmp__._1;
                            };
                            if (_line.length > ((0 : GoInt))) {
                                _pos._line++;
                                _pos._col = ((1 : GoInt));
                            };
                            if (Go.toInterface(_errRead) == Go.toInterface(stdgo.io.Io.eof)) {
                                _errRead = ((null : stdgo.Error));
                            };
                        } else {
                            if (!_r.value.lazyQuotes && _errRead == null) {
                                _err = Go.pointer((({ startLine : _recLine, line : _pos._line, column : _pos._col, err : errQuote } : ParseError))).value;
                                @:break {
                                    ____exit____ = true;
                                    ____break____ = true;
                                    break;
                                };
                            };
                            _r.value._fieldIndexes = _r.value._fieldIndexes.__append__(_r.value._recordBuffer.length);
                            _r.value._fieldPositions = _r.value._fieldPositions.__append__(_fieldPos.__copy__());
                            @:break {
                                ____exit____ = true;
                                ____break____ = true;
                                break;
                            };
                        };
                    };
                };
            };
            if (_err == null) {
                _err = _errRead;
            };
            var _str:GoString = ((_r.value._recordBuffer : GoString));
            _dst = _dst.__slice__(0, ((0 : GoInt)));
            if (_dst.cap() < _r.value._fieldIndexes.length) {
                _dst = new Slice<GoString>(...[for (i in 0 ... ((_r.value._fieldIndexes.length : GoInt)).toBasic()) (("" : GoString))]);
            };
            _dst = _dst.__slice__(0, _r.value._fieldIndexes.length);
            var _preIdx:GoInt = ((0 : GoInt));
            {
                var _i;
                var _idx;
                for (_obj in _r.value._fieldIndexes.keyValueIterator()) {
                    _i = _obj.key;
                    _idx = _obj.value;
                    _dst[_i] = _str.__slice__(_preIdx, _idx);
                    _preIdx = _idx;
                };
            };
            if (_r.value.fieldsPerRecord > ((0 : GoInt))) {
                if (_dst.length != _r.value.fieldsPerRecord && _err == null) {
                    _err = Go.pointer((({ startLine : _recLine, line : _recLine, column : ((1 : GoInt)), err : errFieldCount } : ParseError))).value;
                };
            } else if (_r.value.fieldsPerRecord == ((0 : GoInt))) {
                _r.value.fieldsPerRecord = _dst.length;
            };
            return { _0 : _dst, _1 : _err };
        });
    }
    public function _readLine():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _r.value._r.value.readSlice((("\n".code : GoRune))), _line:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (Go.toInterface(_err) == Go.toInterface(bufio.Bufio.errBufferFull)) {
            _r.value._rawBuffer = _r.value._rawBuffer.__slice__(0, ((0 : GoInt))).__append__(..._line.toArray());
            while (Go.toInterface(_err) == Go.toInterface(bufio.Bufio.errBufferFull)) {
                {
                    var __tmp__ = _r.value._r.value.readSlice((("\n".code : GoRune)));
                    _line = __tmp__._0;
                    _err = __tmp__._1;
                };
                _r.value._rawBuffer = _r.value._rawBuffer.__append__(..._line.toArray());
            };
            _line = _r.value._rawBuffer;
        };
        if (_line.length > ((0 : GoInt)) && Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
            _err = ((null : stdgo.Error));
            if (_line[_line.length - ((1 : GoInt))] == (("\r".code : GoRune))) {
                _line = _line.__slice__(0, _line.length - ((1 : GoInt)));
            };
        };
        _r.value._numLine++;
        {
            var _n:GoInt = _line.length;
            if (_n >= ((2 : GoInt)) && _line[_n - ((2 : GoInt))] == (("\r".code : GoRune)) && _line[_n - ((1 : GoInt))] == (("\n".code : GoRune))) {
                _line[_n - ((2 : GoInt))] = (("\n".code : GoRune));
                _line = _line.__slice__(0, _n - ((1 : GoInt)));
            };
        };
        return { _0 : _line, _1 : _err };
    }
    public function readAll():{ var _0 : Slice<Slice<GoString>>; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _records:Slice<Slice<GoString>> = new Slice<Slice<GoString>>().nil(), _err:Error = ((null : stdgo.Error));
        while (true) {
            var __tmp__ = _r.value._readRecord(new Slice<GoString>().nil()), _record:Slice<GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
                return { _0 : _records, _1 : ((null : stdgo.Error)) };
            };
            if (_err != null) {
                return { _0 : new Slice<Slice<GoString>>().nil(), _1 : _err };
            };
            _records = _records.__append__(_record);
        };
    }
    public function fieldPos(_field:GoInt):{ var _0 : GoInt; var _1 : GoInt; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _line:GoInt = ((0 : GoInt)), _column:GoInt = ((0 : GoInt));
        if (_field < ((0 : GoInt)) || _field >= _r.value._fieldPositions.length) {
            throw "out of range index passed to FieldPos";
        };
        var _p:Pointer<T_position> = Go.pointer(_r.value._fieldPositions[_field]);
        return { _0 : _p.value._line, _1 : _p.value._col };
    }
    public function read():{ var _0 : Slice<GoString>; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _record:Slice<GoString> = new Slice<GoString>().nil(), _err:Error = ((null : stdgo.Error));
        if (_r.value.reuseRecord) {
            {
                var __tmp__ = _r.value._readRecord(_r.value._lastRecord);
                _record = __tmp__._0;
                _err = __tmp__._1;
            };
            _r.value._lastRecord = _record;
        } else {
            {
                var __tmp__ = _r.value._readRecord(new Slice<GoString>().nil());
                _record = __tmp__._0;
                _err = __tmp__._1;
            };
        };
        return { _0 : _record, _1 : _err };
    }
    public var comma : GoInt32 = ((0 : GoInt32));
    public var comment : GoInt32 = ((0 : GoInt32));
    public var fieldsPerRecord : GoInt = ((0 : GoInt));
    public var lazyQuotes : Bool = false;
    public var trimLeadingSpace : Bool = false;
    public var reuseRecord : Bool = false;
    public var trailingComma : Bool = false;
    public var _r : Pointer<bufio.Bufio.Reader> = new Pointer<bufio.Bufio.Reader>().nil();
    public var _numLine : GoInt = ((0 : GoInt));
    public var _rawBuffer : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _recordBuffer : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _fieldIndexes : Slice<GoInt> = new Slice<GoInt>().nil();
    public var _fieldPositions : Slice<T_position> = new Slice<T_position>().nil();
    public var _lastRecord : Slice<GoString> = new Slice<GoString>().nil();
    public function new(?comma:GoInt32, ?comment:GoInt32, ?fieldsPerRecord:GoInt, ?lazyQuotes:Bool, ?trimLeadingSpace:Bool, ?reuseRecord:Bool, ?trailingComma:Bool, ?_r:Pointer<bufio.Bufio.Reader>, ?_numLine:GoInt, ?_rawBuffer:Slice<GoUInt8>, ?_recordBuffer:Slice<GoUInt8>, ?_fieldIndexes:Slice<GoInt>, ?_fieldPositions:Slice<T_position>, ?_lastRecord:Slice<GoString>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(comma) + " " + Go.string(comment) + " " + Go.string(fieldsPerRecord) + " " + Go.string(lazyQuotes) + " " + Go.string(trimLeadingSpace) + " " + Go.string(reuseRecord) + " " + Go.string(trailingComma) + " " + Go.string(_r) + " " + Go.string(_numLine) + " " + Go.string(_rawBuffer) + " " + Go.string(_recordBuffer) + " " + Go.string(_fieldIndexes) + " " + Go.string(_fieldPositions) + " " + Go.string(_lastRecord) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
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
_rawBuffer,
_recordBuffer,
_fieldIndexes,
_fieldPositions,
_lastRecord);
    }
    public function __set__(__tmp__) {
        this.comma = __tmp__.comma;
        this.comment = __tmp__.comment;
        this.fieldsPerRecord = __tmp__.fieldsPerRecord;
        this.lazyQuotes = __tmp__.lazyQuotes;
        this.trimLeadingSpace = __tmp__.trimLeadingSpace;
        this.reuseRecord = __tmp__.reuseRecord;
        this.trailingComma = __tmp__.trailingComma;
        this._r = __tmp__._r;
        this._numLine = __tmp__._numLine;
        this._rawBuffer = __tmp__._rawBuffer;
        this._recordBuffer = __tmp__._recordBuffer;
        this._fieldIndexes = __tmp__._fieldIndexes;
        this._fieldPositions = __tmp__._fieldPositions;
        this._lastRecord = __tmp__._lastRecord;
        return this;
    }
}
@:structInit class T_position {
    public var _line : GoInt = ((0 : GoInt));
    public var _col : GoInt = ((0 : GoInt));
    public function new(?_line:GoInt, ?_col:GoInt) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_line) + " " + Go.string(_col) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_position(_line, _col);
    }
    public function __set__(__tmp__) {
        this._line = __tmp__._line;
        this._col = __tmp__._col;
        return this;
    }
}
@:structInit class Writer {
    public function _fieldNeedsQuotes(_field:GoString):Bool {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_field == (("" : GoString))) {
            return false;
        };
        if (_field == (("\." : GoString))) {
            return true;
        };
        if (_w.value.comma < stdgo.unicode.utf8.Utf8.runeSelf) {
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _field.length, _i++, {
                    var _c:GoUInt8 = _field[_i];
                    if (_c == (("\n".code : GoRune)) || _c == (("\r".code : GoRune)) || _c == (("\"".code : GoRune)) || _c == ((_w.value.comma : GoByte))) {
                        return true;
                    };
                });
            };
        } else {
            if (stdgo.strings.Strings.containsRune(_field, _w.value.comma) || stdgo.strings.Strings.containsAny(_field, "\"\r\n")) {
                return true;
            };
        };
        var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_field), _r1:GoInt32 = __tmp__._0, _:GoInt = __tmp__._1;
        return stdgo.unicode.Unicode.isSpace(_r1);
    }
    public function writeAll(_records:Slice<Slice<GoString>>):Error {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        for (_record in _records) {
            var _err:stdgo.Error = _w.value.write(_record);
            if (_err != null) {
                return _err;
            };
        };
        return _w.value._w.value.flush();
    }
    public function error():Error {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _w.value._w.value.write(new Slice<GoUInt8>().nil()), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    public function flush():Void {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _w.value._w.value.flush();
    }
    public function write(_record:Slice<GoString>):Error {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (!_validDelim(_w.value.comma)) {
            return _errInvalidDelim;
        };
        {
            var _n;
            var _field;
            for (_obj in _record.keyValueIterator()) {
                _n = _obj.key;
                _field = _obj.value;
                if (_n > ((0 : GoInt))) {
                    {
                        var __tmp__ = _w.value._w.value.writeRune(_w.value.comma), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            return _err;
                        };
                    };
                };
                if (!_w.value._fieldNeedsQuotes(_field)) {
                    {
                        var __tmp__ = _w.value._w.value.writeString(_field), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            return _err;
                        };
                    };
                    continue;
                };
                {
                    var _err:stdgo.Error = _w.value._w.value.writeByte((("\"".code : GoRune)));
                    if (_err != null) {
                        return _err;
                    };
                };
                while (_field.length > ((0 : GoInt))) {
                    var _i:GoInt = stdgo.strings.Strings.indexAny(_field, "\"\r\n");
                    if (_i < ((0 : GoInt))) {
                        _i = _field.length;
                    };
                    {
                        var __tmp__ = _w.value._w.value.writeString(_field.__slice__(0, _i)), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            return _err;
                        };
                    };
                    _field = _field.__slice__(_i);
                    if (_field.length > ((0 : GoInt))) {
                        var _err:Error = ((null : stdgo.Error));
                        if (_field[((0 : GoInt))] == (("\"".code : GoRune))) {
                            {
                                var __tmp__ = _w.value._w.value.writeString("\"\"");
                                _err = __tmp__._1;
                            };
                        } else if (_field[((0 : GoInt))] == (("\r".code : GoRune))) {
                            if (!_w.value.useCRLF) {
                                _err = _w.value._w.value.writeByte((("\r".code : GoRune)));
                            };
                        } else if (_field[((0 : GoInt))] == (("\n".code : GoRune))) {
                            if (_w.value.useCRLF) {
                                {
                                    var __tmp__ = _w.value._w.value.writeString("\r\n");
                                    _err = __tmp__._1;
                                };
                            } else {
                                _err = _w.value._w.value.writeByte((("\n".code : GoRune)));
                            };
                        };
                        _field = _field.__slice__(((1 : GoInt)));
                        if (_err != null) {
                            return _err;
                        };
                    };
                };
                {
                    var _err:stdgo.Error = _w.value._w.value.writeByte((("\"".code : GoRune)));
                    if (_err != null) {
                        return _err;
                    };
                };
            };
        };
        var _err:Error = ((null : stdgo.Error));
        if (_w.value.useCRLF) {
            {
                var __tmp__ = _w.value._w.value.writeString("\r\n");
                _err = __tmp__._1;
            };
        } else {
            _err = _w.value._w.value.writeByte((("\n".code : GoRune)));
        };
        return _err;
    }
    public var comma : GoInt32 = ((0 : GoInt32));
    public var useCRLF : Bool = false;
    public var _w : Pointer<bufio.Bufio.Writer> = new Pointer<bufio.Bufio.Writer>().nil();
    public function new(?comma:GoInt32, ?useCRLF:Bool, ?_w:Pointer<bufio.Bufio.Writer>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(comma) + " " + Go.string(useCRLF) + " " + Go.string(_w) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Writer(comma, useCRLF, _w);
    }
    public function __set__(__tmp__) {
        this.comma = __tmp__.comma;
        this.useCRLF = __tmp__.useCRLF;
        this._w = __tmp__._w;
        return this;
    }
}
var errTrailingComma : stdgo.Error = stdgo.errors.Errors.new_("extra delimiter at end of line");
var errFieldCount : stdgo.Error = stdgo.errors.Errors.new_("wrong number of fields");
var errQuote : stdgo.Error = stdgo.errors.Errors.new_("extraneous or missing \" in quoted-field");
var _errInvalidDelim : stdgo.Error = stdgo.errors.Errors.new_("csv: invalid field or comment delimiter");
var errBareQuote : stdgo.Error = stdgo.errors.Errors.new_("bare \" in non-quoted-field");
function _validDelim(_r:GoRune):Bool {
        return _r != ((0 : GoInt32)) && _r != (("\"".code : GoRune)) && _r != (("\r".code : GoRune)) && _r != (("\n".code : GoRune)) && stdgo.unicode.utf8.Utf8.validRune(_r) && _r != stdgo.unicode.utf8.Utf8.runeError;
    }
/**
    // NewReader returns a new Reader that reads from r.
**/
function newReader(_r:stdgo.io.Io.Reader):Pointer<Reader> {
        return Go.pointer((({ comma : ((",".code : GoRune)), _r : bufio.Bufio.newReader(_r), comment : 0, fieldsPerRecord : 0, lazyQuotes : false, trimLeadingSpace : false, reuseRecord : false, trailingComma : false, _numLine : 0, _rawBuffer : new Slice<GoUInt8>().nil(), _recordBuffer : new Slice<GoUInt8>().nil(), _fieldIndexes : new Slice<GoInt>().nil(), _fieldPositions : new Slice<T_position>().nil(), _lastRecord : new Slice<GoString>().nil() } : Reader)));
    }
/**
    // lengthNL reports the number of bytes for the trailing \n.
**/
function _lengthNL(_b:Slice<GoByte>):GoInt {
        if (_b.length > ((0 : GoInt)) && _b[_b.length - ((1 : GoInt))] == (("\n".code : GoRune))) {
            return ((1 : GoInt));
        };
        return ((0 : GoInt));
    }
/**
    // nextRune returns the next rune in b or utf8.RuneError.
**/
function _nextRune(_b:Slice<GoByte>):GoRune {
        var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_b), _r:GoInt32 = __tmp__._0, _:GoInt = __tmp__._1;
        return _r;
    }
/**
    // NewWriter returns a new Writer that writes to w.
**/
function newWriter(_w:stdgo.io.Io.Writer):Pointer<Writer> {
        return Go.pointer((({ comma : ((",".code : GoRune)), _w : bufio.Bufio.newWriter(_w), useCRLF : false } : Writer)));
    }
class ParseError_extension_fields {
    public function error(__tmp__):GoString return __tmp__.error();
    public function unwrap(__tmp__):Error return __tmp__.unwrap();
}
class Reader_extension_fields {
    public function read(__tmp__):{ var _0 : Slice<GoString>; var _1 : Error; } return __tmp__.read();
    public function fieldPos(__tmp__, _field:GoInt):{ var _0 : GoInt; var _1 : GoInt; } return __tmp__.fieldPos(_field);
    public function readAll(__tmp__):{ var _0 : Slice<Slice<GoString>>; var _1 : Error; } return __tmp__.readAll();
    public function _readLine(__tmp__):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__._readLine();
    public function _readRecord(__tmp__, _dst:Slice<GoString>):{ var _0 : Slice<GoString>; var _1 : Error; } return __tmp__._readRecord(_dst);
}
class Writer_extension_fields {
    public function write(__tmp__, _record:Slice<GoString>):Error return __tmp__.write(_record);
    public function flush(__tmp__):Void __tmp__.flush();
    public function error(__tmp__):Error return __tmp__.error();
    public function writeAll(__tmp__, _records:Slice<Slice<GoString>>):Error return __tmp__.writeAll(_records);
    public function _fieldNeedsQuotes(__tmp__, _field:GoString):Bool return __tmp__._fieldNeedsQuotes(_field);
}
