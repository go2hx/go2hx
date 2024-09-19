package stdgo._internal.archive.zip;
function _readDataDescriptor(_r:stdgo._internal.io.Io_Reader.Reader, _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>):stdgo.Error {
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[for (i in 0 ... 16) (0 : stdgo.GoUInt8)]);
        {
            var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_r, (_buf.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var _off = (0 : stdgo.GoInt);
        var _maybeSig = ((_buf.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf);
        if (_maybeSig._uint32() != ((134695760u32 : stdgo.GoUInt32))) {
            _off = (_off + ((4 : stdgo.GoInt)) : stdgo.GoInt);
        };
        {
            var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_r, (_buf.__slice__(_off, (12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var _b = ((_buf.__slice__(0, (12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf);
        if (_b._uint32() != (_f.fileHeader.crc32)) {
            return stdgo._internal.archive.zip.Zip_errChecksum.errChecksum;
        };
        return (null : stdgo.Error);
    }