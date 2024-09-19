package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:structInit class ScanfMultiTest {
    public var _format : stdgo.GoString = "";
    public var _text : stdgo.GoString = "";
    public var _in : stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
    public var _out : stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
    public var _err : stdgo.GoString = "";
    public function new(?_format:stdgo.GoString, ?_text:stdgo.GoString, ?_in:stdgo.Slice<stdgo.AnyInterface>, ?_out:stdgo.Slice<stdgo.AnyInterface>, ?_err:stdgo.GoString) {
        if (_format != null) this._format = _format;
        if (_text != null) this._text = _text;
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ScanfMultiTest(_format, _text, _in, _out, _err);
    }
}
