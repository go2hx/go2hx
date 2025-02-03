package stdgo.log.slog;
class Level_static_extension {
    static public function level(_l:Level):Level {
        return stdgo._internal.log.slog.Slog_Level_static_extension.Level_static_extension.level(_l);
    }
    static public function _parse(_l:stdgo.Pointer<Level>, _s:String):stdgo.Error {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.log.slog.Slog_Level_static_extension.Level_static_extension._parse(_l, _s);
    }
    static public function unmarshalText(_l:stdgo.Pointer<Level>, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.log.slog.Slog_Level_static_extension.Level_static_extension.unmarshalText(_l, _data);
    }
    static public function marshalText(_l:Level):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.log.slog.Slog_Level_static_extension.Level_static_extension.marshalText(_l);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function unmarshalJSON(_l:stdgo.Pointer<Level>, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.log.slog.Slog_Level_static_extension.Level_static_extension.unmarshalJSON(_l, _data);
    }
    static public function marshalJSON(_l:Level):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.log.slog.Slog_Level_static_extension.Level_static_extension.marshalJSON(_l);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function string(_l:Level):String {
        return stdgo._internal.log.slog.Slog_Level_static_extension.Level_static_extension.string(_l);
    }
}
