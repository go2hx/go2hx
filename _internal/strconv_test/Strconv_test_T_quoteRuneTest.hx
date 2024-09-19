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
@:structInit class T_quoteRuneTest {
    public var _in : stdgo.GoInt32 = 0;
    public var _out : stdgo.GoString = "";
    public var _ascii : stdgo.GoString = "";
    public var _graphic : stdgo.GoString = "";
    public function new(?_in:stdgo.GoInt32, ?_out:stdgo.GoString, ?_ascii:stdgo.GoString, ?_graphic:stdgo.GoString) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
        if (_ascii != null) this._ascii = _ascii;
        if (_graphic != null) this._graphic = _graphic;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_quoteRuneTest(_in, _out, _ascii, _graphic);
    }
}
