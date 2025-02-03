package stdgo.internal.coverage.stringtab;
@:structInit @:using(stdgo.internal.coverage.stringtab.Stringtab.Reader_static_extension) abstract Reader(stdgo._internal.internal.coverage.stringtab.Stringtab_Reader.Reader) from stdgo._internal.internal.coverage.stringtab.Stringtab_Reader.Reader to stdgo._internal.internal.coverage.stringtab.Stringtab_Reader.Reader {
    public var _r(get, set) : stdgo._internal.internal.coverage.slicereader.Slicereader_Reader.Reader;
    function get__r():stdgo._internal.internal.coverage.slicereader.Slicereader_Reader.Reader return this._r;
    function set__r(v:stdgo._internal.internal.coverage.slicereader.Slicereader_Reader.Reader):stdgo._internal.internal.coverage.slicereader.Slicereader_Reader.Reader {
        this._r = (v : stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_Reader.Reader>);
        return v;
    }
    public var _strs(get, set) : Array<String>;
    function get__strs():Array<String> return [for (i in this._strs) i];
    function set__strs(v:Array<String>):Array<String> {
        this._strs = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?_r:stdgo._internal.internal.coverage.slicereader.Slicereader_Reader.Reader, ?_strs:Array<String>) this = new stdgo._internal.internal.coverage.stringtab.Stringtab_Reader.Reader((_r : stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_Reader.Reader>), ([for (i in _strs) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
