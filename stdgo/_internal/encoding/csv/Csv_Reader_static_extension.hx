package stdgo._internal.encoding.csv;
@:keep @:allow(stdgo._internal.encoding.csv.Csv.Reader_asInterface) class Reader_static_extension {
    @:keep
    static public function _readRecord( _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_Reader.Reader>, _dst:stdgo.Slice<stdgo.GoString>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_Reader.Reader> = _r;
        var _quoteLen_3652575;
        var _i_3656338:stdgo.GoInt = (0 : stdgo.GoInt);
        var _preIdx_3656322:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3652558:stdgo.Error = (null : stdgo.Error);
        var _rn_3654191:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _j_3653390:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_3653187:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _i_3653148:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pos_3652796:stdgo._internal.encoding.csv.Csv_T_position.T_position = ({} : stdgo._internal.encoding.csv.Csv_T_position.T_position);
        var _commaLen_3652596:stdgo.GoInt = (0 : stdgo.GoInt);
        var _errRead_3652181:stdgo.Error = (null : stdgo.Error);
        var _str_3656108:stdgo.GoString = ("" : stdgo.GoString);
        var _recLine_3652631:stdgo.GoInt = (0 : stdgo.GoInt);
        var _line_3652164:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _idx_3656341:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3653990:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldPos_3653912:stdgo._internal.encoding.csv.Csv_T_position.T_position = ({} : stdgo._internal.encoding.csv.Csv_T_position.T_position);
        var _col_3653438:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3652885:stdgo.GoInt = (0 : stdgo.GoInt);
        var _parseFieldBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (((_r.comma == (_r.comment) || !stdgo._internal.encoding.csv.Csv__validDelim._validDelim(_r.comma) : Bool) || (((_r.comment != (0 : stdgo.GoInt32)) && !stdgo._internal.encoding.csv.Csv__validDelim._validDelim(_r.comment) : Bool)) : Bool)) {
                        _gotoNext = 3652049i32;
                    } else {
                        _gotoNext = 3652160i32;
                    };
                } else if (__value__ == (3652049i32)) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : stdgo._internal.encoding.csv.Csv__errInvalidDelim._errInvalidDelim };
                    _gotoNext = 3652160i32;
                } else if (__value__ == (3652160i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3652196i32;
                } else if (__value__ == (3652196i32)) {
                    if (_errRead_3652181 == null) {
                        _gotoNext = 3652215i32;
                    } else {
                        _gotoNext = 3652468i32;
                    };
                } else if (__value__ == (3652215i32)) {
                    {
                        var __tmp__ = _r._readLine();
                        _line_3652164 = __tmp__._0;
                        _errRead_3652181 = __tmp__._1;
                    };
                    if (((_r.comment != (0 : stdgo.GoInt32)) && (stdgo._internal.encoding.csv.Csv__nextRune._nextRune(_line_3652164) == _r.comment) : Bool)) {
                        _gotoNext = 3652299i32;
                    } else {
                        _gotoNext = 3652355i32;
                    };
                } else if (__value__ == (3652299i32)) {
                    _line_3652164 = (null : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3652196i32;
                } else if (__value__ == (3652355i32)) {
                    if (((_errRead_3652181 == null) && (_line_3652164.length == stdgo._internal.encoding.csv.Csv__lengthNL._lengthNL(_line_3652164)) : Bool)) {
                        _gotoNext = 3652404i32;
                    } else {
                        _gotoNext = 3652458i32;
                    };
                } else if (__value__ == (3652404i32)) {
                    _line_3652164 = (null : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3652196i32;
                } else if (__value__ == (3652458i32)) {
                    _gotoNext = 3652468i32;
                } else if (__value__ == (3652468i32)) {
                    if (stdgo.Go.toInterface(_errRead_3652181) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                        _gotoNext = 3652489i32;
                    } else {
                        _gotoNext = 3652554i32;
                    };
                } else if (__value__ == (3652489i32)) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _errRead_3652181 };
                    _gotoNext = 3652554i32;
                } else if (__value__ == (3652554i32)) {
                    _quoteLen_3652575 = (("\"" : stdgo.GoString).length);
                    _commaLen_3652596 = stdgo._internal.unicode.utf8.Utf8_runeLen.runeLen(_r.comma);
                    _recLine_3652631 = _r._numLine;
                    _r._recordBuffer = (_r._recordBuffer.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _r._fieldIndexes = (_r._fieldIndexes.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
                    _r._fieldPositions = (_r._fieldPositions.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.encoding.csv.Csv_T_position.T_position>);
                    _pos_3652796 = ({ _col : (1 : stdgo.GoInt) } : stdgo._internal.encoding.csv.Csv_T_position.T_position);
                    _gotoNext = 3652837i32;
                } else if (__value__ == (3652837i32)) {
                    var __blank__ = 0i32;
                    _parseFieldBreak = false;
                    _gotoNext = 3652850i32;
                } else if (__value__ == (3652850i32)) {
                    if (!_parseFieldBreak) {
                        _gotoNext = 3652854i32;
                    } else {
                        _gotoNext = 3655946i32;
                    };
                } else if (__value__ == (3652854i32)) {
                    if (_r.trimLeadingSpace) {
                        _gotoNext = 3652880i32;
                    } else {
                        _gotoNext = 3653077i32;
                    };
                } else if (__value__ == (3652880i32)) {
                    _i_3652885 = stdgo._internal.bytes.Bytes_indexFunc.indexFunc(_line_3652164, function(_r:stdgo.GoInt32):Bool {
                        return !stdgo._internal.unicode.Unicode_isSpace.isSpace(_r);
                    });
                    if ((_i_3652885 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3652981i32;
                    } else {
                        _gotoNext = 3653039i32;
                    };
                } else if (__value__ == (3652981i32)) {
                    _i_3652885 = (_line_3652164.length);
                    _pos_3652796._col = (_pos_3652796._col - (stdgo._internal.encoding.csv.Csv__lengthNL._lengthNL(_line_3652164)) : stdgo.GoInt);
                    _gotoNext = 3653039i32;
                } else if (__value__ == (3653039i32)) {
                    _line_3652164 = (_line_3652164.__slice__(_i_3652885) : stdgo.Slice<stdgo.GoUInt8>);
                    _pos_3652796._col = (_pos_3652796._col + (_i_3652885) : stdgo.GoInt);
                    _gotoNext = 3653077i32;
                } else if (__value__ == (3653077i32)) {
                    if (((_line_3652164.length == (0 : stdgo.GoInt)) || (_line_3652164[(0 : stdgo.GoInt)] != (34 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3653113i32;
                    } else {
                        _gotoNext = 3653881i32;
                    };
                } else if (__value__ == (3653113i32)) {
                    _i_3653148 = stdgo._internal.bytes.Bytes_indexRune.indexRune(_line_3652164, _r.comma);
                    _field_3653187 = _line_3652164;
                    if ((_i_3653148 >= (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3653214i32;
                    } else {
                        _gotoNext = 3653248i32;
                    };
                } else if (__value__ == (3653214i32)) {
                    _field_3653187 = (_field_3653187.__slice__(0, _i_3653148) : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3653364i32;
                } else if (__value__ == (3653248i32)) {
                    _gotoNext = 3653248i32;
                    _field_3653187 = (_field_3653187.__slice__(0, ((_field_3653187.length) - stdgo._internal.encoding.csv.Csv__lengthNL._lengthNL(_field_3653187) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3653364i32;
                } else if (__value__ == (3653364i32)) {
                    if (!_r.lazyQuotes) {
                        _gotoNext = 3653381i32;
                    } else {
                        _gotoNext = 3653585i32;
                    };
                } else if (__value__ == (3653381i32)) {
                    {
                        _j_3653390 = stdgo._internal.bytes.Bytes_indexByte.indexByte(_field_3653187, (34 : stdgo.GoUInt8));
                        if ((_j_3653390 >= (0 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 3653431i32;
                        } else {
                            _gotoNext = 3653585i32;
                        };
                    };
                } else if (__value__ == (3653431i32)) {
                    _col_3653438 = (_pos_3652796._col + _j_3653390 : stdgo.GoInt);
                    _err_3652558 = stdgo.Go.asInterface((stdgo.Go.setRef(({ startLine : _recLine_3652631, line : _r._numLine, column : _col_3653438, err : stdgo._internal.encoding.csv.Csv_errBareQuote.errBareQuote } : stdgo._internal.encoding.csv.Csv_ParseError.ParseError)) : stdgo.Ref<stdgo._internal.encoding.csv.Csv_ParseError.ParseError>));
                    _parseFieldBreak = true;
                    _gotoNext = 3652850i32;
                } else if (__value__ == (3653585i32)) {
                    _r._recordBuffer = (_r._recordBuffer.__append__(...(_field_3653187 : Array<stdgo.GoUInt8>)));
                    _r._fieldIndexes = (_r._fieldIndexes.__append__(_r._recordBuffer.length));
                    _r._fieldPositions = (_r._fieldPositions.__append__(_pos_3652796?.__copy__()));
                    if ((_i_3653148 >= (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3653764i32;
                    } else {
                        _gotoNext = 3653855i32;
                    };
                } else if (__value__ == (3653764i32)) {
                    _line_3652164 = (_line_3652164.__slice__((_i_3653148 + _commaLen_3652596 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _pos_3652796._col = (_pos_3652796._col + ((_i_3653148 + _commaLen_3652596 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 3652850i32;
                } else if (__value__ == (3653855i32)) {
                    _parseFieldBreak = true;
                    _gotoNext = 3652850i32;
                } else if (__value__ == (3653881i32)) {
                    _gotoNext = 3653881i32;
                    _fieldPos_3653912 = _pos_3652796?.__copy__();
                    _line_3652164 = (_line_3652164.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _pos_3652796._col = (_pos_3652796._col + ((1 : stdgo.GoInt)) : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3653980i32;
                } else if (__value__ == (3653980i32)) {
                    if (true) {
                        _gotoNext = 3653984i32;
                    } else {
                        _gotoNext = 3655946i32;
                    };
                } else if (__value__ == (3653984i32)) {
                    _i_3653990 = stdgo._internal.bytes.Bytes_indexByte.indexByte(_line_3652164, (34 : stdgo.GoUInt8));
                    if ((_i_3653990 >= (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3654036i32;
                    } else if (((_line_3652164.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3655220i32;
                    } else {
                        _gotoNext = 3655571i32;
                    };
                } else if (__value__ == (3654036i32)) {
                    _r._recordBuffer = (_r._recordBuffer.__append__(...((_line_3652164.__slice__(0, _i_3653990) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                    _line_3652164 = (_line_3652164.__slice__((_i_3653990 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _pos_3652796._col = (_pos_3652796._col + ((_i_3653990 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 3654184i32;
                } else if (__value__ == (3654184i32)) {
                    {
                        _rn_3654191 = stdgo._internal.encoding.csv.Csv__nextRune._nextRune(_line_3652164);
                        if (_rn_3654191 == ((34 : stdgo.GoInt32))) {
                            _gotoNext = 3654220i32;
                        } else if (_rn_3654191 == (_r.comma)) {
                            _gotoNext = 3654386i32;
                        } else if (stdgo._internal.encoding.csv.Csv__lengthNL._lengthNL(_line_3652164) == ((_line_3652164.length))) {
                            _gotoNext = 3654658i32;
                        } else if (_r.lazyQuotes) {
                            _gotoNext = 3654886i32;
                        } else {
                            _gotoNext = 3654997i32;
                        };
                    };
                } else if (__value__ == (3654220i32)) {
                    _r._recordBuffer = (_r._recordBuffer.__append__((34 : stdgo.GoUInt8)));
                    _line_3652164 = (_line_3652164.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _pos_3652796._col = (_pos_3652796._col + ((1 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 3655946i32;
                } else if (__value__ == (3654386i32)) {
                    _line_3652164 = (_line_3652164.__slice__(_commaLen_3652596) : stdgo.Slice<stdgo.GoUInt8>);
                    _pos_3652796._col = (_pos_3652796._col + (_commaLen_3652596) : stdgo.GoInt);
                    _r._fieldIndexes = (_r._fieldIndexes.__append__(_r._recordBuffer.length));
                    _r._fieldPositions = (_r._fieldPositions.__append__(_fieldPos_3653912?.__copy__()));
                    _gotoNext = 3652850i32;
                } else if (__value__ == (3654658i32)) {
                    _r._fieldIndexes = (_r._fieldIndexes.__append__(_r._recordBuffer.length));
                    _r._fieldPositions = (_r._fieldPositions.__append__(_fieldPos_3653912?.__copy__()));
                    _parseFieldBreak = true;
                    _gotoNext = 3652850i32;
                } else if (__value__ == (3654886i32)) {
                    _r._recordBuffer = (_r._recordBuffer.__append__((34 : stdgo.GoUInt8)));
                    _gotoNext = 3655946i32;
                } else if (__value__ == (3654997i32)) {
                    _err_3652558 = stdgo.Go.asInterface((stdgo.Go.setRef(({ startLine : _recLine_3652631, line : _r._numLine, column : (_pos_3652796._col - (1 : stdgo.GoInt) : stdgo.GoInt), err : stdgo._internal.encoding.csv.Csv_errQuote.errQuote } : stdgo._internal.encoding.csv.Csv_ParseError.ParseError)) : stdgo.Ref<stdgo._internal.encoding.csv.Csv_ParseError.ParseError>));
                    _parseFieldBreak = true;
                    _gotoNext = 3652850i32;
                } else if (__value__ == (3655220i32)) {
                    _r._recordBuffer = (_r._recordBuffer.__append__(...(_line_3652164 : Array<stdgo.GoUInt8>)));
                    if (_errRead_3652181 != null) {
                        _gotoNext = 3655347i32;
                    } else {
                        _gotoNext = 3655384i32;
                    };
                } else if (__value__ == (3655347i32)) {
                    _parseFieldBreak = true;
                    _gotoNext = 3652850i32;
                } else if (__value__ == (3655384i32)) {
                    _pos_3652796._col = (_pos_3652796._col + ((_line_3652164.length)) : stdgo.GoInt);
                    {
                        var __tmp__ = _r._readLine();
                        _line_3652164 = __tmp__._0;
                        _errRead_3652181 = __tmp__._1;
                    };
                    if (((_line_3652164.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3655461i32;
                    } else {
                        _gotoNext = 3655510i32;
                    };
                } else if (__value__ == (3655461i32)) {
                    _pos_3652796._line++;
                    _pos_3652796._col = (1 : stdgo.GoInt);
                    _gotoNext = 3655510i32;
                } else if (__value__ == (3655510i32)) {
                    if (stdgo.Go.toInterface(_errRead_3652181) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                        _gotoNext = 3655531i32;
                    } else {
                        _gotoNext = 3655946i32;
                    };
                } else if (__value__ == (3655531i32)) {
                    _errRead_3652181 = (null : stdgo.Error);
                    _gotoNext = 3655946i32;
                } else if (__value__ == (3655571i32)) {
                    _gotoNext = 3655571i32;
                    if ((!_r.lazyQuotes && (_errRead_3652181 == null) : Bool)) {
                        _gotoNext = 3655656i32;
                    } else {
                        _gotoNext = 3655785i32;
                    };
                } else if (__value__ == (3655656i32)) {
                    _err_3652558 = stdgo.Go.asInterface((stdgo.Go.setRef(({ startLine : _recLine_3652631, line : _pos_3652796._line, column : _pos_3652796._col, err : stdgo._internal.encoding.csv.Csv_errQuote.errQuote } : stdgo._internal.encoding.csv.Csv_ParseError.ParseError)) : stdgo.Ref<stdgo._internal.encoding.csv.Csv_ParseError.ParseError>));
                    _parseFieldBreak = true;
                    _gotoNext = 3652850i32;
                } else if (__value__ == (3655785i32)) {
                    _r._fieldIndexes = (_r._fieldIndexes.__append__(_r._recordBuffer.length));
                    _r._fieldPositions = (_r._fieldPositions.__append__(_fieldPos_3653912?.__copy__()));
                    _parseFieldBreak = true;
                    _gotoNext = 3652850i32;
                } else if (__value__ == (3655946i32)) {
                    if (_err_3652558 == null) {
                        _gotoNext = 3655960i32;
                    } else {
                        _gotoNext = 3656108i32;
                    };
                } else if (__value__ == (3655960i32)) {
                    _err_3652558 = _errRead_3652181;
                    _gotoNext = 3656108i32;
                } else if (__value__ == (3656108i32)) {
                    _str_3656108 = (_r._recordBuffer : stdgo.GoString)?.__copy__();
                    _dst = (_dst.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                    if ((_dst.capacity < (_r._fieldIndexes.length) : Bool)) {
                        _gotoNext = 3656235i32;
                    } else {
                        _gotoNext = 3656285i32;
                    };
                } else if (__value__ == (3656235i32)) {
                    _dst = (new stdgo.Slice<stdgo.GoString>((_r._fieldIndexes.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
                    _gotoNext = 3656285i32;
                } else if (__value__ == (3656285i32)) {
                    _dst = (_dst.__slice__(0, (_r._fieldIndexes.length)) : stdgo.Slice<stdgo.GoString>);
                    if ((0i32 : stdgo.GoInt) < (_r._fieldIndexes.length)) {
                        _gotoNext = 3656413i32;
                    } else {
                        _gotoNext = 3656470i32;
                    };
                } else if (__value__ == (3656369i32)) {
                    _idx_3656341 = _r._fieldIndexes[(_i_3656338 : stdgo.GoInt)];
                    _dst[(_i_3656338 : stdgo.GoInt)] = (_str_3656108.__slice__(_preIdx_3656322, _idx_3656341) : stdgo.GoString)?.__copy__();
                    _preIdx_3656322 = _idx_3656341;
                    _i_3656338++;
                    _gotoNext = 3656414i32;
                } else if (__value__ == (3656413i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _r._fieldIndexes[(0i32 : stdgo.GoInt)];
                        _i_3656338 = __tmp__0;
                        _idx_3656341 = __tmp__1;
                    };
                    _gotoNext = 3656414i32;
                } else if (__value__ == (3656414i32)) {
                    if (_i_3656338 < (_r._fieldIndexes.length)) {
                        _gotoNext = 3656369i32;
                    } else {
                        _gotoNext = 3656470i32;
                    };
                } else if (__value__ == (3656470i32)) {
                    if ((_r.fieldsPerRecord > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3656495i32;
                    } else if (_r.fieldsPerRecord == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3656709i32;
                    } else {
                        _gotoNext = 3656746i32;
                    };
                } else if (__value__ == (3656495i32)) {
                    if (((_dst.length != _r.fieldsPerRecord) && (_err_3652558 == null) : Bool)) {
                        _gotoNext = 3656546i32;
                    } else {
                        _gotoNext = 3656746i32;
                    };
                } else if (__value__ == (3656546i32)) {
                    _err_3652558 = stdgo.Go.asInterface((stdgo.Go.setRef(({ startLine : _recLine_3652631, line : _recLine_3652631, column : (1 : stdgo.GoInt), err : stdgo._internal.encoding.csv.Csv_errFieldCount.errFieldCount } : stdgo._internal.encoding.csv.Csv_ParseError.ParseError)) : stdgo.Ref<stdgo._internal.encoding.csv.Csv_ParseError.ParseError>));
                    _gotoNext = 3656746i32;
                } else if (__value__ == (3656709i32)) {
                    _r.fieldsPerRecord = (_dst.length);
                    _gotoNext = 3656746i32;
                } else if (__value__ == (3656746i32)) {
                    return { _0 : _dst, _1 : _err_3652558 };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
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
