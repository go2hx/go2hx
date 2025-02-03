package stdgo.database.sql;
@:structInit @:using(stdgo.database.sql.Sql.NullTime_static_extension) abstract NullTime(stdgo._internal.database.sql.Sql_NullTime.NullTime) from stdgo._internal.database.sql.Sql_NullTime.NullTime to stdgo._internal.database.sql.Sql_NullTime.NullTime {
    public var time(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_time():stdgo._internal.time.Time_Time.Time return this.time;
    function set_time(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.time = v;
        return v;
    }
    public var valid(get, set) : Bool;
    function get_valid():Bool return this.valid;
    function set_valid(v:Bool):Bool {
        this.valid = v;
        return v;
    }
    public function new(?time:stdgo._internal.time.Time_Time.Time, ?valid:Bool) this = new stdgo._internal.database.sql.Sql_NullTime.NullTime(time, valid);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
