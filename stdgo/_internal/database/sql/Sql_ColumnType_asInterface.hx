package stdgo._internal.database.sql;
class ColumnType_asInterface {
    @:keep
    public dynamic function databaseTypeName():stdgo.GoString return __self__.value.databaseTypeName();
    @:keep
    public dynamic function nullable():{ var _0 : Bool; var _1 : Bool; } return __self__.value.nullable();
    @:keep
    public dynamic function scanType():stdgo._internal.reflect.Reflect_Type_.Type_ return __self__.value.scanType();
    @:keep
    public dynamic function decimalSize():{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt64; var _2 : Bool; } return __self__.value.decimalSize();
    @:keep
    public dynamic function length_():{ var _0 : stdgo.GoInt64; var _1 : Bool; } return __self__.value.length_();
    @:keep
    public dynamic function name():stdgo.GoString return __self__.value.name();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.database.sql.Sql_ColumnType.ColumnType>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
