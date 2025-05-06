package stdgo._internal.go.token;
@:structInit @:using(stdgo._internal.go.token.Token_fileset_static_extension.FileSet_static_extension) class FileSet {
    public var _mutex : stdgo._internal.sync.Sync_rwmutex.RWMutex = ({} : stdgo._internal.sync.Sync_rwmutex.RWMutex);
    public var _base : stdgo.GoInt = 0;
    public var _files : stdgo.Slice<stdgo.Ref<stdgo._internal.go.token.Token_file.File>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.token.Token_file.File>>);
    public var _last : stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.go.token.Token_file.File> = ({} : stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.go.token.Token_file.File>);
    public function new(?_mutex:stdgo._internal.sync.Sync_rwmutex.RWMutex, ?_base:stdgo.GoInt, ?_files:stdgo.Slice<stdgo.Ref<stdgo._internal.go.token.Token_file.File>>, ?_last:stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.go.token.Token_file.File>) {
        if (_mutex != null) this._mutex = _mutex;
        if (_base != null) this._base = _base;
        if (_files != null) this._files = _files;
        if (_last != null) this._last = _last;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new FileSet(_mutex, _base, _files, _last);
    }
}
