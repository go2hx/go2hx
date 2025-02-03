package stdgo.image;
@:structInit @:using(stdgo.image.Image.Config_static_extension) abstract Config(stdgo._internal.image.Image_Config.Config) from stdgo._internal.image.Image_Config.Config to stdgo._internal.image.Image_Config.Config {
    public var colorModel(get, set) : Model;
    function get_colorModel():Model return this.colorModel;
    function set_colorModel(v:Model):Model {
        this.colorModel = v;
        return v;
    }
    public var width(get, set) : StdTypes.Int;
    function get_width():StdTypes.Int return this.width;
    function set_width(v:StdTypes.Int):StdTypes.Int {
        this.width = (v : stdgo.GoInt);
        return v;
    }
    public var height(get, set) : StdTypes.Int;
    function get_height():StdTypes.Int return this.height;
    function set_height(v:StdTypes.Int):StdTypes.Int {
        this.height = (v : stdgo.GoInt);
        return v;
    }
    public function new(?colorModel:Model, ?width:StdTypes.Int, ?height:StdTypes.Int) this = new stdgo._internal.image.Image_Config.Config(colorModel, (width : stdgo.GoInt), (height : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
