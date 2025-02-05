package stdgo._internal.archive.zip;
function _readDirectoryHeader(_f:stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File>, _r:stdgo._internal.io.Io_reader.Reader):stdgo.Error {
        var _needUSize_3871414:Bool = false;
        var _utf8Require2_3870804:Bool = false;
        var _b_3869779:stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf = new stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf(0, 0);
        var _ts_3873188:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _ticksPerSecond_3873128;
        var _attrSize_3872886:stdgo.GoInt = (0 : stdgo.GoInt);
        var _modified_3871726:stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
        var _utf8Valid2_3870792:Bool = false;
        var _d_3870462:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _extraLen_3870260:stdgo.GoInt = (0 : stdgo.GoInt);
        var _msdosModified_3873926:stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
        var _attrTag_3872853:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _fieldSize_3871870:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nsecs_3873292:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _needHeaderOffset_3871506:Bool = false;
        var _attrBuf_3872991:stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf = new stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf(0, 0);
        var _commentLen_3870289:stdgo.GoInt = (0 : stdgo.GoInt);
        var _filenameLen_3870228:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ts_3873628:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _utf8Require1_3870756:Bool = false;
        var _sig_3869804:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _buf_3869682:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(46, 46).__setNumber32__();
        var _needCSize_3871461:Bool = false;
        var _err_3870520:stdgo.Error = (null : stdgo.Error);
        var _err_3869718:stdgo.Error = (null : stdgo.Error);
        var _ts_3873827:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _parseExtrasBreak = false;
        var _extra_3871763:stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf = new stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf(0, 0);
        var _fieldBuf_3871948:stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf = new stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf(0, 0);
        var _fieldTag_3871841:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _utf8Valid1_3870744:Bool = false;
        var _epoch_3873355:stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
        var _secs_3873253:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_r, (_buf_3869682.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                            _err_3869718 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_3869718 != null) {
                            _gotoNext = 3869760i32;
                        } else {
                            _gotoNext = 3869779i32;
                        };
                    };
                } else if (__value__ == (3869760i32)) {
                    return _err_3869718;
                    _gotoNext = 3869779i32;
                } else if (__value__ == (3869779i32)) {
                    _b_3869779 = ((_buf_3869682.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
                    {
                        _sig_3869804 = @:check2 _b_3869779._uint32();
                        if (_sig_3869804 != ((33639248u32 : stdgo.GoUInt32))) {
                            _gotoNext = 3869855i32;
                        } else {
                            _gotoNext = 3869880i32;
                        };
                    };
                } else if (__value__ == (3869855i32)) {
                    return stdgo._internal.archive.zip.Zip_errformat.errFormat;
                    _gotoNext = 3869880i32;
                } else if (__value__ == (3869880i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.creatorVersion = @:check2 _b_3869779._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.readerVersion = @:check2 _b_3869779._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.flags = @:check2 _b_3869779._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.method = @:check2 _b_3869779._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedTime = @:check2 _b_3869779._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedDate = @:check2 _b_3869779._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.cRC32 = @:check2 _b_3869779._uint32();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize = @:check2 _b_3869779._uint32();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize = @:check2 _b_3869779._uint32();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize64 = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize : stdgo.GoUInt64);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize64 = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize : stdgo.GoUInt64);
                    _filenameLen_3870228 = (@:check2 _b_3869779._uint16() : stdgo.GoInt);
                    _extraLen_3870260 = (@:check2 _b_3869779._uint16() : stdgo.GoInt);
                    _commentLen_3870289 = (@:check2 _b_3869779._uint16() : stdgo.GoInt);
                    _b_3869779 = (_b_3869779.__slice__((4 : stdgo.GoInt)) : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.externalAttrs = @:check2 _b_3869779._uint32();
                    (@:checkr _f ?? throw "null pointer dereference")._headerOffset = (@:check2 _b_3869779._uint32() : stdgo.GoInt64);
                    _d_3870462 = (new stdgo.Slice<stdgo.GoUInt8>(((_filenameLen_3870228 + _extraLen_3870260 : stdgo.GoInt) + _commentLen_3870289 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_r, _d_3870462);
                            _err_3870520 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_3870520 != null) {
                            _gotoNext = 3870557i32;
                        } else {
                            _gotoNext = 3870576i32;
                        };
                    };
                } else if (__value__ == (3870557i32)) {
                    return _err_3870520;
                    _gotoNext = 3870576i32;
                } else if (__value__ == (3870576i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.name = ((_d_3870462.__slice__(0, _filenameLen_3870228) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.extra = (_d_3870462.__slice__(_filenameLen_3870228, (_filenameLen_3870228 + _extraLen_3870260 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.comment = ((_d_3870462.__slice__((_filenameLen_3870228 + _extraLen_3870260 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    {
                        var __tmp__ = stdgo._internal.archive.zip.Zip__detectutf8._detectUTF8((@:checkr _f ?? throw "null pointer dereference").fileHeader.name?.__copy__());
                        _utf8Valid1_3870744 = @:tmpset0 __tmp__._0;
                        _utf8Require1_3870756 = @:tmpset0 __tmp__._1;
                    };
                    {
                        var __tmp__ = stdgo._internal.archive.zip.Zip__detectutf8._detectUTF8((@:checkr _f ?? throw "null pointer dereference").fileHeader.comment?.__copy__());
                        _utf8Valid2_3870792 = @:tmpset0 __tmp__._0;
                        _utf8Require2_3870804 = @:tmpset0 __tmp__._1;
                    };
                    _gotoNext = 3870843i32;
                } else if (__value__ == (3870843i32)) {
                    if ((!_utf8Valid1_3870744 || !_utf8Valid2_3870792 : Bool)) {
                        _gotoNext = 3870853i32;
                    } else if ((!_utf8Require1_3870756 && !_utf8Require2_3870804 : Bool)) {
                        _gotoNext = 3870950i32;
                    } else {
                        _gotoNext = 3871082i32;
                    };
                } else if (__value__ == (3870853i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.nonUTF8 = true;
                    _gotoNext = 3871414i32;
                } else if (__value__ == (3870950i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.nonUTF8 = false;
                    _gotoNext = 3871414i32;
                } else if (__value__ == (3871082i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.nonUTF8 = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.flags & (2048 : stdgo.GoUInt16) : stdgo.GoUInt16) == ((0 : stdgo.GoUInt16));
                    _gotoNext = 3871414i32;
                } else if (__value__ == (3871414i32)) {
                    _needUSize_3871414 = (@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize == ((-1u32 : stdgo.GoUInt32));
                    _needCSize_3871461 = (@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize == ((-1u32 : stdgo.GoUInt32));
                    _needHeaderOffset_3871506 = (@:checkr _f ?? throw "null pointer dereference")._headerOffset == (((-1u32 : stdgo.GoUInt32) : stdgo.GoInt64));
                    _gotoNext = 3871745i32;
                } else if (__value__ == (3871745i32)) {
                    _extra_3871763 = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.extra : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
                    _parseExtrasBreak = false;
                    _gotoNext = 3871759i32;
                } else if (__value__ == (3871759i32)) {
                    if (!_parseExtrasBreak && (((_extra_3871763.length) >= (4 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3871807i32;
                    } else {
                        _gotoNext = 3873926i32;
                    };
                } else if (__value__ == (3871807i32)) {
                    _fieldTag_3871841 = @:check2 _extra_3871763._uint16();
                    _fieldSize_3871870 = (@:check2 _extra_3871763._uint16() : stdgo.GoInt);
                    if (((_extra_3871763.length) < _fieldSize_3871870 : Bool)) {
                        _gotoNext = 3871931i32;
                    } else {
                        _gotoNext = 3871948i32;
                    };
                } else if (__value__ == (3871931i32)) {
                    _gotoNext = 3873926i32;
                } else if (__value__ == (3871948i32)) {
                    _fieldBuf_3871948 = @:check2 _extra_3871763._sub(_fieldSize_3871870);
                    _gotoNext = 3871984i32;
                } else if (__value__ == (3871984i32)) {
                    {
                        final __value__ = _fieldTag_3871841;
                        if (__value__ == ((1 : stdgo.GoUInt16))) {
                            _gotoNext = 3872004i32;
                        } else if (__value__ == ((10 : stdgo.GoUInt16))) {
                            _gotoNext = 3872667i32;
                        } else if (__value__ == ((13 : stdgo.GoUInt16)) || __value__ == ((22613 : stdgo.GoUInt16))) {
                            _gotoNext = 3873477i32;
                        } else if (__value__ == ((21589 : stdgo.GoUInt16))) {
                            _gotoNext = 3873720i32;
                        } else {
                            _gotoNext = 3871759i32;
                        };
                    };
                } else if (__value__ == (3872004i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._zip64 = true;
                    if (_needUSize_3871414) {
                        _gotoNext = 3872233i32;
                    } else {
                        _gotoNext = 3872365i32;
                    };
                } else if (__value__ == (3872233i32)) {
                    _needUSize_3871414 = false;
                    if (((_fieldBuf_3871948.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3872282i32;
                    } else {
                        _gotoNext = 3872316i32;
                    };
                } else if (__value__ == (3872282i32)) {
                    return stdgo._internal.archive.zip.Zip_errformat.errFormat;
                    _gotoNext = 3872316i32;
                } else if (__value__ == (3872316i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize64 = @:check2 _fieldBuf_3871948._uint64();
                    _gotoNext = 3872365i32;
                } else if (__value__ == (3872365i32)) {
                    if (_needCSize_3871461) {
                        _gotoNext = 3872378i32;
                    } else {
                        _gotoNext = 3872508i32;
                    };
                } else if (__value__ == (3872378i32)) {
                    _needCSize_3871461 = false;
                    if (((_fieldBuf_3871948.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3872427i32;
                    } else {
                        _gotoNext = 3872461i32;
                    };
                } else if (__value__ == (3872427i32)) {
                    return stdgo._internal.archive.zip.Zip_errformat.errFormat;
                    _gotoNext = 3872461i32;
                } else if (__value__ == (3872461i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize64 = @:check2 _fieldBuf_3871948._uint64();
                    _gotoNext = 3872508i32;
                } else if (__value__ == (3872508i32)) {
                    if (_needHeaderOffset_3871506) {
                        _gotoNext = 3872528i32;
                    } else {
                        _gotoNext = 3871759i32;
                    };
                } else if (__value__ == (3872528i32)) {
                    _needHeaderOffset_3871506 = false;
                    if (((_fieldBuf_3871948.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3872584i32;
                    } else {
                        _gotoNext = 3872618i32;
                    };
                } else if (__value__ == (3872584i32)) {
                    return stdgo._internal.archive.zip.Zip_errformat.errFormat;
                    _gotoNext = 3872618i32;
                } else if (__value__ == (3872618i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._headerOffset = (@:check2 _fieldBuf_3871948._uint64() : stdgo.GoInt64);
                    _gotoNext = 3871759i32;
                } else if (__value__ == (3872667i32)) {
                    if (((_fieldBuf_3871948.length) < (4 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3872709i32;
                    } else {
                        _gotoNext = 3872744i32;
                    };
                } else if (__value__ == (3872709i32)) {
                    _gotoNext = 3871759i32;
                } else if (__value__ == (3872744i32)) {
                    @:check2 _fieldBuf_3871948._uint32();
                    var __blank__ = 0i32;
                    _gotoNext = 3872794i32;
                } else if (__value__ == (3872794i32)) {
                    if (((_fieldBuf_3871948.length) >= (4 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3872817i32;
                    } else {
                        _gotoNext = 3871759i32;
                    };
                } else if (__value__ == (3872817i32)) {
                    _attrTag_3872853 = @:check2 _fieldBuf_3871948._uint16();
                    _attrSize_3872886 = (@:check2 _fieldBuf_3871948._uint16() : stdgo.GoInt);
                    if (((_fieldBuf_3871948.length) < _attrSize_3872886 : Bool)) {
                        _gotoNext = 3872953i32;
                    } else {
                        _gotoNext = 3872991i32;
                    };
                } else if (__value__ == (3872953i32)) {
                    _gotoNext = 3871759i32;
                } else if (__value__ == (3872991i32)) {
                    _attrBuf_3872991 = @:check2 _fieldBuf_3871948._sub(_attrSize_3872886);
                    if (((_attrTag_3872853 != (1 : stdgo.GoUInt16)) || (_attrSize_3872886 != (24 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3873063i32;
                    } else {
                        _gotoNext = 3873122i32;
                    };
                } else if (__value__ == (3873063i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3872794i32;
                } else if (__value__ == (3873122i32)) {
                    _ticksPerSecond_3873128 = (1e+07 : stdgo.GoFloat64);
                    _ts_3873188 = (@:check2 _attrBuf_3872991._uint64() : stdgo.GoInt64);
                    _secs_3873253 = (_ts_3873188 / (10000000i64 : stdgo.GoInt64) : stdgo.GoInt64);
                    _nsecs_3873292 = ((100i64 : stdgo.GoInt64) * (_ts_3873188 % (10000000i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
                    _epoch_3873355 = stdgo._internal.time.Time_date.date((1601 : stdgo.GoInt), (1 : stdgo._internal.time.Time_month.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.uTC)?.__copy__();
                    _modified_3871726 = stdgo._internal.time.Time_unix.unix((_epoch_3873355.unix() + _secs_3873253 : stdgo.GoInt64), _nsecs_3873292)?.__copy__();
                    _gotoNext = 3872794i32;
                } else if (__value__ == (3873477i32)) {
                    if (((_fieldBuf_3871948.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3873539i32;
                    } else {
                        _gotoNext = 3873574i32;
                    };
                } else if (__value__ == (3873539i32)) {
                    _gotoNext = 3871759i32;
                } else if (__value__ == (3873574i32)) {
                    @:check2 _fieldBuf_3871948._uint32();
                    _ts_3873628 = (@:check2 _fieldBuf_3871948._uint32() : stdgo.GoInt64);
                    _modified_3871726 = stdgo._internal.time.Time_unix.unix(_ts_3873628, (0i64 : stdgo.GoInt64))?.__copy__();
                    _gotoNext = 3871759i32;
                } else if (__value__ == (3873720i32)) {
                    if ((((_fieldBuf_3871948.length) < (5 : stdgo.GoInt) : Bool) || ((@:check2 _fieldBuf_3871948._uint8() & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) == (0 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3873792i32;
                    } else {
                        _gotoNext = 3873827i32;
                    };
                } else if (__value__ == (3873792i32)) {
                    _gotoNext = 3871759i32;
                } else if (__value__ == (3873827i32)) {
                    _ts_3873827 = (@:check2 _fieldBuf_3871948._uint32() : stdgo.GoInt64);
                    _modified_3871726 = stdgo._internal.time.Time_unix.unix(_ts_3873827, (0i64 : stdgo.GoInt64))?.__copy__();
                    _gotoNext = 3871759i32;
                } else if (__value__ == (3873926i32)) {
                    _msdosModified_3873926 = stdgo._internal.archive.zip.Zip__msdostimetotime._msDosTimeToTime((@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedDate, (@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedTime)?.__copy__();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modified = _msdosModified_3873926?.__copy__();
                    if (!_modified_3871726.isZero()) {
                        _gotoNext = 3874042i32;
                    } else {
                        _gotoNext = 3875180i32;
                    };
                } else if (__value__ == (3874042i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modified = _modified_3871726.uTC()?.__copy__();
                    if ((((@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedTime != (0 : stdgo.GoUInt16)) || ((@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedDate != (0 : stdgo.GoUInt16)) : Bool)) {
                        _gotoNext = 3874578i32;
                    } else {
                        _gotoNext = 3875180i32;
                    };
                } else if (__value__ == (3874578i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modified = _modified_3871726.in_(stdgo._internal.archive.zip.Zip__timezone._timeZone(_msdosModified_3873926.sub(_modified_3871726?.__copy__())))?.__copy__();
                    _gotoNext = 3875180i32;
                } else if (__value__ == (3875180i32)) {
                    var __blank__ = _needUSize_3871414;
                    if ((_needCSize_3871461 || _needHeaderOffset_3871506 : Bool)) {
                        _gotoNext = 3875229i32;
                    } else {
                        _gotoNext = 3875255i32;
                    };
                } else if (__value__ == (3875229i32)) {
                    return stdgo._internal.archive.zip.Zip_errformat.errFormat;
                    _gotoNext = 3875255i32;
                } else if (__value__ == (3875255i32)) {
                    return (null : stdgo.Error);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
