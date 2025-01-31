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
@:structInit @:using(stdgo._internal.database.sql.Sql_NullByte_static_extension.NullByte_static_extension) class NullByte {
    public var byte : stdgo.GoUInt8 = 0;
    public var valid : Bool = false;
    public function new(?byte:stdgo.GoUInt8, ?valid:Bool) {
        if (byte != null) this.byte = byte;
        if (valid != null) this.valid = valid;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new NullByte(byte, valid);
    }
}
