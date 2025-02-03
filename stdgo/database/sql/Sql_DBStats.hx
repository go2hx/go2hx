package stdgo.database.sql;
@:structInit @:using(stdgo.database.sql.Sql.DBStats_static_extension) abstract DBStats(stdgo._internal.database.sql.Sql_DBStats.DBStats) from stdgo._internal.database.sql.Sql_DBStats.DBStats to stdgo._internal.database.sql.Sql_DBStats.DBStats {
    public var maxOpenConnections(get, set) : StdTypes.Int;
    function get_maxOpenConnections():StdTypes.Int return this.maxOpenConnections;
    function set_maxOpenConnections(v:StdTypes.Int):StdTypes.Int {
        this.maxOpenConnections = (v : stdgo.GoInt);
        return v;
    }
    public var openConnections(get, set) : StdTypes.Int;
    function get_openConnections():StdTypes.Int return this.openConnections;
    function set_openConnections(v:StdTypes.Int):StdTypes.Int {
        this.openConnections = (v : stdgo.GoInt);
        return v;
    }
    public var inUse(get, set) : StdTypes.Int;
    function get_inUse():StdTypes.Int return this.inUse;
    function set_inUse(v:StdTypes.Int):StdTypes.Int {
        this.inUse = (v : stdgo.GoInt);
        return v;
    }
    public var idle(get, set) : StdTypes.Int;
    function get_idle():StdTypes.Int return this.idle;
    function set_idle(v:StdTypes.Int):StdTypes.Int {
        this.idle = (v : stdgo.GoInt);
        return v;
    }
    public var waitCount(get, set) : haxe.Int64;
    function get_waitCount():haxe.Int64 return this.waitCount;
    function set_waitCount(v:haxe.Int64):haxe.Int64 {
        this.waitCount = (v : stdgo.GoInt64);
        return v;
    }
    public var waitDuration(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_waitDuration():stdgo._internal.time.Time_Duration.Duration return this.waitDuration;
    function set_waitDuration(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.waitDuration = v;
        return v;
    }
    public var maxIdleClosed(get, set) : haxe.Int64;
    function get_maxIdleClosed():haxe.Int64 return this.maxIdleClosed;
    function set_maxIdleClosed(v:haxe.Int64):haxe.Int64 {
        this.maxIdleClosed = (v : stdgo.GoInt64);
        return v;
    }
    public var maxIdleTimeClosed(get, set) : haxe.Int64;
    function get_maxIdleTimeClosed():haxe.Int64 return this.maxIdleTimeClosed;
    function set_maxIdleTimeClosed(v:haxe.Int64):haxe.Int64 {
        this.maxIdleTimeClosed = (v : stdgo.GoInt64);
        return v;
    }
    public var maxLifetimeClosed(get, set) : haxe.Int64;
    function get_maxLifetimeClosed():haxe.Int64 return this.maxLifetimeClosed;
    function set_maxLifetimeClosed(v:haxe.Int64):haxe.Int64 {
        this.maxLifetimeClosed = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?maxOpenConnections:StdTypes.Int, ?openConnections:StdTypes.Int, ?inUse:StdTypes.Int, ?idle:StdTypes.Int, ?waitCount:haxe.Int64, ?waitDuration:stdgo._internal.time.Time_Duration.Duration, ?maxIdleClosed:haxe.Int64, ?maxIdleTimeClosed:haxe.Int64, ?maxLifetimeClosed:haxe.Int64) this = new stdgo._internal.database.sql.Sql_DBStats.DBStats((maxOpenConnections : stdgo.GoInt), (openConnections : stdgo.GoInt), (inUse : stdgo.GoInt), (idle : stdgo.GoInt), (waitCount : stdgo.GoInt64), waitDuration, (maxIdleClosed : stdgo.GoInt64), (maxIdleTimeClosed : stdgo.GoInt64), (maxLifetimeClosed : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
