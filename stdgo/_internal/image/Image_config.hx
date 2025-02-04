package stdgo._internal.image;
@:structInit @:using(stdgo._internal.image.Image_config_static_extension.Config_static_extension) class Config {
    public var colorModel : stdgo._internal.image.color.Color_model.Model = (null : stdgo._internal.image.color.Color_model.Model);
    public var width : stdgo.GoInt = 0;
    public var height : stdgo.GoInt = 0;
    public function new(?colorModel:stdgo._internal.image.color.Color_model.Model, ?width:stdgo.GoInt, ?height:stdgo.GoInt) {
        if (colorModel != null) this.colorModel = colorModel;
        if (width != null) this.width = width;
        if (height != null) this.height = height;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Config(colorModel, width, height);
    }
}
