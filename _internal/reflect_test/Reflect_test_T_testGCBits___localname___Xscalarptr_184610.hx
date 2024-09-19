package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_T_testGCBits___localname___Xscalarptr_184610_static_extension.T_testGCBits___localname___Xscalarptr_184610_static_extension) class T_testGCBits___localname___Xscalarptr_184610 {
    @:embedded
    public var _uintptr : stdgo.GoUIntptr = 0;
    @:embedded
    public var _byte : stdgo.Pointer<stdgo.GoUInt8> = (null : stdgo.Pointer<stdgo.GoUInt8>);
    public function new(?_uintptr:stdgo.GoUIntptr, ?_byte:stdgo.Pointer<stdgo.GoUInt8>) {
        if (_uintptr != null) this._uintptr = _uintptr;
        if (_byte != null) this._byte = _byte;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testGCBits___localname___Xscalarptr_184610(_uintptr, _byte);
    }
}
