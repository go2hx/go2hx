package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
@:keep @:allow(_internal.os_test.Os_test.T_myErrorIs_asInterface) class T_myErrorIs_static_extension {
    @:keep
    static public function is_( _e:_internal.os_test.Os_test_T_myErrorIs.T_myErrorIs, _target:stdgo.Error):Bool {
        @:recv var _e:_internal.os_test.Os_test_T_myErrorIs.T_myErrorIs = _e?.__copy__();
        return stdgo.Go.toInterface(_target) == (stdgo.Go.toInterface(_e._error));
    }
    @:embedded
    public static function error( __self__:_internal.os_test.Os_test_T_myErrorIs.T_myErrorIs):stdgo.GoString return __self__.error();
}
