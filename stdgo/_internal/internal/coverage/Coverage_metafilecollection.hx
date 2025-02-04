package stdgo._internal.internal.coverage;
@:structInit @:using(stdgo._internal.internal.coverage.Coverage_metafilecollection_static_extension.MetaFileCollection_static_extension) class MetaFileCollection {
    public var importPaths : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var metaFileFragments : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?importPaths:stdgo.Slice<stdgo.GoString>, ?metaFileFragments:stdgo.Slice<stdgo.GoString>) {
        if (importPaths != null) this.importPaths = importPaths;
        if (metaFileFragments != null) this.metaFileFragments = metaFileFragments;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new MetaFileCollection(importPaths, metaFileFragments);
    }
}
