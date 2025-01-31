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
@:structInit @:using(stdgo._internal.database.sql.Sql_NullInt32_static_extension.NullInt32_static_extension) class NullInt32 {
    public var int32 : stdgo.GoInt32 = 0;
    public var valid : Bool = false;
    public function new(?int32:stdgo.GoInt32, ?valid:Bool) {
        if (int32 != null) this.int32 = int32;
        if (valid != null) this.valid = valid;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new NullInt32(int32, valid);
    }
}
