package stdgo._internal.database.sql;
@:structInit @:using(stdgo._internal.database.sql.Sql_nullint16_static_extension.NullInt16_static_extension) class NullInt16 {
    public var int16 : stdgo.GoInt16 = 0;
    public var valid : Bool = false;
    public function new(?int16:stdgo.GoInt16, ?valid:Bool) {
        if (int16 != null) this.int16 = int16;
        if (valid != null) this.valid = valid;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new NullInt16(int16, valid);
    }
}
