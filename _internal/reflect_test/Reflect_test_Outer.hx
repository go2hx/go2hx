package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_Outer_static_extension.Outer_static_extension) class Outer {
    @:embedded
    public var inner : stdgo.Ref<_internal.reflect_test.Reflect_test_Inner.Inner> = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_Inner.Inner>);
    public var r : stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
    public function new(?inner:stdgo.Ref<_internal.reflect_test.Reflect_test_Inner.Inner>, ?r:stdgo._internal.io.Io_Reader.Reader) {
        if (inner != null) this.inner = inner;
        if (r != null) this.r = r;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function m() this.inner.m();
    public function __copy__() {
        return new Outer(inner, r);
    }
}
