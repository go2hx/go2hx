package stdgo._internal.image.gif;
function _readByte(_r:stdgo._internal.io.Io_ByteReader.ByteReader):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } {
        var __tmp__ = _r.readByte(), _b:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF))) {
            _err = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
        };
        return { _0 : _b, _1 : _err };
    }
