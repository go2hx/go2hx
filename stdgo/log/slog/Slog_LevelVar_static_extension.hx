package stdgo.log.slog;
class LevelVar_static_extension {
    static public function unmarshalText(_v:LevelVar, _data:Array<std.UInt>):stdgo.Error {
        final _v = (_v : stdgo.Ref<stdgo._internal.log.slog.Slog_LevelVar.LevelVar>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.log.slog.Slog_LevelVar_static_extension.LevelVar_static_extension.unmarshalText(_v, _data);
    }
    static public function marshalText(_v:LevelVar):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _v = (_v : stdgo.Ref<stdgo._internal.log.slog.Slog_LevelVar.LevelVar>);
        return {
            final obj = stdgo._internal.log.slog.Slog_LevelVar_static_extension.LevelVar_static_extension.marshalText(_v);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function string(_v:LevelVar):String {
        final _v = (_v : stdgo.Ref<stdgo._internal.log.slog.Slog_LevelVar.LevelVar>);
        return stdgo._internal.log.slog.Slog_LevelVar_static_extension.LevelVar_static_extension.string(_v);
    }
    static public function set(_v:LevelVar, _l:Level):Void {
        final _v = (_v : stdgo.Ref<stdgo._internal.log.slog.Slog_LevelVar.LevelVar>);
        stdgo._internal.log.slog.Slog_LevelVar_static_extension.LevelVar_static_extension.set(_v, _l);
    }
    static public function level(_v:LevelVar):Level {
        final _v = (_v : stdgo.Ref<stdgo._internal.log.slog.Slog_LevelVar.LevelVar>);
        return stdgo._internal.log.slog.Slog_LevelVar_static_extension.LevelVar_static_extension.level(_v);
    }
}
