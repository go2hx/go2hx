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
class T_driverConn_asInterface {
    @:keep
    @:tdfield
    public dynamic function _finalClose():stdgo.Error return @:_0 __self__.value._finalClose();
    @:keep
    @:tdfield
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    @:keep
    @:tdfield
    public dynamic function _closeDBLocked():() -> stdgo.Error return @:_0 __self__.value._closeDBLocked();
    @:keep
    @:tdfield
    public dynamic function _prepareLocked(_ctx:stdgo._internal.context.Context_Context.Context, _cg:stdgo._internal.database.sql.Sql_T_stmtConnGrabber.T_stmtConnGrabber, _query:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>; var _1 : stdgo.Error; } return @:_0 __self__.value._prepareLocked(_ctx, _cg, _query);
    @:keep
    @:tdfield
    public dynamic function _validateConnection(_needsReset:Bool):Bool return @:_0 __self__.value._validateConnection(_needsReset);
    @:keep
    @:tdfield
    public dynamic function _resetSession(_ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error return @:_0 __self__.value._resetSession(_ctx);
    @:keep
    @:tdfield
    public dynamic function _expired(_timeout:stdgo._internal.time.Time_Duration.Duration):Bool return @:_0 __self__.value._expired(_timeout);
    @:keep
    @:tdfield
    public dynamic function _removeOpenStmt(_ds:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>):Void @:_0 __self__.value._removeOpenStmt(_ds);
    @:keep
    @:tdfield
    public dynamic function _releaseConn(_err:stdgo.Error):Void @:_0 __self__.value._releaseConn(_err);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _unlockSlow(_0:stdgo.GoInt32):Void @:_0 __self__.value._unlockSlow(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _lockSlow():Void @:_0 __self__.value._lockSlow();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function unlock():Void @:_0 __self__.value.unlock();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function tryLock():Bool return @:_0 __self__.value.tryLock();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function lock():Void @:_0 __self__.value.lock();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.database.sql.Sql_T_driverConnPointer.T_driverConnPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
