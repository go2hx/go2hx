package stdgo.image;
@:structInit @:using(stdgo.image.Image.Uniform_static_extension) abstract Uniform(stdgo._internal.image.Image_Uniform.Uniform) from stdgo._internal.image.Image_Uniform.Uniform to stdgo._internal.image.Image_Uniform.Uniform {
    public var c(get, set) : Color;
    function get_c():Color return this.c;
    function set_c(v:Color):Color {
        this.c = v;
        return v;
    }
    public function new(?c:Color) this = new stdgo._internal.image.Image_Uniform.Uniform(c);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
