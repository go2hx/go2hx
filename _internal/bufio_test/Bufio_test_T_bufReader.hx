package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
@:structInit class T_bufReader {
    public var _name : stdgo.GoString = "";
    public var _fn : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> -> stdgo.GoString = null;
    public function new(?_name:stdgo.GoString, ?_fn:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> -> stdgo.GoString) {
        if (_name != null) this._name = _name;
        if (_fn != null) this._fn = _fn;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_bufReader(_name, _fn);
    }
}
