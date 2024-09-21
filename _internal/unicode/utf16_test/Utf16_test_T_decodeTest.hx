package _internal.unicode.utf16_test;
import stdgo._internal.unicode.utf16.Utf16;
@:structInit class T_decodeTest {
    public var _in : stdgo.Slice<stdgo.GoUInt16> = (null : stdgo.Slice<stdgo.GoUInt16>);
    public var _out : stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
    public function new(?_in:stdgo.Slice<stdgo.GoUInt16>, ?_out:stdgo.Slice<stdgo.GoInt32>) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_decodeTest(_in, _out);
    }
}
