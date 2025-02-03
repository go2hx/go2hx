package stdgo.net.http;
class T_readWriteCloserBody_static_extension {
    static public function read(_b:T_readWriteCloserBody, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.net.http.Http_T_readWriteCloserBody.T_readWriteCloserBody>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_readWriteCloserBody_static_extension.T_readWriteCloserBody_static_extension.read(_b, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function write(__self__:stdgo._internal.net.http.Http_T_readWriteCloserBody.T_readWriteCloserBody, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_readWriteCloserBody_static_extension.T_readWriteCloserBody_static_extension.write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function close(__self__:stdgo._internal.net.http.Http_T_readWriteCloserBody.T_readWriteCloserBody):stdgo.Error {
        return stdgo._internal.net.http.Http_T_readWriteCloserBody_static_extension.T_readWriteCloserBody_static_extension.close(__self__);
    }
}
