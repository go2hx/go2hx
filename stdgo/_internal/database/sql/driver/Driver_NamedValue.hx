package stdgo._internal.database.sql.driver;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.database.sql.driver.Driver_NamedValue_static_extension.NamedValue_static_extension) class NamedValue {
    public var name : stdgo.GoString = "";
    public var ordinal : stdgo.GoInt = 0;
    public var value : stdgo._internal.database.sql.driver.Driver_Value.Value = (null : stdgo._internal.database.sql.driver.Driver_Value.Value);
    public function new(?name:stdgo.GoString, ?ordinal:stdgo.GoInt, ?value:stdgo._internal.database.sql.driver.Driver_Value.Value) {
        if (name != null) this.name = name;
        if (ordinal != null) this.ordinal = ordinal;
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new NamedValue(name, ordinal, value);
    }
}
