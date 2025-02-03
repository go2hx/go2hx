package stdgo.log.slog;
class T_handlerWriter_static_extension {
    static public function write(_w:T_handlerWriter, _buf:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.log.slog.Slog_T_handlerWriter.T_handlerWriter>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.log.slog.Slog_T_handlerWriter_static_extension.T_handlerWriter_static_extension.write(_w, _buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
