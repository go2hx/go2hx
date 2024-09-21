package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_T_testCanSetField___localname___S4_10634_static_extension.T_testCanSetField___localname___S4_10634_static_extension) class T_testCanSetField___localname___S4_10634 {
    @:embedded
    public var embed : stdgo.Ref<_internal.reflect_test.Reflect_test_T_testCanSetField___localname___Embed_10482.T_testCanSetField___localname___Embed_10482> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_T_testCanSetField___localname___Embed_10482.T_testCanSetField___localname___Embed_10482>);
    public var _x : stdgo.GoInt = 0;
    public var x : stdgo.GoInt = 0;
    public function new(?embed:stdgo.Ref<_internal.reflect_test.Reflect_test_T_testCanSetField___localname___Embed_10482.T_testCanSetField___localname___Embed_10482>, ?_x:stdgo.GoInt, ?x:stdgo.GoInt) {
        if (embed != null) this.embed = embed;
        if (_x != null) this._x = _x;
        if (x != null) this.x = x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testCanSetField___localname___S4_10634(embed, _x, x);
    }
}
