package stdgo._internal.mime.quotedprintable;
@:structInit @:using(stdgo._internal.mime.quotedprintable.Quotedprintable_writer_static_extension.Writer_static_extension) class Writer {
    public var binary : Bool = false;
    public var _w : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public var _i : stdgo.GoInt = 0;
    public var _line : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(78, 78).__setNumber32__();
    public var _cr : Bool = false;
    public function new(?binary:Bool, ?_w:stdgo._internal.io.Io_writer.Writer, ?_i:stdgo.GoInt, ?_line:stdgo.GoArray<stdgo.GoUInt8>, ?_cr:Bool) {
        if (binary != null) this.binary = binary;
        if (_w != null) this._w = _w;
        if (_i != null) this._i = _i;
        if (_line != null) this._line = _line;
        if (_cr != null) this._cr = _cr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Writer(binary, _w, _i, _line, _cr);
    }
}
