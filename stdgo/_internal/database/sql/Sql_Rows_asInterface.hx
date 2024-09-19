package stdgo._internal.database.sql;
class Rows_asInterface {
    @:keep
    public dynamic function _close(_err:stdgo.Error):stdgo.Error return __self__.value._close(_err);
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function _closemuRUnlockIfHeldByScan():Void __self__.value._closemuRUnlockIfHeldByScan();
    @:keep
    public dynamic function scan(_dest:haxe.Rest<stdgo.AnyInterface>):stdgo.Error return __self__.value.scan(..._dest);
    @:keep
    public dynamic function columnTypes():{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType>>; var _1 : stdgo.Error; } return __self__.value.columnTypes();
    @:keep
    public dynamic function columns():{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return __self__.value.columns();
    @:keep
    public dynamic function err():stdgo.Error return __self__.value.err();
    @:keep
    public dynamic function nextResultSet():Bool return __self__.value.nextResultSet();
    @:keep
    public dynamic function _nextLocked():{ var _0 : Bool; var _1 : Bool; } return __self__.value._nextLocked();
    @:keep
    public dynamic function next():Bool return __self__.value.next();
    @:keep
    public dynamic function _awaitDone(_ctx:stdgo._internal.context.Context_Context.Context, _txctx:stdgo._internal.context.Context_Context.Context, _closectx:stdgo._internal.context.Context_Context.Context):Void __self__.value._awaitDone(_ctx, _txctx, _closectx);
    @:keep
    public dynamic function _initContextClose(_ctx:stdgo._internal.context.Context_Context.Context, _txctx:stdgo._internal.context.Context_Context.Context):Void __self__.value._initContextClose(_ctx, _txctx);
    @:keep
    public dynamic function _lasterrOrErrLocked(_err:stdgo.Error):stdgo.Error return __self__.value._lasterrOrErrLocked(_err);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.database.sql.Sql_Rows.Rows>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
