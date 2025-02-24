package stdgo._internal.crypto.elliptic;
@:interface typedef T_nistPoint<T_> = stdgo.StructType & {
    @:interfacetypeffun
    function bytes():stdgo.Slice<stdgo.GoUInt8>;
    @:interfacetypeffun
    function setBytes(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : Dynamic; var _1 : stdgo.Error; };
    @:interfacetypeffun
    function add(_0:Dynamic, _1:Dynamic):Dynamic;
    @:interfacetypeffun
    function double(_0:Dynamic):Dynamic;
    @:interfacetypeffun
    function scalarMult(_0:Dynamic, _1:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : Dynamic; var _1 : stdgo.Error; };
    @:interfacetypeffun
    function scalarBaseMult(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : Dynamic; var _1 : stdgo.Error; };
};
