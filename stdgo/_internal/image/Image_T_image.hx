package stdgo._internal.image;
typedef T_image = stdgo.StructType & {
    > stdgo._internal.image.Image_Image.Image,
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function opaque():Bool;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function set(_0:stdgo.GoInt, _1:stdgo.GoInt, _2:stdgo._internal.image.color.Color_Color.Color):Void;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function subImage(_0:stdgo._internal.image.Image_Rectangle.Rectangle):stdgo._internal.image.Image_Image.Image;
};
