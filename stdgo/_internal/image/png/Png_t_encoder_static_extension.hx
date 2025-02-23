package stdgo._internal.image.png;
@:keep @:allow(stdgo._internal.image.png.Png.T_encoder_asInterface) class T_encoder_static_extension {
    @:keep
    @:tdfield
    static public function _writeIEND( _e:stdgo.Ref<stdgo._internal.image.png.Png_t_encoder.T_encoder>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.png.Png_t_encoder.T_encoder> = _e;
        @:check2r _e._writeChunk((null : stdgo.Slice<stdgo.GoUInt8>), ("IEND" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _writeIDATs( _e:stdgo.Ref<stdgo._internal.image.png.Png_t_encoder.T_encoder>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.png.Png_t_encoder.T_encoder> = _e;
        if ((@:checkr _e ?? throw "null pointer dereference")._err != null) {
            return;
        };
        if (((@:checkr _e ?? throw "null pointer dereference")._bw == null || ((@:checkr _e ?? throw "null pointer dereference")._bw : Dynamic).__nil__)) {
            (@:checkr _e ?? throw "null pointer dereference")._bw = stdgo._internal.bufio.Bufio_newwritersize.newWriterSize(stdgo.Go.asInterface(_e), (32768 : stdgo.GoInt));
        } else {
            @:check2r (@:checkr _e ?? throw "null pointer dereference")._bw.reset(stdgo.Go.asInterface(_e));
        };
        (@:checkr _e ?? throw "null pointer dereference")._err = @:check2r _e._writeImage(stdgo.Go.asInterface((@:checkr _e ?? throw "null pointer dereference")._bw), (@:checkr _e ?? throw "null pointer dereference")._m, (@:checkr _e ?? throw "null pointer dereference")._cb, stdgo._internal.image.png.Png__leveltozlib._levelToZlib((@:checkr (@:checkr _e ?? throw "null pointer dereference")._enc ?? throw "null pointer dereference").compressionLevel));
        if ((@:checkr _e ?? throw "null pointer dereference")._err != null) {
            return;
        };
        (@:checkr _e ?? throw "null pointer dereference")._err = @:check2r (@:checkr _e ?? throw "null pointer dereference")._bw.flush();
    }
    @:keep
    @:tdfield
    static public function _writeImage( _e:stdgo.Ref<stdgo._internal.image.png.Png_t_encoder.T_encoder>, _w:stdgo._internal.io.Io_writer.Writer, _m:stdgo._internal.image.Image_image.Image, _cb:stdgo.GoInt, _level:stdgo.GoInt):stdgo.Error {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.png.Png_t_encoder.T_encoder> = _e;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((((@:checkr _e ?? throw "null pointer dereference")._zw == null || ((@:checkr _e ?? throw "null pointer dereference")._zw : Dynamic).__nil__) || ((@:checkr _e ?? throw "null pointer dereference")._zwLevel != _level) : Bool)) {
                var __tmp__ = stdgo._internal.compress.zlib.Zlib_newwriterlevel.newWriterLevel(_w, _level), _zw:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_writer.Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
                (@:checkr _e ?? throw "null pointer dereference")._zw = _zw;
                (@:checkr _e ?? throw "null pointer dereference")._zwLevel = _level;
            } else {
                @:check2r (@:checkr _e ?? throw "null pointer dereference")._zw.reset(_w);
            };
            {
                final __f__ = @:check2r (@:checkr _e ?? throw "null pointer dereference")._zw.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _bitsPerPixel = (0 : stdgo.GoInt);
            {
                final __value__ = _cb;
                if (__value__ == ((4 : stdgo.GoInt))) {
                    _bitsPerPixel = (8 : stdgo.GoInt);
                } else if (__value__ == ((6 : stdgo.GoInt))) {
                    _bitsPerPixel = (24 : stdgo.GoInt);
                } else if (__value__ == ((10 : stdgo.GoInt))) {
                    _bitsPerPixel = (8 : stdgo.GoInt);
                } else if (__value__ == ((9 : stdgo.GoInt))) {
                    _bitsPerPixel = (4 : stdgo.GoInt);
                } else if (__value__ == ((8 : stdgo.GoInt))) {
                    _bitsPerPixel = (2 : stdgo.GoInt);
                } else if (__value__ == ((7 : stdgo.GoInt))) {
                    _bitsPerPixel = (1 : stdgo.GoInt);
                } else if (__value__ == ((11 : stdgo.GoInt))) {
                    _bitsPerPixel = (32 : stdgo.GoInt);
                } else if (__value__ == ((14 : stdgo.GoInt))) {
                    _bitsPerPixel = (48 : stdgo.GoInt);
                } else if (__value__ == ((15 : stdgo.GoInt))) {
                    _bitsPerPixel = (64 : stdgo.GoInt);
                } else if (__value__ == ((12 : stdgo.GoInt))) {
                    _bitsPerPixel = (16 : stdgo.GoInt);
                };
            };
            var _b = (_m.bounds()?.__copy__() : stdgo._internal.image.Image_rectangle.Rectangle);
            var _sz = ((1 : stdgo.GoInt) + ((((_bitsPerPixel * _b.dx() : stdgo.GoInt) + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
            for (_i => _ in (@:checkr _e ?? throw "null pointer dereference")._cr) {
                if (((@:checkr _e ?? throw "null pointer dereference")._cr[(_i : stdgo.GoInt)].capacity < _sz : Bool)) {
                    (@:checkr _e ?? throw "null pointer dereference")._cr[(_i : stdgo.GoInt)] = (new stdgo.Slice<stdgo.GoUInt8>((_sz : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                } else {
                    (@:checkr _e ?? throw "null pointer dereference")._cr[(_i : stdgo.GoInt)] = ((@:checkr _e ?? throw "null pointer dereference")._cr[(_i : stdgo.GoInt)].__slice__(0, _sz) : stdgo.Slice<stdgo.GoUInt8>);
                };
                (@:checkr _e ?? throw "null pointer dereference")._cr[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)] = (_i : stdgo.GoUInt8);
            };
            var _cr = (@:checkr _e ?? throw "null pointer dereference")._cr?.__copy__();
            if (((@:checkr _e ?? throw "null pointer dereference")._pr.capacity < _sz : Bool)) {
                (@:checkr _e ?? throw "null pointer dereference")._pr = (new stdgo.Slice<stdgo.GoUInt8>((_sz : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            } else {
                (@:checkr _e ?? throw "null pointer dereference")._pr = ((@:checkr _e ?? throw "null pointer dereference")._pr.__slice__(0, _sz) : stdgo.Slice<stdgo.GoUInt8>);
                stdgo._internal.image.png.Png__zeromemory._zeroMemory((@:checkr _e ?? throw "null pointer dereference")._pr);
            };
            var _pr = (@:checkr _e ?? throw "null pointer dereference")._pr;
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>)) : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>), _1 : false };
            }, _gray = __tmp__._0, __0 = __tmp__._1;
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>)) : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>), _1 : false };
            }, _rgba = __tmp__._0, __1 = __tmp__._1;
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>)) : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>), _1 : false };
            }, _paletted = __tmp__._0, __2 = __tmp__._1;
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA>)) : stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA>), _1 : false };
            }, _nrgba = __tmp__._0, __3 = __tmp__._1;
            {
                var _y = (_b.min.y : stdgo.GoInt);
                while ((_y < _b.max.y : Bool)) {
                    var _i = (1 : stdgo.GoInt);
{
                        final __value__ = _cb;
                        if (__value__ == ((4 : stdgo.GoInt))) {
                            if ((_gray != null && ((_gray : Dynamic).__nil__ == null || !(_gray : Dynamic).__nil__))) {
                                var _offset = (((_y - _b.min.y : stdgo.GoInt)) * (@:checkr _gray ?? throw "null pointer dereference").stride : stdgo.GoInt);
                                (_cr[(0 : stdgo.GoInt)].__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _gray ?? throw "null pointer dereference").pix.__slice__(_offset, (_offset + _b.dx() : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                            } else {
                                {
                                    var _x = (_b.min.x : stdgo.GoInt);
                                    while ((_x < _b.max.x : Bool)) {
                                        var _c = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.image.color.Color_graymodel.grayModel.convert(_m.at(_x, _y))) : stdgo._internal.image.color.Color_gray.Gray)) : stdgo._internal.image.color.Color_gray.Gray).__copy__() : stdgo._internal.image.color.Color_gray.Gray);
_cr[(0 : stdgo.GoInt)][(_i : stdgo.GoInt)] = _c.y;
_i++;
                                        _x++;
                                    };
                                };
                            };
                        } else if (__value__ == ((6 : stdgo.GoInt))) {
                            var _cr0 = _cr[(0 : stdgo.GoInt)];
                            var __0 = (0 : stdgo.GoInt), __1 = (null : stdgo.Slice<stdgo.GoUInt8>);
var _pix = __1, _stride = __0;
                            if ((_rgba != null && ((_rgba : Dynamic).__nil__ == null || !(_rgba : Dynamic).__nil__))) {
                                {
                                    final __tmp__0 = (@:checkr _rgba ?? throw "null pointer dereference").stride;
                                    final __tmp__1 = (@:checkr _rgba ?? throw "null pointer dereference").pix;
                                    _stride = __tmp__0;
                                    _pix = __tmp__1;
                                };
                            } else if ((_nrgba != null && ((_nrgba : Dynamic).__nil__ == null || !(_nrgba : Dynamic).__nil__))) {
                                {
                                    final __tmp__0 = (@:checkr _nrgba ?? throw "null pointer dereference").stride;
                                    final __tmp__1 = (@:checkr _nrgba ?? throw "null pointer dereference").pix;
                                    _stride = __tmp__0;
                                    _pix = __tmp__1;
                                };
                            };
                            if (_stride != ((0 : stdgo.GoInt))) {
                                var _j0 = (((_y - _b.min.y : stdgo.GoInt)) * _stride : stdgo.GoInt);
                                var _j1 = (_j0 + (_b.dx() * (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
                                {
                                    var _j = (_j0 : stdgo.GoInt);
                                    while ((_j < _j1 : Bool)) {
                                        _cr0[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] = _pix[(_j + (0 : stdgo.GoInt) : stdgo.GoInt)];
_cr0[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = _pix[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)];
_cr0[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)] = _pix[(_j + (2 : stdgo.GoInt) : stdgo.GoInt)];
_i = (_i + ((3 : stdgo.GoInt)) : stdgo.GoInt);
                                        _j = (_j + ((4 : stdgo.GoInt)) : stdgo.GoInt);
                                    };
                                };
                            } else {
                                {
                                    var _x = (_b.min.x : stdgo.GoInt);
                                    while ((_x < _b.max.x : Bool)) {
                                        var __tmp__ = _m.at(_x, _y).rGBA(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, __4:stdgo.GoUInt32 = __tmp__._3;
_cr0[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] = ((_r >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
_cr0[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = ((_g >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
_cr0[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)] = ((_b >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
_i = (_i + ((3 : stdgo.GoInt)) : stdgo.GoInt);
                                        _x++;
                                    };
                                };
                            };
                        } else if (__value__ == ((10 : stdgo.GoInt))) {
                            if ((_paletted != null && ((_paletted : Dynamic).__nil__ == null || !(_paletted : Dynamic).__nil__))) {
                                var _offset = (((_y - _b.min.y : stdgo.GoInt)) * (@:checkr _paletted ?? throw "null pointer dereference").stride : stdgo.GoInt);
                                (_cr[(0 : stdgo.GoInt)].__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _paletted ?? throw "null pointer dereference").pix.__slice__(_offset, (_offset + _b.dx() : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                            } else {
                                var _pi = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo._internal.image.Image_palettedimage.PalettedImage)) : stdgo._internal.image.Image_palettedimage.PalettedImage);
                                {
                                    var _x = (_b.min.x : stdgo.GoInt);
                                    while ((_x < _b.max.x : Bool)) {
                                        _cr[(0 : stdgo.GoInt)][(_i : stdgo.GoInt)] = _pi.colorIndexAt(_x, _y);
_i = (_i + ((1 : stdgo.GoInt)) : stdgo.GoInt);
                                        _x++;
                                    };
                                };
                            };
                        } else if (__value__ == ((9 : stdgo.GoInt)) || __value__ == ((8 : stdgo.GoInt)) || __value__ == ((7 : stdgo.GoInt))) {
                            var _pi = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo._internal.image.Image_palettedimage.PalettedImage)) : stdgo._internal.image.Image_palettedimage.PalettedImage);
                            var _a:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
                            var _c:stdgo.GoInt = (0 : stdgo.GoInt);
                            var _pixelsPerByte = ((8 : stdgo.GoInt) / _bitsPerPixel : stdgo.GoInt);
                            {
                                var _x = (_b.min.x : stdgo.GoInt);
                                while ((_x < _b.max.x : Bool)) {
                                    _a = ((_a << (_bitsPerPixel : stdgo.GoUInt) : stdgo.GoUInt8) | _pi.colorIndexAt(_x, _y) : stdgo.GoUInt8);
_c++;
if (_c == (_pixelsPerByte)) {
                                        _cr[(0 : stdgo.GoInt)][(_i : stdgo.GoInt)] = _a;
                                        _i = (_i + ((1 : stdgo.GoInt)) : stdgo.GoInt);
                                        _a = (0 : stdgo.GoUInt8);
                                        _c = (0 : stdgo.GoInt);
                                    };
                                    _x++;
                                };
                            };
                            if (_c != ((0 : stdgo.GoInt))) {
                                while (_c != (_pixelsPerByte)) {
                                    _a = (_a << (_bitsPerPixel : stdgo.GoUInt) : stdgo.GoUInt8);
                                    _c++;
                                };
                                _cr[(0 : stdgo.GoInt)][(_i : stdgo.GoInt)] = _a;
                            };
                        } else if (__value__ == ((11 : stdgo.GoInt))) {
                            if ((_nrgba != null && ((_nrgba : Dynamic).__nil__ == null || !(_nrgba : Dynamic).__nil__))) {
                                var _offset = (((_y - _b.min.y : stdgo.GoInt)) * (@:checkr _nrgba ?? throw "null pointer dereference").stride : stdgo.GoInt);
                                (_cr[(0 : stdgo.GoInt)].__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _nrgba ?? throw "null pointer dereference").pix.__slice__(_offset, (_offset + (_b.dx() * (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                            } else if ((_rgba != null && ((_rgba : Dynamic).__nil__ == null || !(_rgba : Dynamic).__nil__))) {
                                var _dst = (_cr[(0 : stdgo.GoInt)].__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                                var _src = ((@:checkr _rgba ?? throw "null pointer dereference").pix.__slice__(@:check2r _rgba.pixOffset(_b.min.x, _y), @:check2r _rgba.pixOffset(_b.max.x, _y)) : stdgo.Slice<stdgo.GoUInt8>);
                                while (((_src.length) >= (4 : stdgo.GoInt) : Bool)) {
                                    var _d = (_dst : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
var _s = (_src : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
if (_s[(3 : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                                        _d[(0 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                                        _d[(1 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                                        _d[(2 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                                        _d[(3 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                                    } else if (_s[(3 : stdgo.GoInt)] == ((255 : stdgo.GoUInt8))) {
                                        (_d.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_s.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                                    } else {
                                        {};
                                        var _a = ((_s[(3 : stdgo.GoInt)] : stdgo.GoUInt32) * (257u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                                        _d[(0 : stdgo.GoInt)] = ((((((_s[(0 : stdgo.GoInt)] : stdgo.GoUInt32) * (16842495u32 : stdgo.GoUInt32) : stdgo.GoUInt32) / _a : stdgo.GoUInt32)) >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
                                        _d[(1 : stdgo.GoInt)] = ((((((_s[(1 : stdgo.GoInt)] : stdgo.GoUInt32) * (16842495u32 : stdgo.GoUInt32) : stdgo.GoUInt32) / _a : stdgo.GoUInt32)) >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
                                        _d[(2 : stdgo.GoInt)] = ((((((_s[(2 : stdgo.GoInt)] : stdgo.GoUInt32) * (16842495u32 : stdgo.GoUInt32) : stdgo.GoUInt32) / _a : stdgo.GoUInt32)) >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
                                        _d[(3 : stdgo.GoInt)] = _s[(3 : stdgo.GoInt)];
                                    };
                                    {
                                        final __tmp__0 = (_dst.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                                        final __tmp__1 = (_src.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                                        _dst = __tmp__0;
                                        _src = __tmp__1;
                                    };
                                };
                            } else {
                                {
                                    var _x = (_b.min.x : stdgo.GoInt);
                                    while ((_x < _b.max.x : Bool)) {
                                        var _c = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.image.color.Color_nrgbamodel.nRGBAModel.convert(_m.at(_x, _y))) : stdgo._internal.image.color.Color_nrgba.NRGBA)) : stdgo._internal.image.color.Color_nrgba.NRGBA).__copy__() : stdgo._internal.image.color.Color_nrgba.NRGBA);
_cr[(0 : stdgo.GoInt)][(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] = _c.r;
_cr[(0 : stdgo.GoInt)][(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = _c.g;
_cr[(0 : stdgo.GoInt)][(_i + (2 : stdgo.GoInt) : stdgo.GoInt)] = _c.b;
_cr[(0 : stdgo.GoInt)][(_i + (3 : stdgo.GoInt) : stdgo.GoInt)] = _c.a;
_i = (_i + ((4 : stdgo.GoInt)) : stdgo.GoInt);
                                        _x++;
                                    };
                                };
                            };
                        } else if (__value__ == ((12 : stdgo.GoInt))) {
                            {
                                var _x = (_b.min.x : stdgo.GoInt);
                                while ((_x < _b.max.x : Bool)) {
                                    var _c = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.image.color.Color_gray16model.gray16Model.convert(_m.at(_x, _y))) : stdgo._internal.image.color.Color_gray16.Gray16)) : stdgo._internal.image.color.Color_gray16.Gray16).__copy__() : stdgo._internal.image.color.Color_gray16.Gray16);
_cr[(0 : stdgo.GoInt)][(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] = ((_c.y >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
_cr[(0 : stdgo.GoInt)][(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_c.y : stdgo.GoUInt8);
_i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                                    _x++;
                                };
                            };
                        } else if (__value__ == ((14 : stdgo.GoInt))) {
                            {
                                var _x = (_b.min.x : stdgo.GoInt);
                                while ((_x < _b.max.x : Bool)) {
                                    var __tmp__ = _m.at(_x, _y).rGBA(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, __4:stdgo.GoUInt32 = __tmp__._3;
_cr[(0 : stdgo.GoInt)][(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] = ((_r >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
_cr[(0 : stdgo.GoInt)][(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_r : stdgo.GoUInt8);
_cr[(0 : stdgo.GoInt)][(_i + (2 : stdgo.GoInt) : stdgo.GoInt)] = ((_g >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
_cr[(0 : stdgo.GoInt)][(_i + (3 : stdgo.GoInt) : stdgo.GoInt)] = (_g : stdgo.GoUInt8);
_cr[(0 : stdgo.GoInt)][(_i + (4 : stdgo.GoInt) : stdgo.GoInt)] = ((_b >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
_cr[(0 : stdgo.GoInt)][(_i + (5 : stdgo.GoInt) : stdgo.GoInt)] = (_b : stdgo.GoUInt8);
_i = (_i + ((6 : stdgo.GoInt)) : stdgo.GoInt);
                                    _x++;
                                };
                            };
                        } else if (__value__ == ((15 : stdgo.GoInt))) {
                            {
                                var _x = (_b.min.x : stdgo.GoInt);
                                while ((_x < _b.max.x : Bool)) {
                                    var _c = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.image.color.Color_nrgba64model.nRGBA64Model.convert(_m.at(_x, _y))) : stdgo._internal.image.color.Color_nrgba64.NRGBA64)) : stdgo._internal.image.color.Color_nrgba64.NRGBA64).__copy__() : stdgo._internal.image.color.Color_nrgba64.NRGBA64);
_cr[(0 : stdgo.GoInt)][(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] = ((_c.r >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
_cr[(0 : stdgo.GoInt)][(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_c.r : stdgo.GoUInt8);
_cr[(0 : stdgo.GoInt)][(_i + (2 : stdgo.GoInt) : stdgo.GoInt)] = ((_c.g >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
_cr[(0 : stdgo.GoInt)][(_i + (3 : stdgo.GoInt) : stdgo.GoInt)] = (_c.g : stdgo.GoUInt8);
_cr[(0 : stdgo.GoInt)][(_i + (4 : stdgo.GoInt) : stdgo.GoInt)] = ((_c.b >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
_cr[(0 : stdgo.GoInt)][(_i + (5 : stdgo.GoInt) : stdgo.GoInt)] = (_c.b : stdgo.GoUInt8);
_cr[(0 : stdgo.GoInt)][(_i + (6 : stdgo.GoInt) : stdgo.GoInt)] = ((_c.a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
_cr[(0 : stdgo.GoInt)][(_i + (7 : stdgo.GoInt) : stdgo.GoInt)] = (_c.a : stdgo.GoUInt8);
_i = (_i + ((8 : stdgo.GoInt)) : stdgo.GoInt);
                                    _x++;
                                };
                            };
                        };
                    };
var _f = (0 : stdgo.GoInt);
if (((((_level != ((0 : stdgo.GoInt)) && _cb != ((10 : stdgo.GoInt)) : Bool) && _cb != ((9 : stdgo.GoInt)) : Bool) && _cb != ((8 : stdgo.GoInt)) : Bool) && (_cb != (7 : stdgo.GoInt)) : Bool)) {
                        var _bpp = (_bitsPerPixel / (8 : stdgo.GoInt) : stdgo.GoInt);
                        _f = stdgo._internal.image.png.Png__filter._filter((stdgo.Go.setRef(_cr) : stdgo.Ref<stdgo.GoArray<stdgo.Slice<stdgo.GoUInt8>>>), _pr, _bpp);
                    };
{
                        var __tmp__ = @:check2r (@:checkr _e ?? throw "null pointer dereference")._zw.write(_cr[(_f : stdgo.GoInt)]), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return _err;
                            };
                        };
                    };
{
                        final __tmp__0 = _cr[(0 : stdgo.GoInt)];
                        final __tmp__1 = _pr;
                        final __tmp__2 = _cr;
                        final __tmp__3 = (0 : stdgo.GoInt);
                        _pr = __tmp__0;
                        __tmp__2[__tmp__3] = __tmp__1;
                    };
                    _y++;
                };
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
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
    @:keep
    @:tdfield
    static public function write( _e:stdgo.Ref<stdgo._internal.image.png.Png_t_encoder.T_encoder>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.png.Png_t_encoder.T_encoder> = _e;
        @:check2r _e._writeChunk(_b, ("IDAT" : stdgo.GoString));
        if ((@:checkr _e ?? throw "null pointer dereference")._err != null) {
            return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _e ?? throw "null pointer dereference")._err };
        };
        return { _0 : (_b.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _writePLTEAndTRNS( _e:stdgo.Ref<stdgo._internal.image.png.Png_t_encoder.T_encoder>, _p:stdgo._internal.image.color.Color_palette.Palette):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.png.Png_t_encoder.T_encoder> = _e;
        if ((((_p.length) < (1 : stdgo.GoInt) : Bool) || ((_p.length) > (256 : stdgo.GoInt) : Bool) : Bool)) {
            (@:checkr _e ?? throw "null pointer dereference")._err = stdgo.Go.asInterface(((("bad palette length: " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((_p.length))?.__copy__() : stdgo.GoString) : stdgo._internal.image.png.Png_formaterror.FormatError));
            return;
        };
        var _last = (-1 : stdgo.GoInt);
        for (_i => _c in _p) {
            var _c1 = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.image.color.Color_nrgbamodel.nRGBAModel.convert(_c)) : stdgo._internal.image.color.Color_nrgba.NRGBA)) : stdgo._internal.image.color.Color_nrgba.NRGBA)?.__copy__() : stdgo._internal.image.color.Color_nrgba.NRGBA);
            (@:checkr _e ?? throw "null pointer dereference")._tmp[(((3 : stdgo.GoInt) * _i : stdgo.GoInt) + (0 : stdgo.GoInt) : stdgo.GoInt)] = _c1.r;
            (@:checkr _e ?? throw "null pointer dereference")._tmp[(((3 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)] = _c1.g;
            (@:checkr _e ?? throw "null pointer dereference")._tmp[(((3 : stdgo.GoInt) * _i : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt)] = _c1.b;
            if (_c1.a != ((255 : stdgo.GoUInt8))) {
                _last = _i;
            };
            (@:checkr _e ?? throw "null pointer dereference")._tmp[((768 : stdgo.GoInt) + _i : stdgo.GoInt)] = _c1.a;
        };
        @:check2r _e._writeChunk(((@:checkr _e ?? throw "null pointer dereference")._tmp.__slice__(0, ((3 : stdgo.GoInt) * (_p.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ("PLTE" : stdgo.GoString));
        if (_last != ((-1 : stdgo.GoInt))) {
            @:check2r _e._writeChunk(((@:checkr _e ?? throw "null pointer dereference")._tmp.__slice__((768 : stdgo.GoInt), ((769 : stdgo.GoInt) + _last : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ("tRNS" : stdgo.GoString));
        };
    }
    @:keep
    @:tdfield
    static public function _writeIHDR( _e:stdgo.Ref<stdgo._internal.image.png.Png_t_encoder.T_encoder>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.png.Png_t_encoder.T_encoder> = _e;
        var _b = ((@:checkr _e ?? throw "null pointer dereference")._m.bounds()?.__copy__() : stdgo._internal.image.Image_rectangle.Rectangle);
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint32(((@:checkr _e ?? throw "null pointer dereference")._tmp.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_b.dx() : stdgo.GoUInt32));
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint32(((@:checkr _e ?? throw "null pointer dereference")._tmp.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_b.dy() : stdgo.GoUInt32));
        {
            final __value__ = (@:checkr _e ?? throw "null pointer dereference")._cb;
            if (__value__ == ((4 : stdgo.GoInt))) {
                (@:checkr _e ?? throw "null pointer dereference")._tmp[(8 : stdgo.GoInt)] = (8 : stdgo.GoUInt8);
                (@:checkr _e ?? throw "null pointer dereference")._tmp[(9 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            } else if (__value__ == ((6 : stdgo.GoInt))) {
                (@:checkr _e ?? throw "null pointer dereference")._tmp[(8 : stdgo.GoInt)] = (8 : stdgo.GoUInt8);
                (@:checkr _e ?? throw "null pointer dereference")._tmp[(9 : stdgo.GoInt)] = (2 : stdgo.GoUInt8);
            } else if (__value__ == ((10 : stdgo.GoInt))) {
                (@:checkr _e ?? throw "null pointer dereference")._tmp[(8 : stdgo.GoInt)] = (8 : stdgo.GoUInt8);
                (@:checkr _e ?? throw "null pointer dereference")._tmp[(9 : stdgo.GoInt)] = (3 : stdgo.GoUInt8);
            } else if (__value__ == ((9 : stdgo.GoInt))) {
                (@:checkr _e ?? throw "null pointer dereference")._tmp[(8 : stdgo.GoInt)] = (4 : stdgo.GoUInt8);
                (@:checkr _e ?? throw "null pointer dereference")._tmp[(9 : stdgo.GoInt)] = (3 : stdgo.GoUInt8);
            } else if (__value__ == ((8 : stdgo.GoInt))) {
                (@:checkr _e ?? throw "null pointer dereference")._tmp[(8 : stdgo.GoInt)] = (2 : stdgo.GoUInt8);
                (@:checkr _e ?? throw "null pointer dereference")._tmp[(9 : stdgo.GoInt)] = (3 : stdgo.GoUInt8);
            } else if (__value__ == ((7 : stdgo.GoInt))) {
                (@:checkr _e ?? throw "null pointer dereference")._tmp[(8 : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
                (@:checkr _e ?? throw "null pointer dereference")._tmp[(9 : stdgo.GoInt)] = (3 : stdgo.GoUInt8);
            } else if (__value__ == ((11 : stdgo.GoInt))) {
                (@:checkr _e ?? throw "null pointer dereference")._tmp[(8 : stdgo.GoInt)] = (8 : stdgo.GoUInt8);
                (@:checkr _e ?? throw "null pointer dereference")._tmp[(9 : stdgo.GoInt)] = (6 : stdgo.GoUInt8);
            } else if (__value__ == ((12 : stdgo.GoInt))) {
                (@:checkr _e ?? throw "null pointer dereference")._tmp[(8 : stdgo.GoInt)] = (16 : stdgo.GoUInt8);
                (@:checkr _e ?? throw "null pointer dereference")._tmp[(9 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            } else if (__value__ == ((14 : stdgo.GoInt))) {
                (@:checkr _e ?? throw "null pointer dereference")._tmp[(8 : stdgo.GoInt)] = (16 : stdgo.GoUInt8);
                (@:checkr _e ?? throw "null pointer dereference")._tmp[(9 : stdgo.GoInt)] = (2 : stdgo.GoUInt8);
            } else if (__value__ == ((15 : stdgo.GoInt))) {
                (@:checkr _e ?? throw "null pointer dereference")._tmp[(8 : stdgo.GoInt)] = (16 : stdgo.GoUInt8);
                (@:checkr _e ?? throw "null pointer dereference")._tmp[(9 : stdgo.GoInt)] = (6 : stdgo.GoUInt8);
            };
        };
        (@:checkr _e ?? throw "null pointer dereference")._tmp[(10 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        (@:checkr _e ?? throw "null pointer dereference")._tmp[(11 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        (@:checkr _e ?? throw "null pointer dereference")._tmp[(12 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        @:check2r _e._writeChunk(((@:checkr _e ?? throw "null pointer dereference")._tmp.__slice__(0, (13 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ("IHDR" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _writeChunk( _e:stdgo.Ref<stdgo._internal.image.png.Png_t_encoder.T_encoder>, _b:stdgo.Slice<stdgo.GoUInt8>, _name:stdgo.GoString):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.png.Png_t_encoder.T_encoder> = _e;
        if ((@:checkr _e ?? throw "null pointer dereference")._err != null) {
            return;
        };
        var _n = (_b.length : stdgo.GoUInt32);
        if ((_n : stdgo.GoInt) != ((_b.length))) {
            (@:checkr _e ?? throw "null pointer dereference")._err = stdgo.Go.asInterface((((_name + (" chunk is too large: " : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((_b.length))?.__copy__() : stdgo.GoString) : stdgo._internal.image.png.Png_unsupportederror.UnsupportedError));
            return;
        };
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint32(((@:checkr _e ?? throw "null pointer dereference")._header.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _n);
        (@:checkr _e ?? throw "null pointer dereference")._header[(4 : stdgo.GoInt)] = _name[(0 : stdgo.GoInt)];
        (@:checkr _e ?? throw "null pointer dereference")._header[(5 : stdgo.GoInt)] = _name[(1 : stdgo.GoInt)];
        (@:checkr _e ?? throw "null pointer dereference")._header[(6 : stdgo.GoInt)] = _name[(2 : stdgo.GoInt)];
        (@:checkr _e ?? throw "null pointer dereference")._header[(7 : stdgo.GoInt)] = _name[(3 : stdgo.GoInt)];
        var _crc = (stdgo._internal.hash.crc32.Crc32_newieee.newIEEE() : stdgo._internal.hash.Hash_hash32.Hash32);
        _crc.write(((@:checkr _e ?? throw "null pointer dereference")._header.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        _crc.write(_b);
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint32(((@:checkr _e ?? throw "null pointer dereference")._footer.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _crc.sum32());
        {
            var __tmp__ = (@:checkr _e ?? throw "null pointer dereference")._w.write(((@:checkr _e ?? throw "null pointer dereference")._header.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            (@:checkr _e ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
        };
        if ((@:checkr _e ?? throw "null pointer dereference")._err != null) {
            return;
        };
        {
            var __tmp__ = (@:checkr _e ?? throw "null pointer dereference")._w.write(_b);
            (@:checkr _e ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
        };
        if ((@:checkr _e ?? throw "null pointer dereference")._err != null) {
            return;
        };
        {
            var __tmp__ = (@:checkr _e ?? throw "null pointer dereference")._w.write(((@:checkr _e ?? throw "null pointer dereference")._footer.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            (@:checkr _e ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
        };
    }
}
