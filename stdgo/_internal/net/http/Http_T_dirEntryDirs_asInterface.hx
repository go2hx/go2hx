package stdgo._internal.net.http;
class T_dirEntryDirs_asInterface {
    @:keep
    @:tdfield
    public dynamic function _name(_i:stdgo.GoInt):stdgo.GoString return @:_0 __self__.value._name(_i);
    @:keep
    @:tdfield
    public dynamic function _isDir(_i:stdgo.GoInt):Bool return @:_0 __self__.value._isDir(_i);
    @:keep
    @:tdfield
    public dynamic function _len():stdgo.GoInt return @:_0 __self__.value._len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_T_dirEntryDirsPointer.T_dirEntryDirsPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
