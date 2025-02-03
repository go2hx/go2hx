package stdgo.database.sql;
@:structInit @:using(stdgo.database.sql.Sql.Out_static_extension) abstract Out(stdgo._internal.database.sql.Sql_Out.Out) from stdgo._internal.database.sql.Sql_Out.Out to stdgo._internal.database.sql.Sql_Out.Out {
    public var __NamedFieldsRequired(get, set) : stdgo.Tuple.Tuple0;
    function get___NamedFieldsRequired():stdgo.Tuple.Tuple0 return {
        final obj = this.__NamedFieldsRequired;
        {  };
    };
    function set___NamedFieldsRequired(v:stdgo.Tuple.Tuple0):stdgo.Tuple.Tuple0 {
        this.__NamedFieldsRequired = {
            final obj = v;
            {  };
        };
        return v;
    }
    public var dest(get, set) : stdgo.AnyInterface;
    function get_dest():stdgo.AnyInterface return this.dest;
    function set_dest(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.dest = (v : stdgo.AnyInterface);
        return v;
    }
    public var in_(get, set) : Bool;
    function get_in_():Bool return this.in_;
    function set_in_(v:Bool):Bool {
        this.in_ = v;
        return v;
    }
    public function new(?__NamedFieldsRequired:stdgo.Tuple.Tuple0, ?dest:stdgo.AnyInterface, ?in_:Bool) this = new stdgo._internal.database.sql.Sql_Out.Out({
        final obj = __NamedFieldsRequired;
        {  };
    }, (dest : stdgo.AnyInterface), in_);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
