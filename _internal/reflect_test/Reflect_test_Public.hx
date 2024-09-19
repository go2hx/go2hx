package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_Public_static_extension.Public_static_extension) class Public {
    public var x : stdgo.GoInt = 0;
    public var y : stdgo.Pointer<stdgo.Pointer<stdgo.GoInt>> = (null : stdgo.Pointer<stdgo.Pointer<stdgo.GoInt>>);
    @:embedded
    public var _private : _internal.reflect_test.Reflect_test_T_private.T_private = ({} : _internal.reflect_test.Reflect_test_T_private.T_private);
    public function new(?x:stdgo.GoInt, ?y:stdgo.Pointer<stdgo.Pointer<stdgo.GoInt>>, ?_private:_internal.reflect_test.Reflect_test_T_private.T_private) {
        if (x != null) this.x = x;
        if (y != null) this.y = y;
        if (_private != null) this._private = _private;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function p() this._private.p();
    public function __copy__() {
        return new Public(x, y, _private);
    }
}
