package stdgo._internal.internal.fuzz;
@:follow @:using(stdgo._internal.internal.fuzz.Fuzz_corpusentry_static_extension.CorpusEntry_static_extension) typedef CorpusEntry = {
    var parent : stdgo.GoString;
    var path : stdgo.GoString;
    var data : stdgo.Slice<stdgo.GoUInt8>;
    var values : stdgo.Slice<stdgo.AnyInterface>;
    var generation : stdgo.GoInt;
    var isSeed : Bool;
};
