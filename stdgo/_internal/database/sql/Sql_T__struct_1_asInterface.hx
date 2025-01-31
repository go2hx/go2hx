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
class T__struct_1_asInterface {
    @:embedded
    @:localembedfields
    public dynamic function _unlockSlow(_0:stdgo.GoInt32):Void @:_0 __self__.value._unlockSlow(_0);
    @:embedded
    @:localembedfields
    public dynamic function _lockSlow():Void @:_0 __self__.value._lockSlow();
    @:embedded
    @:localembedfields
    public dynamic function unlock():Void @:_0 __self__.value.unlock();
    @:embedded
    @:localembedfields
    public dynamic function tryLock():Bool return @:_0 __self__.value.tryLock();
    @:embedded
    @:localembedfields
    public dynamic function lock():Void @:_0 __self__.value.lock();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.database.sql.Sql_T__struct_1Pointer.T__struct_1Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
