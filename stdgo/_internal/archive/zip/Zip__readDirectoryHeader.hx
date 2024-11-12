package stdgo._internal.archive.zip;
function _readDirectoryHeader(_f:stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>, _r:stdgo._internal.io.Io_Reader.Reader):stdgo.Error {
        var _epoch_3885643:stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
        var _secs_3885541:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _ts_3885476:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _ticksPerSecond_3885416;
        var _utf8Valid2_3883080:Bool = false;
        var _needCSize_3883749:Bool = false;
        var _needUSize_3883702:Bool = false;
        var _utf8Valid1_3883032:Bool = false;
        var _needHeaderOffset_3883794:Bool = false;
        var _filenameLen_3882516:stdgo.GoInt = (0 : stdgo.GoInt);
        var _buf_3881970:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(46, 46, ...[for (i in 0 ... 46) (0 : stdgo.GoUInt8)]);
        var _ts_3886115:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _attrSize_3885174:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldSize_3884158:stdgo.GoInt = (0 : stdgo.GoInt);
        var _modified_3884014:stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
        var _b_3882067:stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf = new stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf(0, 0);
        var _err_3882006:stdgo.Error = (null : stdgo.Error);
        var _msdosModified_3886214:stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
        var _fieldBuf_3884236:stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf = new stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf(0, 0);
        var _fieldTag_3884129:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _utf8Require2_3883092:Bool = false;
        var _utf8Require1_3883044:Bool = false;
        var _d_3882750:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _commentLen_3882577:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ts_3885916:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _nsecs_3885580:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _parseExtrasBreak = false;
        var _extra_3884051:stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf = new stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf(0, 0);
        var _err_3882808:stdgo.Error = (null : stdgo.Error);
        var _extraLen_3882548:stdgo.GoInt = (0 : stdgo.GoInt);
        var _attrBuf_3885279:stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf = new stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf(0, 0);
        var _attrTag_3885141:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _sig_3882092:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_r, (_buf_3881970.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                            _err_3882006 = __tmp__._1;
                        };
                        if (_err_3882006 != null) {
                            _gotoNext = 3882048i32;
                        } else {
                            _gotoNext = 3882067i32;
                        };
                    };
                } else if (__value__ == (3882048i32)) {
                    return _err_3882006;
                    _gotoNext = 3882067i32;
                } else if (__value__ == (3882067i32)) {
                    _b_3882067 = ((_buf_3881970.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf);
                    {
                        _sig_3882092 = _b_3882067._uint32();
                        if (_sig_3882092 != ((33639248u32 : stdgo.GoUInt32))) {
                            _gotoNext = 3882143i32;
                        } else {
                            _gotoNext = 3882168i32;
                        };
                    };
                } else if (__value__ == (3882143i32)) {
                    return stdgo._internal.archive.zip.Zip_errFormat.errFormat;
                    _gotoNext = 3882168i32;
                } else if (__value__ == (3882168i32)) {
                    _f.fileHeader.creatorVersion = _b_3882067._uint16();
                    _f.fileHeader.readerVersion = _b_3882067._uint16();
                    _f.fileHeader.flags = _b_3882067._uint16();
                    _f.fileHeader.method = _b_3882067._uint16();
                    _f.fileHeader.modifiedTime = _b_3882067._uint16();
                    _f.fileHeader.modifiedDate = _b_3882067._uint16();
                    _f.fileHeader.crc32 = _b_3882067._uint32();
                    _f.fileHeader.compressedSize = _b_3882067._uint32();
                    _f.fileHeader.uncompressedSize = _b_3882067._uint32();
                    _f.fileHeader.compressedSize64 = (_f.fileHeader.compressedSize : stdgo.GoUInt64);
                    _f.fileHeader.uncompressedSize64 = (_f.fileHeader.uncompressedSize : stdgo.GoUInt64);
                    _filenameLen_3882516 = (_b_3882067._uint16() : stdgo.GoInt);
                    _extraLen_3882548 = (_b_3882067._uint16() : stdgo.GoInt);
                    _commentLen_3882577 = (_b_3882067._uint16() : stdgo.GoInt);
                    _b_3882067 = (_b_3882067.__slice__((4 : stdgo.GoInt)) : stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf);
                    _f.fileHeader.externalAttrs = _b_3882067._uint32();
                    _f._headerOffset = (_b_3882067._uint32() : stdgo.GoInt64);
                    _d_3882750 = (new stdgo.Slice<stdgo.GoUInt8>(((_filenameLen_3882516 + _extraLen_3882548 : stdgo.GoInt) + _commentLen_3882577 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_r, _d_3882750);
                            _err_3882808 = __tmp__._1;
                        };
                        if (_err_3882808 != null) {
                            _gotoNext = 3882845i32;
                        } else {
                            _gotoNext = 3882864i32;
                        };
                    };
                } else if (__value__ == (3882845i32)) {
                    return _err_3882808;
                    _gotoNext = 3882864i32;
                } else if (__value__ == (3882864i32)) {
                    _f.fileHeader.name = ((_d_3882750.__slice__(0, _filenameLen_3882516) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    _f.fileHeader.extra = (_d_3882750.__slice__(_filenameLen_3882516, (_filenameLen_3882516 + _extraLen_3882548 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _f.fileHeader.comment = ((_d_3882750.__slice__((_filenameLen_3882516 + _extraLen_3882548 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    {
                        var __tmp__ = stdgo._internal.archive.zip.Zip__detectUTF8._detectUTF8(_f.fileHeader.name?.__copy__());
                        _utf8Valid1_3883032 = __tmp__._0;
                        _utf8Require1_3883044 = __tmp__._1;
                    };
                    {
                        var __tmp__ = stdgo._internal.archive.zip.Zip__detectUTF8._detectUTF8(_f.fileHeader.comment?.__copy__());
                        _utf8Valid2_3883080 = __tmp__._0;
                        _utf8Require2_3883092 = __tmp__._1;
                    };
                    _gotoNext = 3883131i32;
                } else if (__value__ == (3883131i32)) {
                    if ((!_utf8Valid1_3883032 || !_utf8Valid2_3883080 : Bool)) {
                        _gotoNext = 3883141i32;
                    } else if ((!_utf8Require1_3883044 && !_utf8Require2_3883092 : Bool)) {
                        _gotoNext = 3883238i32;
                    } else {
                        _gotoNext = 3883370i32;
                    };
                } else if (__value__ == (3883141i32)) {
                    _f.fileHeader.nonUTF8 = true;
                    _gotoNext = 3883702i32;
                } else if (__value__ == (3883238i32)) {
                    _f.fileHeader.nonUTF8 = false;
                    _gotoNext = 3883702i32;
                } else if (__value__ == (3883370i32)) {
                    _f.fileHeader.nonUTF8 = (_f.fileHeader.flags & (2048 : stdgo.GoUInt16) : stdgo.GoUInt16) == ((0 : stdgo.GoUInt16));
                    _gotoNext = 3883702i32;
                } else if (__value__ == (3883702i32)) {
                    _needUSize_3883702 = _f.fileHeader.uncompressedSize == ((-1u32 : stdgo.GoUInt32));
                    _needCSize_3883749 = _f.fileHeader.compressedSize == ((-1u32 : stdgo.GoUInt32));
                    _needHeaderOffset_3883794 = _f._headerOffset == (((-1u32 : stdgo.GoUInt32) : stdgo.GoInt64));
                    _gotoNext = 3884033i32;
                } else if (__value__ == (3884033i32)) {
                    _extra_3884051 = (_f.fileHeader.extra : stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf);
                    _parseExtrasBreak = false;
                    _gotoNext = 3884047i32;
                } else if (__value__ == (3884047i32)) {
                    if (!_parseExtrasBreak && (((_extra_3884051.length) >= (4 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3884095i32;
                    } else {
                        _gotoNext = 3886214i32;
                    };
                } else if (__value__ == (3884095i32)) {
                    _fieldTag_3884129 = _extra_3884051._uint16();
                    _fieldSize_3884158 = (_extra_3884051._uint16() : stdgo.GoInt);
                    if (((_extra_3884051.length) < _fieldSize_3884158 : Bool)) {
                        _gotoNext = 3884219i32;
                    } else {
                        _gotoNext = 3884236i32;
                    };
                } else if (__value__ == (3884219i32)) {
                    _gotoNext = 3886214i32;
                } else if (__value__ == (3884236i32)) {
                    _fieldBuf_3884236 = _extra_3884051._sub(_fieldSize_3884158);
                    _gotoNext = 3884272i32;
                } else if (__value__ == (3884272i32)) {
                    {
                        final __value__ = _fieldTag_3884129;
                        if (__value__ == ((1 : stdgo.GoUInt16))) {
                            _gotoNext = 3884292i32;
                        } else if (__value__ == ((10 : stdgo.GoUInt16))) {
                            _gotoNext = 3884955i32;
                        } else if (__value__ == ((13 : stdgo.GoUInt16)) || __value__ == ((22613 : stdgo.GoUInt16))) {
                            _gotoNext = 3885765i32;
                        } else if (__value__ == ((21589 : stdgo.GoUInt16))) {
                            _gotoNext = 3886008i32;
                        } else {
                            _gotoNext = 3886214i32;
                        };
                    };
                } else if (__value__ == (3884292i32)) {
                    _f._zip64 = true;
                    if (_needUSize_3883702) {
                        _gotoNext = 3884521i32;
                    } else {
                        _gotoNext = 3884653i32;
                    };
                } else if (__value__ == (3884521i32)) {
                    _needUSize_3883702 = false;
                    if (((_fieldBuf_3884236.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3884570i32;
                    } else {
                        _gotoNext = 3884604i32;
                    };
                } else if (__value__ == (3884570i32)) {
                    return stdgo._internal.archive.zip.Zip_errFormat.errFormat;
                    _gotoNext = 3884604i32;
                } else if (__value__ == (3884604i32)) {
                    _f.fileHeader.uncompressedSize64 = _fieldBuf_3884236._uint64();
                    _gotoNext = 3884653i32;
                } else if (__value__ == (3884653i32)) {
                    if (_needCSize_3883749) {
                        _gotoNext = 3884666i32;
                    } else {
                        _gotoNext = 3884796i32;
                    };
                } else if (__value__ == (3884666i32)) {
                    _needCSize_3883749 = false;
                    if (((_fieldBuf_3884236.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3884715i32;
                    } else {
                        _gotoNext = 3884749i32;
                    };
                } else if (__value__ == (3884715i32)) {
                    return stdgo._internal.archive.zip.Zip_errFormat.errFormat;
                    _gotoNext = 3884749i32;
                } else if (__value__ == (3884749i32)) {
                    _f.fileHeader.compressedSize64 = _fieldBuf_3884236._uint64();
                    _gotoNext = 3884796i32;
                } else if (__value__ == (3884796i32)) {
                    if (_needHeaderOffset_3883794) {
                        _gotoNext = 3884816i32;
                    } else {
                        _gotoNext = 3886214i32;
                    };
                } else if (__value__ == (3884816i32)) {
                    _needHeaderOffset_3883794 = false;
                    if (((_fieldBuf_3884236.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3884872i32;
                    } else {
                        _gotoNext = 3884906i32;
                    };
                } else if (__value__ == (3884872i32)) {
                    return stdgo._internal.archive.zip.Zip_errFormat.errFormat;
                    _gotoNext = 3884906i32;
                } else if (__value__ == (3884906i32)) {
                    _f._headerOffset = (_fieldBuf_3884236._uint64() : stdgo.GoInt64);
                    _gotoNext = 3886214i32;
                } else if (__value__ == (3884955i32)) {
                    if (((_fieldBuf_3884236.length) < (4 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3884997i32;
                    } else {
                        _gotoNext = 3885032i32;
                    };
                } else if (__value__ == (3884997i32)) {
                    _gotoNext = 3884047i32;
                } else if (__value__ == (3885032i32)) {
                    _fieldBuf_3884236._uint32();
                    var __blank__ = 0i32;
                    _gotoNext = 3885082i32;
                } else if (__value__ == (3885082i32)) {
                    if (((_fieldBuf_3884236.length) >= (4 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3885105i32;
                    } else {
                        _gotoNext = 3886214i32;
                    };
                } else if (__value__ == (3885105i32)) {
                    _attrTag_3885141 = _fieldBuf_3884236._uint16();
                    _attrSize_3885174 = (_fieldBuf_3884236._uint16() : stdgo.GoInt);
                    if (((_fieldBuf_3884236.length) < _attrSize_3885174 : Bool)) {
                        _gotoNext = 3885241i32;
                    } else {
                        _gotoNext = 3885279i32;
                    };
                } else if (__value__ == (3885241i32)) {
                    _gotoNext = 3884047i32;
                } else if (__value__ == (3885279i32)) {
                    _attrBuf_3885279 = _fieldBuf_3884236._sub(_attrSize_3885174);
                    if (((_attrTag_3885141 != (1 : stdgo.GoUInt16)) || (_attrSize_3885174 != (24 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3885351i32;
                    } else {
                        _gotoNext = 3885410i32;
                    };
                } else if (__value__ == (3885351i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3885082i32;
                } else if (__value__ == (3885410i32)) {
                    _ticksPerSecond_3885416 = (1e+07 : stdgo.GoFloat64);
                    _ts_3885476 = (_attrBuf_3885279._uint64() : stdgo.GoInt64);
                    _secs_3885541 = (_ts_3885476 / (10000000i64 : stdgo.GoInt64) : stdgo.GoInt64);
                    _nsecs_3885580 = ((100i64 : stdgo.GoInt64) * (_ts_3885476 % (10000000i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
                    _epoch_3885643 = stdgo._internal.time.Time_date.date((1601 : stdgo.GoInt), (1 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__();
                    _modified_3884014 = stdgo._internal.time.Time_unix.unix((_epoch_3885643.unix() + _secs_3885541 : stdgo.GoInt64), _nsecs_3885580)?.__copy__();
                    _gotoNext = 3885082i32;
                } else if (__value__ == (3885765i32)) {
                    if (((_fieldBuf_3884236.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3885827i32;
                    } else {
                        _gotoNext = 3885862i32;
                    };
                } else if (__value__ == (3885827i32)) {
                    _gotoNext = 3884047i32;
                } else if (__value__ == (3885862i32)) {
                    _fieldBuf_3884236._uint32();
                    _ts_3885916 = (_fieldBuf_3884236._uint32() : stdgo.GoInt64);
                    _modified_3884014 = stdgo._internal.time.Time_unix.unix(_ts_3885916, (0i64 : stdgo.GoInt64))?.__copy__();
                    _gotoNext = 3886214i32;
                } else if (__value__ == (3886008i32)) {
                    if ((((_fieldBuf_3884236.length) < (5 : stdgo.GoInt) : Bool) || ((_fieldBuf_3884236._uint8() & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) == (0 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3886080i32;
                    } else {
                        _gotoNext = 3886115i32;
                    };
                } else if (__value__ == (3886080i32)) {
                    _gotoNext = 3884047i32;
                } else if (__value__ == (3886115i32)) {
                    _ts_3886115 = (_fieldBuf_3884236._uint32() : stdgo.GoInt64);
                    _modified_3884014 = stdgo._internal.time.Time_unix.unix(_ts_3886115, (0i64 : stdgo.GoInt64))?.__copy__();
                    _gotoNext = 3886214i32;
                } else if (__value__ == (3886214i32)) {
                    _msdosModified_3886214 = stdgo._internal.archive.zip.Zip__msDosTimeToTime._msDosTimeToTime(_f.fileHeader.modifiedDate, _f.fileHeader.modifiedTime)?.__copy__();
                    _f.fileHeader.modified = _msdosModified_3886214?.__copy__();
                    if (!_modified_3884014.isZero()) {
                        _gotoNext = 3886330i32;
                    } else {
                        _gotoNext = 3887468i32;
                    };
                } else if (__value__ == (3886330i32)) {
                    _f.fileHeader.modified = _modified_3884014.utc()?.__copy__();
                    if (((_f.fileHeader.modifiedTime != (0 : stdgo.GoUInt16)) || (_f.fileHeader.modifiedDate != (0 : stdgo.GoUInt16)) : Bool)) {
                        _gotoNext = 3886866i32;
                    } else {
                        _gotoNext = 3887468i32;
                    };
                } else if (__value__ == (3886866i32)) {
                    _f.fileHeader.modified = _modified_3884014.in_(stdgo._internal.archive.zip.Zip__timeZone._timeZone(_msdosModified_3886214.sub(_modified_3884014?.__copy__())))?.__copy__();
                    _gotoNext = 3887468i32;
                } else if (__value__ == (3887468i32)) {
                    var __blank__ = _needUSize_3883702;
                    if ((_needCSize_3883749 || _needHeaderOffset_3883794 : Bool)) {
                        _gotoNext = 3887517i32;
                    } else {
                        _gotoNext = 3887543i32;
                    };
                } else if (__value__ == (3887517i32)) {
                    return stdgo._internal.archive.zip.Zip_errFormat.errFormat;
                    _gotoNext = 3887543i32;
                } else if (__value__ == (3887543i32)) {
                    return (null : stdgo.Error);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
