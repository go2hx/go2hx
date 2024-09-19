package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
@:structInit @:using(_internal.io_test.Io_test_T_testPipeCloseError___localname___testError2_6363_static_extension.T_testPipeCloseError___localname___testError2_6363_static_extension) class T_testPipeCloseError___localname___testError2_6363 {
    @:embedded
    public var _error : stdgo.Error = (null : stdgo.Error);
    public function new(?_error:stdgo.Error) {
        if (_error != null) this._error = _error;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function error():stdgo.GoString return this._error.error();
    public function __copy__() {
        return new T_testPipeCloseError___localname___testError2_6363(_error);
    }
}
