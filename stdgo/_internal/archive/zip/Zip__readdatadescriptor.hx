package stdgo._internal.archive.zip;
function _readDataDescriptor(_r:stdgo._internal.io.Io_reader.Reader, _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File>):stdgo.Error {
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L540"
        {
            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_r, (_buf.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L541"
                return _err;
            };
        };
        var _off = (0 : stdgo.GoInt);
        var _maybeSig = ((_buf.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L545"
        if (_maybeSig._uint32() != ((134695760u32 : stdgo.GoUInt32))) {
            _off = (_off + ((4 : stdgo.GoInt)) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L550"
        {
            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_r, (_buf.__slice__(_off, (12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L551"
                return _err;
            };
        };
        var _b = ((_buf.__slice__(0, (12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L554"
        if (_b._uint32() != ((@:checkr _f ?? throw "null pointer dereference").fileHeader.cRC32)) {
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L555"
            return stdgo._internal.archive.zip.Zip_errchecksum.errChecksum;
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L564"
        return (null : stdgo.Error);
    }
