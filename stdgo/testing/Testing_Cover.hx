package stdgo.testing;
@:structInit @:using(stdgo.testing.Testing.Cover_static_extension) abstract Cover(stdgo._internal.testing.Testing_Cover.Cover) from stdgo._internal.testing.Testing_Cover.Cover to stdgo._internal.testing.Testing_Cover.Cover {
    public var mode(get, set) : String;
    function get_mode():String return this.mode;
    function set_mode(v:String):String {
        this.mode = (v : stdgo.GoString);
        return v;
    }
    public var counters(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoUInt32>>;
    function get_counters():stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoUInt32>> return this.counters;
    function set_counters(v:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoUInt32>>):stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoUInt32>> {
        this.counters = (v : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoUInt32>>);
        return v;
    }
    public var blocks(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.testing.Testing_CoverBlock.CoverBlock>>;
    function get_blocks():stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.testing.Testing_CoverBlock.CoverBlock>> return this.blocks;
    function set_blocks(v:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.testing.Testing_CoverBlock.CoverBlock>>):stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.testing.Testing_CoverBlock.CoverBlock>> {
        this.blocks = (v : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.testing.Testing_CoverBlock.CoverBlock>>);
        return v;
    }
    public var coveredPackages(get, set) : String;
    function get_coveredPackages():String return this.coveredPackages;
    function set_coveredPackages(v:String):String {
        this.coveredPackages = (v : stdgo.GoString);
        return v;
    }
    public function new(?mode:String, ?counters:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoUInt32>>, ?blocks:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.testing.Testing_CoverBlock.CoverBlock>>, ?coveredPackages:String) this = new stdgo._internal.testing.Testing_Cover.Cover((mode : stdgo.GoString), (counters : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoUInt32>>), (blocks : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.testing.Testing_CoverBlock.CoverBlock>>), (coveredPackages : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
