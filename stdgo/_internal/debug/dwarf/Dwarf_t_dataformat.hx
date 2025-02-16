package stdgo._internal.debug.dwarf;
@:interface typedef T_dataFormat = stdgo.StructType & {
    @:interfacetypeffun
    function _version():stdgo.GoInt;
    @:interfacetypeffun
    function _dwarf64():{ var _0 : Bool; var _1 : Bool; };
    @:interfacetypeffun
    function _addrsize():stdgo.GoInt;
};
