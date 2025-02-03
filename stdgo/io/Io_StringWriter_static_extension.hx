package stdgo.io;
class StringWriter_static_extension {
    static public function writeString(t:stdgo._internal.io.Io_StringWriter.StringWriter, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.Io_StringWriter_static_extension.StringWriter_static_extension.writeString(t, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
