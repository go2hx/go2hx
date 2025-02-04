package stdgo._internal.time;
@:structInit @:using(stdgo._internal.time.Time_time_static_extension.Time_static_extension) class Time {
    public var _wall : stdgo.GoUInt64 = 0;
    public var _ext : stdgo.GoInt64 = 0;
    public var _loc : stdgo.Ref<stdgo._internal.time.Time_location.Location> = (null : stdgo.Ref<stdgo._internal.time.Time_location.Location>);
    public function new(?_wall:stdgo.GoUInt64, ?_ext:stdgo.GoInt64, ?_loc:stdgo.Ref<stdgo._internal.time.Time_location.Location>) {
        if (_wall != null) this._wall = _wall;
        if (_ext != null) this._ext = _ext;
        if (_loc != null) this._loc = _loc;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Time(_wall, _ext, _loc);
    }
}
