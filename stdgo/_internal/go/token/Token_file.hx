package stdgo._internal.go.token;
@:structInit @:using(stdgo._internal.go.token.Token_file_static_extension.File_static_extension) class File {
    public var _name : stdgo.GoString = "";
    public var _base : stdgo.GoInt = 0;
    public var _size : stdgo.GoInt = 0;
    public var _mutex : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _lines : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _infos : stdgo.Slice<stdgo._internal.go.token.Token_t_lineinfo.T_lineInfo> = (null : stdgo.Slice<stdgo._internal.go.token.Token_t_lineinfo.T_lineInfo>);
    public function new(?_name:stdgo.GoString, ?_base:stdgo.GoInt, ?_size:stdgo.GoInt, ?_mutex:stdgo._internal.sync.Sync_mutex.Mutex, ?_lines:stdgo.Slice<stdgo.GoInt>, ?_infos:stdgo.Slice<stdgo._internal.go.token.Token_t_lineinfo.T_lineInfo>) {
        if (_name != null) this._name = _name;
        if (_base != null) this._base = _base;
        if (_size != null) this._size = _size;
        if (_mutex != null) this._mutex = _mutex;
        if (_lines != null) this._lines = _lines;
        if (_infos != null) this._infos = _infos;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new File(_name, _base, _size, _mutex, _lines, _infos);
    }
}
