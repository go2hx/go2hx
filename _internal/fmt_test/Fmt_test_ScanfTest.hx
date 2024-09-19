package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:structInit class ScanfTest {
    public var _format : stdgo.GoString = "";
    public var _text : stdgo.GoString = "";
    public var _in : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _out : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?_format:stdgo.GoString, ?_text:stdgo.GoString, ?_in:stdgo.AnyInterface, ?_out:stdgo.AnyInterface) {
        if (_format != null) this._format = _format;
        if (_text != null) this._text = _text;
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ScanfTest(_format, _text, _in, _out);
    }
}