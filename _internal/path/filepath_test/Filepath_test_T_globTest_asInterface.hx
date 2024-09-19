package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
class T_globTest_asInterface {
    @:keep
    public dynamic function _globRel(_root:stdgo.GoString):stdgo.Error return __self__.value._globRel(_root);
    @:keep
    public dynamic function _globAbs(_root:stdgo.GoString, _rootPattern:stdgo.GoString):stdgo.Error return __self__.value._globAbs(_root, _rootPattern);
    @:keep
    public dynamic function _buildWant(_root:stdgo.GoString):stdgo.Slice<stdgo.GoString> return __self__.value._buildWant(_root);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.path.filepath_test.Filepath_test_T_globTest.T_globTest>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
