package stdgo._internal.archive.tar;
function _ensureEOF(_r:stdgo._internal.io.Io_reader.Reader):stdgo.Error {
        var __tmp__ = stdgo._internal.archive.tar.Tar__tryreadfull._tryReadFull(_r, (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.archive.tar.Tar_errwritetoolong.errWriteTooLong;
        } else if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
            return (null : stdgo.Error);
        } else {
            return _err;
        };
    }
