package stdgo._internal.io;
import stdgo._internal.errors.Errors;
@:structInit @:using(stdgo._internal.io.Io_T_multiReader_static_extension.T_multiReader_static_extension) class T_multiReader {
    public var _readers : stdgo.Slice<stdgo._internal.io.Io_Reader.Reader> = (null : stdgo.Slice<stdgo._internal.io.Io_Reader.Reader>);
    public function new(?_readers:stdgo.Slice<stdgo._internal.io.Io_Reader.Reader>) {
        if (_readers != null) this._readers = _readers;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_multiReader(_readers);
    }
}
