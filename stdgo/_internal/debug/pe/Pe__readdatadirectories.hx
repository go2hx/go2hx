package stdgo._internal.debug.pe;
function _readDataDirectories(_r:stdgo._internal.io.Io_readseeker.ReadSeeker, _sz:stdgo.GoUInt16, _n:stdgo.GoUInt32):{ var _0 : stdgo.Slice<stdgo._internal.debug.pe.Pe_datadirectory.DataDirectory>; var _1 : stdgo.Error; } {
        var _ddSz = (stdgo._internal.encoding.binary.Binary_size.size(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.debug.pe.Pe_datadirectory.DataDirectory() : stdgo._internal.debug.pe.Pe_datadirectory.DataDirectory)))) : stdgo.GoUInt64);
        if ((_sz : stdgo.GoUInt64) != (((_n : stdgo.GoUInt64) * _ddSz : stdgo.GoUInt64))) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.pe.Pe_datadirectory.DataDirectory>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("size of data directories(%d) is inconsistent with number of data directories(%d)" : stdgo.GoString), stdgo.Go.toInterface(_sz), stdgo.Go.toInterface(_n)) };
        };
        var _dd = (new stdgo.Slice<stdgo._internal.debug.pe.Pe_datadirectory.DataDirectory>((_n : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_n : stdgo.GoInt).toBasic() > 0 ? (_n : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.pe.Pe_datadirectory.DataDirectory)]) : stdgo.Slice<stdgo._internal.debug.pe.Pe_datadirectory.DataDirectory>);
        {
            var _err = (stdgo._internal.encoding.binary.Binary_read.read(_r, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian), stdgo.Go.toInterface(_dd)) : stdgo.Error);
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo._internal.debug.pe.Pe_datadirectory.DataDirectory>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("failure to read data directories: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
            };
        };
        return { _0 : _dd, _1 : (null : stdgo.Error) };
    }
