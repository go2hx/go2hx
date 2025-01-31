package stdgo._internal.text.tabwriter;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
@:structInit @:using(stdgo._internal.text.tabwriter.Tabwriter_T_osError_static_extension.T_osError_static_extension) class T_osError {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_err:stdgo.Error) {
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_osError(_err);
    }
}
