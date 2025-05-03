package stdgo._internal.image.gif;
function encodeAll(_w:stdgo._internal.io.Io_writer.Writer, _g:stdgo.Ref<stdgo._internal.image.gif.Gif_gif.GIF>):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L373"
        if (((@:checkr _g ?? throw "null pointer dereference").image.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L374"
            return stdgo._internal.errors.Errors_new_.new_(("gif: must provide at least one image" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L377"
        if (((@:checkr _g ?? throw "null pointer dereference").image.length) != (((@:checkr _g ?? throw "null pointer dereference").delay.length))) {
            //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L378"
            return stdgo._internal.errors.Errors_new_.new_(("gif: mismatched image and delay lengths" : stdgo.GoString));
        };
        var _e = ({ _g : (_g : stdgo._internal.image.gif.Gif_gif.GIF)?.__copy__() } : stdgo._internal.image.gif.Gif_t_encoder.T_encoder);
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L385"
        if (((_e._g.disposal != null) && (_e._g.image.length != (_e._g.disposal.length)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L386"
            return stdgo._internal.errors.Errors_new_.new_(("gif: mismatched image and disposal lengths" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L388"
        if (stdgo.Go.toInterface(_e._g.config) == stdgo.Go.toInterface(((new stdgo._internal.image.Image_config.Config() : stdgo._internal.image.Image_config.Config)))) {
            var _p = ((@:checkr _g ?? throw "null pointer dereference").image[(0 : stdgo.GoInt)].bounds().max?.__copy__() : stdgo._internal.image.Image_point.Point);
            _e._g.config.width = _p.x;
            _e._g.config.height = _p.y;
        } else if (_e._g.config.colorModel != null) {
            //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L393"
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_e._g.config.colorModel) : stdgo._internal.image.color.Color_palette.Palette)) : stdgo._internal.image.color.Color_palette.Palette), _1 : true };
                } catch(_) {
                    { _0 : (new stdgo._internal.image.color.Color_palette.Palette(0, 0) : stdgo._internal.image.color.Color_palette.Palette), _1 : false };
                }, __0 = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L394"
                    return stdgo._internal.errors.Errors_new_.new_(("gif: GIF color model must be a color.Palette" : stdgo.GoString));
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L398"
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
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L404"
        _e._writeHeader();
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L405"
        for (_i => _pm in (@:checkr _g ?? throw "null pointer dereference").image) {
            var _disposal = ((0 : stdgo.GoUInt8) : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L407"
            if ((@:checkr _g ?? throw "null pointer dereference").disposal != null) {
                _disposal = (@:checkr _g ?? throw "null pointer dereference").disposal[(_i : stdgo.GoInt)];
            };
            //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L410"
            _e._writeImageBlock(_pm, (@:checkr _g ?? throw "null pointer dereference").delay[(_i : stdgo.GoInt)], _disposal);
        };
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L412"
        _e._writeByte((59 : stdgo.GoUInt8));
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L413"
        _e._flush();
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L414"
        return _e._err;
    }
