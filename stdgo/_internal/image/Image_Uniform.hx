package stdgo._internal.image;
@:structInit @:using(stdgo._internal.image.Image_Uniform_static_extension.Uniform_static_extension) class Uniform {
    public var c : stdgo._internal.image.color.Color_Color.Color = (null : stdgo._internal.image.color.Color_Color.Color);
    public function new(?c:stdgo._internal.image.color.Color_Color.Color) {
        if (c != null) this.c = c;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Uniform(c);
    }
}