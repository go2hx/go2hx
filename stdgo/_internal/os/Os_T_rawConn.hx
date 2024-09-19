package stdgo._internal.os;
import stdgo._internal.unsafe.Unsafe;
@:structInit @:using(stdgo._internal.os.Os_T_rawConn_static_extension.T_rawConn_static_extension) class T_rawConn {
    public var _file : stdgo.Ref<stdgo._internal.os.Os_File.File> = (null : stdgo.Ref<stdgo._internal.os.Os_File.File>);
    public function new(?_file:stdgo.Ref<stdgo._internal.os.Os_File.File>) {
        if (_file != null) this._file = _file;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_rawConn(_file);
    }
}
