package stdgo.io;
@:structInit @:using(stdgo.io.Io.T_multiWriter_static_extension) abstract T_multiWriter(stdgo._internal.io.Io_T_multiWriter.T_multiWriter) from stdgo._internal.io.Io_T_multiWriter.T_multiWriter to stdgo._internal.io.Io_T_multiWriter.T_multiWriter {
    public var _writers(get, set) : Array<Writer>;
    function get__writers():Array<Writer> return [for (i in this._writers) i];
    function set__writers(v:Array<Writer>):Array<Writer> {
        this._writers = ([for (i in v) i] : stdgo.Slice<stdgo._internal.io.Io_Writer.Writer>);
        return v;
    }
    public function new(?_writers:Array<Writer>) this = new stdgo._internal.io.Io_T_multiWriter.T_multiWriter(([for (i in _writers) i] : stdgo.Slice<stdgo._internal.io.Io_Writer.Writer>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
