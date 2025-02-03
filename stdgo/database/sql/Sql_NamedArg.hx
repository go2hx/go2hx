package stdgo.database.sql;
@:structInit @:using(stdgo.database.sql.Sql.NamedArg_static_extension) abstract NamedArg(stdgo._internal.database.sql.Sql_NamedArg.NamedArg) from stdgo._internal.database.sql.Sql_NamedArg.NamedArg to stdgo._internal.database.sql.Sql_NamedArg.NamedArg {
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
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var value(get, set) : stdgo.AnyInterface;
    function get_value():stdgo.AnyInterface return this.value;
    function set_value(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.value = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?__NamedFieldsRequired:stdgo.Tuple.Tuple0, ?name:String, ?value:stdgo.AnyInterface) this = new stdgo._internal.database.sql.Sql_NamedArg.NamedArg({
        final obj = __NamedFieldsRequired;
        {  };
    }, (name : stdgo.GoString), (value : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
