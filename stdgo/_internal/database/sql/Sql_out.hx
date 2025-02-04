package stdgo._internal.database.sql;
@:structInit @:using(stdgo._internal.database.sql.Sql_out_static_extension.Out_static_extension) class Out {
    public var __NamedFieldsRequired : { } = {};
    public var dest : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var in_ : Bool = false;
    public function new(?__NamedFieldsRequired:{ }, ?dest:stdgo.AnyInterface, ?in_:Bool) {
        if (__NamedFieldsRequired != null) this.__NamedFieldsRequired = __NamedFieldsRequired;
        if (dest != null) this.dest = dest;
        if (in_ != null) this.in_ = in_;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Out(__NamedFieldsRequired, dest, in_);
    }
}
