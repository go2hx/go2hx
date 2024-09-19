package stdgo._internal.archive.zip;
function _readDirectoryHeader(_f:stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>, _r:stdgo._internal.io.Io_Reader.Reader):stdgo.Error {
        stdgo._internal.internal.Macro.controlFlow({
            var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(46, 46, ...[for (i in 0 ... 46) (0 : stdgo.GoUInt8)]);
            {
                var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_r, (_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            var _b = ((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf);
            {
                var _sig = (_b._uint32() : stdgo.GoUInt32);
                if (_sig != ((33639248u32 : stdgo.GoUInt32))) {
                    return stdgo._internal.archive.zip.Zip_errFormat.errFormat;
                };
            };
            _f.fileHeader.creatorVersion = _b._uint16();
            _f.fileHeader.readerVersion = _b._uint16();
            _f.fileHeader.flags = _b._uint16();
            _f.fileHeader.method = _b._uint16();
            _f.fileHeader.modifiedTime = _b._uint16();
            _f.fileHeader.modifiedDate = _b._uint16();
            _f.fileHeader.crc32 = _b._uint32();
            _f.fileHeader.compressedSize = _b._uint32();
            _f.fileHeader.uncompressedSize = _b._uint32();
            _f.fileHeader.compressedSize64 = (_f.fileHeader.compressedSize : stdgo.GoUInt64);
            _f.fileHeader.uncompressedSize64 = (_f.fileHeader.uncompressedSize : stdgo.GoUInt64);
            var _filenameLen = (_b._uint16() : stdgo.GoInt);
            var _extraLen = (_b._uint16() : stdgo.GoInt);
            var _commentLen = (_b._uint16() : stdgo.GoInt);
            _b = (_b.__slice__((4 : stdgo.GoInt)) : stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf);
            _f.fileHeader.externalAttrs = _b._uint32();
            _f._headerOffset = (_b._uint32() : stdgo.GoInt64);
            var _d = (new stdgo.Slice<stdgo.GoUInt8>(((_filenameLen + _extraLen : stdgo.GoInt) + _commentLen : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            {
                var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_r, _d), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            _f.fileHeader.name = ((_d.__slice__(0, _filenameLen) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
            _f.fileHeader.extra = (_d.__slice__(_filenameLen, (_filenameLen + _extraLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _f.fileHeader.comment = ((_d.__slice__((_filenameLen + _extraLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
            var __tmp__ = stdgo._internal.archive.zip.Zip__detectUTF8._detectUTF8(_f.fileHeader.name?.__copy__()), _utf8Valid1:Bool = __tmp__._0, _utf8Require1:Bool = __tmp__._1;
            var __tmp__ = stdgo._internal.archive.zip.Zip__detectUTF8._detectUTF8(_f.fileHeader.comment?.__copy__()), _utf8Valid2:Bool = __tmp__._0, _utf8Require2:Bool = __tmp__._1;
            if ((!_utf8Valid1 || !_utf8Valid2 : Bool)) {
                _f.fileHeader.nonUTF8 = true;
            } else if ((!_utf8Require1 && !_utf8Require2 : Bool)) {
                _f.fileHeader.nonUTF8 = false;
            } else {
                _f.fileHeader.nonUTF8 = (_f.fileHeader.flags & (2048 : stdgo.GoUInt16) : stdgo.GoUInt16) == ((0 : stdgo.GoUInt16));
            };
            var _needUSize = (_f.fileHeader.uncompressedSize == ((-1u32 : stdgo.GoUInt32)) : Bool);
            var _needCSize = (_f.fileHeader.compressedSize == ((-1u32 : stdgo.GoUInt32)) : Bool);
            var _needHeaderOffset = (_f._headerOffset == (((-1u32 : stdgo.GoUInt32) : stdgo.GoInt64)) : Bool);
            var _modified:stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
            @:label("parseExtras") {
                var _extra = (_f.fileHeader.extra : stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf);
                while (((_extra.length) >= (4 : stdgo.GoInt) : Bool)) {
                    var _fieldTag = (_extra._uint16() : stdgo.GoUInt16);
                    var _fieldSize = (_extra._uint16() : stdgo.GoInt);
                    if (((_extra.length) < _fieldSize : Bool)) {
                        break;
                    };
                    var _fieldBuf = (_extra._sub(_fieldSize) : stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf);
                    {
                        final __value__ = _fieldTag;
                        if (__value__ == ((1 : stdgo.GoUInt16))) {
                            _f._zip64 = true;
                            if (_needUSize) {
                                _needUSize = false;
                                if (((_fieldBuf.length) < (8 : stdgo.GoInt) : Bool)) {
                                    return stdgo._internal.archive.zip.Zip_errFormat.errFormat;
                                };
                                _f.fileHeader.uncompressedSize64 = _fieldBuf._uint64();
                            };
                            if (_needCSize) {
                                _needCSize = false;
                                if (((_fieldBuf.length) < (8 : stdgo.GoInt) : Bool)) {
                                    return stdgo._internal.archive.zip.Zip_errFormat.errFormat;
                                };
                                _f.fileHeader.compressedSize64 = _fieldBuf._uint64();
                            };
                            if (_needHeaderOffset) {
                                _needHeaderOffset = false;
                                if (((_fieldBuf.length) < (8 : stdgo.GoInt) : Bool)) {
                                    return stdgo._internal.archive.zip.Zip_errFormat.errFormat;
                                };
                                _f._headerOffset = (_fieldBuf._uint64() : stdgo.GoInt64);
                            };
                        } else if (__value__ == ((10 : stdgo.GoUInt16))) {
                            if (((_fieldBuf.length) < (4 : stdgo.GoInt) : Bool)) {
                                @:jump("parseExtras") continue;
                            };
                            _fieldBuf._uint32();
                            while (((_fieldBuf.length) >= (4 : stdgo.GoInt) : Bool)) {
                                var _attrTag = (_fieldBuf._uint16() : stdgo.GoUInt16);
                                var _attrSize = (_fieldBuf._uint16() : stdgo.GoInt);
                                if (((_fieldBuf.length) < _attrSize : Bool)) {
                                    @:jump("parseExtras") continue;
                                };
                                var _attrBuf = (_fieldBuf._sub(_attrSize) : stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf);
                                if (((_attrTag != (1 : stdgo.GoUInt16)) || (_attrSize != (24 : stdgo.GoInt)) : Bool)) {
                                    continue;
                                };
                                {};
                                var _ts = (_attrBuf._uint64() : stdgo.GoInt64);
                                var _secs = ((_ts / (10000000i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
                                var _nsecs = ((100i64 : stdgo.GoInt64) * (_ts % (10000000i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
                                var _epoch = (stdgo._internal.time.Time_date.date((1601 : stdgo.GoInt), (1 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__() : stdgo._internal.time.Time_Time.Time);
                                _modified = stdgo._internal.time.Time_unix.unix((_epoch.unix() + _secs : stdgo.GoInt64), _nsecs)?.__copy__();
                            };
                        } else if (__value__ == ((13 : stdgo.GoUInt16)) || __value__ == ((22613 : stdgo.GoUInt16))) {
                            if (((_fieldBuf.length) < (8 : stdgo.GoInt) : Bool)) {
                                @:jump("parseExtras") continue;
                            };
                            _fieldBuf._uint32();
                            var _ts = (_fieldBuf._uint32() : stdgo.GoInt64);
                            _modified = stdgo._internal.time.Time_unix.unix(_ts, (0i64 : stdgo.GoInt64))?.__copy__();
                        } else if (__value__ == ((21589 : stdgo.GoUInt16))) {
                            if ((((_fieldBuf.length) < (5 : stdgo.GoInt) : Bool) || ((_fieldBuf._uint8() & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) == (0 : stdgo.GoUInt8)) : Bool)) {
                                @:jump("parseExtras") continue;
                            };
                            var _ts = (_fieldBuf._uint32() : stdgo.GoInt64);
                            _modified = stdgo._internal.time.Time_unix.unix(_ts, (0i64 : stdgo.GoInt64))?.__copy__();
                        };
                    };
                };
            };
            var _msdosModified = (stdgo._internal.archive.zip.Zip__msDosTimeToTime._msDosTimeToTime(_f.fileHeader.modifiedDate, _f.fileHeader.modifiedTime)?.__copy__() : stdgo._internal.time.Time_Time.Time);
            _f.fileHeader.modified = _msdosModified?.__copy__();
            if (!_modified.isZero()) {
                _f.fileHeader.modified = _modified.utc()?.__copy__();
                if (((_f.fileHeader.modifiedTime != (0 : stdgo.GoUInt16)) || (_f.fileHeader.modifiedDate != (0 : stdgo.GoUInt16)) : Bool)) {
                    _f.fileHeader.modified = _modified.in_(stdgo._internal.archive.zip.Zip__timeZone._timeZone(_msdosModified.sub(_modified?.__copy__())))?.__copy__();
                };
            };
            var __blank__ = _needUSize;
            if ((_needCSize || _needHeaderOffset : Bool)) {
                return stdgo._internal.archive.zip.Zip_errFormat.errFormat;
            };
            return (null : stdgo.Error);
        });
    }
