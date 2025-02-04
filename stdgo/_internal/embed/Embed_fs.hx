package stdgo._internal.embed;
@:structInit @:using(stdgo._internal.embed.Embed_fs_static_extension.FS_static_extension) class FS {
    public var _files : stdgo.Ref<stdgo.Slice<stdgo._internal.embed.Embed_t_file.T_file>> = (null : stdgo.Ref<stdgo.Slice<stdgo._internal.embed.Embed_t_file.T_file>>);
    public function new(?_files:stdgo.Ref<stdgo.Slice<stdgo._internal.embed.Embed_t_file.T_file>>) {
        if (_files != null) this._files = _files;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new FS(_files);
    }
}
