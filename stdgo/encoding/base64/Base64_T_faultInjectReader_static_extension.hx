package stdgo.encoding.base64;
class T_faultInjectReader_static_extension {
    static public function read(_r:T_faultInjectReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.encoding.base64.Base64_T_faultInjectReader.T_faultInjectReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.base64.Base64_T_faultInjectReader_static_extension.T_faultInjectReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
