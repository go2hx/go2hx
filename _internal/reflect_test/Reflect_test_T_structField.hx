package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit class T_structField {
    public var _name : stdgo.GoString = "";
    public var _index : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public function new(?_name:stdgo.GoString, ?_index:stdgo.Slice<stdgo.GoInt>) {
        if (_name != null) this._name = _name;
        if (_index != null) this._index = _index;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_structField(_name, _index);
    }
}
