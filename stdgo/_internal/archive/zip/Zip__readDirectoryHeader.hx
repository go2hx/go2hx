package stdgo._internal.archive.zip;
function _readDirectoryHeader(_f:stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>, _r:stdgo._internal.io.Io_Reader.Reader):stdgo.Error {
        var _d_3879012:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _commentLen_3878839:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sig_3878354:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _msdosModified_3882476:stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
        var _ts_3882178:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _attrBuf_3881541:stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf = new stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf(0, 0);
        var _utf8Valid1_3879294:Bool = false;
        var _extraLen_3878810:stdgo.GoInt = (0 : stdgo.GoInt);
        var _buf_3878232:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(46, 46, ...[for (i in 0 ... 46) (0 : stdgo.GoUInt8)]);
        var _ts_3882377:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _ticksPerSecond_3881678;
        var _fieldBuf_3880498:stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf = new stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf(0, 0);
        var _utf8Require1_3879306:Bool = false;
        var _needCSize_3880011:Bool = false;
        var _err_3879070:stdgo.Error = (null : stdgo.Error);
        var _attrTag_3881403:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _fieldTag_3880391:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _modified_3880276:stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
        var _extra_3880313:stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf = new stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf(0, 0);
        var _needHeaderOffset_3880056:Bool = false;
        var _b_3878329:stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf = new stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf(0, 0);
        var _fieldSize_3880420:stdgo.GoInt = (0 : stdgo.GoInt);
        var _parseExtrasBreak = false;
        var _attrSize_3881436:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3878268:stdgo.Error = (null : stdgo.Error);
        var _utf8Require2_3879354:Bool = false;
        var _utf8Valid2_3879342:Bool = false;
        var _filenameLen_3878778:stdgo.GoInt = (0 : stdgo.GoInt);
        var _secs_3881803:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _ts_3881738:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _epoch_3881905:stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
        var _nsecs_3881842:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _needUSize_3879964:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_r, (_buf_3878232.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                            _err_3878268 = __tmp__._1;
                        };
                        if (_err_3878268 != null) {
                            _gotoNext = 3878310i32;
                        } else {
                            _gotoNext = 3878329i32;
                        };
                    };
                } else if (__value__ == (3878310i32)) {
                    return _err_3878268;
                    _gotoNext = 3878329i32;
                } else if (__value__ == (3878329i32)) {
                    _b_3878329 = ((_buf_3878232.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf);
                    {
                        _sig_3878354 = _b_3878329._uint32();
                        if (_sig_3878354 != ((33639248u32 : stdgo.GoUInt32))) {
                            _gotoNext = 3878405i32;
                        } else {
                            _gotoNext = 3878430i32;
                        };
                    };
                } else if (__value__ == (3878405i32)) {
                    return stdgo._internal.archive.zip.Zip_errFormat.errFormat;
                    _gotoNext = 3878430i32;
                } else if (__value__ == (3878430i32)) {
                    _f.fileHeader.creatorVersion = _b_3878329._uint16();
                    _f.fileHeader.readerVersion = _b_3878329._uint16();
                    _f.fileHeader.flags = _b_3878329._uint16();
                    _f.fileHeader.method = _b_3878329._uint16();
                    _f.fileHeader.modifiedTime = _b_3878329._uint16();
                    _f.fileHeader.modifiedDate = _b_3878329._uint16();
                    _f.fileHeader.crc32 = _b_3878329._uint32();
                    _f.fileHeader.compressedSize = _b_3878329._uint32();
                    _f.fileHeader.uncompressedSize = _b_3878329._uint32();
                    _f.fileHeader.compressedSize64 = (_f.fileHeader.compressedSize : stdgo.GoUInt64);
                    _f.fileHeader.uncompressedSize64 = (_f.fileHeader.uncompressedSize : stdgo.GoUInt64);
                    _filenameLen_3878778 = (_b_3878329._uint16() : stdgo.GoInt);
                    _extraLen_3878810 = (_b_3878329._uint16() : stdgo.GoInt);
                    _commentLen_3878839 = (_b_3878329._uint16() : stdgo.GoInt);
                    _b_3878329 = (_b_3878329.__slice__((4 : stdgo.GoInt)) : stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf);
                    _f.fileHeader.externalAttrs = _b_3878329._uint32();
                    _f._headerOffset = (_b_3878329._uint32() : stdgo.GoInt64);
                    _d_3879012 = (new stdgo.Slice<stdgo.GoUInt8>(((_filenameLen_3878778 + _extraLen_3878810 : stdgo.GoInt) + _commentLen_3878839 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_r, _d_3879012);
                            _err_3879070 = __tmp__._1;
                        };
                        if (_err_3879070 != null) {
                            _gotoNext = 3879107i32;
                        } else {
                            _gotoNext = 3879126i32;
                        };
                    };
                } else if (__value__ == (3879107i32)) {
                    return _err_3879070;
                    _gotoNext = 3879126i32;
                } else if (__value__ == (3879126i32)) {
                    _f.fileHeader.name = ((_d_3879012.__slice__(0, _filenameLen_3878778) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    _f.fileHeader.extra = (_d_3879012.__slice__(_filenameLen_3878778, (_filenameLen_3878778 + _extraLen_3878810 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _f.fileHeader.comment = ((_d_3879012.__slice__((_filenameLen_3878778 + _extraLen_3878810 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    {
                        var __tmp__ = stdgo._internal.archive.zip.Zip__detectUTF8._detectUTF8(_f.fileHeader.name?.__copy__());
                        _utf8Valid1_3879294 = __tmp__._0;
                        _utf8Require1_3879306 = __tmp__._1;
                    };
                    {
                        var __tmp__ = stdgo._internal.archive.zip.Zip__detectUTF8._detectUTF8(_f.fileHeader.comment?.__copy__());
                        _utf8Valid2_3879342 = __tmp__._0;
                        _utf8Require2_3879354 = __tmp__._1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3879393i32;
                } else if (__value__ == (3879393i32)) {
                    if ((!_utf8Valid1_3879294 || !_utf8Valid2_3879342 : Bool)) {
                        _gotoNext = 3879403i32;
                    } else if ((!_utf8Require1_3879306 && !_utf8Require2_3879354 : Bool)) {
                        _gotoNext = 3879500i32;
                    } else {
                        _gotoNext = 3879632i32;
                    };
                } else if (__value__ == (3879403i32)) {
                    _f.fileHeader.nonUTF8 = true;
                    _gotoNext = 3879964i32;
                } else if (__value__ == (3879500i32)) {
                    _f.fileHeader.nonUTF8 = false;
                    _gotoNext = 3879964i32;
                } else if (__value__ == (3879632i32)) {
                    _f.fileHeader.nonUTF8 = (_f.fileHeader.flags & (2048 : stdgo.GoUInt16) : stdgo.GoUInt16) == ((0 : stdgo.GoUInt16));
                    _gotoNext = 3879964i32;
                } else if (__value__ == (3879964i32)) {
                    _needUSize_3879964 = _f.fileHeader.uncompressedSize == ((-1u32 : stdgo.GoUInt32));
                    _needCSize_3880011 = _f.fileHeader.compressedSize == ((-1u32 : stdgo.GoUInt32));
                    _needHeaderOffset_3880056 = _f._headerOffset == (((-1u32 : stdgo.GoUInt32) : stdgo.GoInt64));
                    _gotoNext = 3880295i32;
                } else if (__value__ == (3880295i32)) {
                    _extra_3880313 = (_f.fileHeader.extra : stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf);
                    _parseExtrasBreak = false;
                    _gotoNext = 3880309i32;
                } else if (__value__ == (3880309i32)) {
                    if (!_parseExtrasBreak && (((_extra_3880313.length) >= (4 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3880357i32;
                    } else {
                        _gotoNext = 3882476i32;
                    };
                } else if (__value__ == (3880357i32)) {
                    _fieldTag_3880391 = _extra_3880313._uint16();
                    _fieldSize_3880420 = (_extra_3880313._uint16() : stdgo.GoInt);
                    if (((_extra_3880313.length) < _fieldSize_3880420 : Bool)) {
                        _gotoNext = 3880481i32;
                    } else {
                        _gotoNext = 3880498i32;
                    };
                } else if (__value__ == (3880481i32)) {
                    _gotoNext = 3882476i32;
                } else if (__value__ == (3880498i32)) {
                    _fieldBuf_3880498 = _extra_3880313._sub(_fieldSize_3880420);
                    var __blank__ = 0i32;
                    _gotoNext = 3880534i32;
                } else if (__value__ == (3880534i32)) {
                    {
                        final __value__ = _fieldTag_3880391;
                        if (__value__ == ((1 : stdgo.GoUInt16))) {
                            _gotoNext = 3880554i32;
                        } else if (__value__ == ((10 : stdgo.GoUInt16))) {
                            _gotoNext = 3881217i32;
                        } else if (__value__ == ((13 : stdgo.GoUInt16)) || __value__ == ((22613 : stdgo.GoUInt16))) {
                            _gotoNext = 3882027i32;
                        } else if (__value__ == ((21589 : stdgo.GoUInt16))) {
                            _gotoNext = 3882270i32;
                        } else {
                            _gotoNext = 3882476i32;
                        };
                    };
                } else if (__value__ == (3880554i32)) {
                    _f._zip64 = true;
                    if (_needUSize_3879964) {
                        _gotoNext = 3880783i32;
                    } else {
                        _gotoNext = 3880915i32;
                    };
                } else if (__value__ == (3880783i32)) {
                    _needUSize_3879964 = false;
                    if (((_fieldBuf_3880498.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3880832i32;
                    } else {
                        _gotoNext = 3880866i32;
                    };
                } else if (__value__ == (3880832i32)) {
                    return stdgo._internal.archive.zip.Zip_errFormat.errFormat;
                    _gotoNext = 3880866i32;
                } else if (__value__ == (3880866i32)) {
                    _f.fileHeader.uncompressedSize64 = _fieldBuf_3880498._uint64();
                    _gotoNext = 3880915i32;
                } else if (__value__ == (3880915i32)) {
                    if (_needCSize_3880011) {
                        _gotoNext = 3880928i32;
                    } else {
                        _gotoNext = 3881058i32;
                    };
                } else if (__value__ == (3880928i32)) {
                    _needCSize_3880011 = false;
                    if (((_fieldBuf_3880498.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3880977i32;
                    } else {
                        _gotoNext = 3881011i32;
                    };
                } else if (__value__ == (3880977i32)) {
                    return stdgo._internal.archive.zip.Zip_errFormat.errFormat;
                    _gotoNext = 3881011i32;
                } else if (__value__ == (3881011i32)) {
                    _f.fileHeader.compressedSize64 = _fieldBuf_3880498._uint64();
                    _gotoNext = 3881058i32;
                } else if (__value__ == (3881058i32)) {
                    if (_needHeaderOffset_3880056) {
                        _gotoNext = 3881078i32;
                    } else {
                        _gotoNext = 3882476i32;
                    };
                } else if (__value__ == (3881078i32)) {
                    _needHeaderOffset_3880056 = false;
                    if (((_fieldBuf_3880498.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3881134i32;
                    } else {
                        _gotoNext = 3881168i32;
                    };
                } else if (__value__ == (3881134i32)) {
                    return stdgo._internal.archive.zip.Zip_errFormat.errFormat;
                    _gotoNext = 3881168i32;
                } else if (__value__ == (3881168i32)) {
                    _f._headerOffset = (_fieldBuf_3880498._uint64() : stdgo.GoInt64);
                    _gotoNext = 3882476i32;
                } else if (__value__ == (3881217i32)) {
                    if (((_fieldBuf_3880498.length) < (4 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3881259i32;
                    } else {
                        _gotoNext = 3881294i32;
                    };
                } else if (__value__ == (3881259i32)) {
                    _gotoNext = 3880309i32;
                } else if (__value__ == (3881294i32)) {
                    _fieldBuf_3880498._uint32();
                    var __blank__ = 0i32;
                    _gotoNext = 3881344i32;
                } else if (__value__ == (3881344i32)) {
                    if (((_fieldBuf_3880498.length) >= (4 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3881367i32;
                    } else {
                        _gotoNext = 3882476i32;
                    };
                } else if (__value__ == (3881367i32)) {
                    _attrTag_3881403 = _fieldBuf_3880498._uint16();
                    _attrSize_3881436 = (_fieldBuf_3880498._uint16() : stdgo.GoInt);
                    if (((_fieldBuf_3880498.length) < _attrSize_3881436 : Bool)) {
                        _gotoNext = 3881503i32;
                    } else {
                        _gotoNext = 3881541i32;
                    };
                } else if (__value__ == (3881503i32)) {
                    _gotoNext = 3880309i32;
                } else if (__value__ == (3881541i32)) {
                    _attrBuf_3881541 = _fieldBuf_3880498._sub(_attrSize_3881436);
                    if (((_attrTag_3881403 != (1 : stdgo.GoUInt16)) || (_attrSize_3881436 != (24 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3881613i32;
                    } else {
                        _gotoNext = 3881672i32;
                    };
                } else if (__value__ == (3881613i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3881344i32;
                } else if (__value__ == (3881672i32)) {
                    _ticksPerSecond_3881678 = (1e+07 : stdgo.GoFloat64);
                    _ts_3881738 = (_attrBuf_3881541._uint64() : stdgo.GoInt64);
                    _secs_3881803 = (_ts_3881738 / (10000000i64 : stdgo.GoInt64) : stdgo.GoInt64);
                    _nsecs_3881842 = ((100i64 : stdgo.GoInt64) * (_ts_3881738 % (10000000i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
                    _epoch_3881905 = stdgo._internal.time.Time_date.date((1601 : stdgo.GoInt), (1 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__();
                    _modified_3880276 = stdgo._internal.time.Time_unix.unix((_epoch_3881905.unix() + _secs_3881803 : stdgo.GoInt64), _nsecs_3881842)?.__copy__();
                    _gotoNext = 3881344i32;
                } else if (__value__ == (3882027i32)) {
                    if (((_fieldBuf_3880498.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3882089i32;
                    } else {
                        _gotoNext = 3882124i32;
                    };
                } else if (__value__ == (3882089i32)) {
                    _gotoNext = 3880309i32;
                } else if (__value__ == (3882124i32)) {
                    _fieldBuf_3880498._uint32();
                    _ts_3882178 = (_fieldBuf_3880498._uint32() : stdgo.GoInt64);
                    _modified_3880276 = stdgo._internal.time.Time_unix.unix(_ts_3882178, (0i64 : stdgo.GoInt64))?.__copy__();
                    _gotoNext = 3882476i32;
                } else if (__value__ == (3882270i32)) {
                    if ((((_fieldBuf_3880498.length) < (5 : stdgo.GoInt) : Bool) || ((_fieldBuf_3880498._uint8() & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) == (0 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3882342i32;
                    } else {
                        _gotoNext = 3882377i32;
                    };
                } else if (__value__ == (3882342i32)) {
                    _gotoNext = 3880309i32;
                } else if (__value__ == (3882377i32)) {
                    _ts_3882377 = (_fieldBuf_3880498._uint32() : stdgo.GoInt64);
                    _modified_3880276 = stdgo._internal.time.Time_unix.unix(_ts_3882377, (0i64 : stdgo.GoInt64))?.__copy__();
                    _gotoNext = 3882476i32;
                } else if (__value__ == (3882476i32)) {
                    _msdosModified_3882476 = stdgo._internal.archive.zip.Zip__msDosTimeToTime._msDosTimeToTime(_f.fileHeader.modifiedDate, _f.fileHeader.modifiedTime)?.__copy__();
                    _f.fileHeader.modified = _msdosModified_3882476?.__copy__();
                    if (!_modified_3880276.isZero()) {
                        _gotoNext = 3882592i32;
                    } else {
                        _gotoNext = 3883730i32;
                    };
                } else if (__value__ == (3882592i32)) {
                    _f.fileHeader.modified = _modified_3880276.utc()?.__copy__();
                    if (((_f.fileHeader.modifiedTime != (0 : stdgo.GoUInt16)) || (_f.fileHeader.modifiedDate != (0 : stdgo.GoUInt16)) : Bool)) {
                        _gotoNext = 3883128i32;
                    } else {
                        _gotoNext = 3883730i32;
                    };
                } else if (__value__ == (3883128i32)) {
                    _f.fileHeader.modified = _modified_3880276.in_(stdgo._internal.archive.zip.Zip__timeZone._timeZone(_msdosModified_3882476.sub(_modified_3880276?.__copy__())))?.__copy__();
                    _gotoNext = 3883730i32;
                } else if (__value__ == (3883730i32)) {
                    var __blank__ = _needUSize_3879964;
                    if ((_needCSize_3880011 || _needHeaderOffset_3880056 : Bool)) {
                        _gotoNext = 3883779i32;
                    } else {
                        _gotoNext = 3883805i32;
                    };
                } else if (__value__ == (3883779i32)) {
                    return stdgo._internal.archive.zip.Zip_errFormat.errFormat;
                    _gotoNext = 3883805i32;
                } else if (__value__ == (3883805i32)) {
                    return (null : stdgo.Error);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
