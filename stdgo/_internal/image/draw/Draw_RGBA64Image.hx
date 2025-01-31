package stdgo._internal.image.draw;
import stdgo._internal.image.internal.imageutil.Imageutil;
import stdgo._internal.image.color.Color;
@:interface typedef RGBA64Image = stdgo.StructType & {
    > stdgo._internal.image.Image_RGBA64Image.RGBA64Image,
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function set(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_Color.Color):Void;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function setRGBA64(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_RGBA64.RGBA64):Void;
};
