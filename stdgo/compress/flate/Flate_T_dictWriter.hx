package stdgo.compress.flate;
@:structInit @:using(stdgo.compress.flate.Flate.T_dictWriter_static_extension) abstract T_dictWriter(stdgo._internal.compress.flate.Flate_T_dictWriter.T_dictWriter) from stdgo._internal.compress.flate.Flate_T_dictWriter.T_dictWriter to stdgo._internal.compress.flate.Flate_T_dictWriter.T_dictWriter {
    public var _w(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__w():stdgo._internal.io.Io_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._w = v;
        return v;
    }
    public function new(?_w:stdgo._internal.io.Io_Writer.Writer) this = new stdgo._internal.compress.flate.Flate_T_dictWriter.T_dictWriter(_w);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
