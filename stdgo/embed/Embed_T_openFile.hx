package stdgo.embed;
@:structInit @:using(stdgo.embed.Embed.T_openFile_static_extension) abstract T_openFile(stdgo._internal.embed.Embed_T_openFile.T_openFile) from stdgo._internal.embed.Embed_T_openFile.T_openFile to stdgo._internal.embed.Embed_T_openFile.T_openFile {
    public var _f(get, set) : T_file;
    function get__f():T_file return this._f;
    function set__f(v:T_file):T_file {
        this._f = (v : stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file>);
        return v;
    }
    public var _offset(get, set) : haxe.Int64;
    function get__offset():haxe.Int64 return this._offset;
    function set__offset(v:haxe.Int64):haxe.Int64 {
        this._offset = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_f:T_file, ?_offset:haxe.Int64) this = new stdgo._internal.embed.Embed_T_openFile.T_openFile((_f : stdgo.Ref<stdgo._internal.embed.Embed_T_file.T_file>), (_offset : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
