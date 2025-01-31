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
@:keep @:allow(stdgo._internal.database.sql.Sql.NullInt32_asInterface) class NullInt32_static_extension {
    @:keep
    @:tdfield
    static public function value( _n:stdgo._internal.database.sql.Sql_NullInt32.NullInt32):{ var _0 : stdgo._internal.database.sql.driver.Driver_Value.Value; var _1 : stdgo.Error; } {
        @:recv var _n:stdgo._internal.database.sql.Sql_NullInt32.NullInt32 = _n?.__copy__();
        if (!_n.valid) {
            return { _0 : (null : stdgo._internal.database.sql.driver.Driver_Value.Value), _1 : (null : stdgo.Error) };
        };
        return { _0 : stdgo.Go.toInterface((_n.int32 : stdgo.GoInt64)), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function scan( _n:stdgo.Ref<stdgo._internal.database.sql.Sql_NullInt32.NullInt32>, _value:stdgo.AnyInterface):stdgo.Error {
        @:recv var _n:stdgo.Ref<stdgo._internal.database.sql.Sql_NullInt32.NullInt32> = _n;
        if (_value == null) {
            {
                final __tmp__0 = (0 : stdgo.GoInt32);
                final __tmp__1 = false;
                (@:checkr _n ?? throw "null pointer dereference").int32 = __tmp__0;
                (@:checkr _n ?? throw "null pointer dereference").valid = __tmp__1;
            };
            return (null : stdgo.Error);
        };
        (@:checkr _n ?? throw "null pointer dereference").valid = true;
        return stdgo._internal.database.sql.Sql__convertAssign._convertAssign(stdgo.Go.toInterface(stdgo.Go.pointer((@:checkr _n ?? throw "null pointer dereference").int32)), _value);
    }
}
