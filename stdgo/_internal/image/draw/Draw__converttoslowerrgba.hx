package stdgo._internal.image.draw;
function _convertToSlowerRGBA(_m:stdgo._internal.image.Image_image.Image):stdgo.Ref<stdgo._internal.image.draw.Draw_t_slowerrgba.T_slowerRGBA> {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>)) : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>), _1 : false };
            }, _rgba = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return (stdgo.Go.setRef(({ pix : ((null : stdgo.Slice<stdgo.GoUInt8>).__append__(...((@:checkr _rgba ?? throw "null pointer dereference").pix : Array<stdgo.GoUInt8>))), stride : (@:checkr _rgba ?? throw "null pointer dereference").stride, rect : (@:checkr _rgba ?? throw "null pointer dereference").rect?.__copy__() } : stdgo._internal.image.draw.Draw_t_slowerrgba.T_slowerRGBA)) : stdgo.Ref<stdgo._internal.image.draw.Draw_t_slowerrgba.T_slowerRGBA>);
            };
        };
        var _rgba = stdgo._internal.image.Image_newrgba.newRGBA(_m.bounds()?.__copy__());
        stdgo._internal.image.draw.Draw_draw.draw(stdgo.Go.asInterface(_rgba), @:check2r _rgba.bounds()?.__copy__(), _m, _m.bounds().min?.__copy__(), (1 : stdgo._internal.image.draw.Draw_op.Op));
        return (stdgo.Go.setRef(({ pix : (@:checkr _rgba ?? throw "null pointer dereference").pix, stride : (@:checkr _rgba ?? throw "null pointer dereference").stride, rect : (@:checkr _rgba ?? throw "null pointer dereference").rect?.__copy__() } : stdgo._internal.image.draw.Draw_t_slowerrgba.T_slowerRGBA)) : stdgo.Ref<stdgo._internal.image.draw.Draw_t_slowerrgba.T_slowerRGBA>);
    }
