package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
@:structInit class T_readMaker {
    public var _name : stdgo.GoString = "";
    public var _fn : stdgo._internal.io.Io_Reader.Reader -> stdgo._internal.io.Io_Reader.Reader = null;
    public function new(?_name:stdgo.GoString, ?_fn:stdgo._internal.io.Io_Reader.Reader -> stdgo._internal.io.Io_Reader.Reader) {
        if (_name != null) this._name = _name;
        if (_fn != null) this._fn = _fn;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_readMaker(_name, _fn);
    }
}
