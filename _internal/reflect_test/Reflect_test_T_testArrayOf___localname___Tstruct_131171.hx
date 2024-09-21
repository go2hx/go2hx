package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit class T_testArrayOf___localname___Tstruct_131171 {
    public var v : stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(1, 1, ...[for (i in 0 ... 1) (0 : stdgo.GoInt)]);
    public function new(?v:stdgo.GoArray<stdgo.GoInt>) {
        if (v != null) this.v = v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testArrayOf___localname___Tstruct_131171(v);
    }
}
