package stdgo._internal.encoding.gob;
@:structInit class SingleTest {
    public var _in : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _out : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _err : stdgo.GoString = "";
    public function new(?_in:stdgo.AnyInterface, ?_out:stdgo.AnyInterface, ?_err:stdgo.GoString) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SingleTest(_in, _out, _err);
    }
}
