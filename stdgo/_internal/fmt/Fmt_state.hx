package stdgo._internal.fmt;
@:interface typedef State = stdgo.StructType & {
    @:interfacetypeffun
    function write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:interfacetypeffun
    function width():{ var _0 : stdgo.GoInt; var _1 : Bool; };
    @:interfacetypeffun
    function precision():{ var _0 : stdgo.GoInt; var _1 : Bool; };
    @:interfacetypeffun
    function flag(_c:stdgo.GoInt):Bool;
};
