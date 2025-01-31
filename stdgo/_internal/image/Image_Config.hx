package stdgo._internal.image;
import stdgo._internal.errors.Errors;
import stdgo._internal.image.color.Color;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.image.color.palette.Palette;
import stdgo._internal.testing.Testing;
import stdgo._internal.strconv.Strconv;
@:structInit @:using(stdgo._internal.image.Image_Config_static_extension.Config_static_extension) class Config {
    public var colorModel : stdgo._internal.image.color.Color_Model.Model = (null : stdgo._internal.image.color.Color_Model.Model);
    public var width : stdgo.GoInt = 0;
    public var height : stdgo.GoInt = 0;
    public function new(?colorModel:stdgo._internal.image.color.Color_Model.Model, ?width:stdgo.GoInt, ?height:stdgo.GoInt) {
        if (colorModel != null) this.colorModel = colorModel;
        if (width != null) this.width = width;
        if (height != null) this.height = height;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Config(colorModel, width, height);
    }
}
