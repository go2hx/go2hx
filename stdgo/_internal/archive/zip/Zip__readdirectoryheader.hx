package stdgo._internal.archive.zip;
function _readDirectoryHeader(_f:stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File>, _r:stdgo._internal.io.Io_reader.Reader):stdgo.Error {
        var _secs_3869515:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _attrTag_3869115:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _extra_3868025:stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf = new stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf(0, 0);
        var _needUSize_3867676:Bool = false;
        var _nsecs_3869554:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _fieldTag_3868103:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _needCSize_3867723:Bool = false;
        var _ticksPerSecond_3869390;
        var _parseExtrasBreak = false;
        var _utf8Valid2_3867054:Bool = false;
        var _filenameLen_3866490:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldBuf_3868210:stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf = new stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf(0, 0);
        var _err_3866782:stdgo.Error = (null : stdgo.Error);
        var _sig_3866066:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _utf8Require2_3867066:Bool = false;
        var _utf8Valid1_3867006:Bool = false;
        var _d_3866724:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _extraLen_3866522:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ts_3869450:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _attrBuf_3869253:stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf = new stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf(0, 0);
        var _attrSize_3869148:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldSize_3868132:stdgo.GoInt = (0 : stdgo.GoInt);
        var _b_3866041:stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf = new stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf(0, 0);
        var _epoch_3869617:stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
        var _ts_3870089:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _ts_3869890:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _err_3865980:stdgo.Error = (null : stdgo.Error);
        var _needHeaderOffset_3867768:Bool = false;
        var _utf8Require1_3867018:Bool = false;
        var _commentLen_3866551:stdgo.GoInt = (0 : stdgo.GoInt);
        var _buf_3865944:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(46, 46).__setNumber32__();
        var _msdosModified_3870188:stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
        var _modified_3867988:stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_r, (_buf_3865944.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                            _err_3865980 = @:tmpset0 __tmp__._1;
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
                    _b_3866041 = ((_buf_3865944.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
                    {
                        _sig_3866066 = @:check2 _b_3866041._uint32();
                        if (_sig_3866066 != ((33639248u32 : stdgo.GoUInt32))) {
                            _gotoNext = 3866117i32;
                        } else {
                            _gotoNext = 3866142i32;
                        };
                    };
                } else if (__value__ == (3866117i32)) {
                    return stdgo._internal.archive.zip.Zip_errformat.errFormat;
                    _gotoNext = 3866142i32;
                } else if (__value__ == (3866142i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.creatorVersion = @:check2 _b_3866041._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.readerVersion = @:check2 _b_3866041._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.flags = @:check2 _b_3866041._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.method = @:check2 _b_3866041._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedTime = @:check2 _b_3866041._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedDate = @:check2 _b_3866041._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.cRC32 = @:check2 _b_3866041._uint32();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize = @:check2 _b_3866041._uint32();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize = @:check2 _b_3866041._uint32();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize64 = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize : stdgo.GoUInt64);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize64 = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize : stdgo.GoUInt64);
                    _filenameLen_3866490 = (@:check2 _b_3866041._uint16() : stdgo.GoInt);
                    _extraLen_3866522 = (@:check2 _b_3866041._uint16() : stdgo.GoInt);
                    _commentLen_3866551 = (@:check2 _b_3866041._uint16() : stdgo.GoInt);
                    _b_3866041 = (_b_3866041.__slice__((4 : stdgo.GoInt)) : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.externalAttrs = @:check2 _b_3866041._uint32();
                    (@:checkr _f ?? throw "null pointer dereference")._headerOffset = (@:check2 _b_3866041._uint32() : stdgo.GoInt64);
                    _d_3866724 = (new stdgo.Slice<stdgo.GoUInt8>(((_filenameLen_3866490 + _extraLen_3866522 : stdgo.GoInt) + _commentLen_3866551 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_r, _d_3866724);
                            _err_3866782 = @:tmpset0 __tmp__._1;
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
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.name = ((_d_3866724.__slice__(0, _filenameLen_3866490) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.extra = (_d_3866724.__slice__(_filenameLen_3866490, (_filenameLen_3866490 + _extraLen_3866522 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.comment = ((_d_3866724.__slice__((_filenameLen_3866490 + _extraLen_3866522 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    {
                        var __tmp__ = stdgo._internal.archive.zip.Zip__detectutf8._detectUTF8((@:checkr _f ?? throw "null pointer dereference").fileHeader.name?.__copy__());
                        _utf8Valid1_3867006 = @:tmpset0 __tmp__._0;
                        _utf8Require1_3867018 = @:tmpset0 __tmp__._1;
                    };
                    {
                        var __tmp__ = stdgo._internal.archive.zip.Zip__detectutf8._detectUTF8((@:checkr _f ?? throw "null pointer dereference").fileHeader.comment?.__copy__());
                        _utf8Valid2_3867054 = @:tmpset0 __tmp__._0;
                        _utf8Require2_3867066 = @:tmpset0 __tmp__._1;
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
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.nonUTF8 = true;
                    _gotoNext = 3867676i32;
                } else if (__value__ == (3867212i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.nonUTF8 = false;
                    _gotoNext = 3867676i32;
                } else if (__value__ == (3867344i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.nonUTF8 = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.flags & (2048 : stdgo.GoUInt16) : stdgo.GoUInt16) == ((0 : stdgo.GoUInt16));
                    _gotoNext = 3867676i32;
                } else if (__value__ == (3867676i32)) {
                    _needUSize_3867676 = (@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize == ((-1u32 : stdgo.GoUInt32));
                    _needCSize_3867723 = (@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize == ((-1u32 : stdgo.GoUInt32));
                    _needHeaderOffset_3867768 = (@:checkr _f ?? throw "null pointer dereference")._headerOffset == (((-1u32 : stdgo.GoUInt32) : stdgo.GoInt64));
                    _gotoNext = 3868007i32;
                } else if (__value__ == (3868007i32)) {
                    _extra_3868025 = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.extra : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
                    _parseExtrasBreak = false;
                    _gotoNext = 3868021i32;
                } else if (__value__ == (3868021i32)) {
                    if (!_parseExtrasBreak && (((_extra_3868025.length) >= (4 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3868069i32;
                    } else {
                        _gotoNext = 3870188i32;
                    };
                } else if (__value__ == (3868069i32)) {
                    _fieldTag_3868103 = @:check2 _extra_3868025._uint16();
                    _fieldSize_3868132 = (@:check2 _extra_3868025._uint16() : stdgo.GoInt);
                    if (((_extra_3868025.length) < _fieldSize_3868132 : Bool)) {
                        _gotoNext = 3868193i32;
                    } else {
                        _gotoNext = 3868210i32;
                    };
                } else if (__value__ == (3868193i32)) {
                    _gotoNext = 3870188i32;
                } else if (__value__ == (3868210i32)) {
                    _fieldBuf_3868210 = @:check2 _extra_3868025._sub(_fieldSize_3868132);
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
                            _gotoNext = 3868021i32;
                        };
                    };
                } else if (__value__ == (3868266i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._zip64 = true;
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
                    return stdgo._internal.archive.zip.Zip_errformat.errFormat;
                    _gotoNext = 3868578i32;
                } else if (__value__ == (3868578i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize64 = @:check2 _fieldBuf_3868210._uint64();
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
                    return stdgo._internal.archive.zip.Zip_errformat.errFormat;
                    _gotoNext = 3868723i32;
                } else if (__value__ == (3868723i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize64 = @:check2 _fieldBuf_3868210._uint64();
                    _gotoNext = 3868770i32;
                } else if (__value__ == (3868770i32)) {
                    if (_needHeaderOffset_3867768) {
                        _gotoNext = 3868790i32;
                    } else {
                        _gotoNext = 3868021i32;
                    };
                } else if (__value__ == (3868790i32)) {
                    _needHeaderOffset_3867768 = false;
                    if (((_fieldBuf_3868210.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3868846i32;
                    } else {
                        _gotoNext = 3868880i32;
                    };
                } else if (__value__ == (3868846i32)) {
                    return stdgo._internal.archive.zip.Zip_errformat.errFormat;
                    _gotoNext = 3868880i32;
                } else if (__value__ == (3868880i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._headerOffset = (@:check2 _fieldBuf_3868210._uint64() : stdgo.GoInt64);
                    _gotoNext = 3868021i32;
                } else if (__value__ == (3868929i32)) {
                    if (((_fieldBuf_3868210.length) < (4 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3868971i32;
                    } else {
                        _gotoNext = 3869006i32;
                    };
                } else if (__value__ == (3868971i32)) {
                    _gotoNext = 3868021i32;
                } else if (__value__ == (3869006i32)) {
                    @:check2 _fieldBuf_3868210._uint32();
                    var __blank__ = 0i32;
                    _gotoNext = 3869056i32;
                } else if (__value__ == (3869056i32)) {
                    if (((_fieldBuf_3868210.length) >= (4 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3869079i32;
                    } else {
                        _gotoNext = 3868021i32;
                    };
                } else if (__value__ == (3869079i32)) {
                    _attrTag_3869115 = @:check2 _fieldBuf_3868210._uint16();
                    _attrSize_3869148 = (@:check2 _fieldBuf_3868210._uint16() : stdgo.GoInt);
                    if (((_fieldBuf_3868210.length) < _attrSize_3869148 : Bool)) {
                        _gotoNext = 3869215i32;
                    } else {
                        _gotoNext = 3869253i32;
                    };
                } else if (__value__ == (3869215i32)) {
                    _gotoNext = 3868021i32;
                } else if (__value__ == (3869253i32)) {
                    _attrBuf_3869253 = @:check2 _fieldBuf_3868210._sub(_attrSize_3869148);
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
                    _ts_3869450 = (@:check2 _attrBuf_3869253._uint64() : stdgo.GoInt64);
                    _secs_3869515 = (_ts_3869450 / (10000000i64 : stdgo.GoInt64) : stdgo.GoInt64);
                    _nsecs_3869554 = ((100i64 : stdgo.GoInt64) * (_ts_3869450 % (10000000i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
                    _epoch_3869617 = stdgo._internal.time.Time_date.date((1601 : stdgo.GoInt), (1 : stdgo._internal.time.Time_month.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.uTC)?.__copy__();
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
                    @:check2 _fieldBuf_3868210._uint32();
                    _ts_3869890 = (@:check2 _fieldBuf_3868210._uint32() : stdgo.GoInt64);
                    _modified_3867988 = stdgo._internal.time.Time_unix.unix(_ts_3869890, (0i64 : stdgo.GoInt64))?.__copy__();
                    _gotoNext = 3868021i32;
                } else if (__value__ == (3869982i32)) {
                    if ((((_fieldBuf_3868210.length) < (5 : stdgo.GoInt) : Bool) || ((@:check2 _fieldBuf_3868210._uint8() & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) == (0 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3870054i32;
                    } else {
                        _gotoNext = 3870089i32;
                    };
                } else if (__value__ == (3870054i32)) {
                    _gotoNext = 3868021i32;
                } else if (__value__ == (3870089i32)) {
                    _ts_3870089 = (@:check2 _fieldBuf_3868210._uint32() : stdgo.GoInt64);
                    _modified_3867988 = stdgo._internal.time.Time_unix.unix(_ts_3870089, (0i64 : stdgo.GoInt64))?.__copy__();
                    _gotoNext = 3868021i32;
                } else if (__value__ == (3870188i32)) {
                    _msdosModified_3870188 = stdgo._internal.archive.zip.Zip__msdostimetotime._msDosTimeToTime((@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedDate, (@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedTime)?.__copy__();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modified = _msdosModified_3870188?.__copy__();
                    if (!_modified_3867988.isZero()) {
                        _gotoNext = 3870304i32;
                    } else {
                        _gotoNext = 3871442i32;
                    };
                } else if (__value__ == (3870304i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modified = _modified_3867988.uTC()?.__copy__();
                    if ((((@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedTime != (0 : stdgo.GoUInt16)) || ((@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedDate != (0 : stdgo.GoUInt16)) : Bool)) {
                        _gotoNext = 3870840i32;
                    } else {
                        _gotoNext = 3871442i32;
                    };
                } else if (__value__ == (3870840i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modified = _modified_3867988.in_(stdgo._internal.archive.zip.Zip__timezone._timeZone(_msdosModified_3870188.sub(_modified_3867988?.__copy__())))?.__copy__();
                    _gotoNext = 3871442i32;
                } else if (__value__ == (3871442i32)) {
                    var __blank__ = _needUSize_3867676;
                    if ((_needCSize_3867723 || _needHeaderOffset_3867768 : Bool)) {
                        _gotoNext = 3871491i32;
                    } else {
                        _gotoNext = 3871517i32;
                    };
                } else if (__value__ == (3871491i32)) {
                    return stdgo._internal.archive.zip.Zip_errformat.errFormat;
                    _gotoNext = 3871517i32;
                } else if (__value__ == (3871517i32)) {
                    return (null : stdgo.Error);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
