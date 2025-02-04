package stdgo._internal.archive.zip;
function _writeHeader(_w:stdgo._internal.io.Io_writer.Writer, _h:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_header.T_header>):stdgo.Error {
        {};
        if ((((@:checkr _h ?? throw "null pointer dereference").fileHeader.name.length) > (65535 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.archive.zip.Zip__errlongname._errLongName;
        };
        if ((((@:checkr _h ?? throw "null pointer dereference").fileHeader.extra.length) > (65535 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.archive.zip.Zip__errlongextra._errLongExtra;
        };
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(30, 30).__setNumber32__();
        var _b = ((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf);
        @:check2 _b._uint32((67324752u32 : stdgo.GoUInt32));
        @:check2 _b._uint16((@:checkr _h ?? throw "null pointer dereference").fileHeader.readerVersion);
        @:check2 _b._uint16((@:checkr _h ?? throw "null pointer dereference").fileHeader.flags);
        @:check2 _b._uint16((@:checkr _h ?? throw "null pointer dereference").fileHeader.method);
        @:check2 _b._uint16((@:checkr _h ?? throw "null pointer dereference").fileHeader.modifiedTime);
        @:check2 _b._uint16((@:checkr _h ?? throw "null pointer dereference").fileHeader.modifiedDate);
        if (((@:checkr _h ?? throw "null pointer dereference")._raw && !@:check2r _h._hasDataDescriptor() : Bool)) {
            @:check2 _b._uint32((@:checkr _h ?? throw "null pointer dereference").fileHeader.cRC32);
            @:check2 _b._uint32((stdgo._internal.archive.zip.Zip__min64._min64((@:checkr _h ?? throw "null pointer dereference").fileHeader.compressedSize64, (4294967295i64 : stdgo.GoUInt64)) : stdgo.GoUInt32));
            @:check2 _b._uint32((stdgo._internal.archive.zip.Zip__min64._min64((@:checkr _h ?? throw "null pointer dereference").fileHeader.uncompressedSize64, (4294967295i64 : stdgo.GoUInt64)) : stdgo.GoUInt32));
        } else {
            @:check2 _b._uint32((0u32 : stdgo.GoUInt32));
            @:check2 _b._uint32((0u32 : stdgo.GoUInt32));
            @:check2 _b._uint32((0u32 : stdgo.GoUInt32));
        };
        @:check2 _b._uint16(((@:checkr _h ?? throw "null pointer dereference").fileHeader.name.length : stdgo.GoUInt16));
        @:check2 _b._uint16(((@:checkr _h ?? throw "null pointer dereference").fileHeader.extra.length : stdgo.GoUInt16));
        {
            var __tmp__ = _w.write((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        {
            var __tmp__ = stdgo._internal.io.Io_writestring.writeString(_w, (@:checkr _h ?? throw "null pointer dereference").fileHeader.name?.__copy__()), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = _w.write((@:checkr _h ?? throw "null pointer dereference").fileHeader.extra), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
