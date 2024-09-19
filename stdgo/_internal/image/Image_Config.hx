package stdgo._internal.image;
@:structInit class Config {
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
