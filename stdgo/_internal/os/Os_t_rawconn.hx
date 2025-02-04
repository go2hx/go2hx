package stdgo._internal.os;
@:structInit @:using(stdgo._internal.os.Os_t_rawconn_static_extension.T_rawConn_static_extension) class T_rawConn {
    public var _file : stdgo.Ref<stdgo._internal.os.Os_file.File> = (null : stdgo.Ref<stdgo._internal.os.Os_file.File>);
    public function new(?_file:stdgo.Ref<stdgo._internal.os.Os_file.File>) {
        if (_file != null) this._file = _file;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_rawConn(_file);
    }
}
