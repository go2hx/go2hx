package stdgo._internal.database.sql;
@:structInit @:using(stdgo._internal.database.sql.Sql_nullint64_static_extension.NullInt64_static_extension) class NullInt64 {
    public var int64 : stdgo.GoInt64 = 0;
    public var valid : Bool = false;
    public function new(?int64:stdgo.GoInt64, ?valid:Bool) {
        if (int64 != null) this.int64 = int64;
        if (valid != null) this.valid = valid;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new NullInt64(int64, valid);
    }
}
