package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit class T_nonEmptyStruct {
    public var _member : stdgo.GoInt = 0;
    public function new(?_member:stdgo.GoInt) {
        if (_member != null) this._member = _member;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_nonEmptyStruct(_member);
    }
}
