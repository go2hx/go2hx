package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
@:structInit @:using(_internal.io_test.Io_test_T_writeStringChecker_static_extension.T_writeStringChecker_static_extension) class T_writeStringChecker {
    public var _called : Bool = false;
    public function new(?_called:Bool) {
        if (_called != null) this._called = _called;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_writeStringChecker(_called);
    }
}
