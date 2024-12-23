package stdgo._internal.archive.zip;
function _readDirectoryHeader(_f:stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>, _r:stdgo._internal.io.Io_Reader.Reader):stdgo.Error {
        var _ticksPerSecond_3873128;
        var _fieldTag_3871841:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _filenameLen_3870228:stdgo.GoInt = (0 : stdgo.GoInt);
        var _attrSize_3872886:stdgo.GoInt = (0 : stdgo.GoInt);
        var _utf8Require2_3870804:Bool = false;
        var _err_3869718:stdgo.Error = (null : stdgo.Error);
        var _nsecs_3873292:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _fieldBuf_3871948:stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf = new stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf(0, 0);
        var _needUSize_3871414:Bool = false;
        var _utf8Valid2_3870792:Bool = false;
        var _err_3870520:stdgo.Error = (null : stdgo.Error);
        var _commentLen_3870289:stdgo.GoInt = (0 : stdgo.GoInt);
        var _buf_3869682:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(46, 46, ...[for (i in 0 ... 46) (0 : stdgo.GoUInt8)]);
        var _epoch_3873355:stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
        var _ts_3873188:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _attrBuf_3872991:stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf = new stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf(0, 0);
        var _fieldSize_3871870:stdgo.GoInt = (0 : stdgo.GoInt);
        var _parseExtrasBreak = false;
        var _modified_3871726:stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
        var _b_3869779:stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf = new stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf(0, 0);
        var _needCSize_3871461:Bool = false;
        var _utf8Require1_3870756:Bool = false;
        var _d_3870462:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _extraLen_3870260:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ts_3873628:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _secs_3873253:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _ts_3873827:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _sig_3869804:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _msdosModified_3873926:stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
        var _attrTag_3872853:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _extra_3871763:stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf = new stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf(0, 0);
        var _needHeaderOffset_3871506:Bool = false;
        var _utf8Valid1_3870744:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_r, (_buf_3869682.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                            _err_3869718 = __tmp__._1;
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
                    _b_3869779 = ((_buf_3869682.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf);
                    {
                        _sig_3869804 = _b_3869779._uint32();
                        if (_sig_3869804 != ((33639248u32 : stdgo.GoUInt32))) {
                            _gotoNext = 3869855i32;
                        } else {
                            _gotoNext = 3869880i32;
                        };
                    };
                } else if (__value__ == (3869855i32)) {
                    return stdgo._internal.archive.zip.Zip_errFormat.errFormat;
                    _gotoNext = 3869880i32;
                } else if (__value__ == (3869880i32)) {
                    _f.fileHeader.creatorVersion = _b_3869779._uint16();
                    _f.fileHeader.readerVersion = _b_3869779._uint16();
                    _f.fileHeader.flags = _b_3869779._uint16();
                    _f.fileHeader.method = _b_3869779._uint16();
                    _f.fileHeader.modifiedTime = _b_3869779._uint16();
                    _f.fileHeader.modifiedDate = _b_3869779._uint16();
                    _f.fileHeader.crc32 = _b_3869779._uint32();
                    _f.fileHeader.compressedSize = _b_3869779._uint32();
                    _f.fileHeader.uncompressedSize = _b_3869779._uint32();
                    _f.fileHeader.compressedSize64 = (_f.fileHeader.compressedSize : stdgo.GoUInt64);
                    _f.fileHeader.uncompressedSize64 = (_f.fileHeader.uncompressedSize : stdgo.GoUInt64);
                    _filenameLen_3870228 = (_b_3869779._uint16() : stdgo.GoInt);
                    _extraLen_3870260 = (_b_3869779._uint16() : stdgo.GoInt);
                    _commentLen_3870289 = (_b_3869779._uint16() : stdgo.GoInt);
                    _b_3869779 = (_b_3869779.__slice__((4 : stdgo.GoInt)) : stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf);
                    _f.fileHeader.externalAttrs = _b_3869779._uint32();
                    _f._headerOffset = (_b_3869779._uint32() : stdgo.GoInt64);
                    _d_3870462 = (new stdgo.Slice<stdgo.GoUInt8>(((_filenameLen_3870228 + _extraLen_3870260 : stdgo.GoInt) + _commentLen_3870289 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_r, _d_3870462);
                            _err_3870520 = __tmp__._1;
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
                    _f.fileHeader.name = ((_d_3870462.__slice__(0, _filenameLen_3870228) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    _f.fileHeader.extra = (_d_3870462.__slice__(_filenameLen_3870228, (_filenameLen_3870228 + _extraLen_3870260 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _f.fileHeader.comment = ((_d_3870462.__slice__((_filenameLen_3870228 + _extraLen_3870260 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    {
                        var __tmp__ = stdgo._internal.archive.zip.Zip__detectUTF8._detectUTF8(_f.fileHeader.name?.__copy__());
                        _utf8Valid1_3870744 = __tmp__._0;
                        _utf8Require1_3870756 = __tmp__._1;
                    };
                    {
                        var __tmp__ = stdgo._internal.archive.zip.Zip__detectUTF8._detectUTF8(_f.fileHeader.comment?.__copy__());
                        _utf8Valid2_3870792 = __tmp__._0;
                        _utf8Require2_3870804 = __tmp__._1;
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
                    _f.fileHeader.nonUTF8 = true;
                    _gotoNext = 3871414i32;
                } else if (__value__ == (3870950i32)) {
                    _f.fileHeader.nonUTF8 = false;
                    _gotoNext = 3871414i32;
                } else if (__value__ == (3871082i32)) {
                    _f.fileHeader.nonUTF8 = (_f.fileHeader.flags & (2048 : stdgo.GoUInt16) : stdgo.GoUInt16) == ((0 : stdgo.GoUInt16));
                    _gotoNext = 3871414i32;
                } else if (__value__ == (3871414i32)) {
                    _needUSize_3871414 = _f.fileHeader.uncompressedSize == ((-1u32 : stdgo.GoUInt32));
                    _needCSize_3871461 = _f.fileHeader.compressedSize == ((-1u32 : stdgo.GoUInt32));
                    _needHeaderOffset_3871506 = _f._headerOffset == (((-1u32 : stdgo.GoUInt32) : stdgo.GoInt64));
                    _gotoNext = 3871745i32;
                } else if (__value__ == (3871745i32)) {
                    _extra_3871763 = (_f.fileHeader.extra : stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf);
                    _parseExtrasBreak = false;
                    _gotoNext = 3871759i32;
                } else if (__value__ == (3871759i32)) {
                    if (!_parseExtrasBreak && (((_extra_3871763.length) >= (4 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3871807i32;
                    } else {
                        _gotoNext = 3873926i32;
                    };
                } else if (__value__ == (3871807i32)) {
                    _fieldTag_3871841 = _extra_3871763._uint16();
                    _fieldSize_3871870 = (_extra_3871763._uint16() : stdgo.GoInt);
                    if (((_extra_3871763.length) < _fieldSize_3871870 : Bool)) {
                        _gotoNext = 3871931i32;
                    } else {
                        _gotoNext = 3871948i32;
                    };
                } else if (__value__ == (3871931i32)) {
                    _gotoNext = 3873926i32;
                } else if (__value__ == (3871948i32)) {
                    _fieldBuf_3871948 = _extra_3871763._sub(_fieldSize_3871870);
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
                    _f._zip64 = true;
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
                    return stdgo._internal.archive.zip.Zip_errFormat.errFormat;
                    _gotoNext = 3872316i32;
                } else if (__value__ == (3872316i32)) {
                    _f.fileHeader.uncompressedSize64 = _fieldBuf_3871948._uint64();
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
                    return stdgo._internal.archive.zip.Zip_errFormat.errFormat;
                    _gotoNext = 3872461i32;
                } else if (__value__ == (3872461i32)) {
                    _f.fileHeader.compressedSize64 = _fieldBuf_3871948._uint64();
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
                    return stdgo._internal.archive.zip.Zip_errFormat.errFormat;
                    _gotoNext = 3872618i32;
                } else if (__value__ == (3872618i32)) {
                    _f._headerOffset = (_fieldBuf_3871948._uint64() : stdgo.GoInt64);
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
                    _fieldBuf_3871948._uint32();
                    var __blank__ = 0i32;
                    _gotoNext = 3872794i32;
                } else if (__value__ == (3872794i32)) {
                    if (((_fieldBuf_3871948.length) >= (4 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3872817i32;
                    } else {
                        _gotoNext = 3871759i32;
                    };
                } else if (__value__ == (3872817i32)) {
                    _attrTag_3872853 = _fieldBuf_3871948._uint16();
                    _attrSize_3872886 = (_fieldBuf_3871948._uint16() : stdgo.GoInt);
                    if (((_fieldBuf_3871948.length) < _attrSize_3872886 : Bool)) {
                        _gotoNext = 3872953i32;
                    } else {
                        _gotoNext = 3872991i32;
                    };
                } else if (__value__ == (3872953i32)) {
                    _gotoNext = 3871759i32;
                } else if (__value__ == (3872991i32)) {
                    _attrBuf_3872991 = _fieldBuf_3871948._sub(_attrSize_3872886);
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
                    _ts_3873188 = (_attrBuf_3872991._uint64() : stdgo.GoInt64);
                    _secs_3873253 = (_ts_3873188 / (10000000i64 : stdgo.GoInt64) : stdgo.GoInt64);
                    _nsecs_3873292 = ((100i64 : stdgo.GoInt64) * (_ts_3873188 % (10000000i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
                    _epoch_3873355 = stdgo._internal.time.Time_date.date((1601 : stdgo.GoInt), (1 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__();
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
                    _fieldBuf_3871948._uint32();
                    _ts_3873628 = (_fieldBuf_3871948._uint32() : stdgo.GoInt64);
                    _modified_3871726 = stdgo._internal.time.Time_unix.unix(_ts_3873628, (0i64 : stdgo.GoInt64))?.__copy__();
                    _gotoNext = 3871759i32;
                } else if (__value__ == (3873720i32)) {
                    if ((((_fieldBuf_3871948.length) < (5 : stdgo.GoInt) : Bool) || ((_fieldBuf_3871948._uint8() & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) == (0 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3873792i32;
                    } else {
                        _gotoNext = 3873827i32;
                    };
                } else if (__value__ == (3873792i32)) {
                    _gotoNext = 3871759i32;
                } else if (__value__ == (3873827i32)) {
                    _ts_3873827 = (_fieldBuf_3871948._uint32() : stdgo.GoInt64);
                    _modified_3871726 = stdgo._internal.time.Time_unix.unix(_ts_3873827, (0i64 : stdgo.GoInt64))?.__copy__();
                    _gotoNext = 3871759i32;
                } else if (__value__ == (3873926i32)) {
                    _msdosModified_3873926 = stdgo._internal.archive.zip.Zip__msDosTimeToTime._msDosTimeToTime(_f.fileHeader.modifiedDate, _f.fileHeader.modifiedTime)?.__copy__();
                    _f.fileHeader.modified = _msdosModified_3873926?.__copy__();
                    if (!_modified_3871726.isZero()) {
                        _gotoNext = 3874042i32;
                    } else {
                        _gotoNext = 3875180i32;
                    };
                } else if (__value__ == (3874042i32)) {
                    _f.fileHeader.modified = _modified_3871726.utc()?.__copy__();
                    if (((_f.fileHeader.modifiedTime != (0 : stdgo.GoUInt16)) || (_f.fileHeader.modifiedDate != (0 : stdgo.GoUInt16)) : Bool)) {
                        _gotoNext = 3874578i32;
                    } else {
                        _gotoNext = 3875180i32;
                    };
                } else if (__value__ == (3874578i32)) {
                    _f.fileHeader.modified = _modified_3871726.in_(stdgo._internal.archive.zip.Zip__timeZone._timeZone(_msdosModified_3873926.sub(_modified_3871726?.__copy__())))?.__copy__();
                    _gotoNext = 3875180i32;
                } else if (__value__ == (3875180i32)) {
                    var __blank__ = _needUSize_3871414;
                    if ((_needCSize_3871461 || _needHeaderOffset_3871506 : Bool)) {
                        _gotoNext = 3875229i32;
                    } else {
                        _gotoNext = 3875255i32;
                    };
                } else if (__value__ == (3875229i32)) {
                    return stdgo._internal.archive.zip.Zip_errFormat.errFormat;
                    _gotoNext = 3875255i32;
                } else if (__value__ == (3875255i32)) {
                    return (null : stdgo.Error);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
