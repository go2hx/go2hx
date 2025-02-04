package stdgo._internal.database.sql;
@:structInit @:using(stdgo._internal.database.sql.Sql_txoptions_static_extension.TxOptions_static_extension) class TxOptions {
    public var isolation : stdgo._internal.database.sql.Sql_isolationlevel.IsolationLevel = ((0 : stdgo.GoInt) : stdgo._internal.database.sql.Sql_isolationlevel.IsolationLevel);
    public var readOnly : Bool = false;
    public function new(?isolation:stdgo._internal.database.sql.Sql_isolationlevel.IsolationLevel, ?readOnly:Bool) {
        if (isolation != null) this.isolation = isolation;
        if (readOnly != null) this.readOnly = readOnly;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new TxOptions(isolation, readOnly);
    }
}
