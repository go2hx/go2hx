package stdgo._internal.go.internal.gcimporter;
@:structInit @:using(stdgo._internal.go.internal.gcimporter.Gcimporter_t_fileinfo_static_extension.T_fileInfo_static_extension) class T_fileInfo {
    public var _file : stdgo.Ref<stdgo._internal.go.token.Token_file.File> = (null : stdgo.Ref<stdgo._internal.go.token.Token_file.File>);
    public var _lastline : stdgo.GoInt = 0;
    public function new(?_file:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, ?_lastline:stdgo.GoInt) {
        if (_file != null) this._file = _file;
        if (_lastline != null) this._lastline = _lastline;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fileInfo(_file, _lastline);
    }
}
