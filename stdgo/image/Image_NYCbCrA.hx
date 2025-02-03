package stdgo.image;
@:structInit @:using(stdgo.image.Image.NYCbCrA_static_extension) abstract NYCbCrA(stdgo._internal.image.Image_NYCbCrA.NYCbCrA) from stdgo._internal.image.Image_NYCbCrA.NYCbCrA to stdgo._internal.image.Image_NYCbCrA.NYCbCrA {
    public var yCbCr(get, set) : YCbCr;
    function get_yCbCr():YCbCr return this.yCbCr;
    function set_yCbCr(v:YCbCr):YCbCr {
        this.yCbCr = v;
        return v;
    }
    public var a(get, set) : Array<std.UInt>;
    function get_a():Array<std.UInt> return [for (i in this.a) i];
    function set_a(v:Array<std.UInt>):Array<std.UInt> {
        this.a = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var aStride(get, set) : StdTypes.Int;
    function get_aStride():StdTypes.Int return this.aStride;
    function set_aStride(v:StdTypes.Int):StdTypes.Int {
        this.aStride = (v : stdgo.GoInt);
        return v;
    }
    public function new(?yCbCr:YCbCr, ?a:Array<std.UInt>, ?aStride:StdTypes.Int) this = new stdgo._internal.image.Image_NYCbCrA.NYCbCrA(yCbCr, ([for (i in a) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (aStride : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
