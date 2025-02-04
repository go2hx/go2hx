package stdgo._internal.database.sql;
@:structInit @:using(stdgo._internal.database.sql.Sql_nullstring_static_extension.NullString_static_extension) class NullString {
    public var string : stdgo.GoString = "";
    public var valid : Bool = false;
    public function new(?string:stdgo.GoString, ?valid:Bool) {
        if (string != null) this.string = string;
        if (valid != null) this.valid = valid;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new NullString(string, valid);
    }
}
