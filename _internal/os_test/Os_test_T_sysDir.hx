package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
@:structInit class T_sysDir {
    public var _name : stdgo.GoString = "";
    public var _files : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?_name:stdgo.GoString, ?_files:stdgo.Slice<stdgo.GoString>) {
        if (_name != null) this._name = _name;
        if (_files != null) this._files = _files;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_sysDir(_name, _files);
    }
}
