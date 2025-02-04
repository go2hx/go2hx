package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_t_ignoretest_static_extension.T_ignoreTest_static_extension) class T_ignoreTest {
    public var _in : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _out : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?_in:stdgo.AnyInterface, ?_out:stdgo.AnyInterface) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ignoreTest(_in, _out);
    }
}
