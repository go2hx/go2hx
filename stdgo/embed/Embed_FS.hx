package stdgo.embed;
@:structInit @:using(stdgo.embed.Embed.FS_static_extension) abstract FS(stdgo._internal.embed.Embed_FS.FS) from stdgo._internal.embed.Embed_FS.FS to stdgo._internal.embed.Embed_FS.FS {
    public var _files(get, set) : Array<T_file>;
    function get__files():Array<T_file> return this._files;
    function set__files(v:Array<T_file>):Array<T_file> {
        this._files = (v : stdgo.Ref<stdgo.Slice<stdgo._internal.embed.Embed_T_file.T_file>>);
        return v;
    }
    public function new(?_files:Array<T_file>) this = new stdgo._internal.embed.Embed_FS.FS((_files : stdgo.Ref<stdgo.Slice<stdgo._internal.embed.Embed_T_file.T_file>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
