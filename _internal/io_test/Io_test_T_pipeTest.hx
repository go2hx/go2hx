package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
@:structInit @:using(_internal.io_test.Io_test_T_pipeTest_static_extension.T_pipeTest_static_extension) class T_pipeTest {
    public var _async : Bool = false;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _closeWithError : Bool = false;
    public function new(?_async:Bool, ?_err:stdgo.Error, ?_closeWithError:Bool) {
        if (_async != null) this._async = _async;
        if (_err != null) this._err = _err;
        if (_closeWithError != null) this._closeWithError = _closeWithError;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_pipeTest(_async, _err, _closeWithError);
    }
}
