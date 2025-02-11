package stdgo._internal.image.png;
@:keep @:allow(stdgo._internal.image.png.Png.Encoder_asInterface) class Encoder_static_extension {
    @:keep
    @:tdfield
    static public function encode( _enc:stdgo.Ref<stdgo._internal.image.png.Png_encoder.Encoder>, _w:stdgo._internal.io.Io_writer.Writer, _m:stdgo._internal.image.Image_image.Image):stdgo.Error {
        @:recv var _enc:stdgo.Ref<stdgo._internal.image.png.Png_encoder.Encoder> = _enc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var __0 = (_m.bounds().dx() : stdgo.GoInt64), __1 = (_m.bounds().dy() : stdgo.GoInt64);
var _mh = __1, _mw = __0;
            if (((((_mw <= (0i64 : stdgo.GoInt64) : Bool) || (_mh <= (0i64 : stdgo.GoInt64) : Bool) : Bool) || (_mw >= (4294967296i64 : stdgo.GoInt64) : Bool) : Bool) || (_mh >= (4294967296i64 : stdgo.GoInt64) : Bool) : Bool)) {
                return stdgo.Go.asInterface(((((("invalid image size: " : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatint.formatInt(_mw, (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + ("x" : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatint.formatInt(_mh, (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) : stdgo._internal.image.png.Png_formaterror.FormatError));
            };
            var _e:stdgo.Ref<stdgo._internal.image.png.Png_t_encoder.T_encoder> = (null : stdgo.Ref<stdgo._internal.image.png.Png_t_encoder.T_encoder>);
            if ((@:checkr _enc ?? throw "null pointer dereference").bufferPool != null) {
                var _buffer = (@:checkr _enc ?? throw "null pointer dereference").bufferPool.get();
                _e = (({
                    final e = _buffer;
                    ({ _enc : e._enc, _w : e._w, _m : e._m, _cb : e._cb, _err : e._err, _header : e._header, _footer : e._footer, _tmp : e._tmp, _cr : e._cr, _pr : e._pr, _zw : e._zw, _zwLevel : e._zwLevel, _bw : e._bw } : stdgo._internal.image.png.Png_t_encoder.T_encoder);
                }));
            };
            if ((_e == null || (_e : Dynamic).__nil__)) {
                _e = (stdgo.Go.setRef((new stdgo._internal.image.png.Png_t_encoder.T_encoder() : stdgo._internal.image.png.Png_t_encoder.T_encoder)) : stdgo.Ref<stdgo._internal.image.png.Png_t_encoder.T_encoder>);
            };
            if ((@:checkr _enc ?? throw "null pointer dereference").bufferPool != null) {
                {
                    var _a0 = (({
                        final e = _e;
                        ({ _enc : e._enc, _w : e._w, _m : e._m, _cb : e._cb, _err : e._err, _header : e._header, _footer : e._footer, _tmp : e._tmp, _cr : e._cr, _pr : e._pr, _zw : e._zw, _zwLevel : e._zwLevel, _bw : e._bw } : stdgo._internal.image.png.Png_encoderbuffer.EncoderBuffer);
                    }));
                    final __f__ = (@:checkr _enc ?? throw "null pointer dereference").bufferPool.put;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            (@:checkr _e ?? throw "null pointer dereference")._enc = _enc;
            (@:checkr _e ?? throw "null pointer dereference")._w = _w;
            (@:checkr _e ?? throw "null pointer dereference")._m = _m;
            var _pal:stdgo._internal.image.color.Color_palette.Palette = (new stdgo._internal.image.color.Color_palette.Palette(0, 0) : stdgo._internal.image.color.Color_palette.Palette);
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo._internal.image.Image_palettedimage.PalettedImage)) : stdgo._internal.image.Image_palettedimage.PalettedImage), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.image.Image_palettedimage.PalettedImage), _1 : false };
                }, __0 = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m.colorModel()) : stdgo._internal.image.color.Color_palette.Palette)) : stdgo._internal.image.color.Color_palette.Palette), _1 : true };
                        } catch(_) {
                            { _0 : (new stdgo._internal.image.color.Color_palette.Palette(0, 0) : stdgo._internal.image.color.Color_palette.Palette), _1 : false };
                        };
                        _pal = @:tmpset0 __tmp__._0;
                    };
                };
            };
            if (_pal != null) {
                if (((_pal.length) <= (2 : stdgo.GoInt) : Bool)) {
                    (@:checkr _e ?? throw "null pointer dereference")._cb = (7 : stdgo.GoInt);
                } else if (((_pal.length) <= (4 : stdgo.GoInt) : Bool)) {
                    (@:checkr _e ?? throw "null pointer dereference")._cb = (8 : stdgo.GoInt);
                } else if (((_pal.length) <= (16 : stdgo.GoInt) : Bool)) {
                    (@:checkr _e ?? throw "null pointer dereference")._cb = (9 : stdgo.GoInt);
                } else {
                    (@:checkr _e ?? throw "null pointer dereference")._cb = (10 : stdgo.GoInt);
                };
            } else {
                {
                    final __value__ = _m.colorModel();
                    if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.image.color.Color_graymodel.grayModel))) {
                        (@:checkr _e ?? throw "null pointer dereference")._cb = (4 : stdgo.GoInt);
                    } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.image.color.Color_gray16model.gray16Model))) {
                        (@:checkr _e ?? throw "null pointer dereference")._cb = (12 : stdgo.GoInt);
                    } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.image.color.Color_rgbamodel.rGBAModel)) || stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.image.color.Color_nrgbamodel.nRGBAModel)) || stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.image.color.Color_alphamodel.alphaModel))) {
                        if (stdgo._internal.image.png.Png__opaque._opaque(_m)) {
                            (@:checkr _e ?? throw "null pointer dereference")._cb = (6 : stdgo.GoInt);
                        } else {
                            (@:checkr _e ?? throw "null pointer dereference")._cb = (11 : stdgo.GoInt);
                        };
                    } else {
                        if (stdgo._internal.image.png.Png__opaque._opaque(_m)) {
                            (@:checkr _e ?? throw "null pointer dereference")._cb = (14 : stdgo.GoInt);
                        } else {
                            (@:checkr _e ?? throw "null pointer dereference")._cb = (15 : stdgo.GoInt);
                        };
                    };
                };
            };
            {
                var __tmp__ = stdgo._internal.io.Io_writestring.writeString(_w, (stdgo.Go.str(137, "PNG\r\n", 26, "\n") : stdgo.GoString)?.__copy__());
                (@:checkr _e ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
            };
            @:check2r _e._writeIHDR();
            if (_pal != null) {
                @:check2r _e._writePLTEAndTRNS(_pal);
            };
            @:check2r _e._writeIDATs();
            @:check2r _e._writeIEND();
            {
                final __ret__:stdgo.Error = (@:checkr _e ?? throw "null pointer dereference")._err;
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Error);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Error);
            };
        };
    }
}
