package stdgo._internal.testing;
@:follow typedef T_corpusEntry = {
    var parent : stdgo.GoString;
    var path : stdgo.GoString;
    var data : stdgo.Slice<stdgo.GoUInt8>;
    var values : stdgo.Slice<stdgo.AnyInterface>;
    var generation : stdgo.GoInt;
    var isSeed : Bool;
};
