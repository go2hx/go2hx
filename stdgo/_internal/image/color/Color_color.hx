package stdgo._internal.image.color;
@:interface typedef Color = stdgo.StructType & {
    /**
        * RGBA returns the alpha-premultiplied red, green, blue and alpha values
        * for the color. Each value ranges within [0, 0xffff], but is represented
        * by a uint32 so that multiplying by a blend factor up to 0xffff will not
        * overflow.
        * 
        * An alpha-premultiplied color component c has been scaled by alpha (a),
        * so has valid values 0 <= c <= a.
        
        
    **/
    @:interfacetypeffun
    public dynamic function rGBA():{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; };
};
