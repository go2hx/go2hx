package stdgo.database.sql;
@:structInit @:using(stdgo.database.sql.Sql.TxOptions_static_extension) abstract TxOptions(stdgo._internal.database.sql.Sql_TxOptions.TxOptions) from stdgo._internal.database.sql.Sql_TxOptions.TxOptions to stdgo._internal.database.sql.Sql_TxOptions.TxOptions {
    public var isolation(get, set) : IsolationLevel;
    function get_isolation():IsolationLevel return this.isolation;
    function set_isolation(v:IsolationLevel):IsolationLevel {
        this.isolation = v;
        return v;
    }
    public var readOnly(get, set) : Bool;
    function get_readOnly():Bool return this.readOnly;
    function set_readOnly(v:Bool):Bool {
        this.readOnly = v;
        return v;
    }
    public function new(?isolation:IsolationLevel, ?readOnly:Bool) this = new stdgo._internal.database.sql.Sql_TxOptions.TxOptions(isolation, readOnly);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
