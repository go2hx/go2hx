package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_T_testCanSetField___localname___S2_10553_static_extension.T_testCanSetField___localname___S2_10553_static_extension) class T_testCanSetField___localname___S2_10553 {
    @:embedded
    public var _embed : stdgo.Ref<_internal.reflect_test.Reflect_test_T_testCanSetField___localname___embed_10451.T_testCanSetField___localname___embed_10451> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_T_testCanSetField___localname___embed_10451.T_testCanSetField___localname___embed_10451>);
    public var _x : stdgo.GoInt = 0;
    public var x : stdgo.GoInt = 0;
    public function new(?_embed:stdgo.Ref<_internal.reflect_test.Reflect_test_T_testCanSetField___localname___embed_10451.T_testCanSetField___localname___embed_10451>, ?_x:stdgo.GoInt, ?x:stdgo.GoInt) {
        if (_embed != null) this._embed = _embed;
        if (_x != null) this._x = _x;
        if (x != null) this.x = x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testCanSetField___localname___S2_10553(_embed, _x, x);
    }
}
