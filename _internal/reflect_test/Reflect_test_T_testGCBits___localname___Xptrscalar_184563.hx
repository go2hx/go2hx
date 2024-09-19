package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_T_testGCBits___localname___Xptrscalar_184563_static_extension.T_testGCBits___localname___Xptrscalar_184563_static_extension) class T_testGCBits___localname___Xptrscalar_184563 {
    @:embedded
    public var _byte : stdgo.Pointer<stdgo.GoUInt8> = (null : stdgo.Pointer<stdgo.GoUInt8>);
    @:embedded
    public var _uintptr : stdgo.GoUIntptr = 0;
    public function new(?_byte:stdgo.Pointer<stdgo.GoUInt8>, ?_uintptr:stdgo.GoUIntptr) {
        if (_byte != null) this._byte = _byte;
        if (_uintptr != null) this._uintptr = _uintptr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testGCBits___localname___Xptrscalar_184563(_byte, _uintptr);
    }
}
