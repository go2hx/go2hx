package stdgo.encoding.pem;
class T_lineBreaker_static_extension {
    static public function close(_l:T_lineBreaker):stdgo.Error {
        final _l = (_l : stdgo.Ref<stdgo._internal.encoding.pem.Pem_T_lineBreaker.T_lineBreaker>);
        return stdgo._internal.encoding.pem.Pem_T_lineBreaker_static_extension.T_lineBreaker_static_extension.close(_l);
    }
    static public function write(_l:T_lineBreaker, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _l = (_l : stdgo.Ref<stdgo._internal.encoding.pem.Pem_T_lineBreaker.T_lineBreaker>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.pem.Pem_T_lineBreaker_static_extension.T_lineBreaker_static_extension.write(_l, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
