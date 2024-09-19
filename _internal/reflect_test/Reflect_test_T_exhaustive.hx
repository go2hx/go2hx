package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_T_exhaustive_static_extension.T_exhaustive_static_extension) class T_exhaustive {
    public var _r : stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand> = (null : stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>);
    public var _pos : stdgo.GoInt = 0;
    public var _last : stdgo.Slice<_internal.reflect_test.Reflect_test_T_choice.T_choice> = (null : stdgo.Slice<_internal.reflect_test.Reflect_test_T_choice.T_choice>);
    public function new(?_r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>, ?_pos:stdgo.GoInt, ?_last:stdgo.Slice<_internal.reflect_test.Reflect_test_T_choice.T_choice>) {
        if (_r != null) this._r = _r;
        if (_pos != null) this._pos = _pos;
        if (_last != null) this._last = _last;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_exhaustive(_r, _pos, _last);
    }
}
