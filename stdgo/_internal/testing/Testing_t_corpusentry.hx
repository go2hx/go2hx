package stdgo._internal.testing;
@:follow @:using(stdgo._internal.testing.Testing_t_corpusentry_static_extension.T_corpusEntry_static_extension) typedef T_corpusEntry = {
    var parent : stdgo.GoString;
    var path : stdgo.GoString;
    var data : stdgo.Slice<stdgo.GoUInt8>;
    var values : stdgo.Slice<stdgo.AnyInterface>;
    var generation : stdgo.GoInt;
    var isSeed : Bool;
};
