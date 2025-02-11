package stdgo._internal.image.gif;
function encodeAll(_w:stdgo._internal.io.Io_writer.Writer, _g:stdgo.Ref<stdgo._internal.image.gif.Gif_gif.GIF>):stdgo.Error {
        if (((@:checkr _g ?? throw "null pointer dereference").image.length) == ((0 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("gif: must provide at least one image" : stdgo.GoString));
        };
        if (((@:checkr _g ?? throw "null pointer dereference").image.length) != (((@:checkr _g ?? throw "null pointer dereference").delay.length))) {
            return stdgo._internal.errors.Errors_new_.new_(("gif: mismatched image and delay lengths" : stdgo.GoString));
        };
        var _e = ({ _g : (_g : stdgo._internal.image.gif.Gif_gif.GIF)?.__copy__() } : stdgo._internal.image.gif.Gif_t_encoder.T_encoder);
        if (((_e._g.disposal != null) && (_e._g.image.length != (_e._g.disposal.length)) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("gif: mismatched image and disposal lengths" : stdgo.GoString));
        };
        if (stdgo.Go.toInterface(_e._g.config) == stdgo.Go.toInterface(((new stdgo._internal.image.Image_config.Config() : stdgo._internal.image.Image_config.Config)))) {
            var _p = (@:check2r (@:checkr _g ?? throw "null pointer dereference").image[(0 : stdgo.GoInt)].bounds().max?.__copy__() : stdgo._internal.image.Image_point.Point);
            _e._g.config.width = _p.x;
            _e._g.config.height = _p.y;
        } else if (_e._g.config.colorModel != null) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_e._g.config.colorModel) : stdgo._internal.image.color.Color_palette.Palette)) : stdgo._internal.image.color.Color_palette.Palette), _1 : true };
                } catch(_) {
                    { _0 : (new stdgo._internal.image.color.Color_palette.Palette(0, 0) : stdgo._internal.image.color.Color_palette.Palette), _1 : false };
                }, __0 = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    return stdgo._internal.errors.Errors_new_.new_(("gif: GIF color model must be a color.Palette" : stdgo.GoString));
                };
            };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w) : stdgo._internal.image.gif.Gif_t_writer.T_writer)) : stdgo._internal.image.gif.Gif_t_writer.T_writer), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.image.gif.Gif_t_writer.T_writer), _1 : false };
            }, _ww = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _e._w = _ww;
            } else {
                _e._w = stdgo.Go.asInterface(stdgo._internal.bufio.Bufio_newwriter.newWriter(_w));
            };
        };
        @:check2 _e._writeHeader();
        for (_i => _pm in (@:checkr _g ?? throw "null pointer dereference").image) {
            var _disposal = ((0 : stdgo.GoUInt8) : stdgo.GoUInt8);
            if ((@:checkr _g ?? throw "null pointer dereference").disposal != null) {
                _disposal = (@:checkr _g ?? throw "null pointer dereference").disposal[(_i : stdgo.GoInt)];
            };
            @:check2 _e._writeImageBlock(_pm, (@:checkr _g ?? throw "null pointer dereference").delay[(_i : stdgo.GoInt)], _disposal);
        };
        @:check2 _e._writeByte((59 : stdgo.GoUInt8));
        @:check2 _e._flush();
        return _e._err;
    }
