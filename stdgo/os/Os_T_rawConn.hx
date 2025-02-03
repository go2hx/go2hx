package stdgo.os;
@:structInit @:using(stdgo.os.Os.T_rawConn_static_extension) abstract T_rawConn(stdgo._internal.os.Os_T_rawConn.T_rawConn) from stdgo._internal.os.Os_T_rawConn.T_rawConn to stdgo._internal.os.Os_T_rawConn.T_rawConn {
    public var _file(get, set) : File;
    function get__file():File return this._file;
    function set__file(v:File):File {
        this._file = (v : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        return v;
    }
    public function new(?_file:File) this = new stdgo._internal.os.Os_T_rawConn.T_rawConn((_file : stdgo.Ref<stdgo._internal.os.Os_File.File>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
