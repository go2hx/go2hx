package stdgo.internal.coverage.pods;
@:structInit @:using(stdgo.internal.coverage.pods.Pods.Pod_static_extension) abstract Pod(stdgo._internal.internal.coverage.pods.Pods_Pod.Pod) from stdgo._internal.internal.coverage.pods.Pods_Pod.Pod to stdgo._internal.internal.coverage.pods.Pods_Pod.Pod {
    public var metaFile(get, set) : String;
    function get_metaFile():String return this.metaFile;
    function set_metaFile(v:String):String {
        this.metaFile = (v : stdgo.GoString);
        return v;
    }
    public var counterDataFiles(get, set) : Array<String>;
    function get_counterDataFiles():Array<String> return [for (i in this.counterDataFiles) i];
    function set_counterDataFiles(v:Array<String>):Array<String> {
        this.counterDataFiles = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var origins(get, set) : Array<StdTypes.Int>;
    function get_origins():Array<StdTypes.Int> return [for (i in this.origins) i];
    function set_origins(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.origins = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var processIDs(get, set) : Array<StdTypes.Int>;
    function get_processIDs():Array<StdTypes.Int> return [for (i in this.processIDs) i];
    function set_processIDs(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.processIDs = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public function new(?metaFile:String, ?counterDataFiles:Array<String>, ?origins:Array<StdTypes.Int>, ?processIDs:Array<StdTypes.Int>) this = new stdgo._internal.internal.coverage.pods.Pods_Pod.Pod((metaFile : stdgo.GoString), ([for (i in counterDataFiles) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), ([for (i in origins) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>), ([for (i in processIDs) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
