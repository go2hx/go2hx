package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit class T_testCanSetField___localname___testCase_10676 {
    public var _index : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _canSet : Bool = false;
    public function new(?_index:stdgo.Slice<stdgo.GoInt>, ?_canSet:Bool) {
        if (_index != null) this._index = _index;
        if (_canSet != null) this._canSet = _canSet;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testCanSetField___localname___testCase_10676(_index, _canSet);
    }
}
