package stdgo._internal.embed;
@:structInit @:using(stdgo._internal.embed.Embed_t_openfile_static_extension.T_openFile_static_extension) class T_openFile {
    public var _f : stdgo.Ref<stdgo._internal.embed.Embed_t_file.T_file> = (null : stdgo.Ref<stdgo._internal.embed.Embed_t_file.T_file>);
    public var _offset : stdgo.GoInt64 = 0;
    public function new(?_f:stdgo.Ref<stdgo._internal.embed.Embed_t_file.T_file>, ?_offset:stdgo.GoInt64) {
        if (_f != null) this._f = _f;
        if (_offset != null) this._offset = _offset;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_openFile(_f, _offset);
    }
}
