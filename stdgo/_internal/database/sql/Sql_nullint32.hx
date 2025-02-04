package stdgo._internal.database.sql;
@:structInit @:using(stdgo._internal.database.sql.Sql_nullint32_static_extension.NullInt32_static_extension) class NullInt32 {
    public var int32 : stdgo.GoInt32 = 0;
    public var valid : Bool = false;
    public function new(?int32:stdgo.GoInt32, ?valid:Bool) {
        if (int32 != null) this.int32 = int32;
        if (valid != null) this.valid = valid;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new NullInt32(int32, valid);
    }
}
