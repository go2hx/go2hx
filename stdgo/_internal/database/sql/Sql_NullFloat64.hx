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
@:structInit @:using(stdgo._internal.database.sql.Sql_NullFloat64_static_extension.NullFloat64_static_extension) class NullFloat64 {
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
