package stdgo._internal.database.sql;
class ColumnType_asInterface {
    @:keep
    @:tdfield
    public dynamic function databaseTypeName():stdgo.GoString return @:_0 __self__.value.databaseTypeName();
    @:keep
    @:tdfield
    public dynamic function nullable():{ var _0 : Bool; var _1 : Bool; } return @:_0 __self__.value.nullable();
    @:keep
    @:tdfield
    public dynamic function scanType():stdgo._internal.reflect.Reflect_type_.Type_ return @:_0 __self__.value.scanType();
    @:keep
    @:tdfield
    public dynamic function decimalSize():{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt64; var _2 : Bool; } return @:_0 __self__.value.decimalSize();
    @:keep
    @:tdfield
    public dynamic function length_():{ var _0 : stdgo.GoInt64; var _1 : Bool; } return @:_0 __self__.value.length_();
    @:keep
    @:tdfield
    public dynamic function name():stdgo.GoString return @:_0 __self__.value.name();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.database.sql.Sql_columntypepointer.ColumnTypePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
