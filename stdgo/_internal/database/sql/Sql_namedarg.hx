package stdgo._internal.database.sql;
@:structInit @:using(stdgo._internal.database.sql.Sql_namedarg_static_extension.NamedArg_static_extension) class NamedArg {
    public var __NamedFieldsRequired : { } = {};
    public var name : stdgo.GoString = "";
    public var value : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?__NamedFieldsRequired:{ }, ?name:stdgo.GoString, ?value:stdgo.AnyInterface) {
        if (__NamedFieldsRequired != null) this.__NamedFieldsRequired = __NamedFieldsRequired;
        if (name != null) this.name = name;
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new NamedArg(__NamedFieldsRequired, name, value);
    }
}
