package stdgo.internal.coverage.pods;
@:structInit @:using(stdgo.internal.coverage.pods.Pods.Pod_static_extension) abstract Pod(stdgo._internal.internal.coverage.pods.Pods_pod.Pod) from stdgo._internal.internal.coverage.pods.Pods_pod.Pod to stdgo._internal.internal.coverage.pods.Pods_pod.Pod {
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
    public function new(?metaFile:String, ?counterDataFiles:Array<String>, ?origins:Array<StdTypes.Int>, ?processIDs:Array<StdTypes.Int>) this = new stdgo._internal.internal.coverage.pods.Pods_pod.Pod((metaFile : stdgo.GoString), ([for (i in counterDataFiles) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), ([for (i in origins) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>), ([for (i in processIDs) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.coverage.pods.Pods.T_fileWithAnnotations_static_extension) @:dox(hide) abstract T_fileWithAnnotations(stdgo._internal.internal.coverage.pods.Pods_t_filewithannotations.T_fileWithAnnotations) from stdgo._internal.internal.coverage.pods.Pods_t_filewithannotations.T_fileWithAnnotations to stdgo._internal.internal.coverage.pods.Pods_t_filewithannotations.T_fileWithAnnotations {
    public var _file(get, set) : String;
    function get__file():String return this._file;
    function set__file(v:String):String {
        this._file = (v : stdgo.GoString);
        return v;
    }
    public var _origin(get, set) : StdTypes.Int;
    function get__origin():StdTypes.Int return this._origin;
    function set__origin(v:StdTypes.Int):StdTypes.Int {
        this._origin = (v : stdgo.GoInt);
        return v;
    }
    public var _pid(get, set) : StdTypes.Int;
    function get__pid():StdTypes.Int return this._pid;
    function set__pid(v:StdTypes.Int):StdTypes.Int {
        this._pid = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_file:String, ?_origin:StdTypes.Int, ?_pid:StdTypes.Int) this = new stdgo._internal.internal.coverage.pods.Pods_t_filewithannotations.T_fileWithAnnotations((_file : stdgo.GoString), (_origin : stdgo.GoInt), (_pid : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.coverage.pods.Pods.T_protoPod_static_extension) @:dox(hide) abstract T_protoPod(stdgo._internal.internal.coverage.pods.Pods_t_protopod.T_protoPod) from stdgo._internal.internal.coverage.pods.Pods_t_protopod.T_protoPod to stdgo._internal.internal.coverage.pods.Pods_t_protopod.T_protoPod {
    public var _mf(get, set) : String;
    function get__mf():String return this._mf;
    function set__mf(v:String):String {
        this._mf = (v : stdgo.GoString);
        return v;
    }
    public var _elements(get, set) : Array<T_fileWithAnnotations>;
    function get__elements():Array<T_fileWithAnnotations> return [for (i in this._elements) i];
    function set__elements(v:Array<T_fileWithAnnotations>):Array<T_fileWithAnnotations> {
        this._elements = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.coverage.pods.Pods_t_filewithannotations.T_fileWithAnnotations>);
        return v;
    }
    public function new(?_mf:String, ?_elements:Array<T_fileWithAnnotations>) this = new stdgo._internal.internal.coverage.pods.Pods_t_protopod.T_protoPod((_mf : stdgo.GoString), ([for (i in _elements) i] : stdgo.Slice<stdgo._internal.internal.coverage.pods.Pods_t_filewithannotations.T_fileWithAnnotations>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef PodPointer = stdgo._internal.internal.coverage.pods.Pods_podpointer.PodPointer;
class Pod_static_extension {

}
@:dox(hide) typedef T_fileWithAnnotationsPointer = stdgo._internal.internal.coverage.pods.Pods_t_filewithannotationspointer.T_fileWithAnnotationsPointer;
@:dox(hide) class T_fileWithAnnotations_static_extension {

}
@:dox(hide) typedef T_protoPodPointer = stdgo._internal.internal.coverage.pods.Pods_t_protopodpointer.T_protoPodPointer;
@:dox(hide) class T_protoPod_static_extension {

}
class Pods {
    /**
        * CollectPods visits the files contained within the directories in
        * the list 'dirs', collects any coverage-related files, partitions
        * them into pods, and returns a list of the pods to the caller, along
        * with an error if something went wrong during directory/file
        * reading.
        * 
        * CollectPods skips over any file that is not related to coverage
        * (e.g. avoids looking at things that are not meta-data files or
        * counter-data files). CollectPods also skips over 'orphaned' counter
        * data files (e.g. counter data files for which we can't find the
        * corresponding meta-data file). If "warn" is true, CollectPods will
        * issue warnings to stderr when it encounters non-fatal problems (for
        * orphans or a directory with no meta-data files).
    **/
    static public inline function collectPods(_dirs:Array<String>, _warn:Bool):stdgo.Tuple<Array<Pod>, stdgo.Error> {
        final _dirs = ([for (i in _dirs) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return {
            final obj = stdgo._internal.internal.coverage.pods.Pods_collectpods.collectPods(_dirs, _warn);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        * CollectPodsFromFiles functions the same as "CollectPods" but
        * operates on an explicit list of files instead of a directory.
    **/
    static public inline function collectPodsFromFiles(_files:Array<String>, _warn:Bool):Array<Pod> {
        final _files = ([for (i in _files) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return [for (i in stdgo._internal.internal.coverage.pods.Pods_collectpodsfromfiles.collectPodsFromFiles(_files, _warn)) i];
    }
}
