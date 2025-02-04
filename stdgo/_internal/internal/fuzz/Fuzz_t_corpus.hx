package stdgo._internal.internal.fuzz;
@:structInit @:using(stdgo._internal.internal.fuzz.Fuzz_t_corpus_static_extension.T_corpus_static_extension) class T_corpus {
    public var _entries : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }> = (null : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>);
    public var _hashes : stdgo.GoMap<stdgo.GoArray<stdgo.GoUInt8>, Bool> = (null : stdgo.GoMap<stdgo.GoArray<stdgo.GoUInt8>, Bool>);
    public function new(?_entries:stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>, ?_hashes:stdgo.GoMap<stdgo.GoArray<stdgo.GoUInt8>, Bool>) {
        if (_entries != null) this._entries = _entries;
        if (_hashes != null) this._hashes = _hashes;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_corpus(_entries, _hashes);
    }
}
