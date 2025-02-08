package stdgo._internal.encoding.csv;
@:keep @:allow(stdgo._internal.encoding.csv.Csv.Reader_asInterface) class Reader_static_extension {
    @:keep
    @:tdfield
    static public function _readRecord( _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_reader.Reader>, _dst:stdgo.Slice<stdgo.GoString>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_reader.Reader> = _r;
        var _idx_3656341:stdgo.GoInt = (0 : stdgo.GoInt);
        var _preIdx_3656322:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldPos_3653912:stdgo._internal.encoding.csv.Csv_t_position.T_position = ({} : stdgo._internal.encoding.csv.Csv_t_position.T_position);
        var _col_3653438:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_3653187:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _err_3652558:stdgo.Error = (null : stdgo.Error);
        var _str_3656108:stdgo.GoString = ("" : stdgo.GoString);
        var _recLine_3652631:stdgo.GoInt = (0 : stdgo.GoInt);
        var _commaLen_3652596:stdgo.GoInt = (0 : stdgo.GoInt);
        var _errRead_3652181:stdgo.Error = (null : stdgo.Error);
        var _i_3653148:stdgo.GoInt = (0 : stdgo.GoInt);
        var _quoteLen_3652575;
        var _i_3656338:stdgo.GoInt = (0 : stdgo.GoInt);
        var _rn_3654191:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_3653990:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_3653390:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3652885:stdgo.GoInt = (0 : stdgo.GoInt);
        var _parseFieldBreak = false;
        var _pos_3652796:stdgo._internal.encoding.csv.Csv_t_position.T_position = ({} : stdgo._internal.encoding.csv.Csv_t_position.T_position);
        var _line_3652164:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((((@:checkr _r ?? throw "null pointer dereference").comma == ((@:checkr _r ?? throw "null pointer dereference").comment) || !stdgo._internal.encoding.csv.Csv__validdelim._validDelim((@:checkr _r ?? throw "null pointer dereference").comma) : Bool) || ((((@:checkr _r ?? throw "null pointer dereference").comment != (0 : stdgo.GoInt32)) && !stdgo._internal.encoding.csv.Csv__validdelim._validDelim((@:checkr _r ?? throw "null pointer dereference").comment) : Bool)) : Bool)) {
                        _gotoNext = 3652049i32;
                    } else {
                        _gotoNext = 3652160i32;
                    };
                } else if (__value__ == (3652049i32)) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : stdgo._internal.encoding.csv.Csv__errinvaliddelim._errInvalidDelim };
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
                        var __tmp__ = @:check2r _r._readLine();
                        _line_3652164 = @:tmpset0 __tmp__._0;
                        _errRead_3652181 = @:tmpset0 __tmp__._1;
                    };
                    if ((((@:checkr _r ?? throw "null pointer dereference").comment != (0 : stdgo.GoInt32)) && (stdgo._internal.encoding.csv.Csv__nextrune._nextRune(_line_3652164) == (@:checkr _r ?? throw "null pointer dereference").comment) : Bool)) {
                        _gotoNext = 3652299i32;
                    } else {
                        _gotoNext = 3652355i32;
                    };
                } else if (__value__ == (3652299i32)) {
                    _line_3652164 = (null : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3652196i32;
                } else if (__value__ == (3652355i32)) {
                    if (((_errRead_3652181 == null) && (_line_3652164.length == stdgo._internal.encoding.csv.Csv__lengthnl._lengthNL(_line_3652164)) : Bool)) {
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
                    if (stdgo.Go.toInterface(_errRead_3652181) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                        _gotoNext = 3652489i32;
                    } else {
                        _gotoNext = 3652554i32;
                    };
                } else if (__value__ == (3652489i32)) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _errRead_3652181 };
                    _gotoNext = 3652554i32;
                } else if (__value__ == (3652554i32)) {
                    _quoteLen_3652575 = ((("\"" : stdgo.GoString) : stdgo.GoString).length);
                    _commaLen_3652596 = stdgo._internal.unicode.utf8.Utf8_runelen.runeLen((@:checkr _r ?? throw "null pointer dereference").comma);
                    _recLine_3652631 = (@:checkr _r ?? throw "null pointer dereference")._numLine;
                    (@:checkr _r ?? throw "null pointer dereference")._recordBuffer = ((@:checkr _r ?? throw "null pointer dereference")._recordBuffer.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    (@:checkr _r ?? throw "null pointer dereference")._fieldIndexes = ((@:checkr _r ?? throw "null pointer dereference")._fieldIndexes.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
                    (@:checkr _r ?? throw "null pointer dereference")._fieldPositions = ((@:checkr _r ?? throw "null pointer dereference")._fieldPositions.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.encoding.csv.Csv_t_position.T_position>);
                    _pos_3652796 = ({ _col : (1 : stdgo.GoInt) } : stdgo._internal.encoding.csv.Csv_t_position.T_position);
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
                    if ((@:checkr _r ?? throw "null pointer dereference").trimLeadingSpace) {
                        _gotoNext = 3652880i32;
                    } else {
                        _gotoNext = 3653077i32;
                    };
                } else if (__value__ == (3652880i32)) {
                    _i_3652885 = stdgo._internal.bytes.Bytes_indexfunc.indexFunc(_line_3652164, function(_r:stdgo.GoInt32):Bool {
                        return !stdgo._internal.unicode.Unicode_isspace.isSpace(_r);
                    });
                    if ((_i_3652885 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3652981i32;
                    } else {
                        _gotoNext = 3653039i32;
                    };
                } else if (__value__ == (3652981i32)) {
                    _i_3652885 = (_line_3652164.length);
                    _pos_3652796._col = (_pos_3652796._col - (stdgo._internal.encoding.csv.Csv__lengthnl._lengthNL(_line_3652164)) : stdgo.GoInt);
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
                    _i_3653148 = stdgo._internal.bytes.Bytes_indexrune.indexRune(_line_3652164, (@:checkr _r ?? throw "null pointer dereference").comma);
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
                    _field_3653187 = (_field_3653187.__slice__(0, ((_field_3653187.length) - stdgo._internal.encoding.csv.Csv__lengthnl._lengthNL(_field_3653187) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3653364i32;
                } else if (__value__ == (3653364i32)) {
                    if (!(@:checkr _r ?? throw "null pointer dereference").lazyQuotes) {
                        _gotoNext = 3653381i32;
                    } else {
                        _gotoNext = 3653585i32;
                    };
                } else if (__value__ == (3653381i32)) {
                    {
                        _j_3653390 = stdgo._internal.bytes.Bytes_indexbyte.indexByte(_field_3653187, (34 : stdgo.GoUInt8));
                        if ((_j_3653390 >= (0 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 3653431i32;
                        } else {
                            _gotoNext = 3653585i32;
                        };
                    };
                } else if (__value__ == (3653431i32)) {
                    _col_3653438 = (_pos_3652796._col + _j_3653390 : stdgo.GoInt);
                    _err_3652558 = stdgo.Go.asInterface((stdgo.Go.setRef(({ startLine : _recLine_3652631, line : (@:checkr _r ?? throw "null pointer dereference")._numLine, column : _col_3653438, err : stdgo._internal.encoding.csv.Csv_errbarequote.errBareQuote } : stdgo._internal.encoding.csv.Csv_parseerror.ParseError)) : stdgo.Ref<stdgo._internal.encoding.csv.Csv_parseerror.ParseError>));
                    _parseFieldBreak = true;
                    _gotoNext = 3652850i32;
                } else if (__value__ == (3653585i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._recordBuffer = ((@:checkr _r ?? throw "null pointer dereference")._recordBuffer.__append__(...(_field_3653187 : Array<stdgo.GoUInt8>)));
                    (@:checkr _r ?? throw "null pointer dereference")._fieldIndexes = ((@:checkr _r ?? throw "null pointer dereference")._fieldIndexes.__append__((@:checkr _r ?? throw "null pointer dereference")._recordBuffer.length));
                    (@:checkr _r ?? throw "null pointer dereference")._fieldPositions = ((@:checkr _r ?? throw "null pointer dereference")._fieldPositions.__append__(_pos_3652796?.__copy__()));
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
                        _gotoNext = 3652850i32;
                    };
                } else if (__value__ == (3653984i32)) {
                    _i_3653990 = stdgo._internal.bytes.Bytes_indexbyte.indexByte(_line_3652164, (34 : stdgo.GoUInt8));
                    if ((_i_3653990 >= (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3654036i32;
                    } else if (((_line_3652164.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3655220i32;
                    } else {
                        _gotoNext = 3655571i32;
                    };
                } else if (__value__ == (3654036i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._recordBuffer = ((@:checkr _r ?? throw "null pointer dereference")._recordBuffer.__append__(...((_line_3652164.__slice__(0, _i_3653990) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                    _line_3652164 = (_line_3652164.__slice__((_i_3653990 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _pos_3652796._col = (_pos_3652796._col + ((_i_3653990 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 3654184i32;
                } else if (__value__ == (3654184i32)) {
                    {
                        _rn_3654191 = stdgo._internal.encoding.csv.Csv__nextrune._nextRune(_line_3652164);
                        if (_rn_3654191 == ((34 : stdgo.GoInt32))) {
                            _gotoNext = 3654220i32;
                        } else if (_rn_3654191 == ((@:checkr _r ?? throw "null pointer dereference").comma)) {
                            _gotoNext = 3654386i32;
                        } else if (stdgo._internal.encoding.csv.Csv__lengthnl._lengthNL(_line_3652164) == ((_line_3652164.length))) {
                            _gotoNext = 3654658i32;
                        } else if ((@:checkr _r ?? throw "null pointer dereference").lazyQuotes) {
                            _gotoNext = 3654886i32;
                        } else {
                            _gotoNext = 3654997i32;
                        };
                    };
                } else if (__value__ == (3654220i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._recordBuffer = ((@:checkr _r ?? throw "null pointer dereference")._recordBuffer.__append__((34 : stdgo.GoUInt8)));
                    _line_3652164 = (_line_3652164.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _pos_3652796._col = (_pos_3652796._col + ((1 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 3653980i32;
                } else if (__value__ == (3654386i32)) {
                    _line_3652164 = (_line_3652164.__slice__(_commaLen_3652596) : stdgo.Slice<stdgo.GoUInt8>);
                    _pos_3652796._col = (_pos_3652796._col + (_commaLen_3652596) : stdgo.GoInt);
                    (@:checkr _r ?? throw "null pointer dereference")._fieldIndexes = ((@:checkr _r ?? throw "null pointer dereference")._fieldIndexes.__append__((@:checkr _r ?? throw "null pointer dereference")._recordBuffer.length));
                    (@:checkr _r ?? throw "null pointer dereference")._fieldPositions = ((@:checkr _r ?? throw "null pointer dereference")._fieldPositions.__append__(_fieldPos_3653912?.__copy__()));
                    _gotoNext = 3652850i32;
                } else if (__value__ == (3654658i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._fieldIndexes = ((@:checkr _r ?? throw "null pointer dereference")._fieldIndexes.__append__((@:checkr _r ?? throw "null pointer dereference")._recordBuffer.length));
                    (@:checkr _r ?? throw "null pointer dereference")._fieldPositions = ((@:checkr _r ?? throw "null pointer dereference")._fieldPositions.__append__(_fieldPos_3653912?.__copy__()));
                    _parseFieldBreak = true;
                    _gotoNext = 3652850i32;
                } else if (__value__ == (3654886i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._recordBuffer = ((@:checkr _r ?? throw "null pointer dereference")._recordBuffer.__append__((34 : stdgo.GoUInt8)));
                    _gotoNext = 3653980i32;
                } else if (__value__ == (3654997i32)) {
                    _err_3652558 = stdgo.Go.asInterface((stdgo.Go.setRef(({ startLine : _recLine_3652631, line : (@:checkr _r ?? throw "null pointer dereference")._numLine, column : (_pos_3652796._col - (1 : stdgo.GoInt) : stdgo.GoInt), err : stdgo._internal.encoding.csv.Csv_errquote.errQuote } : stdgo._internal.encoding.csv.Csv_parseerror.ParseError)) : stdgo.Ref<stdgo._internal.encoding.csv.Csv_parseerror.ParseError>));
                    _parseFieldBreak = true;
                    _gotoNext = 3652850i32;
                } else if (__value__ == (3655220i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._recordBuffer = ((@:checkr _r ?? throw "null pointer dereference")._recordBuffer.__append__(...(_line_3652164 : Array<stdgo.GoUInt8>)));
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
                        var __tmp__ = @:check2r _r._readLine();
                        _line_3652164 = @:tmpset0 __tmp__._0;
                        _errRead_3652181 = @:tmpset0 __tmp__._1;
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
                    if (stdgo.Go.toInterface(_errRead_3652181) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                        _gotoNext = 3655531i32;
                    } else {
                        _gotoNext = 3653980i32;
                    };
                } else if (__value__ == (3655531i32)) {
                    _errRead_3652181 = (null : stdgo.Error);
                    _gotoNext = 3653980i32;
                } else if (__value__ == (3655571i32)) {
                    _gotoNext = 3655571i32;
                    if ((!(@:checkr _r ?? throw "null pointer dereference").lazyQuotes && (_errRead_3652181 == null) : Bool)) {
                        _gotoNext = 3655656i32;
                    } else {
                        _gotoNext = 3655785i32;
                    };
                } else if (__value__ == (3655656i32)) {
                    _err_3652558 = stdgo.Go.asInterface((stdgo.Go.setRef(({ startLine : _recLine_3652631, line : _pos_3652796._line, column : _pos_3652796._col, err : stdgo._internal.encoding.csv.Csv_errquote.errQuote } : stdgo._internal.encoding.csv.Csv_parseerror.ParseError)) : stdgo.Ref<stdgo._internal.encoding.csv.Csv_parseerror.ParseError>));
                    _parseFieldBreak = true;
                    _gotoNext = 3652850i32;
                } else if (__value__ == (3655785i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._fieldIndexes = ((@:checkr _r ?? throw "null pointer dereference")._fieldIndexes.__append__((@:checkr _r ?? throw "null pointer dereference")._recordBuffer.length));
                    (@:checkr _r ?? throw "null pointer dereference")._fieldPositions = ((@:checkr _r ?? throw "null pointer dereference")._fieldPositions.__append__(_fieldPos_3653912?.__copy__()));
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
                    _str_3656108 = ((@:checkr _r ?? throw "null pointer dereference")._recordBuffer : stdgo.GoString)?.__copy__();
                    _dst = (_dst.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                    if ((_dst.capacity < ((@:checkr _r ?? throw "null pointer dereference")._fieldIndexes.length) : Bool)) {
                        _gotoNext = 3656235i32;
                    } else {
                        _gotoNext = 3656285i32;
                    };
                } else if (__value__ == (3656235i32)) {
                    _dst = (new stdgo.Slice<stdgo.GoString>(((@:checkr _r ?? throw "null pointer dereference")._fieldIndexes.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
                    _gotoNext = 3656285i32;
                } else if (__value__ == (3656285i32)) {
                    _dst = (_dst.__slice__(0, ((@:checkr _r ?? throw "null pointer dereference")._fieldIndexes.length)) : stdgo.Slice<stdgo.GoString>);
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _r ?? throw "null pointer dereference")._fieldIndexes.length)) {
                        _gotoNext = 3656413i32;
                    } else {
                        _gotoNext = 3656470i32;
                    };
                } else if (__value__ == (3656369i32)) {
                    _idx_3656341 = (@:checkr _r ?? throw "null pointer dereference")._fieldIndexes[(_i_3656338 : stdgo.GoInt)];
                    _dst[(_i_3656338 : stdgo.GoInt)] = (_str_3656108.__slice__(_preIdx_3656322, _idx_3656341) : stdgo.GoString)?.__copy__();
                    _preIdx_3656322 = _idx_3656341;
                    _i_3656338++;
                    _gotoNext = 3656414i32;
                } else if (__value__ == (3656413i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _r ?? throw "null pointer dereference")._fieldIndexes[(0i32 : stdgo.GoInt)];
                        _i_3656338 = __tmp__0;
                        _idx_3656341 = __tmp__1;
                    };
                    _gotoNext = 3656414i32;
                } else if (__value__ == (3656414i32)) {
                    if (_i_3656338 < ((@:checkr _r ?? throw "null pointer dereference")._fieldIndexes.length)) {
                        _gotoNext = 3656369i32;
                    } else {
                        _gotoNext = 3656470i32;
                    };
                } else if (__value__ == (3656470i32)) {
                    if (((@:checkr _r ?? throw "null pointer dereference").fieldsPerRecord > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3656495i32;
                    } else if ((@:checkr _r ?? throw "null pointer dereference").fieldsPerRecord == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3656709i32;
                    } else {
                        _gotoNext = 3656746i32;
                    };
                } else if (__value__ == (3656495i32)) {
                    if (((_dst.length != (@:checkr _r ?? throw "null pointer dereference").fieldsPerRecord) && (_err_3652558 == null) : Bool)) {
                        _gotoNext = 3656546i32;
                    } else {
                        _gotoNext = 3656746i32;
                    };
                } else if (__value__ == (3656546i32)) {
                    _err_3652558 = stdgo.Go.asInterface((stdgo.Go.setRef(({ startLine : _recLine_3652631, line : _recLine_3652631, column : (1 : stdgo.GoInt), err : stdgo._internal.encoding.csv.Csv_errfieldcount.errFieldCount } : stdgo._internal.encoding.csv.Csv_parseerror.ParseError)) : stdgo.Ref<stdgo._internal.encoding.csv.Csv_parseerror.ParseError>));
                    _gotoNext = 3656746i32;
                } else if (__value__ == (3656709i32)) {
                    (@:checkr _r ?? throw "null pointer dereference").fieldsPerRecord = (_dst.length);
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
    @:tdfield
    static public function _readLine( _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_reader.Reader>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_reader.Reader> = _r;
        var __tmp__ = @:check2r (@:checkr _r ?? throw "null pointer dereference")._r.readSlice((10 : stdgo.GoUInt8)), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.bufio.Bufio_errbufferfull.errBufferFull))) {
            (@:checkr _r ?? throw "null pointer dereference")._rawBuffer = (((@:checkr _r ?? throw "null pointer dereference")._rawBuffer.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_line : Array<stdgo.GoUInt8>)));
            while (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.bufio.Bufio_errbufferfull.errBufferFull))) {
                {
                    var __tmp__ = @:check2r (@:checkr _r ?? throw "null pointer dereference")._r.readSlice((10 : stdgo.GoUInt8));
                    _line = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                (@:checkr _r ?? throw "null pointer dereference")._rawBuffer = ((@:checkr _r ?? throw "null pointer dereference")._rawBuffer.__append__(...(_line : Array<stdgo.GoUInt8>)));
            };
            _line = (@:checkr _r ?? throw "null pointer dereference")._rawBuffer;
        };
        var _readSize = (_line.length : stdgo.GoInt);
        if (((_readSize > (0 : stdgo.GoInt) : Bool) && (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool)) {
            _err = (null : stdgo.Error);
            if (_line[(_readSize - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((13 : stdgo.GoUInt8))) {
                _line = (_line.__slice__(0, (_readSize - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        (@:checkr _r ?? throw "null pointer dereference")._numLine++;
        (@:checkr _r ?? throw "null pointer dereference")._offset = ((@:checkr _r ?? throw "null pointer dereference")._offset + ((_readSize : stdgo.GoInt64)) : stdgo.GoInt64);
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
    @:tdfield
    static public function readAll( _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_reader.Reader>):{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.GoString>>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_reader.Reader> = _r;
        var _records = (null : stdgo.Slice<stdgo.Slice<stdgo.GoString>>), _err = (null : stdgo.Error);
        while (true) {
            var __tmp__ = @:check2r _r._readRecord((null : stdgo.Slice<stdgo.GoString>)), _record:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                return {
                    final __tmp__:{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.GoString>>; var _1 : stdgo.Error; } = { _0 : _records, _1 : (null : stdgo.Error) };
                    _records = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.GoString>>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.Slice<stdgo.GoString>>), _1 : _err };
                    _records = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            _records = (_records.__append__(_record));
        };
    }
    @:keep
    @:tdfield
    static public function inputOffset( _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_reader.Reader>):stdgo.GoInt64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_reader.Reader> = _r;
        return (@:checkr _r ?? throw "null pointer dereference")._offset;
    }
    @:keep
    @:tdfield
    static public function fieldPos( _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_reader.Reader>, _field:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_reader.Reader> = _r;
        var _line = (0 : stdgo.GoInt), _column = (0 : stdgo.GoInt);
        if (((_field < (0 : stdgo.GoInt) : Bool) || (_field >= ((@:checkr _r ?? throw "null pointer dereference")._fieldPositions.length) : Bool) : Bool)) {
            throw stdgo.Go.toInterface(("out of range index passed to FieldPos" : stdgo.GoString));
        };
        var _p = (stdgo.Go.setRef((@:checkr _r ?? throw "null pointer dereference")._fieldPositions[(_field : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.csv.Csv_t_position.T_position>);
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } = { _0 : (@:checkr _p ?? throw "null pointer dereference")._line, _1 : (@:checkr _p ?? throw "null pointer dereference")._col };
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
        if ((@:checkr _r ?? throw "null pointer dereference").reuseRecord) {
            {
                var __tmp__ = @:check2r _r._readRecord((@:checkr _r ?? throw "null pointer dereference")._lastRecord);
                _record = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            (@:checkr _r ?? throw "null pointer dereference")._lastRecord = _record;
        } else {
            {
                var __tmp__ = @:check2r _r._readRecord((null : stdgo.Slice<stdgo.GoString>));
                _record = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } = { _0 : _record, _1 : _err };
            _record = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
