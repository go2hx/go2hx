package stdgo._internal.encoding.csv;
@:keep @:allow(stdgo._internal.encoding.csv.Csv.Reader_asInterface) class Reader_static_extension {
    @:keep
    @:tdfield
    static public function _readRecord( _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_reader.Reader>, _dst:stdgo.Slice<stdgo.GoString>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_reader.Reader> = _r;
        var _preIdx_16:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_13:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_9:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _line_0:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _i_17:stdgo.GoInt = (0 : stdgo.GoInt);
        var _col_11:stdgo.GoInt = (0 : stdgo.GoInt);
        var _parseFieldBreak = false;
        var _err_2:stdgo.Error = (null : stdgo.Error);
        var _str_15:stdgo.GoString = ("" : stdgo.GoString);
        var _rn_14:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _commaLen_4:stdgo.GoInt = (0 : stdgo.GoInt);
        var _errRead_1:stdgo.Error = (null : stdgo.Error);
        var _idx_18:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pos_6:stdgo._internal.encoding.csv.Csv_t_position.T_position = ({} : stdgo._internal.encoding.csv.Csv_t_position.T_position);
        var _recLine_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _quoteLen_3;
        var _fieldPos_12:stdgo._internal.encoding.csv.Csv_t_position.T_position = ({} : stdgo._internal.encoding.csv.Csv_t_position.T_position);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((((@:checkr _r ?? throw "null pointer dereference").comma == ((@:checkr _r ?? throw "null pointer dereference").comment) || !stdgo._internal.encoding.csv.Csv__validdelim._validDelim((@:checkr _r ?? throw "null pointer dereference").comma) : Bool) || ((((@:checkr _r ?? throw "null pointer dereference").comment != (0 : stdgo.GoInt32)) && !stdgo._internal.encoding.csv.Csv__validdelim._validDelim((@:checkr _r ?? throw "null pointer dereference").comment) : Bool)) : Bool)) {
                        _gotoNext = 4172037i32;
                    } else {
                        _gotoNext = 4172148i32;
                    };
                } else if (__value__ == (4172037i32)) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : stdgo._internal.encoding.csv.Csv__errinvaliddelim._errInvalidDelim };
                    _gotoNext = 4172148i32;
                } else if (__value__ == (4172148i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 4172184i32;
                } else if (__value__ == (4172184i32)) {
                    if (_errRead_1 == null) {
                        _gotoNext = 4172203i32;
                    } else {
                        _gotoNext = 4172456i32;
                    };
                } else if (__value__ == (4172203i32)) {
                    {
                        var __tmp__ = @:check2r _r._readLine();
                        _line_0 = @:tmpset0 __tmp__._0;
                        _errRead_1 = @:tmpset0 __tmp__._1;
                    };
                    if ((((@:checkr _r ?? throw "null pointer dereference").comment != (0 : stdgo.GoInt32)) && (stdgo._internal.encoding.csv.Csv__nextrune._nextRune(_line_0) == (@:checkr _r ?? throw "null pointer dereference").comment) : Bool)) {
                        _gotoNext = 4172287i32;
                    } else {
                        _gotoNext = 4172343i32;
                    };
                } else if (__value__ == (4172287i32)) {
                    _line_0 = (null : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 4172184i32;
                } else if (__value__ == (4172343i32)) {
                    if (((_errRead_1 == null) && (_line_0.length == stdgo._internal.encoding.csv.Csv__lengthnl._lengthNL(_line_0)) : Bool)) {
                        _gotoNext = 4172392i32;
                    } else {
                        _gotoNext = 4172446i32;
                    };
                } else if (__value__ == (4172392i32)) {
                    _line_0 = (null : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 4172184i32;
                } else if (__value__ == (4172446i32)) {
                    _gotoNext = 4172456i32;
                } else if (__value__ == (4172456i32)) {
                    if (stdgo.Go.toInterface(_errRead_1) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                        _gotoNext = 4172477i32;
                    } else {
                        _gotoNext = 4172542i32;
                    };
                } else if (__value__ == (4172477i32)) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _errRead_1 };
                    _gotoNext = 4172542i32;
                } else if (__value__ == (4172542i32)) {
                    _quoteLen_3 = ((("\"" : stdgo.GoString) : stdgo.GoString).length);
                    _commaLen_4 = stdgo._internal.unicode.utf8.Utf8_runelen.runeLen((@:checkr _r ?? throw "null pointer dereference").comma);
                    _recLine_5 = (@:checkr _r ?? throw "null pointer dereference")._numLine;
                    (@:checkr _r ?? throw "null pointer dereference")._recordBuffer = ((@:checkr _r ?? throw "null pointer dereference")._recordBuffer.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    (@:checkr _r ?? throw "null pointer dereference")._fieldIndexes = ((@:checkr _r ?? throw "null pointer dereference")._fieldIndexes.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
                    (@:checkr _r ?? throw "null pointer dereference")._fieldPositions = ((@:checkr _r ?? throw "null pointer dereference")._fieldPositions.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.encoding.csv.Csv_t_position.T_position>);
                    _pos_6 = ({ _col : (1 : stdgo.GoInt) } : stdgo._internal.encoding.csv.Csv_t_position.T_position);
                    _gotoNext = 4172825i32;
                } else if (__value__ == (4172825i32)) {
                    var __blank__ = 0i32;
                    _parseFieldBreak = false;
                    _gotoNext = 4172838i32;
                } else if (__value__ == (4172838i32)) {
                    if (!_parseFieldBreak) {
                        _gotoNext = 4172842i32;
                    } else {
                        _gotoNext = 4175934i32;
                    };
                } else if (__value__ == (4172842i32)) {
                    if ((@:checkr _r ?? throw "null pointer dereference").trimLeadingSpace) {
                        _gotoNext = 4172868i32;
                    } else {
                        _gotoNext = 4173065i32;
                    };
                } else if (__value__ == (4172868i32)) {
                    _i_7 = stdgo._internal.bytes.Bytes_indexfunc.indexFunc(_line_0, function(_r:stdgo.GoInt32):Bool {
                        return !stdgo._internal.unicode.Unicode_isspace.isSpace(_r);
                    });
                    if ((_i_7 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4172969i32;
                    } else {
                        _gotoNext = 4173027i32;
                    };
                } else if (__value__ == (4172969i32)) {
                    _i_7 = (_line_0.length);
                    _pos_6._col = (_pos_6._col - (stdgo._internal.encoding.csv.Csv__lengthnl._lengthNL(_line_0)) : stdgo.GoInt);
                    _gotoNext = 4173027i32;
                } else if (__value__ == (4173027i32)) {
                    _line_0 = (_line_0.__slice__(_i_7) : stdgo.Slice<stdgo.GoUInt8>);
                    _pos_6._col = (_pos_6._col + (_i_7) : stdgo.GoInt);
                    _gotoNext = 4173065i32;
                } else if (__value__ == (4173065i32)) {
                    if (((_line_0.length == (0 : stdgo.GoInt)) || (_line_0[(0 : stdgo.GoInt)] != (34 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4173101i32;
                    } else {
                        _gotoNext = 4173869i32;
                    };
                } else if (__value__ == (4173101i32)) {
                    _i_8 = stdgo._internal.bytes.Bytes_indexrune.indexRune(_line_0, (@:checkr _r ?? throw "null pointer dereference").comma);
                    _field_9 = _line_0;
                    if ((_i_8 >= (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4173202i32;
                    } else {
                        _gotoNext = 4173236i32;
                    };
                } else if (__value__ == (4173202i32)) {
                    _field_9 = (_field_9.__slice__(0, _i_8) : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 4173352i32;
                } else if (__value__ == (4173236i32)) {
                    _gotoNext = 4173236i32;
                    _field_9 = (_field_9.__slice__(0, ((_field_9.length) - stdgo._internal.encoding.csv.Csv__lengthnl._lengthNL(_field_9) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 4173352i32;
                } else if (__value__ == (4173352i32)) {
                    if (!(@:checkr _r ?? throw "null pointer dereference").lazyQuotes) {
                        _gotoNext = 4173369i32;
                    } else {
                        _gotoNext = 4173573i32;
                    };
                } else if (__value__ == (4173369i32)) {
                    {
                        _j_10 = stdgo._internal.bytes.Bytes_indexbyte.indexByte(_field_9, (34 : stdgo.GoUInt8));
                        if ((_j_10 >= (0 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 4173419i32;
                        } else {
                            _gotoNext = 4173573i32;
                        };
                    };
                } else if (__value__ == (4173419i32)) {
                    _col_11 = (_pos_6._col + _j_10 : stdgo.GoInt);
                    _err_2 = stdgo.Go.asInterface((stdgo.Go.setRef(({ startLine : _recLine_5, line : (@:checkr _r ?? throw "null pointer dereference")._numLine, column : _col_11, err : stdgo._internal.encoding.csv.Csv_errbarequote.errBareQuote } : stdgo._internal.encoding.csv.Csv_parseerror.ParseError)) : stdgo.Ref<stdgo._internal.encoding.csv.Csv_parseerror.ParseError>));
                    _parseFieldBreak = true;
                    _gotoNext = 4172838i32;
                } else if (__value__ == (4173573i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._recordBuffer = ((@:checkr _r ?? throw "null pointer dereference")._recordBuffer.__append__(...(_field_9 : Array<stdgo.GoUInt8>)));
                    (@:checkr _r ?? throw "null pointer dereference")._fieldIndexes = ((@:checkr _r ?? throw "null pointer dereference")._fieldIndexes.__append__((@:checkr _r ?? throw "null pointer dereference")._recordBuffer.length));
                    (@:checkr _r ?? throw "null pointer dereference")._fieldPositions = ((@:checkr _r ?? throw "null pointer dereference")._fieldPositions.__append__(_pos_6?.__copy__()));
                    if ((_i_8 >= (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4173752i32;
                    } else {
                        _gotoNext = 4173843i32;
                    };
                } else if (__value__ == (4173752i32)) {
                    _line_0 = (_line_0.__slice__((_i_8 + _commaLen_4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _pos_6._col = (_pos_6._col + ((_i_8 + _commaLen_4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 4172838i32;
                } else if (__value__ == (4173843i32)) {
                    _parseFieldBreak = true;
                    _gotoNext = 4172838i32;
                } else if (__value__ == (4173869i32)) {
                    _gotoNext = 4173869i32;
                    _fieldPos_12 = _pos_6?.__copy__();
                    _line_0 = (_line_0.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _pos_6._col = (_pos_6._col + ((1 : stdgo.GoInt)) : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 4173968i32;
                } else if (__value__ == (4173968i32)) {
                    if (true) {
                        _gotoNext = 4173972i32;
                    } else {
                        _gotoNext = 4172838i32;
                    };
                } else if (__value__ == (4173972i32)) {
                    _i_13 = stdgo._internal.bytes.Bytes_indexbyte.indexByte(_line_0, (34 : stdgo.GoUInt8));
                    if ((_i_13 >= (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4174024i32;
                    } else if (((_line_0.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4175208i32;
                    } else {
                        _gotoNext = 4175559i32;
                    };
                } else if (__value__ == (4174024i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._recordBuffer = ((@:checkr _r ?? throw "null pointer dereference")._recordBuffer.__append__(...((_line_0.__slice__(0, _i_13) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                    _line_0 = (_line_0.__slice__((_i_13 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _pos_6._col = (_pos_6._col + ((_i_13 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 4174172i32;
                } else if (__value__ == (4174172i32)) {
                    {
                        _rn_14 = stdgo._internal.encoding.csv.Csv__nextrune._nextRune(_line_0);
                        if (_rn_14 == ((34 : stdgo.GoInt32))) {
                            _gotoNext = 4174208i32;
                        } else if (_rn_14 == ((@:checkr _r ?? throw "null pointer dereference").comma)) {
                            _gotoNext = 4174374i32;
                        } else if (stdgo._internal.encoding.csv.Csv__lengthnl._lengthNL(_line_0) == ((_line_0.length))) {
                            _gotoNext = 4174646i32;
                        } else if ((@:checkr _r ?? throw "null pointer dereference").lazyQuotes) {
                            _gotoNext = 4174874i32;
                        } else {
                            _gotoNext = 4174985i32;
                        };
                    };
                } else if (__value__ == (4174208i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._recordBuffer = ((@:checkr _r ?? throw "null pointer dereference")._recordBuffer.__append__((34 : stdgo.GoUInt8)));
                    _line_0 = (_line_0.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _pos_6._col = (_pos_6._col + ((1 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 4173968i32;
                } else if (__value__ == (4174374i32)) {
                    _line_0 = (_line_0.__slice__(_commaLen_4) : stdgo.Slice<stdgo.GoUInt8>);
                    _pos_6._col = (_pos_6._col + (_commaLen_4) : stdgo.GoInt);
                    (@:checkr _r ?? throw "null pointer dereference")._fieldIndexes = ((@:checkr _r ?? throw "null pointer dereference")._fieldIndexes.__append__((@:checkr _r ?? throw "null pointer dereference")._recordBuffer.length));
                    (@:checkr _r ?? throw "null pointer dereference")._fieldPositions = ((@:checkr _r ?? throw "null pointer dereference")._fieldPositions.__append__(_fieldPos_12?.__copy__()));
                    _gotoNext = 4172838i32;
                } else if (__value__ == (4174646i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._fieldIndexes = ((@:checkr _r ?? throw "null pointer dereference")._fieldIndexes.__append__((@:checkr _r ?? throw "null pointer dereference")._recordBuffer.length));
                    (@:checkr _r ?? throw "null pointer dereference")._fieldPositions = ((@:checkr _r ?? throw "null pointer dereference")._fieldPositions.__append__(_fieldPos_12?.__copy__()));
                    _parseFieldBreak = true;
                    _gotoNext = 4172838i32;
                } else if (__value__ == (4174874i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._recordBuffer = ((@:checkr _r ?? throw "null pointer dereference")._recordBuffer.__append__((34 : stdgo.GoUInt8)));
                    _gotoNext = 4173968i32;
                } else if (__value__ == (4174985i32)) {
                    _err_2 = stdgo.Go.asInterface((stdgo.Go.setRef(({ startLine : _recLine_5, line : (@:checkr _r ?? throw "null pointer dereference")._numLine, column : (_pos_6._col - (1 : stdgo.GoInt) : stdgo.GoInt), err : stdgo._internal.encoding.csv.Csv_errquote.errQuote } : stdgo._internal.encoding.csv.Csv_parseerror.ParseError)) : stdgo.Ref<stdgo._internal.encoding.csv.Csv_parseerror.ParseError>));
                    _parseFieldBreak = true;
                    _gotoNext = 4172838i32;
                } else if (__value__ == (4175208i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._recordBuffer = ((@:checkr _r ?? throw "null pointer dereference")._recordBuffer.__append__(...(_line_0 : Array<stdgo.GoUInt8>)));
                    if (_errRead_1 != null) {
                        _gotoNext = 4175335i32;
                    } else {
                        _gotoNext = 4175372i32;
                    };
                } else if (__value__ == (4175335i32)) {
                    _parseFieldBreak = true;
                    _gotoNext = 4172838i32;
                } else if (__value__ == (4175372i32)) {
                    _pos_6._col = (_pos_6._col + ((_line_0.length)) : stdgo.GoInt);
                    {
                        var __tmp__ = @:check2r _r._readLine();
                        _line_0 = @:tmpset0 __tmp__._0;
                        _errRead_1 = @:tmpset0 __tmp__._1;
                    };
                    if (((_line_0.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4175449i32;
                    } else {
                        _gotoNext = 4175498i32;
                    };
                } else if (__value__ == (4175449i32)) {
                    _pos_6._line++;
                    _pos_6._col = (1 : stdgo.GoInt);
                    _gotoNext = 4175498i32;
                } else if (__value__ == (4175498i32)) {
                    if (stdgo.Go.toInterface(_errRead_1) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                        _gotoNext = 4175519i32;
                    } else {
                        _gotoNext = 4173968i32;
                    };
                } else if (__value__ == (4175519i32)) {
                    _errRead_1 = (null : stdgo.Error);
                    _gotoNext = 4173968i32;
                } else if (__value__ == (4175559i32)) {
                    _gotoNext = 4175559i32;
                    if ((!(@:checkr _r ?? throw "null pointer dereference").lazyQuotes && (_errRead_1 == null) : Bool)) {
                        _gotoNext = 4175644i32;
                    } else {
                        _gotoNext = 4175773i32;
                    };
                } else if (__value__ == (4175644i32)) {
                    _err_2 = stdgo.Go.asInterface((stdgo.Go.setRef(({ startLine : _recLine_5, line : _pos_6._line, column : _pos_6._col, err : stdgo._internal.encoding.csv.Csv_errquote.errQuote } : stdgo._internal.encoding.csv.Csv_parseerror.ParseError)) : stdgo.Ref<stdgo._internal.encoding.csv.Csv_parseerror.ParseError>));
                    _parseFieldBreak = true;
                    _gotoNext = 4172838i32;
                } else if (__value__ == (4175773i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._fieldIndexes = ((@:checkr _r ?? throw "null pointer dereference")._fieldIndexes.__append__((@:checkr _r ?? throw "null pointer dereference")._recordBuffer.length));
                    (@:checkr _r ?? throw "null pointer dereference")._fieldPositions = ((@:checkr _r ?? throw "null pointer dereference")._fieldPositions.__append__(_fieldPos_12?.__copy__()));
                    _parseFieldBreak = true;
                    _gotoNext = 4172838i32;
                } else if (__value__ == (4175934i32)) {
                    if (_err_2 == null) {
                        _gotoNext = 4175948i32;
                    } else {
                        _gotoNext = 4176096i32;
                    };
                } else if (__value__ == (4175948i32)) {
                    _err_2 = _errRead_1;
                    _gotoNext = 4176096i32;
                } else if (__value__ == (4176096i32)) {
                    _str_15 = ((@:checkr _r ?? throw "null pointer dereference")._recordBuffer : stdgo.GoString)?.__copy__();
                    _dst = (_dst.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                    if ((_dst.capacity < ((@:checkr _r ?? throw "null pointer dereference")._fieldIndexes.length) : Bool)) {
                        _gotoNext = 4176223i32;
                    } else {
                        _gotoNext = 4176273i32;
                    };
                } else if (__value__ == (4176223i32)) {
                    _dst = (new stdgo.Slice<stdgo.GoString>(((@:checkr _r ?? throw "null pointer dereference")._fieldIndexes.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
                    _gotoNext = 4176273i32;
                } else if (__value__ == (4176273i32)) {
                    _dst = (_dst.__slice__(0, ((@:checkr _r ?? throw "null pointer dereference")._fieldIndexes.length)) : stdgo.Slice<stdgo.GoString>);
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _r ?? throw "null pointer dereference")._fieldIndexes.length)) {
                        _gotoNext = 4176401i32;
                    } else {
                        _gotoNext = 4176458i32;
                    };
                } else if (__value__ == (4176357i32)) {
                    _idx_18 = (@:checkr _r ?? throw "null pointer dereference")._fieldIndexes[(_i_17 : stdgo.GoInt)];
                    _dst[(_i_17 : stdgo.GoInt)] = (_str_15.__slice__(_preIdx_16, _idx_18) : stdgo.GoString)?.__copy__();
                    _preIdx_16 = _idx_18;
                    _i_17++;
                    _gotoNext = 4176402i32;
                } else if (__value__ == (4176401i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _r ?? throw "null pointer dereference")._fieldIndexes[(0i32 : stdgo.GoInt)];
                        _i_17 = @:binopAssign __tmp__0;
                        _idx_18 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 4176402i32;
                } else if (__value__ == (4176402i32)) {
                    if (_i_17 < ((@:checkr _r ?? throw "null pointer dereference")._fieldIndexes.length)) {
                        _gotoNext = 4176357i32;
                    } else {
                        _gotoNext = 4176458i32;
                    };
                } else if (__value__ == (4176458i32)) {
                    if (((@:checkr _r ?? throw "null pointer dereference").fieldsPerRecord > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4176483i32;
                    } else if ((@:checkr _r ?? throw "null pointer dereference").fieldsPerRecord == ((0 : stdgo.GoInt))) {
                        _gotoNext = 4176697i32;
                    } else {
                        _gotoNext = 4176734i32;
                    };
                } else if (__value__ == (4176483i32)) {
                    if (((_dst.length != (@:checkr _r ?? throw "null pointer dereference").fieldsPerRecord) && (_err_2 == null) : Bool)) {
                        _gotoNext = 4176534i32;
                    } else {
                        _gotoNext = 4176734i32;
                    };
                } else if (__value__ == (4176534i32)) {
                    _err_2 = stdgo.Go.asInterface((stdgo.Go.setRef(({ startLine : _recLine_5, line : _recLine_5, column : (1 : stdgo.GoInt), err : stdgo._internal.encoding.csv.Csv_errfieldcount.errFieldCount } : stdgo._internal.encoding.csv.Csv_parseerror.ParseError)) : stdgo.Ref<stdgo._internal.encoding.csv.Csv_parseerror.ParseError>));
                    _gotoNext = 4176734i32;
                } else if (__value__ == (4176697i32)) {
                    (@:checkr _r ?? throw "null pointer dereference").fieldsPerRecord = (_dst.length);
                    _gotoNext = 4176734i32;
                } else if (__value__ == (4176734i32)) {
                    return { _0 : _dst, _1 : _err_2 };
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
