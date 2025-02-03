package stdgo.internal.fuzz;
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_corpus_static_extension) abstract T_corpus(stdgo._internal.internal.fuzz.Fuzz_T_corpus.T_corpus) from stdgo._internal.internal.fuzz.Fuzz_T_corpus.T_corpus to stdgo._internal.internal.fuzz.Fuzz_T_corpus.T_corpus {
    public var _entries(get, set) : Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>>;
    function get__entries():Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>> return [for (i in this._entries) {
        final obj = i;
        { parent : obj.parent, path : obj.path, data : [for (i in obj.data) i], values : [for (i in obj.values) i], generation : obj.generation, isSeed : obj.isSeed };
    }];
    function set__entries(v:Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>>):Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>> {
        this._entries = ([for (i in v) {
            final obj = i;
            { parent : (obj.parent : stdgo.GoString), path : (obj.path : stdgo.GoString), data : ([for (i in obj.data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>), generation : (obj.generation : stdgo.GoInt), isSeed : obj.isSeed };
        }] : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>);
        return v;
    }
    public var _hashes(get, set) : stdgo.GoMap<stdgo.GoArray<stdgo.GoUInt8>, Bool>;
    function get__hashes():stdgo.GoMap<stdgo.GoArray<stdgo.GoUInt8>, Bool> return this._hashes;
    function set__hashes(v:stdgo.GoMap<stdgo.GoArray<stdgo.GoUInt8>, Bool>):stdgo.GoMap<stdgo.GoArray<stdgo.GoUInt8>, Bool> {
        this._hashes = (v : stdgo.GoMap<stdgo.GoArray<stdgo.GoUInt8>, Bool>);
        return v;
    }
    public function new(?_entries:Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>>, ?_hashes:stdgo.GoMap<stdgo.GoArray<stdgo.GoUInt8>, Bool>) this = new stdgo._internal.internal.fuzz.Fuzz_T_corpus.T_corpus(([for (i in _entries) {
        final obj = i;
        { parent : (obj.parent : stdgo.GoString), path : (obj.path : stdgo.GoString), data : ([for (i in obj.data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>), generation : (obj.generation : stdgo.GoInt), isSeed : obj.isSeed };
    }] : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>), (_hashes : stdgo.GoMap<stdgo.GoArray<stdgo.GoUInt8>, Bool>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
