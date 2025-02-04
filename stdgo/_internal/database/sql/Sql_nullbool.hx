package stdgo._internal.database.sql;
@:structInit @:using(stdgo._internal.database.sql.Sql_nullbool_static_extension.NullBool_static_extension) class NullBool {
    public var bool_ : Bool = false;
    public var valid : Bool = false;
    public function new(?bool_:Bool, ?valid:Bool) {
        if (bool_ != null) this.bool_ = bool_;
        if (valid != null) this.valid = valid;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new NullBool(bool_, valid);
    }
}
