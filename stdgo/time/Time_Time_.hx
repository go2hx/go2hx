package stdgo.time;
@:structInit @:using(stdgo.time.Time.Time_static_extension) abstract Time_(stdgo._internal.time.Time_Time.Time) from stdgo._internal.time.Time_Time.Time to stdgo._internal.time.Time_Time.Time {
    public var _wall(get, set) : haxe.UInt64;
    function get__wall():haxe.UInt64 return this._wall;
    function set__wall(v:haxe.UInt64):haxe.UInt64 {
        this._wall = (v : stdgo.GoUInt64);
        return v;
    }
    public var _ext(get, set) : haxe.Int64;
    function get__ext():haxe.Int64 return this._ext;
    function set__ext(v:haxe.Int64):haxe.Int64 {
        this._ext = (v : stdgo.GoInt64);
        return v;
    }
    public var _loc(get, set) : Location;
    function get__loc():Location return this._loc;
    function set__loc(v:Location):Location {
        this._loc = (v : stdgo.Ref<stdgo._internal.time.Time_Location.Location>);
        return v;
    }
    public function new(?_wall:haxe.UInt64, ?_ext:haxe.Int64, ?_loc:Location) this = new stdgo._internal.time.Time_Time.Time((_wall : stdgo.GoUInt64), (_ext : stdgo.GoInt64), (_loc : stdgo.Ref<stdgo._internal.time.Time_Location.Location>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
