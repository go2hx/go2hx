package stdgo._internal.database.sql;
@:structInit @:using(stdgo._internal.database.sql.Sql_dbstats_static_extension.DBStats_static_extension) class DBStats {
    public var maxOpenConnections : stdgo.GoInt = 0;
    public var openConnections : stdgo.GoInt = 0;
    public var inUse : stdgo.GoInt = 0;
    public var idle : stdgo.GoInt = 0;
    public var waitCount : stdgo.GoInt64 = 0;
    public var waitDuration : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var maxIdleClosed : stdgo.GoInt64 = 0;
    public var maxIdleTimeClosed : stdgo.GoInt64 = 0;
    public var maxLifetimeClosed : stdgo.GoInt64 = 0;
    public function new(?maxOpenConnections:stdgo.GoInt, ?openConnections:stdgo.GoInt, ?inUse:stdgo.GoInt, ?idle:stdgo.GoInt, ?waitCount:stdgo.GoInt64, ?waitDuration:stdgo._internal.time.Time_duration.Duration, ?maxIdleClosed:stdgo.GoInt64, ?maxIdleTimeClosed:stdgo.GoInt64, ?maxLifetimeClosed:stdgo.GoInt64) {
        if (maxOpenConnections != null) this.maxOpenConnections = maxOpenConnections;
        if (openConnections != null) this.openConnections = openConnections;
        if (inUse != null) this.inUse = inUse;
        if (idle != null) this.idle = idle;
        if (waitCount != null) this.waitCount = waitCount;
        if (waitDuration != null) this.waitDuration = waitDuration;
        if (maxIdleClosed != null) this.maxIdleClosed = maxIdleClosed;
        if (maxIdleTimeClosed != null) this.maxIdleTimeClosed = maxIdleTimeClosed;
        if (maxLifetimeClosed != null) this.maxLifetimeClosed = maxLifetimeClosed;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new DBStats(maxOpenConnections, openConnections, inUse, idle, waitCount, waitDuration, maxIdleClosed, maxIdleTimeClosed, maxLifetimeClosed);
    }
}
