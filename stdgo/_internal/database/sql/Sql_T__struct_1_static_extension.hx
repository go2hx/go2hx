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
@:keep @:allow(stdgo._internal.database.sql.Sql.T__struct_1_asInterface) class T__struct_1_static_extension {
    @:embedded
    @:localembedfields
    public static function _unlockSlow( __self__:stdgo._internal.database.sql.Sql_T__struct_1.T__struct_1, _0:stdgo.GoInt32):Void return @:check32 __self__.mutex._unlockSlow(_0);
    @:embedded
    @:localembedfields
    public static function _lockSlow( __self__:stdgo._internal.database.sql.Sql_T__struct_1.T__struct_1):Void return @:check32 __self__.mutex._lockSlow();
    @:embedded
    @:localembedfields
    public static function unlock( __self__:stdgo._internal.database.sql.Sql_T__struct_1.T__struct_1):Void return @:check32 __self__.mutex.unlock();
    @:embedded
    @:localembedfields
    public static function tryLock( __self__:stdgo._internal.database.sql.Sql_T__struct_1.T__struct_1):Bool return @:check32 __self__.mutex.tryLock();
    @:embedded
    @:localembedfields
    public static function lock( __self__:stdgo._internal.database.sql.Sql_T__struct_1.T__struct_1):Void return @:check32 __self__.mutex.lock();
}
