package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(_internal.reflect_test.Reflect_test_T_exampleValue_FieldByIndex___localname___data_4078_static_extension.T_exampleValue_FieldByIndex___localname___data_4078_static_extension) class T_exampleValue_FieldByIndex___localname___data_4078 {
    @:embedded
    public var _user : _internal.reflect_test.Reflect_test_T_exampleValue_FieldByIndex___localname___user_4016.T_exampleValue_FieldByIndex___localname___user_4016 = ({} : _internal.reflect_test.Reflect_test_T_exampleValue_FieldByIndex___localname___user_4016.T_exampleValue_FieldByIndex___localname___user_4016);
    public var _firstName : stdgo.GoString = "";
    public var _lastName : stdgo.GoString = "";
    public function new(?_user:_internal.reflect_test.Reflect_test_T_exampleValue_FieldByIndex___localname___user_4016.T_exampleValue_FieldByIndex___localname___user_4016, ?_firstName:stdgo.GoString, ?_lastName:stdgo.GoString) {
        if (_user != null) this._user = _user;
        if (_firstName != null) this._firstName = _firstName;
        if (_lastName != null) this._lastName = _lastName;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_exampleValue_FieldByIndex___localname___data_4078(_user, _firstName, _lastName);
    }
}
