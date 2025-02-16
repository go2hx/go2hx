package stdgo._internal.testing;
@:interface typedef T_filterMatch = stdgo.StructType & {
    @:interfacetypeffun
    function _matches(_name:stdgo.Slice<stdgo.GoString>, _matchString:(stdgo.GoString, stdgo.GoString) -> { var _0 : Bool; var _1 : stdgo.Error; }):{ var _0 : Bool; var _1 : Bool; };
    @:interfacetypeffun
    function _verify(_name:stdgo.GoString, _matchString:(stdgo.GoString, stdgo.GoString) -> { var _0 : Bool; var _1 : stdgo.Error; }):stdgo.Error;
};
