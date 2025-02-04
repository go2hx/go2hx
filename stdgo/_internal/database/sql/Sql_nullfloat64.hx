package stdgo._internal.database.sql;
@:structInit @:using(stdgo._internal.database.sql.Sql_nullfloat64_static_extension.NullFloat64_static_extension) class NullFloat64 {
    public var float64 : stdgo.GoFloat64 = 0;
    public var valid : Bool = false;
    public function new(?float64:stdgo.GoFloat64, ?valid:Bool) {
        if (float64 != null) this.float64 = float64;
        if (valid != null) this.valid = valid;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new NullFloat64(float64, valid);
    }
}
