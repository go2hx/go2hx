package stdgo.embed;
@:structInit @:using(stdgo.embed.Embed.T_openDir_static_extension) abstract T_openDir(stdgo._internal.embed.Embed_T_openDir.T_openDir) from stdgo._internal.embed.Embed_T_openDir.T_openDir to stdgo._internal.embed.Embed_T_openDir.T_openDir {
    public var _f(get, set) : T_file;
    function get__f():T_file return this._f;
    function set__f(v:T_file):T_file {
        this._f = (v : stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file>);
        return v;
    }
    public var _files(get, set) : Array<T_file>;
    function get__files():Array<T_file> return [for (i in this._files) i];
    function set__files(v:Array<T_file>):Array<T_file> {
        this._files = ([for (i in v) i] : stdgo.Slice<stdgo._internal.embed.Embed_T_file.T_file>);
        return v;
    }
    public var _offset(get, set) : StdTypes.Int;
    function get__offset():StdTypes.Int return this._offset;
    function set__offset(v:StdTypes.Int):StdTypes.Int {
        this._offset = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_f:T_file, ?_files:Array<T_file>, ?_offset:StdTypes.Int) this = new stdgo._internal.embed.Embed_T_openDir.T_openDir((_f : stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file>), ([for (i in _files) i] : stdgo.Slice<stdgo._internal.embed.Embed_T_file.T_file>), (_offset : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
