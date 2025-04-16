package stdgo._internal.testing;
@:interface typedef T_testDeps = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function importPath():stdgo.GoString;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function matchString(_pat:stdgo.GoString, _str:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; };
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function setPanicOnExit0(_0:Bool):Void;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function startCPUProfile(_0:stdgo._internal.io.Io_writer.Writer):stdgo.Error;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function stopCPUProfile():Void;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function startTestLog(_0:stdgo._internal.io.Io_writer.Writer):Void;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function stopTestLog():stdgo.Error;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function writeProfileTo(_0:stdgo.GoString, _1:stdgo._internal.io.Io_writer.Writer, _2:stdgo.GoInt):stdgo.Error;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function coordinateFuzzing(_0:stdgo._internal.time.Time_duration.Duration, _1:stdgo.GoInt64, _2:stdgo._internal.time.Time_duration.Duration, _3:stdgo.GoInt64, _4:stdgo.GoInt, _5:stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>, _6:stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>, _7:stdgo.GoString, _8:stdgo.GoString):stdgo.Error;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function runFuzzWorker(_0:({ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }) -> stdgo.Error):stdgo.Error;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function readCorpus(_0:stdgo.GoString, _1:stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>):{ var _0 : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>; var _1 : stdgo.Error; };
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function checkCorpus(_0:stdgo.Slice<stdgo.AnyInterface>, _1:stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>):stdgo.Error;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function resetCoverage():Void;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function snapshotCoverage():Void;
};
