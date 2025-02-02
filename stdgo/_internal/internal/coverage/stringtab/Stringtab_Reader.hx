package stdgo._internal.internal.coverage.stringtab;
@:structInit @:using(stdgo._internal.internal.coverage.stringtab.Stringtab_Reader_static_extension.Reader_static_extension) class Reader {
    public var _r : stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_Reader.Reader> = (null : stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_Reader.Reader>);
    public var _strs : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?_r:stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_Reader.Reader>, ?_strs:stdgo.Slice<stdgo.GoString>) {
        if (_r != null) this._r = _r;
        if (_strs != null) this._strs = _strs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Reader(_r, _strs);
    }
}
