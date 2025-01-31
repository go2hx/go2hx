package stdgo._internal.database.sql;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.database.sql.driver.Driver;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
import stdgo._internal.context.Context;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.io.Io;
@:structInit @:using(stdgo._internal.database.sql.Sql_NamedArg_static_extension.NamedArg_static_extension) class NamedArg {
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
