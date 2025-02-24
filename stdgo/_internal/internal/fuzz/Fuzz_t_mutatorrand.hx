package stdgo._internal.internal.fuzz;
@:interface typedef T_mutatorRand = stdgo.StructType & {
    @:interfacetypeffun
    function _uint32():stdgo.GoUInt32;
    @:interfacetypeffun
    function _intn(_0:stdgo.GoInt):stdgo.GoInt;
    @:interfacetypeffun
    function _uint32n(_0:stdgo.GoUInt32):stdgo.GoUInt32;
    @:interfacetypeffun
    function _exp2():stdgo.GoInt;
    @:interfacetypeffun
    function _bool():Bool;
    @:interfacetypeffun
    function _save(_randState:stdgo.Pointer<stdgo.GoUInt64>, _randInc:stdgo.Pointer<stdgo.GoUInt64>):Void;
    @:interfacetypeffun
    function _restore(_randState:stdgo.GoUInt64, _randInc:stdgo.GoUInt64):Void;
};
