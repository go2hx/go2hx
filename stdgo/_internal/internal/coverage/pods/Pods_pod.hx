package stdgo._internal.internal.coverage.pods;
@:structInit @:using(stdgo._internal.internal.coverage.pods.Pods_pod_static_extension.Pod_static_extension) class Pod {
    public var metaFile : stdgo.GoString = "";
    public var counterDataFiles : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var origins : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var processIDs : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public function new(?metaFile:stdgo.GoString, ?counterDataFiles:stdgo.Slice<stdgo.GoString>, ?origins:stdgo.Slice<stdgo.GoInt>, ?processIDs:stdgo.Slice<stdgo.GoInt>) {
        if (metaFile != null) this.metaFile = metaFile;
        if (counterDataFiles != null) this.counterDataFiles = counterDataFiles;
        if (origins != null) this.origins = origins;
        if (processIDs != null) this.processIDs = processIDs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Pod(metaFile, counterDataFiles, origins, processIDs);
    }
}
