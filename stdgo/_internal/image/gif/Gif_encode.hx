package stdgo._internal.image.gif;
function encode(_w:stdgo._internal.io.Io_writer.Writer, _m:stdgo._internal.image.Image_image.Image, _o:stdgo.Ref<stdgo._internal.image.gif.Gif_options.Options>):stdgo.Error {
        var _b = (_m.bounds()?.__copy__() : stdgo._internal.image.Image_rectangle.Rectangle);
        if (((_b.dx() >= (65536 : stdgo.GoInt) : Bool) || (_b.dy() >= (65536 : stdgo.GoInt) : Bool) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("gif: image is too large to encode" : stdgo.GoString));
        };
        var _opts = (new stdgo._internal.image.gif.Gif_options.Options() : stdgo._internal.image.gif.Gif_options.Options);
        if ((_o != null && ((_o : Dynamic).__nil__ == null || !(_o : Dynamic).__nil__))) {
            _opts = (_o : stdgo._internal.image.gif.Gif_options.Options)?.__copy__();
        };
        if (((_opts.numColors < (1 : stdgo.GoInt) : Bool) || ((256 : stdgo.GoInt) < _opts.numColors : Bool) : Bool)) {
            _opts.numColors = (256 : stdgo.GoInt);
        };
        if (_opts.drawer == null) {
            _opts.drawer = stdgo._internal.image.draw.Draw_floydsteinberg.floydSteinberg;
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>)) : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>), _1 : false };
        }, _pm = __tmp__._0, __0 = __tmp__._1;
        if ((_pm == null || (_pm : Dynamic).__nil__)) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m.colorModel()) : stdgo._internal.image.color.Color_palette.Palette)) : stdgo._internal.image.color.Color_palette.Palette), _1 : true };
                } catch(_) {
                    { _0 : (new stdgo._internal.image.color.Color_palette.Palette(0, 0) : stdgo._internal.image.color.Color_palette.Palette), _1 : false };
                }, _cp = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _pm = stdgo._internal.image.Image_newpaletted.newPaletted(_b?.__copy__(), _cp);
                    {
                        var _y = (_b.min.y : stdgo.GoInt);
                        while ((_y < _b.max.y : Bool)) {
                            {
                                var _x = (_b.min.x : stdgo.GoInt);
                                while ((_x < _b.max.x : Bool)) {
                                    @:check2r _pm.set(_x, _y, _cp.convert(_m.at(_x, _y)));
                                    _x++;
                                };
                            };
                            _y++;
                        };
                    };
                };
            };
        };
        if (((_pm == null || (_pm : Dynamic).__nil__) || (((@:checkr _pm ?? throw "null pointer dereference").palette.length) > _opts.numColors : Bool) : Bool)) {
            _pm = stdgo._internal.image.Image_newpaletted.newPaletted(_b?.__copy__(), (stdgo._internal.image.color.palette.Palette_plan9.plan9.__slice__(0, _opts.numColors) : stdgo.Slice<stdgo._internal.image.color.Color_color.Color>));
            if (_opts.quantizer != null) {
                (@:checkr _pm ?? throw "null pointer dereference").palette = _opts.quantizer.quantize((new stdgo.Slice<stdgo._internal.image.color.Color_color.Color>((0 : stdgo.GoInt).toBasic(), _opts.numColors) : stdgo._internal.image.color.Color_palette.Palette), _m);
            };
            _opts.drawer.draw(stdgo.Go.asInterface(_pm), _b?.__copy__(), _m, _b.min?.__copy__());
        };
        if (stdgo.Go.toInterface((@:checkr _pm ?? throw "null pointer dereference").rect.min) != stdgo.Go.toInterface(((new stdgo._internal.image.Image_point.Point() : stdgo._internal.image.Image_point.Point)))) {
            var _dup = ((_pm : stdgo._internal.image.Image_paletted.Paletted)?.__copy__() : stdgo._internal.image.Image_paletted.Paletted);
            _dup.rect = _dup.rect.sub(_dup.rect.min?.__copy__())?.__copy__();
            _pm = (stdgo.Go.setRef(_dup) : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>);
        };
        return stdgo._internal.image.gif.Gif_encodeall.encodeAll(_w, (stdgo.Go.setRef(({ image : (new stdgo.Slice<stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>>(1, 1, ...[_pm]) : stdgo.Slice<stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>>), delay : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(0 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), config : ({ colorModel : stdgo.Go.asInterface((@:checkr _pm ?? throw "null pointer dereference").palette), width : _b.dx(), height : _b.dy() } : stdgo._internal.image.Image_config.Config) } : stdgo._internal.image.gif.Gif_gif.GIF)) : stdgo.Ref<stdgo._internal.image.gif.Gif_gif.GIF>));
    }
