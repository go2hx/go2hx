package stdgo.image;
class Uniform_static_extension {
    static public function opaque(_c:Uniform):Bool {
        final _c = (_c : stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform>);
        return stdgo._internal.image.Image_Uniform_static_extension.Uniform_static_extension.opaque(_c);
    }
    static public function rGBA64At(_c:Uniform, _x:StdTypes.Int, _y:StdTypes.Int):RGBA64 {
        final _c = (_c : stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_Uniform_static_extension.Uniform_static_extension.rGBA64At(_c, _x, _y);
    }
    static public function at(_c:Uniform, _x:StdTypes.Int, _y:StdTypes.Int):Color {
        final _c = (_c : stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.Image_Uniform_static_extension.Uniform_static_extension.at(_c, _x, _y);
    }
    static public function bounds(_c:Uniform):Rectangle {
        final _c = (_c : stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform>);
        return stdgo._internal.image.Image_Uniform_static_extension.Uniform_static_extension.bounds(_c);
    }
    static public function convert(_c:Uniform, _0:Color):Color {
        final _c = (_c : stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform>);
        return stdgo._internal.image.Image_Uniform_static_extension.Uniform_static_extension.convert(_c, _0);
    }
    static public function colorModel(_c:Uniform):Model {
        final _c = (_c : stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform>);
        return stdgo._internal.image.Image_Uniform_static_extension.Uniform_static_extension.colorModel(_c);
    }
    static public function rGBA(_c:Uniform):stdgo.Tuple.Tuple4<std.UInt, std.UInt, std.UInt, std.UInt> {
        final _c = (_c : stdgo.Ref<stdgo._internal.image.Image_Uniform.Uniform>);
        return {
            final obj = stdgo._internal.image.Image_Uniform_static_extension.Uniform_static_extension.rGBA(_c);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
}
