package stdgo._internal.encoding.csv;
@:keep @:allow(stdgo._internal.encoding.csv.Csv.Reader_asInterface) class Reader_static_extension {
    @:keep
    static public function _readRecord( _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_Reader.Reader>, _dst:stdgo.Slice<stdgo.GoString>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_Reader.Reader> = _r;
        stdgo._internal.internal.Macro.controlFlow({
            if (((_r.comma == (_r.comment) || !stdgo._internal.encoding.csv.Csv__validDelim._validDelim(_r.comma) : Bool) || (((_r.comment != (0 : stdgo.GoInt32)) && !stdgo._internal.encoding.csv.Csv__validDelim._validDelim(_r.comment) : Bool)) : Bool)) {
                return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : stdgo._internal.encoding.csv.Csv__errInvalidDelim._errInvalidDelim };
            };
            var _line:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            var _errRead:stdgo.Error = (null : stdgo.Error);
            while (_errRead == null) {
                {
                    var __tmp__ = _r._readLine();
                    _line = __tmp__._0;
                    _errRead = __tmp__._1;
                };
                if (((_r.comment != (0 : stdgo.GoInt32)) && (stdgo._internal.encoding.csv.Csv__nextRune._nextRune(_line) == _r.comment) : Bool)) {
                    _line = (null : stdgo.Slice<stdgo.GoUInt8>);
                    continue;
                };
                if (((_errRead == null) && (_line.length == stdgo._internal.encoding.csv.Csv__lengthNL._lengthNL(_line)) : Bool)) {
                    _line = (null : stdgo.Slice<stdgo.GoUInt8>);
                    continue;
                };
                break;
            };
            if (stdgo.Go.toInterface(_errRead) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _errRead };
            };
            var _err:stdgo.Error = (null : stdgo.Error);
            {};
            var _commaLen = (stdgo._internal.unicode.utf8.Utf8_runeLen.runeLen(_r.comma) : stdgo.GoInt);
            var _recLine = (_r._numLine : stdgo.GoInt);
            _r._recordBuffer = (_r._recordBuffer.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _r._fieldIndexes = (_r._fieldIndexes.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
            _r._fieldPositions = (_r._fieldPositions.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.encoding.csv.Csv_T_position.T_position>);
            var _pos = ({ _line : _r._numLine, _col : (1 : stdgo.GoInt) } : stdgo._internal.encoding.csv.Csv_T_position.T_position);
            @:label("parseField") while (true) {
                if (_r.trimLeadingSpace) {
                    var _i = (stdgo._internal.bytes.Bytes_indexFunc.indexFunc(_line, function(_r:stdgo.GoInt32):Bool {
                        return !stdgo._internal.unicode.Unicode_isSpace.isSpace(_r);
                    }) : stdgo.GoInt);
                    if ((_i < (0 : stdgo.GoInt) : Bool)) {
                        _i = (_line.length);
                        _pos._col = (_pos._col - (stdgo._internal.encoding.csv.Csv__lengthNL._lengthNL(_line)) : stdgo.GoInt);
                    };
                    _line = (_line.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>);
                    _pos._col = (_pos._col + (_i) : stdgo.GoInt);
                };
                if (((_line.length == (0 : stdgo.GoInt)) || (_line[(0 : stdgo.GoInt)] != (34 : stdgo.GoUInt8)) : Bool)) {
                    var _i = (stdgo._internal.bytes.Bytes_indexRune.indexRune(_line, _r.comma) : stdgo.GoInt);
                    var _field = _line;
                    if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                        _field = (_field.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>);
                    } else {
                        _field = (_field.__slice__(0, ((_field.length) - stdgo._internal.encoding.csv.Csv__lengthNL._lengthNL(_field) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    };
                    if (!_r.lazyQuotes) {
                        {
                            var _j = (stdgo._internal.bytes.Bytes_indexByte.indexByte(_field, (34 : stdgo.GoUInt8)) : stdgo.GoInt);
                            if ((_j >= (0 : stdgo.GoInt) : Bool)) {
                                var _col = (_pos._col + _j : stdgo.GoInt);
                                _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ startLine : _recLine, line : _r._numLine, column : _col, err : stdgo._internal.encoding.csv.Csv_errBareQuote.errBareQuote } : stdgo._internal.encoding.csv.Csv_ParseError.ParseError)) : stdgo.Ref<stdgo._internal.encoding.csv.Csv_ParseError.ParseError>));
                                @:jump("parseField") break;
                            };
                        };
                    };
                    _r._recordBuffer = (_r._recordBuffer.__append__(...(_field : Array<stdgo.GoUInt8>)));
                    _r._fieldIndexes = (_r._fieldIndexes.__append__(_r._recordBuffer.length));
                    _r._fieldPositions = (_r._fieldPositions.__append__(_pos?.__copy__()));
                    if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                        _line = (_line.__slice__((_i + _commaLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _pos._col = (_pos._col + ((_i + _commaLen : stdgo.GoInt)) : stdgo.GoInt);
                        @:jump("parseField") continue;
                    };
                    @:jump("parseField") break;
                } else {
                    var _fieldPos = (_pos?.__copy__() : stdgo._internal.encoding.csv.Csv_T_position.T_position);
                    _line = (_line.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _pos._col = (_pos._col + ((1 : stdgo.GoInt)) : stdgo.GoInt);
                    while (true) {
                        var _i = (stdgo._internal.bytes.Bytes_indexByte.indexByte(_line, (34 : stdgo.GoUInt8)) : stdgo.GoInt);
                        if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                            _r._recordBuffer = (_r._recordBuffer.__append__(...((_line.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                            _line = (_line.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                            _pos._col = (_pos._col + ((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                            {
                                var _rn = (stdgo._internal.encoding.csv.Csv__nextRune._nextRune(_line) : stdgo.GoInt32);
                                {
                                    var __switchIndex__ = -1;
                                    var __run__ = true;
                                    while (__run__) {
                                        __run__ = false;
                                        if (_rn == ((34 : stdgo.GoInt32))) {
                                            _r._recordBuffer = (_r._recordBuffer.__append__((34 : stdgo.GoUInt8)));
                                            _line = (_line.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                                            _pos._col = (_pos._col + ((1 : stdgo.GoInt)) : stdgo.GoInt);
                                            break;
                                        } else if (_rn == (_r.comma)) {
                                            _line = (_line.__slice__(_commaLen) : stdgo.Slice<stdgo.GoUInt8>);
                                            _pos._col = (_pos._col + (_commaLen) : stdgo.GoInt);
                                            _r._fieldIndexes = (_r._fieldIndexes.__append__(_r._recordBuffer.length));
                                            _r._fieldPositions = (_r._fieldPositions.__append__(_fieldPos?.__copy__()));
                                            @:jump("parseField") continue;
                                            break;
                                        } else if (stdgo._internal.encoding.csv.Csv__lengthNL._lengthNL(_line) == ((_line.length))) {
                                            _r._fieldIndexes = (_r._fieldIndexes.__append__(_r._recordBuffer.length));
                                            _r._fieldPositions = (_r._fieldPositions.__append__(_fieldPos?.__copy__()));
                                            @:jump("parseField") break;
                                            break;
                                        } else if (_r.lazyQuotes) {
                                            _r._recordBuffer = (_r._recordBuffer.__append__((34 : stdgo.GoUInt8)));
                                            break;
                                        } else {
                                            _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ startLine : _recLine, line : _r._numLine, column : (_pos._col - (1 : stdgo.GoInt) : stdgo.GoInt), err : stdgo._internal.encoding.csv.Csv_errQuote.errQuote } : stdgo._internal.encoding.csv.Csv_ParseError.ParseError)) : stdgo.Ref<stdgo._internal.encoding.csv.Csv_ParseError.ParseError>));
                                            @:jump("parseField") break;
                                        };
                                        break;
                                    };
                                };
                            };
                        } else if (((_line.length) > (0 : stdgo.GoInt) : Bool)) {
                            _r._recordBuffer = (_r._recordBuffer.__append__(...(_line : Array<stdgo.GoUInt8>)));
                            if (_errRead != null) {
                                @:jump("parseField") break;
                            };
                            _pos._col = (_pos._col + ((_line.length)) : stdgo.GoInt);
                            {
                                var __tmp__ = _r._readLine();
                                _line = __tmp__._0;
                                _errRead = __tmp__._1;
                            };
                            if (((_line.length) > (0 : stdgo.GoInt) : Bool)) {
                                _pos._line++;
                                _pos._col = (1 : stdgo.GoInt);
                            };
                            if (stdgo.Go.toInterface(_errRead) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                                _errRead = (null : stdgo.Error);
                            };
                        } else {
                            if ((!_r.lazyQuotes && (_errRead == null) : Bool)) {
                                _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ startLine : _recLine, line : _pos._line, column : _pos._col, err : stdgo._internal.encoding.csv.Csv_errQuote.errQuote } : stdgo._internal.encoding.csv.Csv_ParseError.ParseError)) : stdgo.Ref<stdgo._internal.encoding.csv.Csv_ParseError.ParseError>));
                                @:jump("parseField") break;
                            };
                            _r._fieldIndexes = (_r._fieldIndexes.__append__(_r._recordBuffer.length));
                            _r._fieldPositions = (_r._fieldPositions.__append__(_fieldPos?.__copy__()));
                            @:jump("parseField") break;
                        };
                    };
                };
            };
            if (_err == null) {
                _err = _errRead;
            };
            var _str = ((_r._recordBuffer : stdgo.GoString)?.__copy__() : stdgo.GoString);
            _dst = (_dst.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
            if ((_dst.capacity < (_r._fieldIndexes.length) : Bool)) {
                _dst = (new stdgo.Slice<stdgo.GoString>((_r._fieldIndexes.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
            };
            _dst = (_dst.__slice__(0, (_r._fieldIndexes.length)) : stdgo.Slice<stdgo.GoString>);
            var _preIdx:stdgo.GoInt = (0 : stdgo.GoInt);
            for (_i => _idx in _r._fieldIndexes) {
                _dst[(_i : stdgo.GoInt)] = (_str.__slice__(_preIdx, _idx) : stdgo.GoString)?.__copy__();
                _preIdx = _idx;
            };
            if ((_r.fieldsPerRecord > (0 : stdgo.GoInt) : Bool)) {
                if (((_dst.length != _r.fieldsPerRecord) && (_err == null) : Bool)) {
                    _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ startLine : _recLine, line : _recLine, column : (1 : stdgo.GoInt), err : stdgo._internal.encoding.csv.Csv_errFieldCount.errFieldCount } : stdgo._internal.encoding.csv.Csv_ParseError.ParseError)) : stdgo.Ref<stdgo._internal.encoding.csv.Csv_ParseError.ParseError>));
                };
            } else if (_r.fieldsPerRecord == ((0 : stdgo.GoInt))) {
                _r.fieldsPerRecord = (_dst.length);
            };
            return { _0 : _dst, _1 : _err };
        });
    }
    @:keep
    static public function _readLine( _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_Reader.Reader>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_Reader.Reader> = _r;
        var __tmp__ = _r._r.readSlice((10 : stdgo.GoUInt8)), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.bufio.Bufio_errBufferFull.errBufferFull))) {
            _r._rawBuffer = ((_r._rawBuffer.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_line : Array<stdgo.GoUInt8>)));
            while (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.bufio.Bufio_errBufferFull.errBufferFull))) {
                {
                    var __tmp__ = _r._r.readSlice((10 : stdgo.GoUInt8));
                    _line = __tmp__._0;
                    _err = __tmp__._1;
                };
                _r._rawBuffer = (_r._rawBuffer.__append__(...(_line : Array<stdgo.GoUInt8>)));
            };
            _line = _r._rawBuffer;
        };
        var _readSize = (_line.length : stdgo.GoInt);
        if (((_readSize > (0 : stdgo.GoInt) : Bool) && (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) : Bool)) {
            _err = (null : stdgo.Error);
            if (_line[(_readSize - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((13 : stdgo.GoUInt8))) {
                _line = (_line.__slice__(0, (_readSize - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        _r._numLine++;
        _r._offset = (_r._offset + ((_readSize : stdgo.GoInt64)) : stdgo.GoInt64);
        {
            var _n = (_line.length : stdgo.GoInt);
            if ((((_n >= (2 : stdgo.GoInt) : Bool) && _line[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)] == ((13 : stdgo.GoUInt8)) : Bool) && (_line[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                _line[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)] = (10 : stdgo.GoUInt8);
                _line = (_line.__slice__(0, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        return { _0 : _line, _1 : _err };
    }
    @:keep
    static public function readAll( _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_Reader.Reader>):{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.GoString>>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_Reader.Reader> = _r;
        var _records = (null : stdgo.Slice<stdgo.Slice<stdgo.GoString>>), _err = (null : stdgo.Error);
        while (true) {
            var __tmp__ = _r._readRecord((null : stdgo.Slice<stdgo.GoString>)), _record:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                return { _0 : _records, _1 : (null : stdgo.Error) };
            };
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.Slice<stdgo.GoString>>), _1 : _err };
            };
            _records = (_records.__append__(_record));
        };
    }
    @:keep
    static public function inputOffset( _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_Reader.Reader>):stdgo.GoInt64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_Reader.Reader> = _r;
        return _r._offset;
    }
    @:keep
    static public function fieldPos( _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_Reader.Reader>, _field:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_Reader.Reader> = _r;
        var _line = (0 : stdgo.GoInt), _column = (0 : stdgo.GoInt);
        if (((_field < (0 : stdgo.GoInt) : Bool) || (_field >= (_r._fieldPositions.length) : Bool) : Bool)) {
            throw stdgo.Go.toInterface(("out of range index passed to FieldPos" : stdgo.GoString));
        };
        var _p = (stdgo.Go.setRef(_r._fieldPositions[(_field : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.csv.Csv_T_position.T_position>);
        return { _0 : _p._line, _1 : _p._col };
    }
    @:keep
    static public function read( _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_Reader.Reader>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_Reader.Reader> = _r;
        var _record = (null : stdgo.Slice<stdgo.GoString>), _err = (null : stdgo.Error);
        if (_r.reuseRecord) {
            {
                var __tmp__ = _r._readRecord(_r._lastRecord);
                _record = __tmp__._0;
                _err = __tmp__._1;
            };
            _r._lastRecord = _record;
        } else {
            {
                var __tmp__ = _r._readRecord((null : stdgo.Slice<stdgo.GoString>));
                _record = __tmp__._0;
                _err = __tmp__._1;
            };
        };
        return { _0 : _record, _1 : _err };
    }
}
