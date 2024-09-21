package _internal.io.fs_test;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
@:structInit @:using(_internal.io.fs_test.Fs_test_T_formatTest_static_extension.T_formatTest_static_extension) class T_formatTest {
    public var _name : stdgo.GoString = "";
    public var _size : stdgo.GoInt64 = 0;
    public var _mode : stdgo._internal.io.fs.Fs_FileMode.FileMode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs_FileMode.FileMode);
    public var _modTime : stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
    public var _isDir : Bool = false;
    public function new(?_name:stdgo.GoString, ?_size:stdgo.GoInt64, ?_mode:stdgo._internal.io.fs.Fs_FileMode.FileMode, ?_modTime:stdgo._internal.time.Time_Time.Time, ?_isDir:Bool) {
        if (_name != null) this._name = _name;
        if (_size != null) this._size = _size;
        if (_mode != null) this._mode = _mode;
        if (_modTime != null) this._modTime = _modTime;
        if (_isDir != null) this._isDir = _isDir;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_formatTest(_name, _size, _mode, _modTime, _isDir);
    }
}
