package stdgo._internal.archive.zip;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.io.Io;
import stdgo._internal.time.Time;
import stdgo._internal.strings.Strings;
import stdgo._internal.path.Path;
import stdgo._internal.compress.flate.Flate;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.hash.crc32.Crc32;
import stdgo._internal.encoding.binary.Binary;
function _readDirectoryHeader(_f:stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>, _r:stdgo._internal.io.Io_Reader.Reader):stdgo.Error {
        var _msdosModified_3867742:stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
        var _secs_3867069:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _nsecs_3867108:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _utf8Valid2_3864608:Bool = false;
        var _buf_3863498:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(46, 46).__setNumber32__();
        var _ts_3867004:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _attrSize_3866702:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldSize_3865686:stdgo.GoInt = (0 : stdgo.GoInt);
        var _modified_3865542:stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
        var _needHeaderOffset_3865322:Bool = false;
        var _needUSize_3865230:Bool = false;
        var _err_3864336:stdgo.Error = (null : stdgo.Error);
        var _err_3863534:stdgo.Error = (null : stdgo.Error);
        var _epoch_3867171:stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
        var _commentLen_3864105:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ts_3867444:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _ticksPerSecond_3866944;
        var _attrBuf_3866807:stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf = new stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf(0, 0);
        var _attrTag_3866669:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _extra_3865579:stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf = new stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf(0, 0);
        var _d_3864278:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _b_3863595:stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf = new stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf(0, 0);
        var _needCSize_3865277:Bool = false;
        var _utf8Valid1_3864560:Bool = false;
        var _extraLen_3864076:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ts_3867643:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _fieldBuf_3865764:stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf = new stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf(0, 0);
        var _fieldTag_3865657:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _parseExtrasBreak = false;
        var _utf8Require2_3864620:Bool = false;
        var _utf8Require1_3864572:Bool = false;
        var _filenameLen_3864044:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sig_3863620:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_r, (_buf_3863498.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                            _err_3863534 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_3863534 != null) {
                            _gotoNext = 3863576i32;
                        } else {
                            _gotoNext = 3863595i32;
                        };
                    };
                } else if (__value__ == (3863576i32)) {
                    return _err_3863534;
                    _gotoNext = 3863595i32;
                } else if (__value__ == (3863595i32)) {
                    _b_3863595 = ((_buf_3863498.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf);
                    {
                        _sig_3863620 = @:check2 _b_3863595._uint32();
                        if (_sig_3863620 != ((33639248u32 : stdgo.GoUInt32))) {
                            _gotoNext = 3863671i32;
                        } else {
                            _gotoNext = 3863696i32;
                        };
                    };
                } else if (__value__ == (3863671i32)) {
                    return stdgo._internal.archive.zip.Zip_errFormat.errFormat;
                    _gotoNext = 3863696i32;
                } else if (__value__ == (3863696i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.creatorVersion = @:check2 _b_3863595._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.readerVersion = @:check2 _b_3863595._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.flags = @:check2 _b_3863595._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.method = @:check2 _b_3863595._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedTime = @:check2 _b_3863595._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedDate = @:check2 _b_3863595._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.cRC32 = @:check2 _b_3863595._uint32();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize = @:check2 _b_3863595._uint32();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize = @:check2 _b_3863595._uint32();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize64 = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize : stdgo.GoUInt64);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize64 = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize : stdgo.GoUInt64);
                    _filenameLen_3864044 = (@:check2 _b_3863595._uint16() : stdgo.GoInt);
                    _extraLen_3864076 = (@:check2 _b_3863595._uint16() : stdgo.GoInt);
                    _commentLen_3864105 = (@:check2 _b_3863595._uint16() : stdgo.GoInt);
                    _b_3863595 = (_b_3863595.__slice__((4 : stdgo.GoInt)) : stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.externalAttrs = @:check2 _b_3863595._uint32();
                    (@:checkr _f ?? throw "null pointer dereference")._headerOffset = (@:check2 _b_3863595._uint32() : stdgo.GoInt64);
                    _d_3864278 = (new stdgo.Slice<stdgo.GoUInt8>(((_filenameLen_3864044 + _extraLen_3864076 : stdgo.GoInt) + _commentLen_3864105 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_r, _d_3864278);
                            _err_3864336 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_3864336 != null) {
                            _gotoNext = 3864373i32;
                        } else {
                            _gotoNext = 3864392i32;
                        };
                    };
                } else if (__value__ == (3864373i32)) {
                    return _err_3864336;
                    _gotoNext = 3864392i32;
                } else if (__value__ == (3864392i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.name = ((_d_3864278.__slice__(0, _filenameLen_3864044) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.extra = (_d_3864278.__slice__(_filenameLen_3864044, (_filenameLen_3864044 + _extraLen_3864076 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.comment = ((_d_3864278.__slice__((_filenameLen_3864044 + _extraLen_3864076 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    {
                        var __tmp__ = stdgo._internal.archive.zip.Zip__detectUTF8._detectUTF8((@:checkr _f ?? throw "null pointer dereference").fileHeader.name?.__copy__());
                        _utf8Valid1_3864560 = @:tmpset0 __tmp__._0;
                        _utf8Require1_3864572 = @:tmpset0 __tmp__._1;
                    };
                    {
                        var __tmp__ = stdgo._internal.archive.zip.Zip__detectUTF8._detectUTF8((@:checkr _f ?? throw "null pointer dereference").fileHeader.comment?.__copy__());
                        _utf8Valid2_3864608 = @:tmpset0 __tmp__._0;
                        _utf8Require2_3864620 = @:tmpset0 __tmp__._1;
                    };
                    _gotoNext = 3864659i32;
                } else if (__value__ == (3864659i32)) {
                    if ((!_utf8Valid1_3864560 || !_utf8Valid2_3864608 : Bool)) {
                        _gotoNext = 3864669i32;
                    } else if ((!_utf8Require1_3864572 && !_utf8Require2_3864620 : Bool)) {
                        _gotoNext = 3864766i32;
                    } else {
                        _gotoNext = 3864898i32;
                    };
                } else if (__value__ == (3864669i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.nonUTF8 = true;
                    _gotoNext = 3865230i32;
                } else if (__value__ == (3864766i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.nonUTF8 = false;
                    _gotoNext = 3865230i32;
                } else if (__value__ == (3864898i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.nonUTF8 = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.flags & (2048 : stdgo.GoUInt16) : stdgo.GoUInt16) == ((0 : stdgo.GoUInt16));
                    _gotoNext = 3865230i32;
                } else if (__value__ == (3865230i32)) {
                    _needUSize_3865230 = (@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize == ((-1u32 : stdgo.GoUInt32));
                    _needCSize_3865277 = (@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize == ((-1u32 : stdgo.GoUInt32));
                    _needHeaderOffset_3865322 = (@:checkr _f ?? throw "null pointer dereference")._headerOffset == (((-1u32 : stdgo.GoUInt32) : stdgo.GoInt64));
                    _gotoNext = 3865561i32;
                } else if (__value__ == (3865561i32)) {
                    _extra_3865579 = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.extra : stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf);
                    _parseExtrasBreak = false;
                    _gotoNext = 3865575i32;
                } else if (__value__ == (3865575i32)) {
                    if (!_parseExtrasBreak && (((_extra_3865579.length) >= (4 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3865623i32;
                    } else {
                        _gotoNext = 3867742i32;
                    };
                } else if (__value__ == (3865623i32)) {
                    _fieldTag_3865657 = @:check2 _extra_3865579._uint16();
                    _fieldSize_3865686 = (@:check2 _extra_3865579._uint16() : stdgo.GoInt);
                    if (((_extra_3865579.length) < _fieldSize_3865686 : Bool)) {
                        _gotoNext = 3865747i32;
                    } else {
                        _gotoNext = 3865764i32;
                    };
                } else if (__value__ == (3865747i32)) {
                    _gotoNext = 3867742i32;
                } else if (__value__ == (3865764i32)) {
                    _fieldBuf_3865764 = @:check2 _extra_3865579._sub(_fieldSize_3865686);
                    _gotoNext = 3865800i32;
                } else if (__value__ == (3865800i32)) {
                    {
                        final __value__ = _fieldTag_3865657;
                        if (__value__ == ((1 : stdgo.GoUInt16))) {
                            _gotoNext = 3865820i32;
                        } else if (__value__ == ((10 : stdgo.GoUInt16))) {
                            _gotoNext = 3866483i32;
                        } else if (__value__ == ((13 : stdgo.GoUInt16)) || __value__ == ((22613 : stdgo.GoUInt16))) {
                            _gotoNext = 3867293i32;
                        } else if (__value__ == ((21589 : stdgo.GoUInt16))) {
                            _gotoNext = 3867536i32;
                        } else {
                            _gotoNext = 3865575i32;
                        };
                    };
                } else if (__value__ == (3865820i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._zip64 = true;
                    if (_needUSize_3865230) {
                        _gotoNext = 3866049i32;
                    } else {
                        _gotoNext = 3866181i32;
                    };
                } else if (__value__ == (3866049i32)) {
                    _needUSize_3865230 = false;
                    if (((_fieldBuf_3865764.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3866098i32;
                    } else {
                        _gotoNext = 3866132i32;
                    };
                } else if (__value__ == (3866098i32)) {
                    return stdgo._internal.archive.zip.Zip_errFormat.errFormat;
                    _gotoNext = 3866132i32;
                } else if (__value__ == (3866132i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize64 = @:check2 _fieldBuf_3865764._uint64();
                    _gotoNext = 3866181i32;
                } else if (__value__ == (3866181i32)) {
                    if (_needCSize_3865277) {
                        _gotoNext = 3866194i32;
                    } else {
                        _gotoNext = 3866324i32;
                    };
                } else if (__value__ == (3866194i32)) {
                    _needCSize_3865277 = false;
                    if (((_fieldBuf_3865764.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3866243i32;
                    } else {
                        _gotoNext = 3866277i32;
                    };
                } else if (__value__ == (3866243i32)) {
                    return stdgo._internal.archive.zip.Zip_errFormat.errFormat;
                    _gotoNext = 3866277i32;
                } else if (__value__ == (3866277i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize64 = @:check2 _fieldBuf_3865764._uint64();
                    _gotoNext = 3866324i32;
                } else if (__value__ == (3866324i32)) {
                    if (_needHeaderOffset_3865322) {
                        _gotoNext = 3866344i32;
                    } else {
                        _gotoNext = 3865575i32;
                    };
                } else if (__value__ == (3866344i32)) {
                    _needHeaderOffset_3865322 = false;
                    if (((_fieldBuf_3865764.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3866400i32;
                    } else {
                        _gotoNext = 3866434i32;
                    };
                } else if (__value__ == (3866400i32)) {
                    return stdgo._internal.archive.zip.Zip_errFormat.errFormat;
                    _gotoNext = 3866434i32;
                } else if (__value__ == (3866434i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._headerOffset = (@:check2 _fieldBuf_3865764._uint64() : stdgo.GoInt64);
                    _gotoNext = 3865575i32;
                } else if (__value__ == (3866483i32)) {
                    if (((_fieldBuf_3865764.length) < (4 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3866525i32;
                    } else {
                        _gotoNext = 3866560i32;
                    };
                } else if (__value__ == (3866525i32)) {
                    _gotoNext = 3865575i32;
                } else if (__value__ == (3866560i32)) {
                    @:check2 _fieldBuf_3865764._uint32();
                    var __blank__ = 0i32;
                    _gotoNext = 3866610i32;
                } else if (__value__ == (3866610i32)) {
                    if (((_fieldBuf_3865764.length) >= (4 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3866633i32;
                    } else {
                        _gotoNext = 3865575i32;
                    };
                } else if (__value__ == (3866633i32)) {
                    _attrTag_3866669 = @:check2 _fieldBuf_3865764._uint16();
                    _attrSize_3866702 = (@:check2 _fieldBuf_3865764._uint16() : stdgo.GoInt);
                    if (((_fieldBuf_3865764.length) < _attrSize_3866702 : Bool)) {
                        _gotoNext = 3866769i32;
                    } else {
                        _gotoNext = 3866807i32;
                    };
                } else if (__value__ == (3866769i32)) {
                    _gotoNext = 3865575i32;
                } else if (__value__ == (3866807i32)) {
                    _attrBuf_3866807 = @:check2 _fieldBuf_3865764._sub(_attrSize_3866702);
                    if (((_attrTag_3866669 != (1 : stdgo.GoUInt16)) || (_attrSize_3866702 != (24 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3866879i32;
                    } else {
                        _gotoNext = 3866938i32;
                    };
                } else if (__value__ == (3866879i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3866610i32;
                } else if (__value__ == (3866938i32)) {
                    _ticksPerSecond_3866944 = (1e+07 : stdgo.GoFloat64);
                    _ts_3867004 = (@:check2 _attrBuf_3866807._uint64() : stdgo.GoInt64);
                    _secs_3867069 = (_ts_3867004 / (10000000i64 : stdgo.GoInt64) : stdgo.GoInt64);
                    _nsecs_3867108 = ((100i64 : stdgo.GoInt64) * (_ts_3867004 % (10000000i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
                    _epoch_3867171 = stdgo._internal.time.Time_date.date((1601 : stdgo.GoInt), (1 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_uTC.uTC)?.__copy__();
                    _modified_3865542 = stdgo._internal.time.Time_unix.unix((_epoch_3867171.unix() + _secs_3867069 : stdgo.GoInt64), _nsecs_3867108)?.__copy__();
                    _gotoNext = 3866610i32;
                } else if (__value__ == (3867293i32)) {
                    if (((_fieldBuf_3865764.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3867355i32;
                    } else {
                        _gotoNext = 3867390i32;
                    };
                } else if (__value__ == (3867355i32)) {
                    _gotoNext = 3865575i32;
                } else if (__value__ == (3867390i32)) {
                    @:check2 _fieldBuf_3865764._uint32();
                    _ts_3867444 = (@:check2 _fieldBuf_3865764._uint32() : stdgo.GoInt64);
                    _modified_3865542 = stdgo._internal.time.Time_unix.unix(_ts_3867444, (0i64 : stdgo.GoInt64))?.__copy__();
                    _gotoNext = 3865575i32;
                } else if (__value__ == (3867536i32)) {
                    if ((((_fieldBuf_3865764.length) < (5 : stdgo.GoInt) : Bool) || ((@:check2 _fieldBuf_3865764._uint8() & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) == (0 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3867608i32;
                    } else {
                        _gotoNext = 3867643i32;
                    };
                } else if (__value__ == (3867608i32)) {
                    _gotoNext = 3865575i32;
                } else if (__value__ == (3867643i32)) {
                    _ts_3867643 = (@:check2 _fieldBuf_3865764._uint32() : stdgo.GoInt64);
                    _modified_3865542 = stdgo._internal.time.Time_unix.unix(_ts_3867643, (0i64 : stdgo.GoInt64))?.__copy__();
                    _gotoNext = 3865575i32;
                } else if (__value__ == (3867742i32)) {
                    _msdosModified_3867742 = stdgo._internal.archive.zip.Zip__msDosTimeToTime._msDosTimeToTime((@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedDate, (@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedTime)?.__copy__();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modified = _msdosModified_3867742?.__copy__();
                    if (!_modified_3865542.isZero()) {
                        _gotoNext = 3867858i32;
                    } else {
                        _gotoNext = 3868996i32;
                    };
                } else if (__value__ == (3867858i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modified = _modified_3865542.uTC()?.__copy__();
                    if ((((@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedTime != (0 : stdgo.GoUInt16)) || ((@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedDate != (0 : stdgo.GoUInt16)) : Bool)) {
                        _gotoNext = 3868394i32;
                    } else {
                        _gotoNext = 3868996i32;
                    };
                } else if (__value__ == (3868394i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modified = _modified_3865542.in_(stdgo._internal.archive.zip.Zip__timeZone._timeZone(_msdosModified_3867742.sub(_modified_3865542?.__copy__())))?.__copy__();
                    _gotoNext = 3868996i32;
                } else if (__value__ == (3868996i32)) {
                    var __blank__ = _needUSize_3865230;
                    if ((_needCSize_3865277 || _needHeaderOffset_3865322 : Bool)) {
                        _gotoNext = 3869045i32;
                    } else {
                        _gotoNext = 3869071i32;
                    };
                } else if (__value__ == (3869045i32)) {
                    return stdgo._internal.archive.zip.Zip_errFormat.errFormat;
                    _gotoNext = 3869071i32;
                } else if (__value__ == (3869071i32)) {
                    return (null : stdgo.Error);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
