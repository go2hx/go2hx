package stdgo._internal.io;
@:structInit @:using(stdgo._internal.io.Io_T_multiWriter_static_extension.T_multiWriter_static_extension) class T_multiWriter {
    public var _writers : stdgo.Slice<stdgo._internal.io.Io_Writer.Writer> = (null : stdgo.Slice<stdgo._internal.io.Io_Writer.Writer>);
    public function new(?_writers:stdgo.Slice<stdgo._internal.io.Io_Writer.Writer>) {
        if (_writers != null) this._writers = _writers;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_multiWriter(_writers);
    }
}
