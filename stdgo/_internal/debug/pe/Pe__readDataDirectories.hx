package stdgo._internal.debug.pe;
import stdgo._internal.os.Os;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.compress.zlib.Zlib;
import stdgo._internal.debug.dwarf.Dwarf;
import stdgo._internal.strconv.Strconv;
function _readDataDirectories(_r:stdgo._internal.io.Io_ReadSeeker.ReadSeeker, _sz:stdgo.GoUInt16, _n:stdgo.GoUInt32):{ var _0 : stdgo.Slice<stdgo._internal.debug.pe.Pe_DataDirectory.DataDirectory>; var _1 : stdgo.Error; } {
        var _ddSz = (stdgo._internal.encoding.binary.Binary_size.size(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.debug.pe.Pe_DataDirectory.DataDirectory() : stdgo._internal.debug.pe.Pe_DataDirectory.DataDirectory)))) : stdgo.GoUInt64);
        if ((_sz : stdgo.GoUInt64) != (((_n : stdgo.GoUInt64) * _ddSz : stdgo.GoUInt64))) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.debug.pe.Pe_DataDirectory.DataDirectory>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("size of data directories(%d) is inconsistent with number of data directories(%d)" : stdgo.GoString), stdgo.Go.toInterface(_sz), stdgo.Go.toInterface(_n)) };
        };
        var _dd = (new stdgo.Slice<stdgo._internal.debug.pe.Pe_DataDirectory.DataDirectory>((_n : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_n : stdgo.GoInt).toBasic() > 0 ? (_n : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.pe.Pe_DataDirectory.DataDirectory)]) : stdgo.Slice<stdgo._internal.debug.pe.Pe_DataDirectory.DataDirectory>);
        {
            var _err = (stdgo._internal.encoding.binary.Binary_read.read(_r, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian), stdgo.Go.toInterface(_dd)) : stdgo.Error);
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo._internal.debug.pe.Pe_DataDirectory.DataDirectory>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("failure to read data directories: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
            };
        };
        return { _0 : _dd, _1 : (null : stdgo.Error) };
    }
