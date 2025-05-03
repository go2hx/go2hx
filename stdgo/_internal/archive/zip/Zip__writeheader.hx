package stdgo._internal.archive.zip;
function _writeHeader(_w:stdgo._internal.io.Io_writer.Writer, _h:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_header.T_header>):stdgo.Error {
        {};
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L388"
        if ((((@:checkr _h ?? throw "null pointer dereference").fileHeader.name.length) > (65535 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L389"
            return stdgo._internal.archive.zip.Zip__errlongname._errLongName;
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L391"
        if ((((@:checkr _h ?? throw "null pointer dereference").fileHeader.extra.length) > (65535 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L392"
            return stdgo._internal.archive.zip.Zip__errlongextra._errLongExtra;
        };
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(30, 30).__setNumber32__();
        var _b = ((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf);
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L397"
        _b._uint32((67324752u32 : stdgo.GoUInt32));
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L398"
        _b._uint16((@:checkr _h ?? throw "null pointer dereference").fileHeader.readerVersion);
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L399"
        _b._uint16((@:checkr _h ?? throw "null pointer dereference").fileHeader.flags);
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L400"
        _b._uint16((@:checkr _h ?? throw "null pointer dereference").fileHeader.method);
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L401"
        _b._uint16((@:checkr _h ?? throw "null pointer dereference").fileHeader.modifiedTime);
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L402"
        _b._uint16((@:checkr _h ?? throw "null pointer dereference").fileHeader.modifiedDate);
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L406"
        if (((@:checkr _h ?? throw "null pointer dereference")._raw && !_h._hasDataDescriptor() : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L407"
            _b._uint32((@:checkr _h ?? throw "null pointer dereference").fileHeader.cRC32);
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L408"
            _b._uint32((stdgo._internal.archive.zip.Zip__min64._min64((@:checkr _h ?? throw "null pointer dereference").fileHeader.compressedSize64, (4294967295i64 : stdgo.GoUInt64)) : stdgo.GoUInt32));
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L409"
            _b._uint32((stdgo._internal.archive.zip.Zip__min64._min64((@:checkr _h ?? throw "null pointer dereference").fileHeader.uncompressedSize64, (4294967295i64 : stdgo.GoUInt64)) : stdgo.GoUInt32));
        } else {
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L413"
            _b._uint32((0u32 : stdgo.GoUInt32));
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L414"
            _b._uint32((0u32 : stdgo.GoUInt32));
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L415"
            _b._uint32((0u32 : stdgo.GoUInt32));
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L417"
        _b._uint16(((@:checkr _h ?? throw "null pointer dereference").fileHeader.name.length : stdgo.GoUInt16));
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L418"
        _b._uint16(((@:checkr _h ?? throw "null pointer dereference").fileHeader.extra.length : stdgo.GoUInt16));
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L419"
        {
            var __tmp__ = _w.write((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L420"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L422"
        {
            var __tmp__ = stdgo._internal.io.Io_writestring.writeString(_w, (@:checkr _h ?? throw "null pointer dereference").fileHeader.name?.__copy__()), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L423"
                return _err;
            };
        };
        var __tmp__ = _w.write((@:checkr _h ?? throw "null pointer dereference").fileHeader.extra), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L426"
        return _err;
    }
