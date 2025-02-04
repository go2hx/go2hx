package stdgo._internal.archive.tar;
function _mustReadFull(_r:stdgo._internal.io.Io_reader.Reader, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.archive.tar.Tar__tryreadfull._tryReadFull(_r, _b), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
            _err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
        };
        return { _0 : _n, _1 : _err };
    }
