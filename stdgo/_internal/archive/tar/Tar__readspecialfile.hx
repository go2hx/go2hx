package stdgo._internal.archive.tar;
function _readSpecialFile(_r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.io.Io_readall.readAll(stdgo._internal.io.Io_limitreader.limitReader(_r, (1048577i64 : stdgo.GoInt64))), _buf:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_buf.length) > (1048576 : stdgo.GoInt) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.archive.tar.Tar_errfieldtoolong.errFieldTooLong };
        };
        return { _0 : _buf, _1 : _err };
    }
