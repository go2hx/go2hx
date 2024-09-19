package stdgo._internal.image;
typedef T_image = stdgo.StructType & {
    > stdgo._internal.image.Image_Image.Image,
    /**
        
        
        
    **/
    public dynamic function opaque():Bool;
    /**
        
        
        
    **/
    public dynamic function set(_0:stdgo.GoInt, _1:stdgo.GoInt, _2:stdgo._internal.image.color.Color_Color.Color):Void;
    /**
        
        
        
    **/
    public dynamic function subImage(_0:stdgo._internal.image.Image_Rectangle.Rectangle):stdgo._internal.image.Image_Image.Image;
};
