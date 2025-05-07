package stdgo._internal.archive.zip;
function _readDirectoryHeader(_f:stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File>, _r:stdgo._internal.io.Io_reader.Reader):stdgo.Error {
        var _modified_16:stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
        var _err_8:stdgo.Error = (null : stdgo.Error);
        var _err_1:stdgo.Error = (null : stdgo.Error);
        var _attrSize_22:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ts_29:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _utf8Valid1_9:Bool = false;
        var _buf_0:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(46, 46).__setNumber32__();
        var _utf8Valid2_11:Bool = false;
        var _d_7:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _extraLen_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sig_3:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _b_2:stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf = (new stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf(0, 0) : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
        var _msdosModified_31:stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
        var _epoch_28:stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
        var _attrBuf_23:stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf = (new stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf(0, 0) : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
        var _attrTag_21:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _fieldSize_19:stdgo.GoInt = (0 : stdgo.GoInt);
        var _parseExtrasBreak = false;
        var _utf8Require1_10:Bool = false;
        var _fieldBuf_20:stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf = (new stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf(0, 0) : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
        var _utf8Require2_12:Bool = false;
        var _nsecs_27:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _ts_25:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _fieldTag_18:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _needHeaderOffset_15:Bool = false;
        var _needUSize_13:Bool = false;
        var _commentLen_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _filenameLen_4:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ts_30:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _secs_26:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _ticksPerSecond_24 = (1e+07f64 : stdgo.GoFloat64);
        var _extra_17:stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf = (new stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf(0, 0) : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
        var _needCSize_14:Bool = false;
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L358"
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_r, (_buf_0.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                            _err_1 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_1 != null) {
                            _gotoNext = 3882048i64;
                        } else {
                            _gotoNext = 3882067i64;
                        };
                    };
                } else if (__value__ == (3882048i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L359"
                    return _err_1;
                    _gotoNext = 3882067i64;
                } else if (__value__ == (3882067i64)) {
                    _b_2 = ((_buf_0.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
                    //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L362"
                    {
                        _sig_3 = _b_2._uint32();
                        if (_sig_3 != ((33639248u32 : stdgo.GoUInt32))) {
                            _gotoNext = 3882143i64;
                        } else {
                            _gotoNext = 3882168i64;
                        };
                    };
                } else if (__value__ == (3882143i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L363"
                    return stdgo._internal.archive.zip.Zip_errformat.errFormat;
                    _gotoNext = 3882168i64;
                } else if (__value__ == (3882168i64)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.creatorVersion = _b_2._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.readerVersion = _b_2._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.flags = _b_2._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.method = _b_2._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedTime = _b_2._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedDate = _b_2._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.cRC32 = _b_2._uint32();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize = _b_2._uint32();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize = _b_2._uint32();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize64 = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize : stdgo.GoUInt64);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize64 = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize : stdgo.GoUInt64);
                    _filenameLen_4 = (_b_2._uint16() : stdgo.GoInt);
                    _extraLen_5 = (_b_2._uint16() : stdgo.GoInt);
                    _commentLen_6 = (_b_2._uint16() : stdgo.GoInt);
                    _b_2 = (_b_2.__slice__((4 : stdgo.GoInt)) : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.externalAttrs = _b_2._uint32();
                    (@:checkr _f ?? throw "null pointer dereference")._headerOffset = (_b_2._uint32() : stdgo.GoInt64);
                    _d_7 = (new stdgo.Slice<stdgo.GoUInt8>(((_filenameLen_4 + _extraLen_5 : stdgo.GoInt) + _commentLen_6 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L383"
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_r, _d_7);
                            _err_8 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_8 != null) {
                            _gotoNext = 3882845i64;
                        } else {
                            _gotoNext = 3882864i64;
                        };
                    };
                } else if (__value__ == (3882845i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L384"
                    return _err_8;
                    _gotoNext = 3882864i64;
                } else if (__value__ == (3882864i64)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.name = ((_d_7.__slice__(0, _filenameLen_4) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.extra = (_d_7.__slice__(_filenameLen_4, (_filenameLen_4 + _extraLen_5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.comment = ((_d_7.__slice__((_filenameLen_4 + _extraLen_5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    {
                        var __tmp__ = stdgo._internal.archive.zip.Zip__detectutf8._detectUTF8((@:checkr _f ?? throw "null pointer dereference").fileHeader.name?.__copy__());
                        _utf8Valid1_9 = @:tmpset0 __tmp__._0;
                        _utf8Require1_10 = @:tmpset0 __tmp__._1;
                    };
                    {
                        var __tmp__ = stdgo._internal.archive.zip.Zip__detectutf8._detectUTF8((@:checkr _f ?? throw "null pointer dereference").fileHeader.comment?.__copy__());
                        _utf8Valid2_11 = @:tmpset0 __tmp__._0;
                        _utf8Require2_12 = @:tmpset0 __tmp__._1;
                    };
                    _gotoNext = 3883131i64;
                } else if (__value__ == (3883131i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L393"
                    if ((!_utf8Valid1_9 || !_utf8Valid2_11 : Bool)) {
                        _gotoNext = 3883141i64;
                    } else if ((!_utf8Require1_10 && !_utf8Require2_12 : Bool)) {
                        _gotoNext = 3883238i64;
                    } else {
                        _gotoNext = 3883370i64;
                    };
                } else if (__value__ == (3883141i64)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.nonUTF8 = true;
                    _gotoNext = 3883702i64;
                } else if (__value__ == (3883238i64)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.nonUTF8 = false;
                    _gotoNext = 3883702i64;
                } else if (__value__ == (3883370i64)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.nonUTF8 = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.flags & (2048 : stdgo.GoUInt16) : stdgo.GoUInt16) == ((0 : stdgo.GoUInt16));
                    _gotoNext = 3883702i64;
                } else if (__value__ == (3883702i64)) {
                    _needUSize_13 = (@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize == ((-1u32 : stdgo.GoUInt32));
                    _needCSize_14 = (@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize == ((-1u32 : stdgo.GoUInt32));
                    _needHeaderOffset_15 = (@:checkr _f ?? throw "null pointer dereference")._headerOffset == (((-1u32 : stdgo.GoUInt32) : stdgo.GoInt64));
                    _gotoNext = 3884033i64;
                } else if (__value__ == (3884033i64)) {
                    _extra_17 = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.extra : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
                    _parseExtrasBreak = false;
                    _gotoNext = 3884047i64;
                } else if (__value__ == (3884047i64)) {
                    //"file://#L0"
                    if (!_parseExtrasBreak && (((_extra_17.length) >= (4 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3884095i64;
                    } else {
                        _gotoNext = 3886214i64;
                    };
                } else if (__value__ == (3884095i64)) {
                    _fieldTag_18 = _extra_17._uint16();
                    _fieldSize_19 = (_extra_17._uint16() : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L420"
                    if (((_extra_17.length) < _fieldSize_19 : Bool)) {
                        _gotoNext = 3884219i64;
                    } else {
                        _gotoNext = 3884236i64;
                    };
                } else if (__value__ == (3884219i64)) {
                    _gotoNext = 3886214i64;
                } else if (__value__ == (3884236i64)) {
                    _fieldBuf_20 = _extra_17._sub(_fieldSize_19);
                    _gotoNext = 3884272i64;
                } else if (__value__ == (3884272i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L425"
                    {
                        final __value__ = _fieldTag_18;
                        if (__value__ == ((1 : stdgo.GoUInt16))) {
                            _gotoNext = 3884292i64;
                        } else if (__value__ == ((10 : stdgo.GoUInt16))) {
                            _gotoNext = 3884955i64;
                        } else if (__value__ == ((13 : stdgo.GoUInt16)) || __value__ == ((22613 : stdgo.GoUInt16))) {
                            _gotoNext = 3885765i64;
                        } else if (__value__ == ((21589 : stdgo.GoUInt16))) {
                            _gotoNext = 3886008i64;
                        } else {
                            _gotoNext = 3884047i64;
                        };
                    };
                } else if (__value__ == (3884292i64)) {
                    (@:checkr _f ?? throw "null pointer dereference")._zip64 = true;
                    //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L433"
                    if (_needUSize_13) {
                        _gotoNext = 3884521i64;
                    } else {
                        _gotoNext = 3884653i64;
                    };
                } else if (__value__ == (3884521i64)) {
                    _needUSize_13 = false;
                    //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L435"
                    if (((_fieldBuf_20.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3884570i64;
                    } else {
                        _gotoNext = 3884604i64;
                    };
                } else if (__value__ == (3884570i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L436"
                    return stdgo._internal.archive.zip.Zip_errformat.errFormat;
                    _gotoNext = 3884604i64;
                } else if (__value__ == (3884604i64)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize64 = _fieldBuf_20._uint64();
                    _gotoNext = 3884653i64;
                } else if (__value__ == (3884653i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L440"
                    if (_needCSize_14) {
                        _gotoNext = 3884666i64;
                    } else {
                        _gotoNext = 3884796i64;
                    };
                } else if (__value__ == (3884666i64)) {
                    _needCSize_14 = false;
                    //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L442"
                    if (((_fieldBuf_20.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3884715i64;
                    } else {
                        _gotoNext = 3884749i64;
                    };
                } else if (__value__ == (3884715i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L443"
                    return stdgo._internal.archive.zip.Zip_errformat.errFormat;
                    _gotoNext = 3884749i64;
                } else if (__value__ == (3884749i64)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize64 = _fieldBuf_20._uint64();
                    _gotoNext = 3884796i64;
                } else if (__value__ == (3884796i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L447"
                    if (_needHeaderOffset_15) {
                        _gotoNext = 3884816i64;
                    } else {
                        _gotoNext = 3884047i64;
                    };
                } else if (__value__ == (3884816i64)) {
                    _needHeaderOffset_15 = false;
                    //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L449"
                    if (((_fieldBuf_20.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3884872i64;
                    } else {
                        _gotoNext = 3884906i64;
                    };
                } else if (__value__ == (3884872i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L450"
                    return stdgo._internal.archive.zip.Zip_errformat.errFormat;
                    _gotoNext = 3884906i64;
                } else if (__value__ == (3884906i64)) {
                    (@:checkr _f ?? throw "null pointer dereference")._headerOffset = (_fieldBuf_20._uint64() : stdgo.GoInt64);
                    _gotoNext = 3884047i64;
                } else if (__value__ == (3884955i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L455"
                    if (((_fieldBuf_20.length) < (4 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3884997i64;
                    } else {
                        _gotoNext = 3885032i64;
                    };
                } else if (__value__ == (3884997i64)) {
                    _gotoNext = 3884047i64;
                } else if (__value__ == (3885032i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L458"
                    _fieldBuf_20._uint32();
                    0i64;
                    _gotoNext = 3885082i64;
                } else if (__value__ == (3885082i64)) {
                    //"file://#L0"
                    if (((_fieldBuf_20.length) >= (4 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3885105i64;
                    } else {
                        _gotoNext = 3884047i64;
                    };
                } else if (__value__ == (3885105i64)) {
                    _attrTag_21 = _fieldBuf_20._uint16();
                    _attrSize_22 = (_fieldBuf_20._uint16() : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L462"
                    if (((_fieldBuf_20.length) < _attrSize_22 : Bool)) {
                        _gotoNext = 3885241i64;
                    } else {
                        _gotoNext = 3885279i64;
                    };
                } else if (__value__ == (3885241i64)) {
                    _gotoNext = 3884047i64;
                } else if (__value__ == (3885279i64)) {
                    _attrBuf_23 = _fieldBuf_20._sub(_attrSize_22);
                    //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L466"
                    if (((_attrTag_21 != (1 : stdgo.GoUInt16)) || (_attrSize_22 != (24 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3885351i64;
                    } else {
                        _gotoNext = 3885410i64;
                    };
                } else if (__value__ == (3885351i64)) {
                    0i64;
                    _gotoNext = 3885082i64;
                } else if (__value__ == (3885410i64)) {
                    _ts_25 = (_attrBuf_23._uint64() : stdgo.GoInt64);
                    _secs_26 = (_ts_25 / (10000000i64 : stdgo.GoInt64) : stdgo.GoInt64);
                    _nsecs_27 = ((100i64 : stdgo.GoInt64) * (_ts_25 % (10000000i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
                    _epoch_28 = stdgo._internal.time.Time_date.date((1601 : stdgo.GoInt), (1 : stdgo._internal.time.Time_month.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.uTC)?.__copy__();
                    _modified_16 = stdgo._internal.time.Time_unix.unix((_epoch_28.unix() + _secs_26 : stdgo.GoInt64), _nsecs_27)?.__copy__();
                    _gotoNext = 3885082i64;
                } else if (__value__ == (3885765i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L478"
                    if (((_fieldBuf_20.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3885827i64;
                    } else {
                        _gotoNext = 3885862i64;
                    };
                } else if (__value__ == (3885827i64)) {
                    _gotoNext = 3884047i64;
                } else if (__value__ == (3885862i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L481"
                    _fieldBuf_20._uint32();
                    _ts_29 = (_fieldBuf_20._uint32() : stdgo.GoInt64);
                    _modified_16 = stdgo._internal.time.Time_unix.unix(_ts_29, (0i64 : stdgo.GoInt64))?.__copy__();
                    _gotoNext = 3884047i64;
                } else if (__value__ == (3886008i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L485"
                    if ((((_fieldBuf_20.length) < (5 : stdgo.GoInt) : Bool) || ((_fieldBuf_20._uint8() & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) == (0 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3886080i64;
                    } else {
                        _gotoNext = 3886115i64;
                    };
                } else if (__value__ == (3886080i64)) {
                    _gotoNext = 3884047i64;
                } else if (__value__ == (3886115i64)) {
                    _ts_30 = (_fieldBuf_20._uint32() : stdgo.GoInt64);
                    _modified_16 = stdgo._internal.time.Time_unix.unix(_ts_30, (0i64 : stdgo.GoInt64))?.__copy__();
                    _gotoNext = 3884047i64;
                } else if (__value__ == (3886214i64)) {
                    _msdosModified_31 = stdgo._internal.archive.zip.Zip__msdostimetotime._msDosTimeToTime((@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedDate, (@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedTime)?.__copy__();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modified = _msdosModified_31?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L495"
                    if (!_modified_16.isZero()) {
                        _gotoNext = 3886330i64;
                    } else {
                        _gotoNext = 3887468i64;
                    };
                } else if (__value__ == (3886330i64)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modified = _modified_16.uTC()?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L506"
                    if ((((@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedTime != (0 : stdgo.GoUInt16)) || ((@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedDate != (0 : stdgo.GoUInt16)) : Bool)) {
                        _gotoNext = 3886866i64;
                    } else {
                        _gotoNext = 3887468i64;
                    };
                } else if (__value__ == (3886866i64)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modified = _modified_16.in_(stdgo._internal.archive.zip.Zip__timezone._timeZone(_msdosModified_31.sub(_modified_16?.__copy__())))?.__copy__();
                    _gotoNext = 3887468i64;
                } else if (__value__ == (3887468i64)) {
                    _needUSize_13;
                    //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L521"
                    if ((_needCSize_14 || _needHeaderOffset_15 : Bool)) {
                        _gotoNext = 3887517i64;
                    } else {
                        _gotoNext = 3887543i64;
                    };
                } else if (__value__ == (3887517i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L522"
                    return stdgo._internal.archive.zip.Zip_errformat.errFormat;
                    _gotoNext = 3887543i64;
                } else if (__value__ == (3887543i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L525"
                    return (null : stdgo.Error);
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
