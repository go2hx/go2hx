package stdgo.net.textproto;
class T_dotWriter_static_extension {
    static public function close(_d:T_dotWriter):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.net.textproto.Textproto_T_dotWriter.T_dotWriter>);
        return stdgo._internal.net.textproto.Textproto_T_dotWriter_static_extension.T_dotWriter_static_extension.close(_d);
    }
    static public function write(_d:T_dotWriter, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.net.textproto.Textproto_T_dotWriter.T_dotWriter>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.textproto.Textproto_T_dotWriter_static_extension.T_dotWriter_static_extension.write(_d, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
