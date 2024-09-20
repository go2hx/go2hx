package stdgo._internal.database.sql;
class T_dsnConnector_asInterface {
    @:keep
    public dynamic function driver():stdgo._internal.database.sql.driver.Driver_Driver.Driver return __self__.value.driver();
    @:keep
    public dynamic function connect(__19:stdgo._internal.context.Context_Context.Context):{ var _0 : stdgo._internal.database.sql.driver.Driver_Conn.Conn; var _1 : stdgo.Error; } return __self__.value.connect(__19);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.database.sql.Sql_T_dsnConnector.T_dsnConnector>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
