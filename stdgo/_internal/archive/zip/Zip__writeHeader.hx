package stdgo._internal.archive.zip;
function _writeHeader(_w:stdgo._internal.io.Io_Writer.Writer, _h:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_header.T_header>):stdgo.Error {
        {};
        if (((_h.fileHeader.name.length) > (65535 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.archive.zip.Zip__errLongName._errLongName;
        };
        if (((_h.fileHeader.extra.length) > (65535 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.archive.zip.Zip__errLongExtra._errLongExtra;
        };
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(30, 30, ...[for (i in 0 ... 30) (0 : stdgo.GoUInt8)]);
        var _b = ((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.zip.Zip_T_writeBuf.T_writeBuf);
        _b._uint32((67324752u32 : stdgo.GoUInt32));
        _b._uint16(_h.fileHeader.readerVersion);
        _b._uint16(_h.fileHeader.flags);
        _b._uint16(_h.fileHeader.method);
        _b._uint16(_h.fileHeader.modifiedTime);
        _b._uint16(_h.fileHeader.modifiedDate);
        if ((_h._raw && !_h._hasDataDescriptor() : Bool)) {
            _b._uint32(_h.fileHeader.crc32);
            _b._uint32((stdgo._internal.archive.zip.Zip__min64._min64(_h.fileHeader.compressedSize64, (4294967295i64 : stdgo.GoUInt64)) : stdgo.GoUInt32));
            _b._uint32((stdgo._internal.archive.zip.Zip__min64._min64(_h.fileHeader.uncompressedSize64, (4294967295i64 : stdgo.GoUInt64)) : stdgo.GoUInt32));
        } else {
            _b._uint32((0u32 : stdgo.GoUInt32));
            _b._uint32((0u32 : stdgo.GoUInt32));
            _b._uint32((0u32 : stdgo.GoUInt32));
        };
        _b._uint16((_h.fileHeader.name.length : stdgo.GoUInt16));
        _b._uint16((_h.fileHeader.extra.length : stdgo.GoUInt16));
        {
            var __tmp__ = _w.write((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        {
            var __tmp__ = stdgo._internal.io.Io_writeString.writeString(_w, _h.fileHeader.name?.__copy__()), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = _w.write(_h.fileHeader.extra), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
