package stdgo.time;
class Duration_static_extension {
    static public function abs(_d:Duration):Duration {
        return stdgo._internal.time.Time_Duration_static_extension.Duration_static_extension.abs(_d);
    }
    static public function round(_d:Duration, _m:Duration):Duration {
        return stdgo._internal.time.Time_Duration_static_extension.Duration_static_extension.round(_d, _m);
    }
    static public function truncate(_d:Duration, _m:Duration):Duration {
        return stdgo._internal.time.Time_Duration_static_extension.Duration_static_extension.truncate(_d, _m);
    }
    static public function hours(_d:Duration):StdTypes.Float {
        return stdgo._internal.time.Time_Duration_static_extension.Duration_static_extension.hours(_d);
    }
    static public function minutes(_d:Duration):StdTypes.Float {
        return stdgo._internal.time.Time_Duration_static_extension.Duration_static_extension.minutes(_d);
    }
    static public function seconds(_d:Duration):StdTypes.Float {
        return stdgo._internal.time.Time_Duration_static_extension.Duration_static_extension.seconds(_d);
    }
    static public function milliseconds(_d:Duration):haxe.Int64 {
        return stdgo._internal.time.Time_Duration_static_extension.Duration_static_extension.milliseconds(_d);
    }
    static public function microseconds(_d:Duration):haxe.Int64 {
        return stdgo._internal.time.Time_Duration_static_extension.Duration_static_extension.microseconds(_d);
    }
    static public function nanoseconds(_d:Duration):haxe.Int64 {
        return stdgo._internal.time.Time_Duration_static_extension.Duration_static_extension.nanoseconds(_d);
    }
    static public function string(_d:Duration):String {
        return stdgo._internal.time.Time_Duration_static_extension.Duration_static_extension.string(_d);
    }
}
