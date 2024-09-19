package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit class FTest {
    public var _s : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _name : stdgo.GoString = "";
    public var _index : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _value : stdgo.GoInt = 0;
    public function new(?_s:stdgo.AnyInterface, ?_name:stdgo.GoString, ?_index:stdgo.Slice<stdgo.GoInt>, ?_value:stdgo.GoInt) {
        if (_s != null) this._s = _s;
        if (_name != null) this._name = _name;
        if (_index != null) this._index = _index;
        if (_value != null) this._value = _value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new FTest(_s, _name, _index, _value);
    }
}
