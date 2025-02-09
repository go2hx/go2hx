package stdgo._internal.archive.zip;
function _readDirectoryHeader(_f:stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File>, _r:stdgo._internal.io.Io_reader.Reader):stdgo.Error {
        var _msdosModified_3864004:stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
        var _ticksPerSecond_3863206;
        var _needCSize_3861539:Bool = false;
        var _err_3860598:stdgo.Error = (null : stdgo.Error);
        var _commentLen_3860367:stdgo.GoInt = (0 : stdgo.GoInt);
        var _modified_3861804:stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
        var _utf8Valid2_3860870:Bool = false;
        var _attrBuf_3863069:stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf = new stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf(0, 0);
        var _fieldBuf_3862026:stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf = new stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf(0, 0);
        var _fieldTag_3861919:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _ts_3863905:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _parseExtrasBreak = false;
        var _needHeaderOffset_3861584:Bool = false;
        var _buf_3859760:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(46, 46).__setNumber32__();
        var _ts_3863706:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _nsecs_3863370:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _secs_3863331:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _sig_3859882:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _err_3859796:stdgo.Error = (null : stdgo.Error);
        var _attrSize_3862964:stdgo.GoInt = (0 : stdgo.GoInt);
        var _needUSize_3861492:Bool = false;
        var _utf8Require1_3860834:Bool = false;
        var _extraLen_3860338:stdgo.GoInt = (0 : stdgo.GoInt);
        var _filenameLen_3860306:stdgo.GoInt = (0 : stdgo.GoInt);
        var _epoch_3863433:stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
        var _attrTag_3862931:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _fieldSize_3861948:stdgo.GoInt = (0 : stdgo.GoInt);
        var _extra_3861841:stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf = new stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf(0, 0);
        var _d_3860540:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ts_3863266:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _utf8Require2_3860882:Bool = false;
        var _utf8Valid1_3860822:Bool = false;
        var _b_3859857:stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf = new stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf(0, 0);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_r, (_buf_3859760.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                            _err_3859796 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_3859796 != null) {
                            _gotoNext = 3859838i32;
                        } else {
                            _gotoNext = 3859857i32;
                        };
                    };
                } else if (__value__ == (3859838i32)) {
                    return _err_3859796;
                    _gotoNext = 3859857i32;
                } else if (__value__ == (3859857i32)) {
                    _b_3859857 = ((_buf_3859760.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
                    {
                        _sig_3859882 = @:check2 _b_3859857._uint32();
                        if (_sig_3859882 != ((33639248u32 : stdgo.GoUInt32))) {
                            _gotoNext = 3859933i32;
                        } else {
                            _gotoNext = 3859958i32;
                        };
                    };
                } else if (__value__ == (3859933i32)) {
                    return stdgo._internal.archive.zip.Zip_errformat.errFormat;
                    _gotoNext = 3859958i32;
                } else if (__value__ == (3859958i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.creatorVersion = @:check2 _b_3859857._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.readerVersion = @:check2 _b_3859857._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.flags = @:check2 _b_3859857._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.method = @:check2 _b_3859857._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedTime = @:check2 _b_3859857._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedDate = @:check2 _b_3859857._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.cRC32 = @:check2 _b_3859857._uint32();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize = @:check2 _b_3859857._uint32();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize = @:check2 _b_3859857._uint32();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize64 = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize : stdgo.GoUInt64);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize64 = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize : stdgo.GoUInt64);
                    _filenameLen_3860306 = (@:check2 _b_3859857._uint16() : stdgo.GoInt);
                    _extraLen_3860338 = (@:check2 _b_3859857._uint16() : stdgo.GoInt);
                    _commentLen_3860367 = (@:check2 _b_3859857._uint16() : stdgo.GoInt);
                    _b_3859857 = (_b_3859857.__slice__((4 : stdgo.GoInt)) : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.externalAttrs = @:check2 _b_3859857._uint32();
                    (@:checkr _f ?? throw "null pointer dereference")._headerOffset = (@:check2 _b_3859857._uint32() : stdgo.GoInt64);
                    _d_3860540 = (new stdgo.Slice<stdgo.GoUInt8>(((_filenameLen_3860306 + _extraLen_3860338 : stdgo.GoInt) + _commentLen_3860367 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_r, _d_3860540);
                            _err_3860598 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_3860598 != null) {
                            _gotoNext = 3860635i32;
                        } else {
                            _gotoNext = 3860654i32;
                        };
                    };
                } else if (__value__ == (3860635i32)) {
                    return _err_3860598;
                    _gotoNext = 3860654i32;
                } else if (__value__ == (3860654i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.name = ((_d_3860540.__slice__(0, _filenameLen_3860306) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.extra = (_d_3860540.__slice__(_filenameLen_3860306, (_filenameLen_3860306 + _extraLen_3860338 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.comment = ((_d_3860540.__slice__((_filenameLen_3860306 + _extraLen_3860338 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    {
                        var __tmp__ = stdgo._internal.archive.zip.Zip__detectutf8._detectUTF8((@:checkr _f ?? throw "null pointer dereference").fileHeader.name?.__copy__());
                        _utf8Valid1_3860822 = @:tmpset0 __tmp__._0;
                        _utf8Require1_3860834 = @:tmpset0 __tmp__._1;
                    };
                    {
                        var __tmp__ = stdgo._internal.archive.zip.Zip__detectutf8._detectUTF8((@:checkr _f ?? throw "null pointer dereference").fileHeader.comment?.__copy__());
                        _utf8Valid2_3860870 = @:tmpset0 __tmp__._0;
                        _utf8Require2_3860882 = @:tmpset0 __tmp__._1;
                    };
                    _gotoNext = 3860921i32;
                } else if (__value__ == (3860921i32)) {
                    if ((!_utf8Valid1_3860822 || !_utf8Valid2_3860870 : Bool)) {
                        _gotoNext = 3860931i32;
                    } else if ((!_utf8Require1_3860834 && !_utf8Require2_3860882 : Bool)) {
                        _gotoNext = 3861028i32;
                    } else {
                        _gotoNext = 3861160i32;
                    };
                } else if (__value__ == (3860931i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.nonUTF8 = true;
                    _gotoNext = 3861492i32;
                } else if (__value__ == (3861028i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.nonUTF8 = false;
                    _gotoNext = 3861492i32;
                } else if (__value__ == (3861160i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.nonUTF8 = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.flags & (2048 : stdgo.GoUInt16) : stdgo.GoUInt16) == ((0 : stdgo.GoUInt16));
                    _gotoNext = 3861492i32;
                } else if (__value__ == (3861492i32)) {
                    _needUSize_3861492 = (@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize == ((-1u32 : stdgo.GoUInt32));
                    _needCSize_3861539 = (@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize == ((-1u32 : stdgo.GoUInt32));
                    _needHeaderOffset_3861584 = (@:checkr _f ?? throw "null pointer dereference")._headerOffset == (((-1u32 : stdgo.GoUInt32) : stdgo.GoInt64));
                    _gotoNext = 3861823i32;
                } else if (__value__ == (3861823i32)) {
                    _extra_3861841 = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.extra : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
                    _parseExtrasBreak = false;
                    _gotoNext = 3861837i32;
                } else if (__value__ == (3861837i32)) {
                    if (!_parseExtrasBreak && (((_extra_3861841.length) >= (4 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3861885i32;
                    } else {
                        _gotoNext = 3864004i32;
                    };
                } else if (__value__ == (3861885i32)) {
                    _fieldTag_3861919 = @:check2 _extra_3861841._uint16();
                    _fieldSize_3861948 = (@:check2 _extra_3861841._uint16() : stdgo.GoInt);
                    if (((_extra_3861841.length) < _fieldSize_3861948 : Bool)) {
                        _gotoNext = 3862009i32;
                    } else {
                        _gotoNext = 3862026i32;
                    };
                } else if (__value__ == (3862009i32)) {
                    _gotoNext = 3864004i32;
                } else if (__value__ == (3862026i32)) {
                    _fieldBuf_3862026 = @:check2 _extra_3861841._sub(_fieldSize_3861948);
                    _gotoNext = 3862062i32;
                } else if (__value__ == (3862062i32)) {
                    {
                        final __value__ = _fieldTag_3861919;
                        if (__value__ == ((1 : stdgo.GoUInt16))) {
                            _gotoNext = 3862082i32;
                        } else if (__value__ == ((10 : stdgo.GoUInt16))) {
                            _gotoNext = 3862745i32;
                        } else if (__value__ == ((13 : stdgo.GoUInt16)) || __value__ == ((22613 : stdgo.GoUInt16))) {
                            _gotoNext = 3863555i32;
                        } else if (__value__ == ((21589 : stdgo.GoUInt16))) {
                            _gotoNext = 3863798i32;
                        } else {
                            _gotoNext = 3861837i32;
                        };
                    };
                } else if (__value__ == (3862082i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._zip64 = true;
                    if (_needUSize_3861492) {
                        _gotoNext = 3862311i32;
                    } else {
                        _gotoNext = 3862443i32;
                    };
                } else if (__value__ == (3862311i32)) {
                    _needUSize_3861492 = false;
                    if (((_fieldBuf_3862026.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3862360i32;
                    } else {
                        _gotoNext = 3862394i32;
                    };
                } else if (__value__ == (3862360i32)) {
                    return stdgo._internal.archive.zip.Zip_errformat.errFormat;
                    _gotoNext = 3862394i32;
                } else if (__value__ == (3862394i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize64 = @:check2 _fieldBuf_3862026._uint64();
                    _gotoNext = 3862443i32;
                } else if (__value__ == (3862443i32)) {
                    if (_needCSize_3861539) {
                        _gotoNext = 3862456i32;
                    } else {
                        _gotoNext = 3862586i32;
                    };
                } else if (__value__ == (3862456i32)) {
                    _needCSize_3861539 = false;
                    if (((_fieldBuf_3862026.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3862505i32;
                    } else {
                        _gotoNext = 3862539i32;
                    };
                } else if (__value__ == (3862505i32)) {
                    return stdgo._internal.archive.zip.Zip_errformat.errFormat;
                    _gotoNext = 3862539i32;
                } else if (__value__ == (3862539i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize64 = @:check2 _fieldBuf_3862026._uint64();
                    _gotoNext = 3862586i32;
                } else if (__value__ == (3862586i32)) {
                    if (_needHeaderOffset_3861584) {
                        _gotoNext = 3862606i32;
                    } else {
                        _gotoNext = 3861837i32;
                    };
                } else if (__value__ == (3862606i32)) {
                    _needHeaderOffset_3861584 = false;
                    if (((_fieldBuf_3862026.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3862662i32;
                    } else {
                        _gotoNext = 3862696i32;
                    };
                } else if (__value__ == (3862662i32)) {
                    return stdgo._internal.archive.zip.Zip_errformat.errFormat;
                    _gotoNext = 3862696i32;
                } else if (__value__ == (3862696i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._headerOffset = (@:check2 _fieldBuf_3862026._uint64() : stdgo.GoInt64);
                    _gotoNext = 3861837i32;
                } else if (__value__ == (3862745i32)) {
                    if (((_fieldBuf_3862026.length) < (4 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3862787i32;
                    } else {
                        _gotoNext = 3862822i32;
                    };
                } else if (__value__ == (3862787i32)) {
                    _gotoNext = 3861837i32;
                } else if (__value__ == (3862822i32)) {
                    @:check2 _fieldBuf_3862026._uint32();
                    var __blank__ = 0i32;
                    _gotoNext = 3862872i32;
                } else if (__value__ == (3862872i32)) {
                    if (((_fieldBuf_3862026.length) >= (4 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3862895i32;
                    } else {
                        _gotoNext = 3861837i32;
                    };
                } else if (__value__ == (3862895i32)) {
                    _attrTag_3862931 = @:check2 _fieldBuf_3862026._uint16();
                    _attrSize_3862964 = (@:check2 _fieldBuf_3862026._uint16() : stdgo.GoInt);
                    if (((_fieldBuf_3862026.length) < _attrSize_3862964 : Bool)) {
                        _gotoNext = 3863031i32;
                    } else {
                        _gotoNext = 3863069i32;
                    };
                } else if (__value__ == (3863031i32)) {
                    _gotoNext = 3861837i32;
                } else if (__value__ == (3863069i32)) {
                    _attrBuf_3863069 = @:check2 _fieldBuf_3862026._sub(_attrSize_3862964);
                    if (((_attrTag_3862931 != (1 : stdgo.GoUInt16)) || (_attrSize_3862964 != (24 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3863141i32;
                    } else {
                        _gotoNext = 3863200i32;
                    };
                } else if (__value__ == (3863141i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3862872i32;
                } else if (__value__ == (3863200i32)) {
                    _ticksPerSecond_3863206 = (1e+07 : stdgo.GoFloat64);
                    _ts_3863266 = (@:check2 _attrBuf_3863069._uint64() : stdgo.GoInt64);
                    _secs_3863331 = (_ts_3863266 / (10000000i64 : stdgo.GoInt64) : stdgo.GoInt64);
                    _nsecs_3863370 = ((100i64 : stdgo.GoInt64) * (_ts_3863266 % (10000000i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
                    _epoch_3863433 = stdgo._internal.time.Time_date.date((1601 : stdgo.GoInt), (1 : stdgo._internal.time.Time_month.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.uTC)?.__copy__();
                    _modified_3861804 = stdgo._internal.time.Time_unix.unix((_epoch_3863433.unix() + _secs_3863331 : stdgo.GoInt64), _nsecs_3863370)?.__copy__();
                    _gotoNext = 3862872i32;
                } else if (__value__ == (3863555i32)) {
                    if (((_fieldBuf_3862026.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3863617i32;
                    } else {
                        _gotoNext = 3863652i32;
                    };
                } else if (__value__ == (3863617i32)) {
                    _gotoNext = 3861837i32;
                } else if (__value__ == (3863652i32)) {
                    @:check2 _fieldBuf_3862026._uint32();
                    _ts_3863706 = (@:check2 _fieldBuf_3862026._uint32() : stdgo.GoInt64);
                    _modified_3861804 = stdgo._internal.time.Time_unix.unix(_ts_3863706, (0i64 : stdgo.GoInt64))?.__copy__();
                    _gotoNext = 3861837i32;
                } else if (__value__ == (3863798i32)) {
                    if ((((_fieldBuf_3862026.length) < (5 : stdgo.GoInt) : Bool) || ((@:check2 _fieldBuf_3862026._uint8() & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) == (0 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3863870i32;
                    } else {
                        _gotoNext = 3863905i32;
                    };
                } else if (__value__ == (3863870i32)) {
                    _gotoNext = 3861837i32;
                } else if (__value__ == (3863905i32)) {
                    _ts_3863905 = (@:check2 _fieldBuf_3862026._uint32() : stdgo.GoInt64);
                    _modified_3861804 = stdgo._internal.time.Time_unix.unix(_ts_3863905, (0i64 : stdgo.GoInt64))?.__copy__();
                    _gotoNext = 3861837i32;
                } else if (__value__ == (3864004i32)) {
                    _msdosModified_3864004 = stdgo._internal.archive.zip.Zip__msdostimetotime._msDosTimeToTime((@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedDate, (@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedTime)?.__copy__();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modified = _msdosModified_3864004?.__copy__();
                    if (!_modified_3861804.isZero()) {
                        _gotoNext = 3864120i32;
                    } else {
                        _gotoNext = 3865258i32;
                    };
                } else if (__value__ == (3864120i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modified = _modified_3861804.uTC()?.__copy__();
                    if ((((@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedTime != (0 : stdgo.GoUInt16)) || ((@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedDate != (0 : stdgo.GoUInt16)) : Bool)) {
                        _gotoNext = 3864656i32;
                    } else {
                        _gotoNext = 3865258i32;
                    };
                } else if (__value__ == (3864656i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modified = _modified_3861804.in_(stdgo._internal.archive.zip.Zip__timezone._timeZone(_msdosModified_3864004.sub(_modified_3861804?.__copy__())))?.__copy__();
                    _gotoNext = 3865258i32;
                } else if (__value__ == (3865258i32)) {
                    var __blank__ = _needUSize_3861492;
                    if ((_needCSize_3861539 || _needHeaderOffset_3861584 : Bool)) {
                        _gotoNext = 3865307i32;
                    } else {
                        _gotoNext = 3865333i32;
                    };
                } else if (__value__ == (3865307i32)) {
                    return stdgo._internal.archive.zip.Zip_errformat.errFormat;
                    _gotoNext = 3865333i32;
                } else if (__value__ == (3865333i32)) {
                    return (null : stdgo.Error);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
