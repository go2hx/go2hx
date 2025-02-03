package stdgo.internal.coverage;
@:structInit @:using(stdgo.internal.coverage.Coverage.MetaFileCollection_static_extension) abstract MetaFileCollection(stdgo._internal.internal.coverage.Coverage_MetaFileCollection.MetaFileCollection) from stdgo._internal.internal.coverage.Coverage_MetaFileCollection.MetaFileCollection to stdgo._internal.internal.coverage.Coverage_MetaFileCollection.MetaFileCollection {
    public var importPaths(get, set) : Array<String>;
    function get_importPaths():Array<String> return [for (i in this.importPaths) i];
    function set_importPaths(v:Array<String>):Array<String> {
        this.importPaths = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var metaFileFragments(get, set) : Array<String>;
    function get_metaFileFragments():Array<String> return [for (i in this.metaFileFragments) i];
    function set_metaFileFragments(v:Array<String>):Array<String> {
        this.metaFileFragments = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?importPaths:Array<String>, ?metaFileFragments:Array<String>) this = new stdgo._internal.internal.coverage.Coverage_MetaFileCollection.MetaFileCollection(([for (i in importPaths) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), ([for (i in metaFileFragments) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
