package stdgo.image.jpeg;
@:structInit @:using(stdgo.image.jpeg.Jpeg.Options_static_extension) abstract Options(stdgo._internal.image.jpeg.Jpeg_Options.Options) from stdgo._internal.image.jpeg.Jpeg_Options.Options to stdgo._internal.image.jpeg.Jpeg_Options.Options {
    public var quality(get, set) : StdTypes.Int;
    function get_quality():StdTypes.Int return this.quality;
    function set_quality(v:StdTypes.Int):StdTypes.Int {
        this.quality = (v : stdgo.GoInt);
        return v;
    }
    public function new(?quality:StdTypes.Int) this = new stdgo._internal.image.jpeg.Jpeg_Options.Options((quality : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
