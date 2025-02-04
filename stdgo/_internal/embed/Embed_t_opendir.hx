package stdgo._internal.embed;
@:structInit @:using(stdgo._internal.embed.Embed_t_opendir_static_extension.T_openDir_static_extension) class T_openDir {
    public var _f : stdgo.Ref<stdgo._internal.embed.Embed_t_file.T_file> = (null : stdgo.Ref<stdgo._internal.embed.Embed_t_file.T_file>);
    public var _files : stdgo.Slice<stdgo._internal.embed.Embed_t_file.T_file> = (null : stdgo.Slice<stdgo._internal.embed.Embed_t_file.T_file>);
    public var _offset : stdgo.GoInt = 0;
    public function new(?_f:stdgo.Ref<stdgo._internal.embed.Embed_t_file.T_file>, ?_files:stdgo.Slice<stdgo._internal.embed.Embed_t_file.T_file>, ?_offset:stdgo.GoInt) {
        if (_f != null) this._f = _f;
        if (_files != null) this._files = _files;
        if (_offset != null) this._offset = _offset;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_openDir(_f, _files, _offset);
    }
}
