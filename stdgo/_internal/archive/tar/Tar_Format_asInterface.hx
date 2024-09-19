package stdgo._internal.archive.tar;
class Format_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    @:pointer
    public dynamic function _mustNotBe(_f2:stdgo._internal.archive.tar.Tar_Format.Format):Void __self__.value._mustNotBe(__self__, _f2);
    @:keep
    @:pointer
    public dynamic function _mayOnlyBe(_f2:stdgo._internal.archive.tar.Tar_Format.Format):Void __self__.value._mayOnlyBe(__self__, _f2);
    @:keep
    @:pointer
    public dynamic function _mayBe(_f2:stdgo._internal.archive.tar.Tar_Format.Format):Void __self__.value._mayBe(__self__, _f2);
    @:keep
    public dynamic function _has(_f2:stdgo._internal.archive.tar.Tar_Format.Format):Bool return __self__.value._has(_f2);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.archive.tar.Tar_Format.Format>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
