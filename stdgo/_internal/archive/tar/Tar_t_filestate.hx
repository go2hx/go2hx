package stdgo._internal.archive.tar;
@:interface typedef T_fileState = stdgo.StructType & {
    @:interfacetypeffun
    function _logicalRemaining():stdgo.GoInt64;
    @:interfacetypeffun
    function _physicalRemaining():stdgo.GoInt64;
};
