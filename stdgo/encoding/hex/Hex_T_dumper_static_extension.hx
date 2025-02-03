package stdgo.encoding.hex;
class T_dumper_static_extension {
    static public function close(_h:T_dumper):stdgo.Error {
        final _h = (_h : stdgo.Ref<stdgo._internal.encoding.hex.Hex_T_dumper.T_dumper>);
        return stdgo._internal.encoding.hex.Hex_T_dumper_static_extension.T_dumper_static_extension.close(_h);
    }
    static public function write(_h:T_dumper, _data:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _h = (_h : stdgo.Ref<stdgo._internal.encoding.hex.Hex_T_dumper.T_dumper>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.hex.Hex_T_dumper_static_extension.T_dumper_static_extension.write(_h, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
