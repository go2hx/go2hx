package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_ioFS_static_extension.T_ioFS_static_extension) class T_ioFS {
    public var _fsys : stdgo._internal.io.fs.Fs_FS.FS = (null : stdgo._internal.io.fs.Fs_FS.FS);
    public function new(?_fsys:stdgo._internal.io.fs.Fs_FS.FS) {
        if (_fsys != null) this._fsys = _fsys;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ioFS(_fsys);
    }
}
