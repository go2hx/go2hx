package stdgo.net.textproto;
class T_dotReader_static_extension {
    static public function read(_d:T_dotReader, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.net.textproto.Textproto_T_dotReader.T_dotReader>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.textproto.Textproto_T_dotReader_static_extension.T_dotReader_static_extension.read(_d, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
