package stdgo._internal.archive.zip;
function _readDirectoryHeader(_f:stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>, _r:stdgo._internal.io.Io_Reader.Reader):stdgo.Error {
        var _msdosModified_3870188:stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
        var _attrSize_3869148:stdgo.GoInt = (0 : stdgo.GoInt);
        var _needUSize_3867676:Bool = false;
        var _fieldSize_3868132:stdgo.GoInt = (0 : stdgo.GoInt);
        var _utf8Valid1_3867006:Bool = false;
        var _err_3865980:stdgo.Error = (null : stdgo.Error);
        var _buf_3865944:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(46, 46, ...[for (i in 0 ... 46) (0 : stdgo.GoUInt8)]);
        var _ts_3870089:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _secs_3869515:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _attrBuf_3869253:stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf = new stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf(0, 0);
        var _parseExtrasBreak = false;
        var _extra_3868025:stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf = new stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf(0, 0);
        var _modified_3867988:stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
        var _utf8Require1_3867018:Bool = false;
        var _extraLen_3866522:stdgo.GoInt = (0 : stdgo.GoInt);
        var _epoch_3869617:stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
        var _ts_3869450:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _ticksPerSecond_3869390;
        var _utf8Require2_3867066:Bool = false;
        var _utf8Valid2_3867054:Bool = false;
        var _sig_3866066:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _nsecs_3869554:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _fieldBuf_3868210:stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf = new stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf(0, 0);
        var _needHeaderOffset_3867768:Bool = false;
        var _needCSize_3867723:Bool = false;
        var _commentLen_3866551:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ts_3869890:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _filenameLen_3866490:stdgo.GoInt = (0 : stdgo.GoInt);
        var _b_3866041:stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf = new stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf(0, 0);
        var _attrTag_3869115:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _fieldTag_3868103:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _err_3866782:stdgo.Error = (null : stdgo.Error);
        var _d_3866724:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_r, (_buf_3865944.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                            _err_3865980 = __tmp__._1;
                        };
                        if (_err_3865980 != null) {
                            _gotoNext = 3866022i32;
                        } else {
                            _gotoNext = 3866041i32;
                        };
                    };
                } else if (__value__ == (3866022i32)) {
                    return _err_3865980;
                    _gotoNext = 3866041i32;
                } else if (__value__ == (3866041i32)) {
                    _b_3866041 = ((_buf_3865944.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf);
                    {
                        _sig_3866066 = _b_3866041._uint32();
                        if (_sig_3866066 != ((33639248u32 : stdgo.GoUInt32))) {
                            _gotoNext = 3866117i32;
                        } else {
                            _gotoNext = 3866142i32;
                        };
                    };
                } else if (__value__ == (3866117i32)) {
                    return stdgo._internal.archive.zip.Zip_errFormat.errFormat;
                    _gotoNext = 3866142i32;
                } else if (__value__ == (3866142i32)) {
                    _f.fileHeader.creatorVersion = _b_3866041._uint16();
                    _f.fileHeader.readerVersion = _b_3866041._uint16();
                    _f.fileHeader.flags = _b_3866041._uint16();
                    _f.fileHeader.method = _b_3866041._uint16();
                    _f.fileHeader.modifiedTime = _b_3866041._uint16();
                    _f.fileHeader.modifiedDate = _b_3866041._uint16();
                    _f.fileHeader.crc32 = _b_3866041._uint32();
                    _f.fileHeader.compressedSize = _b_3866041._uint32();
                    _f.fileHeader.uncompressedSize = _b_3866041._uint32();
                    _f.fileHeader.compressedSize64 = (_f.fileHeader.compressedSize : stdgo.GoUInt64);
                    _f.fileHeader.uncompressedSize64 = (_f.fileHeader.uncompressedSize : stdgo.GoUInt64);
                    _filenameLen_3866490 = (_b_3866041._uint16() : stdgo.GoInt);
                    _extraLen_3866522 = (_b_3866041._uint16() : stdgo.GoInt);
                    _commentLen_3866551 = (_b_3866041._uint16() : stdgo.GoInt);
                    _b_3866041 = (_b_3866041.__slice__((4 : stdgo.GoInt)) : stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf);
                    _f.fileHeader.externalAttrs = _b_3866041._uint32();
                    _f._headerOffset = (_b_3866041._uint32() : stdgo.GoInt64);
                    _d_3866724 = (new stdgo.Slice<stdgo.GoUInt8>(((_filenameLen_3866490 + _extraLen_3866522 : stdgo.GoInt) + _commentLen_3866551 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_r, _d_3866724);
                            _err_3866782 = __tmp__._1;
                        };
                        if (_err_3866782 != null) {
                            _gotoNext = 3866819i32;
                        } else {
                            _gotoNext = 3866838i32;
                        };
                    };
                } else if (__value__ == (3866819i32)) {
                    return _err_3866782;
                    _gotoNext = 3866838i32;
                } else if (__value__ == (3866838i32)) {
                    _f.fileHeader.name = ((_d_3866724.__slice__(0, _filenameLen_3866490) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    _f.fileHeader.extra = (_d_3866724.__slice__(_filenameLen_3866490, (_filenameLen_3866490 + _extraLen_3866522 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _f.fileHeader.comment = ((_d_3866724.__slice__((_filenameLen_3866490 + _extraLen_3866522 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    {
                        var __tmp__ = stdgo._internal.archive.zip.Zip__detectUTF8._detectUTF8(_f.fileHeader.name?.__copy__());
                        _utf8Valid1_3867006 = __tmp__._0;
                        _utf8Require1_3867018 = __tmp__._1;
                    };
                    {
                        var __tmp__ = stdgo._internal.archive.zip.Zip__detectUTF8._detectUTF8(_f.fileHeader.comment?.__copy__());
                        _utf8Valid2_3867054 = __tmp__._0;
                        _utf8Require2_3867066 = __tmp__._1;
                    };
                    _gotoNext = 3867105i32;
                } else if (__value__ == (3867105i32)) {
                    if ((!_utf8Valid1_3867006 || !_utf8Valid2_3867054 : Bool)) {
                        _gotoNext = 3867115i32;
                    } else if ((!_utf8Require1_3867018 && !_utf8Require2_3867066 : Bool)) {
                        _gotoNext = 3867212i32;
                    } else {
                        _gotoNext = 3867344i32;
                    };
                } else if (__value__ == (3867115i32)) {
                    _f.fileHeader.nonUTF8 = true;
                    _gotoNext = 3867676i32;
                } else if (__value__ == (3867212i32)) {
                    _f.fileHeader.nonUTF8 = false;
                    _gotoNext = 3867676i32;
                } else if (__value__ == (3867344i32)) {
                    _f.fileHeader.nonUTF8 = (_f.fileHeader.flags & (2048 : stdgo.GoUInt16) : stdgo.GoUInt16) == ((0 : stdgo.GoUInt16));
                    _gotoNext = 3867676i32;
                } else if (__value__ == (3867676i32)) {
                    _needUSize_3867676 = _f.fileHeader.uncompressedSize == ((-1u32 : stdgo.GoUInt32));
                    _needCSize_3867723 = _f.fileHeader.compressedSize == ((-1u32 : stdgo.GoUInt32));
                    _needHeaderOffset_3867768 = _f._headerOffset == (((-1u32 : stdgo.GoUInt32) : stdgo.GoInt64));
                    _gotoNext = 3868007i32;
                } else if (__value__ == (3868007i32)) {
                    _extra_3868025 = (_f.fileHeader.extra : stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf);
                    _parseExtrasBreak = false;
                    _gotoNext = 3868021i32;
                } else if (__value__ == (3868021i32)) {
                    if (!_parseExtrasBreak && (((_extra_3868025.length) >= (4 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3868069i32;
                    } else {
                        _gotoNext = 3870188i32;
                    };
                } else if (__value__ == (3868069i32)) {
                    _fieldTag_3868103 = _extra_3868025._uint16();
                    _fieldSize_3868132 = (_extra_3868025._uint16() : stdgo.GoInt);
                    if (((_extra_3868025.length) < _fieldSize_3868132 : Bool)) {
                        _gotoNext = 3868193i32;
                    } else {
                        _gotoNext = 3868210i32;
                    };
                } else if (__value__ == (3868193i32)) {
                    _gotoNext = 3870188i32;
                } else if (__value__ == (3868210i32)) {
                    _fieldBuf_3868210 = _extra_3868025._sub(_fieldSize_3868132);
                    _gotoNext = 3868246i32;
                } else if (__value__ == (3868246i32)) {
                    {
                        final __value__ = _fieldTag_3868103;
                        if (__value__ == ((1 : stdgo.GoUInt16))) {
                            _gotoNext = 3868266i32;
                        } else if (__value__ == ((10 : stdgo.GoUInt16))) {
                            _gotoNext = 3868929i32;
                        } else if (__value__ == ((13 : stdgo.GoUInt16)) || __value__ == ((22613 : stdgo.GoUInt16))) {
                            _gotoNext = 3869739i32;
                        } else if (__value__ == ((21589 : stdgo.GoUInt16))) {
                            _gotoNext = 3869982i32;
                        } else {
                            _gotoNext = 3870188i32;
                        };
                    };
                } else if (__value__ == (3868266i32)) {
                    _f._zip64 = true;
                    if (_needUSize_3867676) {
                        _gotoNext = 3868495i32;
                    } else {
                        _gotoNext = 3868627i32;
                    };
                } else if (__value__ == (3868495i32)) {
                    _needUSize_3867676 = false;
                    if (((_fieldBuf_3868210.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3868544i32;
                    } else {
                        _gotoNext = 3868578i32;
                    };
                } else if (__value__ == (3868544i32)) {
                    return stdgo._internal.archive.zip.Zip_errFormat.errFormat;
                    _gotoNext = 3868578i32;
                } else if (__value__ == (3868578i32)) {
                    _f.fileHeader.uncompressedSize64 = _fieldBuf_3868210._uint64();
                    _gotoNext = 3868627i32;
                } else if (__value__ == (3868627i32)) {
                    if (_needCSize_3867723) {
                        _gotoNext = 3868640i32;
                    } else {
                        _gotoNext = 3868770i32;
                    };
                } else if (__value__ == (3868640i32)) {
                    _needCSize_3867723 = false;
                    if (((_fieldBuf_3868210.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3868689i32;
                    } else {
                        _gotoNext = 3868723i32;
                    };
                } else if (__value__ == (3868689i32)) {
                    return stdgo._internal.archive.zip.Zip_errFormat.errFormat;
                    _gotoNext = 3868723i32;
                } else if (__value__ == (3868723i32)) {
                    _f.fileHeader.compressedSize64 = _fieldBuf_3868210._uint64();
                    _gotoNext = 3868770i32;
                } else if (__value__ == (3868770i32)) {
                    if (_needHeaderOffset_3867768) {
                        _gotoNext = 3868790i32;
                    } else {
                        _gotoNext = 3870188i32;
                    };
                } else if (__value__ == (3868790i32)) {
                    _needHeaderOffset_3867768 = false;
                    if (((_fieldBuf_3868210.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3868846i32;
                    } else {
                        _gotoNext = 3868880i32;
                    };
                } else if (__value__ == (3868846i32)) {
                    return stdgo._internal.archive.zip.Zip_errFormat.errFormat;
                    _gotoNext = 3868880i32;
                } else if (__value__ == (3868880i32)) {
                    _f._headerOffset = (_fieldBuf_3868210._uint64() : stdgo.GoInt64);
                    _gotoNext = 3870188i32;
                } else if (__value__ == (3868929i32)) {
                    if (((_fieldBuf_3868210.length) < (4 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3868971i32;
                    } else {
                        _gotoNext = 3869006i32;
                    };
                } else if (__value__ == (3868971i32)) {
                    _gotoNext = 3868021i32;
                } else if (__value__ == (3869006i32)) {
                    _fieldBuf_3868210._uint32();
                    var __blank__ = 0i32;
                    _gotoNext = 3869056i32;
                } else if (__value__ == (3869056i32)) {
                    if (((_fieldBuf_3868210.length) >= (4 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3869079i32;
                    } else {
                        _gotoNext = 3870188i32;
                    };
                } else if (__value__ == (3869079i32)) {
                    _attrTag_3869115 = _fieldBuf_3868210._uint16();
                    _attrSize_3869148 = (_fieldBuf_3868210._uint16() : stdgo.GoInt);
                    if (((_fieldBuf_3868210.length) < _attrSize_3869148 : Bool)) {
                        _gotoNext = 3869215i32;
                    } else {
                        _gotoNext = 3869253i32;
                    };
                } else if (__value__ == (3869215i32)) {
                    _gotoNext = 3868021i32;
                } else if (__value__ == (3869253i32)) {
                    _attrBuf_3869253 = _fieldBuf_3868210._sub(_attrSize_3869148);
                    if (((_attrTag_3869115 != (1 : stdgo.GoUInt16)) || (_attrSize_3869148 != (24 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3869325i32;
                    } else {
                        _gotoNext = 3869384i32;
                    };
                } else if (__value__ == (3869325i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3869056i32;
                } else if (__value__ == (3869384i32)) {
                    _ticksPerSecond_3869390 = (1e+07 : stdgo.GoFloat64);
                    _ts_3869450 = (_attrBuf_3869253._uint64() : stdgo.GoInt64);
                    _secs_3869515 = (_ts_3869450 / (10000000i64 : stdgo.GoInt64) : stdgo.GoInt64);
                    _nsecs_3869554 = ((100i64 : stdgo.GoInt64) * (_ts_3869450 % (10000000i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
                    _epoch_3869617 = stdgo._internal.time.Time_date.date((1601 : stdgo.GoInt), (1 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__();
                    _modified_3867988 = stdgo._internal.time.Time_unix.unix((_epoch_3869617.unix() + _secs_3869515 : stdgo.GoInt64), _nsecs_3869554)?.__copy__();
                    _gotoNext = 3869056i32;
                } else if (__value__ == (3869739i32)) {
                    if (((_fieldBuf_3868210.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3869801i32;
                    } else {
                        _gotoNext = 3869836i32;
                    };
                } else if (__value__ == (3869801i32)) {
                    _gotoNext = 3868021i32;
                } else if (__value__ == (3869836i32)) {
                    _fieldBuf_3868210._uint32();
                    _ts_3869890 = (_fieldBuf_3868210._uint32() : stdgo.GoInt64);
                    _modified_3867988 = stdgo._internal.time.Time_unix.unix(_ts_3869890, (0i64 : stdgo.GoInt64))?.__copy__();
                    _gotoNext = 3870188i32;
                } else if (__value__ == (3869982i32)) {
                    if ((((_fieldBuf_3868210.length) < (5 : stdgo.GoInt) : Bool) || ((_fieldBuf_3868210._uint8() & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) == (0 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3870054i32;
                    } else {
                        _gotoNext = 3870089i32;
                    };
                } else if (__value__ == (3870054i32)) {
                    _gotoNext = 3868021i32;
                } else if (__value__ == (3870089i32)) {
                    _ts_3870089 = (_fieldBuf_3868210._uint32() : stdgo.GoInt64);
                    _modified_3867988 = stdgo._internal.time.Time_unix.unix(_ts_3870089, (0i64 : stdgo.GoInt64))?.__copy__();
                    _gotoNext = 3870188i32;
                } else if (__value__ == (3870188i32)) {
                    _msdosModified_3870188 = stdgo._internal.archive.zip.Zip__msDosTimeToTime._msDosTimeToTime(_f.fileHeader.modifiedDate, _f.fileHeader.modifiedTime)?.__copy__();
                    _f.fileHeader.modified = _msdosModified_3870188?.__copy__();
                    if (!_modified_3867988.isZero()) {
                        _gotoNext = 3870304i32;
                    } else {
                        _gotoNext = 3871442i32;
                    };
                } else if (__value__ == (3870304i32)) {
                    _f.fileHeader.modified = _modified_3867988.utc()?.__copy__();
                    if (((_f.fileHeader.modifiedTime != (0 : stdgo.GoUInt16)) || (_f.fileHeader.modifiedDate != (0 : stdgo.GoUInt16)) : Bool)) {
                        _gotoNext = 3870840i32;
                    } else {
                        _gotoNext = 3871442i32;
                    };
                } else if (__value__ == (3870840i32)) {
                    _f.fileHeader.modified = _modified_3867988.in_(stdgo._internal.archive.zip.Zip__timeZone._timeZone(_msdosModified_3870188.sub(_modified_3867988?.__copy__())))?.__copy__();
                    _gotoNext = 3871442i32;
                } else if (__value__ == (3871442i32)) {
                    var __blank__ = _needUSize_3867676;
                    if ((_needCSize_3867723 || _needHeaderOffset_3867768 : Bool)) {
                        _gotoNext = 3871491i32;
                    } else {
                        _gotoNext = 3871517i32;
                    };
                } else if (__value__ == (3871491i32)) {
                    return stdgo._internal.archive.zip.Zip_errFormat.errFormat;
                    _gotoNext = 3871517i32;
                } else if (__value__ == (3871517i32)) {
                    return (null : stdgo.Error);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
