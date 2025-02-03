package stdgo.net.http;
class T_writerOnly_static_extension {
    public static function write(__self__:stdgo._internal.net.http.Http_T_writerOnly.T_writerOnly, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_writerOnly_static_extension.T_writerOnly_static_extension.write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
