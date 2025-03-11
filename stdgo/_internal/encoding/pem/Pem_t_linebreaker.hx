package stdgo._internal.encoding.pem;
@:structInit @:using(stdgo._internal.encoding.pem.Pem_t_linebreaker_static_extension.T_lineBreaker_static_extension) class T_lineBreaker {
    public var _line : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(64, 64).__setNumber32__();
    public var _used : stdgo.GoInt = 0;
    public var _out : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public function new(?_line:stdgo.GoArray<stdgo.GoUInt8>, ?_used:stdgo.GoInt, ?_out:stdgo._internal.io.Io_writer.Writer) {
        if (_line != null) this._line = _line;
        if (_used != null) this._used = _used;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_lineBreaker(_line, _used, _out);
    }
}
