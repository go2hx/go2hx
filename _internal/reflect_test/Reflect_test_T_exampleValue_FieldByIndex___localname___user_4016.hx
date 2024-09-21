package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit class T_exampleValue_FieldByIndex___localname___user_4016 {
    public var _firstName : stdgo.GoString = "";
    public var _lastName : stdgo.GoString = "";
    public function new(?_firstName:stdgo.GoString, ?_lastName:stdgo.GoString) {
        if (_firstName != null) this._firstName = _firstName;
        if (_lastName != null) this._lastName = _lastName;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_exampleValue_FieldByIndex___localname___user_4016(_firstName, _lastName);
    }
}
