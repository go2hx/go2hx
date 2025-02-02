package stdgo._internal.archive.zip;
function _readDirectoryHeader(_f:stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>, _r:stdgo._internal.io.Io_Reader.Reader):stdgo.Error {
        var _utf8Require2_3848594:Bool = false;
        var _err_3848310:stdgo.Error = (null : stdgo.Error);
        var _b_3847569:stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf = new stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf(0, 0);
        var _buf_3847472:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(46, 46).__setNumber32__();
        var _ticksPerSecond_3850918;
        var _fieldTag_3849631:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _utf8Valid2_3848582:Bool = false;
        var _epoch_3851145:stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
        var _attrSize_3850676:stdgo.GoInt = (0 : stdgo.GoInt);
        var _extra_3849553:stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf = new stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf(0, 0);
        var _filenameLen_3848018:stdgo.GoInt = (0 : stdgo.GoInt);
        var _msdosModified_3851716:stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
        var _attrTag_3850643:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _needCSize_3849251:Bool = false;
        var _needUSize_3849204:Bool = false;
        var _sig_3847594:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _ts_3850978:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _attrBuf_3850781:stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf = new stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf(0, 0);
        var _fieldBuf_3849738:stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf = new stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf(0, 0);
        var _parseExtrasBreak = false;
        var _commentLen_3848079:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ts_3851418:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _secs_3851043:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _fieldSize_3849660:stdgo.GoInt = (0 : stdgo.GoInt);
        var _utf8Valid1_3848534:Bool = false;
        var _err_3847508:stdgo.Error = (null : stdgo.Error);
        var _ts_3851617:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _nsecs_3851082:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _modified_3849516:stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
        var _utf8Require1_3848546:Bool = false;
        var _d_3848252:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _needHeaderOffset_3849296:Bool = false;
        var _extraLen_3848050:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_r, (_buf_3847472.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                            _err_3847508 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_3847508 != null) {
                            _gotoNext = 3847550i32;
                        } else {
                            _gotoNext = 3847569i32;
                        };
                    };
                } else if (__value__ == (3847550i32)) {
                    return _err_3847508;
                    _gotoNext = 3847569i32;
                } else if (__value__ == (3847569i32)) {
                    _b_3847569 = ((_buf_3847472.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf);
                    {
                        _sig_3847594 = @:check2 _b_3847569._uint32();
                        if (_sig_3847594 != ((33639248u32 : stdgo.GoUInt32))) {
                            _gotoNext = 3847645i32;
                        } else {
                            _gotoNext = 3847670i32;
                        };
                    };
                } else if (__value__ == (3847645i32)) {
                    return stdgo._internal.archive.zip.Zip_errFormat.errFormat;
                    _gotoNext = 3847670i32;
                } else if (__value__ == (3847670i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.creatorVersion = @:check2 _b_3847569._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.readerVersion = @:check2 _b_3847569._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.flags = @:check2 _b_3847569._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.method = @:check2 _b_3847569._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedTime = @:check2 _b_3847569._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedDate = @:check2 _b_3847569._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.cRC32 = @:check2 _b_3847569._uint32();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize = @:check2 _b_3847569._uint32();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize = @:check2 _b_3847569._uint32();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize64 = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize : stdgo.GoUInt64);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize64 = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize : stdgo.GoUInt64);
                    _filenameLen_3848018 = (@:check2 _b_3847569._uint16() : stdgo.GoInt);
                    _extraLen_3848050 = (@:check2 _b_3847569._uint16() : stdgo.GoInt);
                    _commentLen_3848079 = (@:check2 _b_3847569._uint16() : stdgo.GoInt);
                    _b_3847569 = (_b_3847569.__slice__((4 : stdgo.GoInt)) : stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.externalAttrs = @:check2 _b_3847569._uint32();
                    (@:checkr _f ?? throw "null pointer dereference")._headerOffset = (@:check2 _b_3847569._uint32() : stdgo.GoInt64);
                    _d_3848252 = (new stdgo.Slice<stdgo.GoUInt8>(((_filenameLen_3848018 + _extraLen_3848050 : stdgo.GoInt) + _commentLen_3848079 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_r, _d_3848252);
                            _err_3848310 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_3848310 != null) {
                            _gotoNext = 3848347i32;
                        } else {
                            _gotoNext = 3848366i32;
                        };
                    };
                } else if (__value__ == (3848347i32)) {
                    return _err_3848310;
                    _gotoNext = 3848366i32;
                } else if (__value__ == (3848366i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.name = ((_d_3848252.__slice__(0, _filenameLen_3848018) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.extra = (_d_3848252.__slice__(_filenameLen_3848018, (_filenameLen_3848018 + _extraLen_3848050 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.comment = ((_d_3848252.__slice__((_filenameLen_3848018 + _extraLen_3848050 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    {
                        var __tmp__ = stdgo._internal.archive.zip.Zip__detectUTF8._detectUTF8((@:checkr _f ?? throw "null pointer dereference").fileHeader.name?.__copy__());
                        _utf8Valid1_3848534 = @:tmpset0 __tmp__._0;
                        _utf8Require1_3848546 = @:tmpset0 __tmp__._1;
                    };
                    {
                        var __tmp__ = stdgo._internal.archive.zip.Zip__detectUTF8._detectUTF8((@:checkr _f ?? throw "null pointer dereference").fileHeader.comment?.__copy__());
                        _utf8Valid2_3848582 = @:tmpset0 __tmp__._0;
                        _utf8Require2_3848594 = @:tmpset0 __tmp__._1;
                    };
                    _gotoNext = 3848633i32;
                } else if (__value__ == (3848633i32)) {
                    if ((!_utf8Valid1_3848534 || !_utf8Valid2_3848582 : Bool)) {
                        _gotoNext = 3848643i32;
                    } else if ((!_utf8Require1_3848546 && !_utf8Require2_3848594 : Bool)) {
                        _gotoNext = 3848740i32;
                    } else {
                        _gotoNext = 3848872i32;
                    };
                } else if (__value__ == (3848643i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.nonUTF8 = true;
                    _gotoNext = 3849204i32;
                } else if (__value__ == (3848740i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.nonUTF8 = false;
                    _gotoNext = 3849204i32;
                } else if (__value__ == (3848872i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.nonUTF8 = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.flags & (2048 : stdgo.GoUInt16) : stdgo.GoUInt16) == ((0 : stdgo.GoUInt16));
                    _gotoNext = 3849204i32;
                } else if (__value__ == (3849204i32)) {
                    _needUSize_3849204 = (@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize == ((-1u32 : stdgo.GoUInt32));
                    _needCSize_3849251 = (@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize == ((-1u32 : stdgo.GoUInt32));
                    _needHeaderOffset_3849296 = (@:checkr _f ?? throw "null pointer dereference")._headerOffset == (((-1u32 : stdgo.GoUInt32) : stdgo.GoInt64));
                    _gotoNext = 3849535i32;
                } else if (__value__ == (3849535i32)) {
                    _extra_3849553 = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.extra : stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf);
                    _parseExtrasBreak = false;
                    _gotoNext = 3849549i32;
                } else if (__value__ == (3849549i32)) {
                    if (!_parseExtrasBreak && (((_extra_3849553.length) >= (4 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3849597i32;
                    } else {
                        _gotoNext = 3851716i32;
                    };
                } else if (__value__ == (3849597i32)) {
                    _fieldTag_3849631 = @:check2 _extra_3849553._uint16();
                    _fieldSize_3849660 = (@:check2 _extra_3849553._uint16() : stdgo.GoInt);
                    if (((_extra_3849553.length) < _fieldSize_3849660 : Bool)) {
                        _gotoNext = 3849721i32;
                    } else {
                        _gotoNext = 3849738i32;
                    };
                } else if (__value__ == (3849721i32)) {
                    _gotoNext = 3851716i32;
                } else if (__value__ == (3849738i32)) {
                    _fieldBuf_3849738 = @:check2 _extra_3849553._sub(_fieldSize_3849660);
                    _gotoNext = 3849774i32;
                } else if (__value__ == (3849774i32)) {
                    {
                        final __value__ = _fieldTag_3849631;
                        if (__value__ == ((1 : stdgo.GoUInt16))) {
                            _gotoNext = 3849794i32;
                        } else if (__value__ == ((10 : stdgo.GoUInt16))) {
                            _gotoNext = 3850457i32;
                        } else if (__value__ == ((13 : stdgo.GoUInt16)) || __value__ == ((22613 : stdgo.GoUInt16))) {
                            _gotoNext = 3851267i32;
                        } else if (__value__ == ((21589 : stdgo.GoUInt16))) {
                            _gotoNext = 3851510i32;
                        } else {
                            _gotoNext = 3849549i32;
                        };
                    };
                } else if (__value__ == (3849794i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._zip64 = true;
                    if (_needUSize_3849204) {
                        _gotoNext = 3850023i32;
                    } else {
                        _gotoNext = 3850155i32;
                    };
                } else if (__value__ == (3850023i32)) {
                    _needUSize_3849204 = false;
                    if (((_fieldBuf_3849738.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3850072i32;
                    } else {
                        _gotoNext = 3850106i32;
                    };
                } else if (__value__ == (3850072i32)) {
                    return stdgo._internal.archive.zip.Zip_errFormat.errFormat;
                    _gotoNext = 3850106i32;
                } else if (__value__ == (3850106i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize64 = @:check2 _fieldBuf_3849738._uint64();
                    _gotoNext = 3850155i32;
                } else if (__value__ == (3850155i32)) {
                    if (_needCSize_3849251) {
                        _gotoNext = 3850168i32;
                    } else {
                        _gotoNext = 3850298i32;
                    };
                } else if (__value__ == (3850168i32)) {
                    _needCSize_3849251 = false;
                    if (((_fieldBuf_3849738.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3850217i32;
                    } else {
                        _gotoNext = 3850251i32;
                    };
                } else if (__value__ == (3850217i32)) {
                    return stdgo._internal.archive.zip.Zip_errFormat.errFormat;
                    _gotoNext = 3850251i32;
                } else if (__value__ == (3850251i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize64 = @:check2 _fieldBuf_3849738._uint64();
                    _gotoNext = 3850298i32;
                } else if (__value__ == (3850298i32)) {
                    if (_needHeaderOffset_3849296) {
                        _gotoNext = 3850318i32;
                    } else {
                        _gotoNext = 3849549i32;
                    };
                } else if (__value__ == (3850318i32)) {
                    _needHeaderOffset_3849296 = false;
                    if (((_fieldBuf_3849738.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3850374i32;
                    } else {
                        _gotoNext = 3850408i32;
                    };
                } else if (__value__ == (3850374i32)) {
                    return stdgo._internal.archive.zip.Zip_errFormat.errFormat;
                    _gotoNext = 3850408i32;
                } else if (__value__ == (3850408i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._headerOffset = (@:check2 _fieldBuf_3849738._uint64() : stdgo.GoInt64);
                    _gotoNext = 3849549i32;
                } else if (__value__ == (3850457i32)) {
                    if (((_fieldBuf_3849738.length) < (4 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3850499i32;
                    } else {
                        _gotoNext = 3850534i32;
                    };
                } else if (__value__ == (3850499i32)) {
                    _gotoNext = 3849549i32;
                } else if (__value__ == (3850534i32)) {
                    @:check2 _fieldBuf_3849738._uint32();
                    var __blank__ = 0i32;
                    _gotoNext = 3850584i32;
                } else if (__value__ == (3850584i32)) {
                    if (((_fieldBuf_3849738.length) >= (4 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3850607i32;
                    } else {
                        _gotoNext = 3849549i32;
                    };
                } else if (__value__ == (3850607i32)) {
                    _attrTag_3850643 = @:check2 _fieldBuf_3849738._uint16();
                    _attrSize_3850676 = (@:check2 _fieldBuf_3849738._uint16() : stdgo.GoInt);
                    if (((_fieldBuf_3849738.length) < _attrSize_3850676 : Bool)) {
                        _gotoNext = 3850743i32;
                    } else {
                        _gotoNext = 3850781i32;
                    };
                } else if (__value__ == (3850743i32)) {
                    _gotoNext = 3849549i32;
                } else if (__value__ == (3850781i32)) {
                    _attrBuf_3850781 = @:check2 _fieldBuf_3849738._sub(_attrSize_3850676);
                    if (((_attrTag_3850643 != (1 : stdgo.GoUInt16)) || (_attrSize_3850676 != (24 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3850853i32;
                    } else {
                        _gotoNext = 3850912i32;
                    };
                } else if (__value__ == (3850853i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3850584i32;
                } else if (__value__ == (3850912i32)) {
                    _ticksPerSecond_3850918 = (1e+07 : stdgo.GoFloat64);
                    _ts_3850978 = (@:check2 _attrBuf_3850781._uint64() : stdgo.GoInt64);
                    _secs_3851043 = (_ts_3850978 / (10000000i64 : stdgo.GoInt64) : stdgo.GoInt64);
                    _nsecs_3851082 = ((100i64 : stdgo.GoInt64) * (_ts_3850978 % (10000000i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
                    _epoch_3851145 = stdgo._internal.time.Time_date.date((1601 : stdgo.GoInt), (1 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_uTC.uTC)?.__copy__();
                    _modified_3849516 = stdgo._internal.time.Time_unix.unix((_epoch_3851145.unix() + _secs_3851043 : stdgo.GoInt64), _nsecs_3851082)?.__copy__();
                    _gotoNext = 3850584i32;
                } else if (__value__ == (3851267i32)) {
                    if (((_fieldBuf_3849738.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3851329i32;
                    } else {
                        _gotoNext = 3851364i32;
                    };
                } else if (__value__ == (3851329i32)) {
                    _gotoNext = 3849549i32;
                } else if (__value__ == (3851364i32)) {
                    @:check2 _fieldBuf_3849738._uint32();
                    _ts_3851418 = (@:check2 _fieldBuf_3849738._uint32() : stdgo.GoInt64);
                    _modified_3849516 = stdgo._internal.time.Time_unix.unix(_ts_3851418, (0i64 : stdgo.GoInt64))?.__copy__();
                    _gotoNext = 3849549i32;
                } else if (__value__ == (3851510i32)) {
                    if ((((_fieldBuf_3849738.length) < (5 : stdgo.GoInt) : Bool) || ((@:check2 _fieldBuf_3849738._uint8() & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) == (0 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3851582i32;
                    } else {
                        _gotoNext = 3851617i32;
                    };
                } else if (__value__ == (3851582i32)) {
                    _gotoNext = 3849549i32;
                } else if (__value__ == (3851617i32)) {
                    _ts_3851617 = (@:check2 _fieldBuf_3849738._uint32() : stdgo.GoInt64);
                    _modified_3849516 = stdgo._internal.time.Time_unix.unix(_ts_3851617, (0i64 : stdgo.GoInt64))?.__copy__();
                    _gotoNext = 3849549i32;
                } else if (__value__ == (3851716i32)) {
                    _msdosModified_3851716 = stdgo._internal.archive.zip.Zip__msDosTimeToTime._msDosTimeToTime((@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedDate, (@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedTime)?.__copy__();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modified = _msdosModified_3851716?.__copy__();
                    if (!_modified_3849516.isZero()) {
                        _gotoNext = 3851832i32;
                    } else {
                        _gotoNext = 3852970i32;
                    };
                } else if (__value__ == (3851832i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modified = _modified_3849516.uTC()?.__copy__();
                    if ((((@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedTime != (0 : stdgo.GoUInt16)) || ((@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedDate != (0 : stdgo.GoUInt16)) : Bool)) {
                        _gotoNext = 3852368i32;
                    } else {
                        _gotoNext = 3852970i32;
                    };
                } else if (__value__ == (3852368i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modified = _modified_3849516.in_(stdgo._internal.archive.zip.Zip__timeZone._timeZone(_msdosModified_3851716.sub(_modified_3849516?.__copy__())))?.__copy__();
                    _gotoNext = 3852970i32;
                } else if (__value__ == (3852970i32)) {
                    var __blank__ = _needUSize_3849204;
                    if ((_needCSize_3849251 || _needHeaderOffset_3849296 : Bool)) {
                        _gotoNext = 3853019i32;
                    } else {
                        _gotoNext = 3853045i32;
                    };
                } else if (__value__ == (3853019i32)) {
                    return stdgo._internal.archive.zip.Zip_errFormat.errFormat;
                    _gotoNext = 3853045i32;
                } else if (__value__ == (3853045i32)) {
                    return (null : stdgo.Error);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
