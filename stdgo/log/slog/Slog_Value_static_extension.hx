package stdgo.log.slog;
class Value_static_extension {
    static public function resolve(_v:Value):Value {
        return stdgo._internal.log.slog.Slog_Value_static_extension.Value_static_extension.resolve(_v);
    }
    static public function _append(_v:Value, _dst:Array<std.UInt>):Array<std.UInt> {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.log.slog.Slog_Value_static_extension.Value_static_extension._append(_v, _dst)) i];
    }
    static public function _isEmptyGroup(_v:Value):Bool {
        return stdgo._internal.log.slog.Slog_Value_static_extension.Value_static_extension._isEmptyGroup(_v);
    }
    static public function equal(_v:Value, _w:Value):Bool {
        return stdgo._internal.log.slog.Slog_Value_static_extension.Value_static_extension.equal(_v, _w);
    }
    static public function _group(_v:Value):Array<Attr> {
        return [for (i in stdgo._internal.log.slog.Slog_Value_static_extension.Value_static_extension._group(_v)) i];
    }
    static public function group(_v:Value):Array<Attr> {
        return [for (i in stdgo._internal.log.slog.Slog_Value_static_extension.Value_static_extension.group(_v)) i];
    }
    static public function logValuer(_v:Value):LogValuer {
        return stdgo._internal.log.slog.Slog_Value_static_extension.Value_static_extension.logValuer(_v);
    }
    static public function _time(_v:Value):stdgo._internal.time.Time_Time.Time {
        return stdgo._internal.log.slog.Slog_Value_static_extension.Value_static_extension._time(_v);
    }
    static public function time(_v:Value):stdgo._internal.time.Time_Time.Time {
        return stdgo._internal.log.slog.Slog_Value_static_extension.Value_static_extension.time(_v);
    }
    static public function _float(_a:Value):StdTypes.Float {
        return stdgo._internal.log.slog.Slog_Value_static_extension.Value_static_extension._float(_a);
    }
    static public function float64(_v:Value):StdTypes.Float {
        return stdgo._internal.log.slog.Slog_Value_static_extension.Value_static_extension.float64(_v);
    }
    static public function _duration(_a:Value):stdgo._internal.time.Time_Duration.Duration {
        return stdgo._internal.log.slog.Slog_Value_static_extension.Value_static_extension._duration(_a);
    }
    static public function duration(_a:Value):stdgo._internal.time.Time_Duration.Duration {
        return stdgo._internal.log.slog.Slog_Value_static_extension.Value_static_extension.duration(_a);
    }
    static public function _bool(_a:Value):Bool {
        return stdgo._internal.log.slog.Slog_Value_static_extension.Value_static_extension._bool(_a);
    }
    static public function bool_(_v:Value):Bool {
        return stdgo._internal.log.slog.Slog_Value_static_extension.Value_static_extension.bool_(_v);
    }
    static public function uint64(_v:Value):haxe.UInt64 {
        return stdgo._internal.log.slog.Slog_Value_static_extension.Value_static_extension.uint64(_v);
    }
    static public function int64(_v:Value):haxe.Int64 {
        return stdgo._internal.log.slog.Slog_Value_static_extension.Value_static_extension.int64(_v);
    }
    static public function _str(_v:Value):String {
        return stdgo._internal.log.slog.Slog_Value_static_extension.Value_static_extension._str(_v);
    }
    static public function string(_v:Value):String {
        return stdgo._internal.log.slog.Slog_Value_static_extension.Value_static_extension.string(_v);
    }
    static public function any(_v:Value):stdgo.AnyInterface {
        return stdgo._internal.log.slog.Slog_Value_static_extension.Value_static_extension.any(_v);
    }
    static public function kind(_v:Value):Kind {
        return stdgo._internal.log.slog.Slog_Value_static_extension.Value_static_extension.kind(_v);
    }
}
