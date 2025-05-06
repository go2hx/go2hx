package stdgo._internal.go.internal.gcimporter;
@:structInit @:using(stdgo._internal.go.internal.gcimporter.Gcimporter_t_fakefileset_static_extension.T_fakeFileSet_static_extension) class T_fakeFileSet {
    public var _fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet> = (null : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
    public var _files : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_fileinfo.T_fileInfo>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_fileinfo.T_fileInfo>>);
    public function new(?_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, ?_files:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_fileinfo.T_fileInfo>>) {
        if (_fset != null) this._fset = _fset;
        if (_files != null) this._files = _files;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fakeFileSet(_fset, _files);
    }
}
