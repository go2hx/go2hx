package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_Talias1_static_extension.Talias1_static_extension) class Talias1 {
    @:embedded
    public var _byte : stdgo.GoUInt8 = 0;
    @:embedded
    public var _uint8 : stdgo.GoUInt8 = 0;
    @:embedded
    public var _int : stdgo.GoInt = 0;
    @:embedded
    public var _int32 : stdgo.GoInt32 = 0;
    @:embedded
    public var _rune : stdgo.GoInt32 = 0;
    public function new(?_byte:stdgo.GoUInt8, ?_uint8:stdgo.GoUInt8, ?_int:stdgo.GoInt, ?_int32:stdgo.GoInt32, ?_rune:stdgo.GoInt32) {
        if (_byte != null) this._byte = _byte;
        if (_uint8 != null) this._uint8 = _uint8;
        if (_int != null) this._int = _int;
        if (_int32 != null) this._int32 = _int32;
        if (_rune != null) this._rune = _rune;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Talias1(_byte, _uint8, _int, _int32, _rune);
    }
}
