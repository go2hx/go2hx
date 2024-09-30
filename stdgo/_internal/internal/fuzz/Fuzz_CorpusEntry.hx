package stdgo._internal.internal.fuzz;
@:follow typedef CorpusEntry = {
    var parent : stdgo.GoString;
    var path : stdgo.GoString;
    var data : stdgo.Slice<stdgo.GoUInt8>;
    var values : stdgo.Slice<stdgo.AnyInterface>;
    var generation : stdgo.GoInt;
    var isSeed : Bool;
};
