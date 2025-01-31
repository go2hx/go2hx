package stdgo._internal.image.gif;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.image.Image;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.image.draw.Draw;
import stdgo._internal.image.color.palette.Palette;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.compress.lzw.Lzw;
import stdgo._internal.bytes.Bytes;
function encodeAll(_w:stdgo._internal.io.Io_Writer.Writer, _g:stdgo.Ref<stdgo._internal.image.gif.Gif_GIF.GIF>):stdgo.Error {
        if (((@:checkr _g ?? throw "null pointer dereference").image.length) == ((0 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("gif: must provide at least one image" : stdgo.GoString));
        };
        if (((@:checkr _g ?? throw "null pointer dereference").image.length) != (((@:checkr _g ?? throw "null pointer dereference").delay.length))) {
            return stdgo._internal.errors.Errors_new_.new_(("gif: mismatched image and delay lengths" : stdgo.GoString));
        };
        var _e = ({ _g : (_g : stdgo._internal.image.gif.Gif_GIF.GIF)?.__copy__() } : stdgo._internal.image.gif.Gif_T_encoder.T_encoder);
        if (((_e._g.disposal != null) && (_e._g.image.length != (_e._g.disposal.length)) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("gif: mismatched image and disposal lengths" : stdgo.GoString));
        };
        if (stdgo.Go.toInterface(_e._g.config) == stdgo.Go.toInterface(((new stdgo._internal.image.Image_Config.Config() : stdgo._internal.image.Image_Config.Config)))) {
            var _p = (@:check2r (@:checkr _g ?? throw "null pointer dereference").image[(0 : stdgo.GoInt)].bounds().max?.__copy__() : stdgo._internal.image.Image_Point.Point);
            _e._g.config.width = _p.x;
            _e._g.config.height = _p.y;
        } else if (_e._g.config.colorModel != null) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_e._g.config.colorModel) : stdgo._internal.image.color.Color_Palette.Palette)) : stdgo._internal.image.color.Color_Palette.Palette), _1 : true };
                } catch(_) {
                    { _0 : new stdgo._internal.image.color.Color_Palette.Palette(0, 0), _1 : false };
                }, __0 = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    return stdgo._internal.errors.Errors_new_.new_(("gif: GIF color model must be a color.Palette" : stdgo.GoString));
                };
            };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w) : stdgo._internal.image.gif.Gif_T_writer.T_writer)) : stdgo._internal.image.gif.Gif_T_writer.T_writer), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.image.gif.Gif_T_writer.T_writer), _1 : false };
            }, _ww = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _e._w = _ww;
            } else {
                _e._w = stdgo.Go.asInterface(stdgo._internal.bufio.Bufio_newWriter.newWriter(_w));
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
