package _internal.strconv_test;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
@:structInit class T_parseErrorTest {
    public var _arg : stdgo.GoInt = 0;
    public var _errStub : (stdgo.GoString, stdgo.GoInt) -> stdgo.Error = null;
    public function new(?_arg:stdgo.GoInt, ?_errStub:(stdgo.GoString, stdgo.GoInt) -> stdgo.Error) {
        if (_arg != null) this._arg = _arg;
        if (_errStub != null) this._errStub = _errStub;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_parseErrorTest(_arg, _errStub);
    }
}
