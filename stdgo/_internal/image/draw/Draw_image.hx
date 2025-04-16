package stdgo._internal.image.draw;
@:interface typedef Image = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function set(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_color.Color):Void;
    public dynamic function at(_0:stdgo.GoInt, _1:stdgo.GoInt):stdgo._internal.image.color.Color_color.Color;
    public dynamic function bounds():stdgo._internal.image.Image_rectangle.Rectangle;
    public dynamic function colorModel():stdgo._internal.image.color.Color_model.Model;
};
