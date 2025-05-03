package stdgo._internal.encoding.csv;
@:keep @:allow(stdgo._internal.encoding.csv.Csv.Reader_asInterface) class Reader_static_extension {
    @:keep
    @:tdfield
    static public function _readRecord( _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_reader.Reader>, _dst:stdgo.Slice<stdgo.GoString>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_reader.Reader> = _r;
        var _preIdx_16:stdgo.GoInt = (0 : stdgo.GoInt);
        var _rn_14:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _quoteLen_3 = 1i64;
        var _err_2:stdgo.Error = (null : stdgo.Error);
        var _idx_18:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_17:stdgo.GoInt = (0 : stdgo.GoInt);
        var _str_15:stdgo.GoString = ("" : stdgo.GoString);
        var _j_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_9:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _pos_6:stdgo._internal.encoding.csv.Csv_t_position.T_position = ({} : stdgo._internal.encoding.csv.Csv_t_position.T_position);
        var _i_13:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldPos_12:stdgo._internal.encoding.csv.Csv_t_position.T_position = ({} : stdgo._internal.encoding.csv.Csv_t_position.T_position);
        var _col_11:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _recLine_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _parseFieldBreak = false;
        var _commaLen_4:stdgo.GoInt = (0 : stdgo.GoInt);
        var _errRead_1:stdgo.Error = (null : stdgo.Error);
        var _line_0:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L297"
                    if ((((@:checkr _r ?? throw "null pointer dereference").comma == ((@:checkr _r ?? throw "null pointer dereference").comment) || !stdgo._internal.encoding.csv.Csv__validdelim._validDelim((@:checkr _r ?? throw "null pointer dereference").comma) : Bool) || ((((@:checkr _r ?? throw "null pointer dereference").comment != (0 : stdgo.GoInt32)) && !stdgo._internal.encoding.csv.Csv__validdelim._validDelim((@:checkr _r ?? throw "null pointer dereference").comment) : Bool)) : Bool)) {
                        _gotoNext = 4200825i64;
                    } else {
                        _gotoNext = 4200936i64;
                    };
                } else if (__value__ == (4200825i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L298"
                    return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : stdgo._internal.encoding.csv.Csv__errinvaliddelim._errInvalidDelim };
                    _gotoNext = 4200936i64;
                } else if (__value__ == (4200936i64)) {
                    0i64;
                    _gotoNext = 4200972i64;
                } else if (__value__ == (4200972i64)) {
                    //"file://#L0"
                    if (_errRead_1 == null) {
                        _gotoNext = 4200991i64;
                    } else {
                        _gotoNext = 4201244i64;
                    };
                } else if (__value__ == (4200991i64)) {
                    {
                        var __tmp__ = _r._readLine();
                        _line_0 = @:tmpset0 __tmp__._0;
                        _errRead_1 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L306"
                    if ((((@:checkr _r ?? throw "null pointer dereference").comment != (0 : stdgo.GoInt32)) && (stdgo._internal.encoding.csv.Csv__nextrune._nextRune(_line_0) == (@:checkr _r ?? throw "null pointer dereference").comment) : Bool)) {
                        _gotoNext = 4201075i64;
                    } else {
                        _gotoNext = 4201131i64;
                    };
                } else if (__value__ == (4201075i64)) {
                    _line_0 = (null : stdgo.Slice<stdgo.GoUInt8>);
                    0i64;
                    _gotoNext = 4200972i64;
                } else if (__value__ == (4201131i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L310"
                    if (((_errRead_1 == null) && (_line_0.length == stdgo._internal.encoding.csv.Csv__lengthnl._lengthNL(_line_0)) : Bool)) {
                        _gotoNext = 4201180i64;
                    } else {
                        _gotoNext = 4201234i64;
                    };
                } else if (__value__ == (4201180i64)) {
                    _line_0 = (null : stdgo.Slice<stdgo.GoUInt8>);
                    0i64;
                    _gotoNext = 4200972i64;
                } else if (__value__ == (4201234i64)) {
                    _gotoNext = 4201244i64;
                } else if (__value__ == (4201244i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L316"
                    if (stdgo.Go.toInterface(_errRead_1) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                        _gotoNext = 4201265i64;
                    } else {
                        _gotoNext = 4201330i64;
                    };
                } else if (__value__ == (4201265i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L317"
                    return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _errRead_1 };
                    _gotoNext = 4201330i64;
                } else if (__value__ == (4201330i64)) {
                    _commaLen_4 = stdgo._internal.unicode.utf8.Utf8_runelen.runeLen((@:checkr _r ?? throw "null pointer dereference").comma);
                    _recLine_5 = (@:checkr _r ?? throw "null pointer dereference")._numLine;
                    (@:checkr _r ?? throw "null pointer dereference")._recordBuffer = ((@:checkr _r ?? throw "null pointer dereference")._recordBuffer.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    (@:checkr _r ?? throw "null pointer dereference")._fieldIndexes = ((@:checkr _r ?? throw "null pointer dereference")._fieldIndexes.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
                    (@:checkr _r ?? throw "null pointer dereference")._fieldPositions = ((@:checkr _r ?? throw "null pointer dereference")._fieldPositions.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.encoding.csv.Csv_t_position.T_position>);
                    _pos_6 = ({ _col : (1 : stdgo.GoInt) } : stdgo._internal.encoding.csv.Csv_t_position.T_position);
                    _gotoNext = 4201613i64;
                } else if (__value__ == (4201613i64)) {
                    0i64;
                    _parseFieldBreak = false;
                    _gotoNext = 4201626i64;
                } else if (__value__ == (4201626i64)) {
                    //"file://#L0"
                    if (!_parseFieldBreak) {
                        _gotoNext = 4201630i64;
                    } else {
                        _gotoNext = 4204722i64;
                    };
                } else if (__value__ == (4201630i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L331"
                    if ((@:checkr _r ?? throw "null pointer dereference").trimLeadingSpace) {
                        _gotoNext = 4201656i64;
                    } else {
                        _gotoNext = 4201853i64;
                    };
                } else if (__value__ == (4201656i64)) {
                    _i_7 = stdgo._internal.bytes.Bytes_indexfunc.indexFunc(_line_0, function(_r:stdgo.GoInt32):Bool {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L333"
                        return !stdgo._internal.unicode.Unicode_isspace.isSpace(_r);
                    });
                    //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L335"
                    if ((_i_7 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4201757i64;
                    } else {
                        _gotoNext = 4201815i64;
                    };
                } else if (__value__ == (4201757i64)) {
                    _i_7 = (_line_0.length);
                    _pos_6._col = (_pos_6._col - (stdgo._internal.encoding.csv.Csv__lengthnl._lengthNL(_line_0)) : stdgo.GoInt);
                    _gotoNext = 4201815i64;
                } else if (__value__ == (4201815i64)) {
                    _line_0 = (_line_0.__slice__(_i_7) : stdgo.Slice<stdgo.GoUInt8>);
                    _pos_6._col = (_pos_6._col + (_i_7) : stdgo.GoInt);
                    _gotoNext = 4201853i64;
                } else if (__value__ == (4201853i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L342"
                    if (((_line_0.length == (0 : stdgo.GoInt)) || (_line_0[(0 : stdgo.GoInt)] != (34 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4201889i64;
                    } else {
                        _gotoNext = 4202657i64;
                    };
                } else if (__value__ == (4201889i64)) {
                    _i_8 = stdgo._internal.bytes.Bytes_indexrune.indexRune(_line_0, (@:checkr _r ?? throw "null pointer dereference").comma);
                    _field_9 = _line_0;
                    //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L346"
                    if ((_i_8 >= (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4201990i64;
                    } else {
                        _gotoNext = 4202024i64;
                    };
                } else if (__value__ == (4201990i64)) {
                    _field_9 = (_field_9.__slice__(0, _i_8) : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 4202140i64;
                } else if (__value__ == (4202024i64)) {
                    _gotoNext = 4202024i64;
                    _field_9 = (_field_9.__slice__(0, ((_field_9.length) - stdgo._internal.encoding.csv.Csv__lengthnl._lengthNL(_field_9) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    0i64;
                    _gotoNext = 4202140i64;
                } else if (__value__ == (4202140i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L352"
                    if (!(@:checkr _r ?? throw "null pointer dereference").lazyQuotes) {
                        _gotoNext = 4202157i64;
                    } else {
                        _gotoNext = 4202361i64;
                    };
                } else if (__value__ == (4202157i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L353"
                    {
                        _j_10 = stdgo._internal.bytes.Bytes_indexbyte.indexByte(_field_9, (34 : stdgo.GoUInt8));
                        if ((_j_10 >= (0 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 4202207i64;
                        } else {
                            _gotoNext = 4202361i64;
                        };
                    };
                } else if (__value__ == (4202207i64)) {
                    _col_11 = (_pos_6._col + _j_10 : stdgo.GoInt);
                    _err_2 = stdgo.Go.asInterface((stdgo.Go.setRef(({ startLine : _recLine_5, line : (@:checkr _r ?? throw "null pointer dereference")._numLine, column : _col_11, err : stdgo._internal.encoding.csv.Csv_errbarequote.errBareQuote } : stdgo._internal.encoding.csv.Csv_parseerror.ParseError)) : stdgo.Ref<stdgo._internal.encoding.csv.Csv_parseerror.ParseError>));
                    _parseFieldBreak = true;
                    _gotoNext = 4201626i64;
                } else if (__value__ == (4202361i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._recordBuffer = ((@:checkr _r ?? throw "null pointer dereference")._recordBuffer.__append__(...(_field_9 : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                    (@:checkr _r ?? throw "null pointer dereference")._fieldIndexes = ((@:checkr _r ?? throw "null pointer dereference")._fieldIndexes.__append__(((@:checkr _r ?? throw "null pointer dereference")._recordBuffer.length)) : stdgo.Slice<stdgo.GoInt>);
                    (@:checkr _r ?? throw "null pointer dereference")._fieldPositions = ((@:checkr _r ?? throw "null pointer dereference")._fieldPositions.__append__(_pos_6?.__copy__()) : stdgo.Slice<stdgo._internal.encoding.csv.Csv_t_position.T_position>);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L362"
                    if ((_i_8 >= (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4202540i64;
                    } else {
                        _gotoNext = 4202631i64;
                    };
                } else if (__value__ == (4202540i64)) {
                    _line_0 = (_line_0.__slice__((_i_8 + _commaLen_4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _pos_6._col = (_pos_6._col + ((_i_8 + _commaLen_4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 4201626i64;
                } else if (__value__ == (4202631i64)) {
                    _parseFieldBreak = true;
                    _gotoNext = 4201626i64;
                } else if (__value__ == (4202657i64)) {
                    _gotoNext = 4202657i64;
                    _fieldPos_12 = _pos_6?.__copy__();
                    _line_0 = (_line_0.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _pos_6._col = (_pos_6._col + ((1 : stdgo.GoInt)) : stdgo.GoInt);
                    0i64;
                    _gotoNext = 4202756i64;
                } else if (__value__ == (4202756i64)) {
                    //"file://#L0"
                    if (true) {
                        _gotoNext = 4202760i64;
                    } else {
                        _gotoNext = 4201626i64;
                    };
                } else if (__value__ == (4202760i64)) {
                    _i_13 = stdgo._internal.bytes.Bytes_indexbyte.indexByte(_line_0, (34 : stdgo.GoUInt8));
                    //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L375"
                    if ((_i_13 >= (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4202812i64;
                    } else if (((_line_0.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4203996i64;
                    } else {
                        _gotoNext = 4204347i64;
                    };
                } else if (__value__ == (4202812i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._recordBuffer = ((@:checkr _r ?? throw "null pointer dereference")._recordBuffer.__append__(...((_line_0.__slice__(0, _i_13) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                    _line_0 = (_line_0.__slice__((_i_13 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _pos_6._col = (_pos_6._col + ((_i_13 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 4202960i64;
                } else if (__value__ == (4202960i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L380"
                    {
                        _rn_14 = stdgo._internal.encoding.csv.Csv__nextrune._nextRune(_line_0);
                        if (_rn_14 == ((34 : stdgo.GoInt32))) {
                            _gotoNext = 4202996i64;
                        } else if (_rn_14 == ((@:checkr _r ?? throw "null pointer dereference").comma)) {
                            _gotoNext = 4203162i64;
                        } else if (stdgo._internal.encoding.csv.Csv__lengthnl._lengthNL(_line_0) == ((_line_0.length))) {
                            _gotoNext = 4203434i64;
                        } else if ((@:checkr _r ?? throw "null pointer dereference").lazyQuotes) {
                            _gotoNext = 4203662i64;
                        } else {
                            _gotoNext = 4203773i64;
                        };
                    };
                } else if (__value__ == (4202996i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._recordBuffer = ((@:checkr _r ?? throw "null pointer dereference")._recordBuffer.__append__((34 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                    _line_0 = (_line_0.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _pos_6._col = (_pos_6._col + ((1 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 4202756i64;
                } else if (__value__ == (4203162i64)) {
                    _line_0 = (_line_0.__slice__(_commaLen_4) : stdgo.Slice<stdgo.GoUInt8>);
                    _pos_6._col = (_pos_6._col + (_commaLen_4) : stdgo.GoInt);
                    (@:checkr _r ?? throw "null pointer dereference")._fieldIndexes = ((@:checkr _r ?? throw "null pointer dereference")._fieldIndexes.__append__(((@:checkr _r ?? throw "null pointer dereference")._recordBuffer.length)) : stdgo.Slice<stdgo.GoInt>);
                    (@:checkr _r ?? throw "null pointer dereference")._fieldPositions = ((@:checkr _r ?? throw "null pointer dereference")._fieldPositions.__append__(_fieldPos_12?.__copy__()) : stdgo.Slice<stdgo._internal.encoding.csv.Csv_t_position.T_position>);
                    _gotoNext = 4201626i64;
                } else if (__value__ == (4203434i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._fieldIndexes = ((@:checkr _r ?? throw "null pointer dereference")._fieldIndexes.__append__(((@:checkr _r ?? throw "null pointer dereference")._recordBuffer.length)) : stdgo.Slice<stdgo.GoInt>);
                    (@:checkr _r ?? throw "null pointer dereference")._fieldPositions = ((@:checkr _r ?? throw "null pointer dereference")._fieldPositions.__append__(_fieldPos_12?.__copy__()) : stdgo.Slice<stdgo._internal.encoding.csv.Csv_t_position.T_position>);
                    _parseFieldBreak = true;
                    _gotoNext = 4201626i64;
                } else if (__value__ == (4203662i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._recordBuffer = ((@:checkr _r ?? throw "null pointer dereference")._recordBuffer.__append__((34 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 4202756i64;
                } else if (__value__ == (4203773i64)) {
                    _err_2 = stdgo.Go.asInterface((stdgo.Go.setRef(({ startLine : _recLine_5, line : (@:checkr _r ?? throw "null pointer dereference")._numLine, column : (_pos_6._col - (1 : stdgo.GoInt) : stdgo.GoInt), err : stdgo._internal.encoding.csv.Csv_errquote.errQuote } : stdgo._internal.encoding.csv.Csv_parseerror.ParseError)) : stdgo.Ref<stdgo._internal.encoding.csv.Csv_parseerror.ParseError>));
                    _parseFieldBreak = true;
                    _gotoNext = 4201626i64;
                } else if (__value__ == (4203996i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._recordBuffer = ((@:checkr _r ?? throw "null pointer dereference")._recordBuffer.__append__(...(_line_0 : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L409"
                    if (_errRead_1 != null) {
                        _gotoNext = 4204123i64;
                    } else {
                        _gotoNext = 4204160i64;
                    };
                } else if (__value__ == (4204123i64)) {
                    _parseFieldBreak = true;
                    _gotoNext = 4201626i64;
                } else if (__value__ == (4204160i64)) {
                    _pos_6._col = (_pos_6._col + ((_line_0.length)) : stdgo.GoInt);
                    {
                        var __tmp__ = _r._readLine();
                        _line_0 = @:tmpset0 __tmp__._0;
                        _errRead_1 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L414"
                    if (((_line_0.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4204237i64;
                    } else {
                        _gotoNext = 4204286i64;
                    };
                } else if (__value__ == (4204237i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L415"
                    _pos_6._line++;
                    _pos_6._col = (1 : stdgo.GoInt);
                    _gotoNext = 4204286i64;
                } else if (__value__ == (4204286i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L418"
                    if (stdgo.Go.toInterface(_errRead_1) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                        _gotoNext = 4204307i64;
                    } else {
                        _gotoNext = 4202756i64;
                    };
                } else if (__value__ == (4204307i64)) {
                    _errRead_1 = (null : stdgo.Error);
                    _gotoNext = 4202756i64;
                } else if (__value__ == (4204347i64)) {
                    _gotoNext = 4204347i64;
                    //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L423"
                    if ((!(@:checkr _r ?? throw "null pointer dereference").lazyQuotes && (_errRead_1 == null) : Bool)) {
                        _gotoNext = 4204432i64;
                    } else {
                        _gotoNext = 4204561i64;
                    };
                } else if (__value__ == (4204432i64)) {
                    _err_2 = stdgo.Go.asInterface((stdgo.Go.setRef(({ startLine : _recLine_5, line : _pos_6._line, column : _pos_6._col, err : stdgo._internal.encoding.csv.Csv_errquote.errQuote } : stdgo._internal.encoding.csv.Csv_parseerror.ParseError)) : stdgo.Ref<stdgo._internal.encoding.csv.Csv_parseerror.ParseError>));
                    _parseFieldBreak = true;
                    _gotoNext = 4201626i64;
                } else if (__value__ == (4204561i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._fieldIndexes = ((@:checkr _r ?? throw "null pointer dereference")._fieldIndexes.__append__(((@:checkr _r ?? throw "null pointer dereference")._recordBuffer.length)) : stdgo.Slice<stdgo.GoInt>);
                    (@:checkr _r ?? throw "null pointer dereference")._fieldPositions = ((@:checkr _r ?? throw "null pointer dereference")._fieldPositions.__append__(_fieldPos_12?.__copy__()) : stdgo.Slice<stdgo._internal.encoding.csv.Csv_t_position.T_position>);
                    _parseFieldBreak = true;
                    _gotoNext = 4201626i64;
                } else if (__value__ == (4204722i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L434"
                    if (_err_2 == null) {
                        _gotoNext = 4204736i64;
                    } else {
                        _gotoNext = 4204884i64;
                    };
                } else if (__value__ == (4204736i64)) {
                    _err_2 = _errRead_1;
                    _gotoNext = 4204884i64;
                } else if (__value__ == (4204884i64)) {
                    _str_15 = ((@:checkr _r ?? throw "null pointer dereference")._recordBuffer : stdgo.GoString)?.__copy__();
                    _dst = (_dst.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L442"
                    if ((_dst.capacity < ((@:checkr _r ?? throw "null pointer dereference")._fieldIndexes.length) : Bool)) {
                        _gotoNext = 4205011i64;
                    } else {
                        _gotoNext = 4205061i64;
                    };
                } else if (__value__ == (4205011i64)) {
                    _dst = (new stdgo.Slice<stdgo.GoString>(((@:checkr _r ?? throw "null pointer dereference")._fieldIndexes.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
                    _gotoNext = 4205061i64;
                } else if (__value__ == (4205061i64)) {
                    _dst = (_dst.__slice__(0, ((@:checkr _r ?? throw "null pointer dereference")._fieldIndexes.length)) : stdgo.Slice<stdgo.GoString>);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L447"
                    if ((0i64 : stdgo.GoInt) < ((@:checkr _r ?? throw "null pointer dereference")._fieldIndexes.length)) {
                        _gotoNext = 4205189i64;
                    } else {
                        _gotoNext = 4205246i64;
                    };
                } else if (__value__ == (4205145i64)) {
                    _idx_18 = (@:checkr _r ?? throw "null pointer dereference")._fieldIndexes[(_i_17 : stdgo.GoInt)];
                    _dst[(_i_17 : stdgo.GoInt)] = (_str_15.__slice__(_preIdx_16, _idx_18) : stdgo.GoString)?.__copy__();
                    _preIdx_16 = _idx_18;
                    //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L447"
                    _i_17++;
                    _gotoNext = 4205190i64;
                } else if (__value__ == (4205189i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = (@:checkr _r ?? throw "null pointer dereference")._fieldIndexes[(0i64 : stdgo.GoInt)];
                        _i_17 = @:binopAssign __tmp__0;
                        _idx_18 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 4205190i64;
                } else if (__value__ == (4205190i64)) {
                    //"file://#L0"
                    if (_i_17 < ((@:checkr _r ?? throw "null pointer dereference")._fieldIndexes.length)) {
                        _gotoNext = 4205145i64;
                    } else {
                        _gotoNext = 4205246i64;
                    };
                } else if (__value__ == (4205246i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L453"
                    if (((@:checkr _r ?? throw "null pointer dereference").fieldsPerRecord > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4205271i64;
                    } else if ((@:checkr _r ?? throw "null pointer dereference").fieldsPerRecord == ((0 : stdgo.GoInt))) {
                        _gotoNext = 4205485i64;
                    } else {
                        _gotoNext = 4205522i64;
                    };
                } else if (__value__ == (4205271i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L454"
                    if (((_dst.length != (@:checkr _r ?? throw "null pointer dereference").fieldsPerRecord) && (_err_2 == null) : Bool)) {
                        _gotoNext = 4205322i64;
                    } else {
                        _gotoNext = 4205522i64;
                    };
                } else if (__value__ == (4205322i64)) {
                    _err_2 = stdgo.Go.asInterface((stdgo.Go.setRef(({ startLine : _recLine_5, line : _recLine_5, column : (1 : stdgo.GoInt), err : stdgo._internal.encoding.csv.Csv_errfieldcount.errFieldCount } : stdgo._internal.encoding.csv.Csv_parseerror.ParseError)) : stdgo.Ref<stdgo._internal.encoding.csv.Csv_parseerror.ParseError>));
                    _gotoNext = 4205522i64;
                } else if (__value__ == (4205485i64)) {
                    (@:checkr _r ?? throw "null pointer dereference").fieldsPerRecord = (_dst.length);
                    _gotoNext = 4205522i64;
                } else if (__value__ == (4205522i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L465"
                    return { _0 : _dst, _1 : _err_2 };
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _readLine( _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_reader.Reader>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_reader.Reader> = _r;
        var __tmp__ = (@:checkr _r ?? throw "null pointer dereference")._r.readSlice((10 : stdgo.GoUInt8)), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L256"
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.bufio.Bufio_errbufferfull.errBufferFull))) {
            (@:checkr _r ?? throw "null pointer dereference")._rawBuffer = (((@:checkr _r ?? throw "null pointer dereference")._rawBuffer.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_line : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L258"
            while (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.bufio.Bufio_errbufferfull.errBufferFull))) {
                {
                    var __tmp__ = (@:checkr _r ?? throw "null pointer dereference")._r.readSlice((10 : stdgo.GoUInt8));
                    _line = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                (@:checkr _r ?? throw "null pointer dereference")._rawBuffer = ((@:checkr _r ?? throw "null pointer dereference")._rawBuffer.__append__(...(_line : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            };
            _line = (@:checkr _r ?? throw "null pointer dereference")._rawBuffer;
        };
        var _readSize = (_line.length : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L265"
        if (((_readSize > (0 : stdgo.GoInt) : Bool) && (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool)) {
            _err = (null : stdgo.Error);
            //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L268"
            if (_line[(_readSize - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((13 : stdgo.GoUInt8))) {
                _line = (_line.__slice__(0, (_readSize - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L272"
        (@:checkr _r ?? throw "null pointer dereference")._numLine++;
        (@:checkr _r ?? throw "null pointer dereference")._offset = ((@:checkr _r ?? throw "null pointer dereference")._offset + ((_readSize : stdgo.GoInt64)) : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L275"
        {
            var _n = (_line.length : stdgo.GoInt);
            if ((((_n >= (2 : stdgo.GoInt) : Bool) && _line[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)] == ((13 : stdgo.GoUInt8)) : Bool) && (_line[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                _line[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)] = (10 : stdgo.GoUInt8);
                _line = (_line.__slice__(0, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L279"
        return { _0 : _line, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function readAll( _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_reader.Reader>):{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.GoString>>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_reader.Reader> = _r;
        var _records = (null : stdgo.Slice<stdgo.Slice<stdgo.GoString>>), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L238"
        while (true) {
            var __tmp__ = _r._readRecord((null : stdgo.Slice<stdgo.GoString>)), _record:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L240"
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L241"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.GoString>>; var _1 : stdgo.Error; } = { _0 : _records, _1 : (null : stdgo.Error) };
                    _records = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L243"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L244"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.GoString>>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.Slice<stdgo.GoString>>), _1 : _err };
                    _records = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            _records = (_records.__append__(_record) : stdgo.Slice<stdgo.Slice<stdgo.GoString>>);
        };
    }
    @:keep
    @:tdfield
    static public function inputOffset( _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_reader.Reader>):stdgo.GoInt64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_reader.Reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L224"
        return (@:checkr _r ?? throw "null pointer dereference")._offset;
    }
    @:keep
    @:tdfield
    static public function fieldPos( _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_reader.Reader>, _field:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_reader.Reader> = _r;
        var _line = (0 : stdgo.GoInt), _column = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L213"
        if (((_field < (0 : stdgo.GoInt) : Bool) || (_field >= ((@:checkr _r ?? throw "null pointer dereference")._fieldPositions.length) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L214"
            throw stdgo.Go.toInterface(("out of range index passed to FieldPos" : stdgo.GoString));
        };
        var _p = (stdgo.Go.setRef((@:checkr _r ?? throw "null pointer dereference")._fieldPositions[(_field : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.csv.Csv_t_position.T_position>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L217"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } = { _0 : (@:checkr _p ?? throw "null pointer dereference")._line, _1 : (@:checkr _p ?? throw "null pointer dereference")._col };
            _line = __tmp__._0;
            _column = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_reader.Reader>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_reader.Reader> = _r;
        var _record = (null : stdgo.Slice<stdgo.GoString>), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L197"
        if ((@:checkr _r ?? throw "null pointer dereference").reuseRecord) {
            {
                var __tmp__ = _r._readRecord((@:checkr _r ?? throw "null pointer dereference")._lastRecord);
                _record = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            (@:checkr _r ?? throw "null pointer dereference")._lastRecord = _record;
        } else {
            {
                var __tmp__ = _r._readRecord((null : stdgo.Slice<stdgo.GoString>));
                _record = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader.go#L203"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } = { _0 : _record, _1 : _err };
            _record = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
