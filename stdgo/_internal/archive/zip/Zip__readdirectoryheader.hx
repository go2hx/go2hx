package stdgo._internal.archive.zip;
function _readDirectoryHeader(_f:stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File>, _r:stdgo._internal.io.Io_reader.Reader):stdgo.Error {
        var _b_3882067:stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf = (new stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf(0, 0) : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
        var _err_3882006:stdgo.Error = (null : stdgo.Error);
        var _attrBuf_3885279:stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf = (new stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf(0, 0) : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
        var _parseExtrasBreak = false;
        var _needHeaderOffset_3883794:Bool = false;
        var _utf8Require2_3883092:Bool = false;
        var _modified_3884014:stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
        var _utf8Valid2_3883080:Bool = false;
        var _epoch_3885643:stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
        var _filenameLen_3882516:stdgo.GoInt = (0 : stdgo.GoInt);
        var _buf_3881970:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(46, 46).__setNumber32__();
        var _secs_3885541:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _ts_3885476:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _ticksPerSecond_3885416;
        var _fieldSize_3884158:stdgo.GoInt = (0 : stdgo.GoInt);
        var _utf8Require1_3883044:Bool = false;
        var _err_3882808:stdgo.Error = (null : stdgo.Error);
        var _needCSize_3883749:Bool = false;
        var _utf8Valid1_3883032:Bool = false;
        var _ts_3886115:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _ts_3885916:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _fieldBuf_3884236:stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf = (new stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf(0, 0) : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
        var _attrSize_3885174:stdgo.GoInt = (0 : stdgo.GoInt);
        var _needUSize_3883702:Bool = false;
        var _commentLen_3882577:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nsecs_3885580:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _extra_3884051:stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf = (new stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf(0, 0) : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
        var _d_3882750:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _msdosModified_3886214:stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
        var _extraLen_3882548:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sig_3882092:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _attrTag_3885141:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _fieldTag_3884129:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_r, (_buf_3881970.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                            _err_3882006 = @:tmpset0 __tmp__._1;
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
                    _b_3882067 = ((_buf_3881970.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
                    {
                        _sig_3882092 = @:check2 _b_3882067._uint32();
                        if (_sig_3882092 != ((33639248u32 : stdgo.GoUInt32))) {
                            _gotoNext = 3882143i32;
                        } else {
                            _gotoNext = 3882168i32;
                        };
                    };
                } else if (__value__ == (3882143i32)) {
                    return stdgo._internal.archive.zip.Zip_errformat.errFormat;
                    _gotoNext = 3882168i32;
                } else if (__value__ == (3882168i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.creatorVersion = @:check2 _b_3882067._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.readerVersion = @:check2 _b_3882067._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.flags = @:check2 _b_3882067._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.method = @:check2 _b_3882067._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedTime = @:check2 _b_3882067._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedDate = @:check2 _b_3882067._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.cRC32 = @:check2 _b_3882067._uint32();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize = @:check2 _b_3882067._uint32();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize = @:check2 _b_3882067._uint32();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize64 = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize : stdgo.GoUInt64);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize64 = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize : stdgo.GoUInt64);
                    _filenameLen_3882516 = (@:check2 _b_3882067._uint16() : stdgo.GoInt);
                    _extraLen_3882548 = (@:check2 _b_3882067._uint16() : stdgo.GoInt);
                    _commentLen_3882577 = (@:check2 _b_3882067._uint16() : stdgo.GoInt);
                    _b_3882067 = (_b_3882067.__slice__((4 : stdgo.GoInt)) : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.externalAttrs = @:check2 _b_3882067._uint32();
                    (@:checkr _f ?? throw "null pointer dereference")._headerOffset = (@:check2 _b_3882067._uint32() : stdgo.GoInt64);
                    _d_3882750 = (new stdgo.Slice<stdgo.GoUInt8>(((_filenameLen_3882516 + _extraLen_3882548 : stdgo.GoInt) + _commentLen_3882577 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_r, _d_3882750);
                            _err_3882808 = @:tmpset0 __tmp__._1;
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
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.name = ((_d_3882750.__slice__(0, _filenameLen_3882516) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.extra = (_d_3882750.__slice__(_filenameLen_3882516, (_filenameLen_3882516 + _extraLen_3882548 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.comment = ((_d_3882750.__slice__((_filenameLen_3882516 + _extraLen_3882548 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    {
                        var __tmp__ = stdgo._internal.archive.zip.Zip__detectutf8._detectUTF8((@:checkr _f ?? throw "null pointer dereference").fileHeader.name?.__copy__());
                        _utf8Valid1_3883032 = @:tmpset0 __tmp__._0;
                        _utf8Require1_3883044 = @:tmpset0 __tmp__._1;
                    };
                    {
                        var __tmp__ = stdgo._internal.archive.zip.Zip__detectutf8._detectUTF8((@:checkr _f ?? throw "null pointer dereference").fileHeader.comment?.__copy__());
                        _utf8Valid2_3883080 = @:tmpset0 __tmp__._0;
                        _utf8Require2_3883092 = @:tmpset0 __tmp__._1;
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
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.nonUTF8 = true;
                    _gotoNext = 3883702i32;
                } else if (__value__ == (3883238i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.nonUTF8 = false;
                    _gotoNext = 3883702i32;
                } else if (__value__ == (3883370i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.nonUTF8 = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.flags & (2048 : stdgo.GoUInt16) : stdgo.GoUInt16) == ((0 : stdgo.GoUInt16));
                    _gotoNext = 3883702i32;
                } else if (__value__ == (3883702i32)) {
                    _needUSize_3883702 = (@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize == ((-1u32 : stdgo.GoUInt32));
                    _needCSize_3883749 = (@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize == ((-1u32 : stdgo.GoUInt32));
                    _needHeaderOffset_3883794 = (@:checkr _f ?? throw "null pointer dereference")._headerOffset == (((-1u32 : stdgo.GoUInt32) : stdgo.GoInt64));
                    _gotoNext = 3884033i32;
                } else if (__value__ == (3884033i32)) {
                    _extra_3884051 = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.extra : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
                    _parseExtrasBreak = false;
                    _gotoNext = 3884047i32;
                } else if (__value__ == (3884047i32)) {
                    if (!_parseExtrasBreak && (((_extra_3884051.length) >= (4 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3884095i32;
                    } else {
                        _gotoNext = 3886214i32;
                    };
                } else if (__value__ == (3884095i32)) {
                    _fieldTag_3884129 = @:check2 _extra_3884051._uint16();
                    _fieldSize_3884158 = (@:check2 _extra_3884051._uint16() : stdgo.GoInt);
                    if (((_extra_3884051.length) < _fieldSize_3884158 : Bool)) {
                        _gotoNext = 3884219i32;
                    } else {
                        _gotoNext = 3884236i32;
                    };
                } else if (__value__ == (3884219i32)) {
                    _gotoNext = 3886214i32;
                } else if (__value__ == (3884236i32)) {
                    _fieldBuf_3884236 = @:check2 _extra_3884051._sub(_fieldSize_3884158);
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
                            _gotoNext = 3884047i32;
                        };
                    };
                } else if (__value__ == (3884292i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._zip64 = true;
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
                    return stdgo._internal.archive.zip.Zip_errformat.errFormat;
                    _gotoNext = 3884604i32;
                } else if (__value__ == (3884604i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize64 = @:check2 _fieldBuf_3884236._uint64();
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
                    return stdgo._internal.archive.zip.Zip_errformat.errFormat;
                    _gotoNext = 3884749i32;
                } else if (__value__ == (3884749i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize64 = @:check2 _fieldBuf_3884236._uint64();
                    _gotoNext = 3884796i32;
                } else if (__value__ == (3884796i32)) {
                    if (_needHeaderOffset_3883794) {
                        _gotoNext = 3884816i32;
                    } else {
                        _gotoNext = 3884047i32;
                    };
                } else if (__value__ == (3884816i32)) {
                    _needHeaderOffset_3883794 = false;
                    if (((_fieldBuf_3884236.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3884872i32;
                    } else {
                        _gotoNext = 3884906i32;
                    };
                } else if (__value__ == (3884872i32)) {
                    return stdgo._internal.archive.zip.Zip_errformat.errFormat;
                    _gotoNext = 3884906i32;
                } else if (__value__ == (3884906i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._headerOffset = (@:check2 _fieldBuf_3884236._uint64() : stdgo.GoInt64);
                    _gotoNext = 3884047i32;
                } else if (__value__ == (3884955i32)) {
                    if (((_fieldBuf_3884236.length) < (4 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3884997i32;
                    } else {
                        _gotoNext = 3885032i32;
                    };
                } else if (__value__ == (3884997i32)) {
                    _gotoNext = 3884047i32;
                } else if (__value__ == (3885032i32)) {
                    @:check2 _fieldBuf_3884236._uint32();
                    var __blank__ = 0i32;
                    _gotoNext = 3885082i32;
                } else if (__value__ == (3885082i32)) {
                    if (((_fieldBuf_3884236.length) >= (4 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3885105i32;
                    } else {
                        _gotoNext = 3884047i32;
                    };
                } else if (__value__ == (3885105i32)) {
                    _attrTag_3885141 = @:check2 _fieldBuf_3884236._uint16();
                    _attrSize_3885174 = (@:check2 _fieldBuf_3884236._uint16() : stdgo.GoInt);
                    if (((_fieldBuf_3884236.length) < _attrSize_3885174 : Bool)) {
                        _gotoNext = 3885241i32;
                    } else {
                        _gotoNext = 3885279i32;
                    };
                } else if (__value__ == (3885241i32)) {
                    _gotoNext = 3884047i32;
                } else if (__value__ == (3885279i32)) {
                    _attrBuf_3885279 = @:check2 _fieldBuf_3884236._sub(_attrSize_3885174);
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
                    _ts_3885476 = (@:check2 _attrBuf_3885279._uint64() : stdgo.GoInt64);
                    _secs_3885541 = (_ts_3885476 / (10000000i64 : stdgo.GoInt64) : stdgo.GoInt64);
                    _nsecs_3885580 = ((100i64 : stdgo.GoInt64) * (_ts_3885476 % (10000000i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
                    _epoch_3885643 = stdgo._internal.time.Time_date.date((1601 : stdgo.GoInt), (1 : stdgo._internal.time.Time_month.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.uTC)?.__copy__();
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
                    @:check2 _fieldBuf_3884236._uint32();
                    _ts_3885916 = (@:check2 _fieldBuf_3884236._uint32() : stdgo.GoInt64);
                    _modified_3884014 = stdgo._internal.time.Time_unix.unix(_ts_3885916, (0i64 : stdgo.GoInt64))?.__copy__();
                    _gotoNext = 3884047i32;
                } else if (__value__ == (3886008i32)) {
                    if ((((_fieldBuf_3884236.length) < (5 : stdgo.GoInt) : Bool) || ((@:check2 _fieldBuf_3884236._uint8() & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) == (0 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3886080i32;
                    } else {
                        _gotoNext = 3886115i32;
                    };
                } else if (__value__ == (3886080i32)) {
                    _gotoNext = 3884047i32;
                } else if (__value__ == (3886115i32)) {
                    _ts_3886115 = (@:check2 _fieldBuf_3884236._uint32() : stdgo.GoInt64);
                    _modified_3884014 = stdgo._internal.time.Time_unix.unix(_ts_3886115, (0i64 : stdgo.GoInt64))?.__copy__();
                    _gotoNext = 3884047i32;
                } else if (__value__ == (3886214i32)) {
                    _msdosModified_3886214 = stdgo._internal.archive.zip.Zip__msdostimetotime._msDosTimeToTime((@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedDate, (@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedTime)?.__copy__();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modified = _msdosModified_3886214?.__copy__();
                    if (!_modified_3884014.isZero()) {
                        _gotoNext = 3886330i32;
                    } else {
                        _gotoNext = 3887468i32;
                    };
                } else if (__value__ == (3886330i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modified = _modified_3884014.uTC()?.__copy__();
                    if ((((@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedTime != (0 : stdgo.GoUInt16)) || ((@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedDate != (0 : stdgo.GoUInt16)) : Bool)) {
                        _gotoNext = 3886866i32;
                    } else {
                        _gotoNext = 3887468i32;
                    };
                } else if (__value__ == (3886866i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modified = _modified_3884014.in_(stdgo._internal.archive.zip.Zip__timezone._timeZone(_msdosModified_3886214.sub(_modified_3884014?.__copy__())))?.__copy__();
                    _gotoNext = 3887468i32;
                } else if (__value__ == (3887468i32)) {
                    var __blank__ = _needUSize_3883702;
                    if ((_needCSize_3883749 || _needHeaderOffset_3883794 : Bool)) {
                        _gotoNext = 3887517i32;
                    } else {
                        _gotoNext = 3887543i32;
                    };
                } else if (__value__ == (3887517i32)) {
                    return stdgo._internal.archive.zip.Zip_errformat.errFormat;
                    _gotoNext = 3887543i32;
                } else if (__value__ == (3887543i32)) {
                    return (null : stdgo.Error);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
