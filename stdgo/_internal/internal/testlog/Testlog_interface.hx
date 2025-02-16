package stdgo._internal.internal.testlog;
@:interface typedef Interface = stdgo.StructType & {
    @:interfacetypeffun
    function getenv(_key:stdgo.GoString):Void;
    @:interfacetypeffun
    function stat(_file:stdgo.GoString):Void;
    @:interfacetypeffun
    function open(_file:stdgo.GoString):Void;
    @:interfacetypeffun
    function chdir(_dir:stdgo.GoString):Void;
};
