package stdgo._internal.io;
@:interface typedef RuneScanner = stdgo.StructType & {
    @:interfacetypeffun
    function unreadRune():stdgo.Error;
    function readRune():{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; };
};
