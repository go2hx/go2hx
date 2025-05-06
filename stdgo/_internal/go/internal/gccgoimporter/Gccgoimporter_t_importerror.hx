package stdgo._internal.go.internal.gccgoimporter;
@:structInit @:using(stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_importerror_static_extension.T_importError_static_extension) class T_importError {
    public var _pos : stdgo._internal.text.scanner.Scanner_position.Position = ({} : stdgo._internal.text.scanner.Scanner_position.Position);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_pos:stdgo._internal.text.scanner.Scanner_position.Position, ?_err:stdgo.Error) {
        if (_pos != null) this._pos = _pos;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_importError(_pos, _err);
    }
}
