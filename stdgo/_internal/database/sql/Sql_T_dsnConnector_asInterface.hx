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
class T_dsnConnector_asInterface {
    @:keep
    @:tdfield
    public dynamic function driver():stdgo._internal.database.sql.driver.Driver_Driver.Driver return @:_0 __self__.value.driver();
    @:keep
    @:tdfield
    public dynamic function connect(__19:stdgo._internal.context.Context_Context.Context):{ var _0 : stdgo._internal.database.sql.driver.Driver_Conn.Conn; var _1 : stdgo.Error; } return @:_0 __self__.value.connect(__19);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.database.sql.Sql_T_dsnConnectorPointer.T_dsnConnectorPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
