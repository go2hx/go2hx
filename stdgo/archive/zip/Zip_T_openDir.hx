package stdgo.archive.zip;
@:structInit @:using(stdgo.archive.zip.Zip.T_openDir_static_extension) abstract T_openDir(stdgo._internal.archive.zip.Zip_T_openDir.T_openDir) from stdgo._internal.archive.zip.Zip_T_openDir.T_openDir to stdgo._internal.archive.zip.Zip_T_openDir.T_openDir {
    public var _e(get, set) : T_fileListEntry;
    function get__e():T_fileListEntry return this._e;
    function set__e(v:T_fileListEntry):T_fileListEntry {
        this._e = (v : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry>);
        return v;
    }
    public var _files(get, set) : Array<T_fileListEntry>;
    function get__files():Array<T_fileListEntry> return [for (i in this._files) i];
    function set__files(v:Array<T_fileListEntry>):Array<T_fileListEntry> {
        this._files = ([for (i in v) i] : stdgo.Slice<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry>);
        return v;
    }
    public var _offset(get, set) : StdTypes.Int;
    function get__offset():StdTypes.Int return this._offset;
    function set__offset(v:StdTypes.Int):StdTypes.Int {
        this._offset = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_e:T_fileListEntry, ?_files:Array<T_fileListEntry>, ?_offset:StdTypes.Int) this = new stdgo._internal.archive.zip.Zip_T_openDir.T_openDir((_e : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry>), ([for (i in _files) i] : stdgo.Slice<stdgo._internal.archive.zip.Zip_T_fileListEntry.T_fileListEntry>), (_offset : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
