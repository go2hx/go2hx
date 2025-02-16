package stdgo._internal.fmt;
@:interface typedef ScanState = stdgo.StructType & {
    @:interfacetypeffun
    function readRune():{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; };
    @:interfacetypeffun
    function unreadRune():stdgo.Error;
    @:interfacetypeffun
    function skipSpace():Void;
    @:interfacetypeffun
    function token(_skipSpace:Bool, _f:stdgo.GoInt32 -> Bool):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    @:interfacetypeffun
    function width():{ var _0 : stdgo.GoInt; var _1 : Bool; };
    @:interfacetypeffun
    function read(_buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
};
