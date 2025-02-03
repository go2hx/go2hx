package stdgo.mime.multipart;
class T_part_static_extension {
    static public function write(_p:T_part, _d:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_T_part.T_part>);
        final _d = ([for (i in _d) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.mime.multipart.Multipart_T_part_static_extension.T_part_static_extension.write(_p, _d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _close(_p:T_part):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_T_part.T_part>);
        return stdgo._internal.mime.multipart.Multipart_T_part_static_extension.T_part_static_extension._close(_p);
    }
}
