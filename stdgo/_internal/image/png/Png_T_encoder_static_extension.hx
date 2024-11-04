package stdgo._internal.image.png;
@:keep @:allow(stdgo._internal.image.png.Png.T_encoder_asInterface) class T_encoder_static_extension {
    @:keep
    static public function _writeIEND( _e:stdgo.Ref<stdgo._internal.image.png.Png_T_encoder.T_encoder>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.png.Png_T_encoder.T_encoder> = _e;
        _e._writeChunk((null : stdgo.Slice<stdgo.GoUInt8>), ("IEND" : stdgo.GoString));
    }
    @:keep
    static public function _writeIDATs( _e:stdgo.Ref<stdgo._internal.image.png.Png_T_encoder.T_encoder>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.png.Png_T_encoder.T_encoder> = _e;
        if (_e._err != null) {
            return;
        };
        if (_e._bw == null || (_e._bw : Dynamic).__nil__) {
            _e._bw = stdgo._internal.bufio.Bufio_newWriterSize.newWriterSize(stdgo.Go.asInterface(_e), (32768 : stdgo.GoInt));
        } else {
            _e._bw.reset(stdgo.Go.asInterface(_e));
        };
        _e._err = _e._writeImage(stdgo.Go.asInterface(_e._bw), _e._m, _e._cb, stdgo._internal.image.png.Png__levelToZlib._levelToZlib(_e._enc.compressionLevel));
        if (_e._err != null) {
            return;
        };
        _e._err = _e._bw.flush();
    }
    @:keep
    static public function _writeImage( _e:stdgo.Ref<stdgo._internal.image.png.Png_T_encoder.T_encoder>, _w:stdgo._internal.io.Io_Writer.Writer, _m:stdgo._internal.image.Image_Image.Image, _cb:stdgo.GoInt, _level:stdgo.GoInt):stdgo.Error {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.png.Png_T_encoder.T_encoder> = _e;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if ((((_e._zw == null) || (_e._zw : Dynamic).__nil__) || (_e._zwLevel != _level) : Bool)) {
                var __tmp__ = stdgo._internal.compress.zlib.Zlib_newWriterLevel.newWriterLevel(_w, _level), _zw:stdgo.Ref<stdgo._internal.compress.zlib.Zlib_Writer.Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
                _e._zw = _zw;
                _e._zwLevel = _level;
            } else {
                _e._zw.reset(_w);
            };
            __deferstack__.unshift(() -> _e._zw.close());
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
            var _b = (_m.bounds()?.__copy__() : stdgo._internal.image.Image_Rectangle.Rectangle);
            var _sz = ((1 : stdgo.GoInt) + ((((_bitsPerPixel * _b.dx() : stdgo.GoInt) + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
            for (_i => _ in _e._cr) {
                if ((_e._cr[(_i : stdgo.GoInt)].capacity < _sz : Bool)) {
                    _e._cr[(_i : stdgo.GoInt)] = (new stdgo.Slice<stdgo.GoUInt8>((_sz : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                } else {
                    _e._cr[(_i : stdgo.GoInt)] = (_e._cr[(_i : stdgo.GoInt)].__slice__(0, _sz) : stdgo.Slice<stdgo.GoUInt8>);
                };
                _e._cr[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)] = (_i : stdgo.GoUInt8);
            };
            var _cr = _e._cr?.__copy__();
            if ((_e._pr.capacity < _sz : Bool)) {
                _e._pr = (new stdgo.Slice<stdgo.GoUInt8>((_sz : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            } else {
                _e._pr = (_e._pr.__slice__(0, _sz) : stdgo.Slice<stdgo.GoUInt8>);
                stdgo._internal.image.png.Png__zeroMemory._zeroMemory(_e._pr);
            };
            var _pr = _e._pr;
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.image.Image_Gray.Gray>)) : stdgo.Ref<stdgo._internal.image.Image_Gray.Gray>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.image.Image_Gray.Gray>), _1 : false };
            }, _gray = __tmp__._0, __0 = __tmp__._1;
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>)) : stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>), _1 : false };
            }, _rgba = __tmp__._0, __1 = __tmp__._1;
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>)) : stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>), _1 : false };
            }, _paletted = __tmp__._0, __2 = __tmp__._1;
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.image.Image_NRGBA.NRGBA>)) : stdgo.Ref<stdgo._internal.image.Image_NRGBA.NRGBA>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.image.Image_NRGBA.NRGBA>), _1 : false };
            }, _nrgba = __tmp__._0, __3 = __tmp__._1;
            {
                var _y = (_b.min.y : stdgo.GoInt);
                while ((_y < _b.max.y : Bool)) {
                    var _i = (1 : stdgo.GoInt);
{
                        final __value__ = _cb;
                        if (__value__ == ((4 : stdgo.GoInt))) {
                            if (_gray != null && ((_gray : Dynamic).__nil__ == null || !(_gray : Dynamic).__nil__)) {
                                var _offset = (((_y - _b.min.y : stdgo.GoInt)) * _gray.stride : stdgo.GoInt);
                                stdgo.Go.copySlice((_cr[(0 : stdgo.GoInt)].__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_gray.pix.__slice__(_offset, (_offset + _b.dx() : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                            } else {
                                {
                                    var _x = (_b.min.x : stdgo.GoInt);
                                    while ((_x < _b.max.x : Bool)) {
                                        var _c = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.image.color.Color_grayModel.grayModel.convert(_m.at(_x, _y))) : stdgo._internal.image.color.Color_Gray.Gray)) : stdgo._internal.image.color.Color_Gray.Gray).__copy__() : stdgo._internal.image.color.Color_Gray.Gray);
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
                            if (_rgba != null && ((_rgba : Dynamic).__nil__ == null || !(_rgba : Dynamic).__nil__)) {
                                {
                                    final __tmp__0 = _rgba.stride;
                                    final __tmp__1 = _rgba.pix;
                                    _stride = __tmp__0;
                                    _pix = __tmp__1;
                                };
                            } else if (_nrgba != null && ((_nrgba : Dynamic).__nil__ == null || !(_nrgba : Dynamic).__nil__)) {
                                {
                                    final __tmp__0 = _nrgba.stride;
                                    final __tmp__1 = _nrgba.pix;
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
                                        var __tmp__ = _m.at(_x, _y).rgba(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, __4:stdgo.GoUInt32 = __tmp__._3;
_cr0[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] = ((_r >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
_cr0[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = ((_g >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
_cr0[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)] = ((_b >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
_i = (_i + ((3 : stdgo.GoInt)) : stdgo.GoInt);
                                        _x++;
                                    };
                                };
                            };
                        } else if (__value__ == ((10 : stdgo.GoInt))) {
                            if (_paletted != null && ((_paletted : Dynamic).__nil__ == null || !(_paletted : Dynamic).__nil__)) {
                                var _offset = (((_y - _b.min.y : stdgo.GoInt)) * _paletted.stride : stdgo.GoInt);
                                stdgo.Go.copySlice((_cr[(0 : stdgo.GoInt)].__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_paletted.pix.__slice__(_offset, (_offset + _b.dx() : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                            } else {
                                var _pi = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo._internal.image.Image_PalettedImage.PalettedImage)) : stdgo._internal.image.Image_PalettedImage.PalettedImage);
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
                            var _pi = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo._internal.image.Image_PalettedImage.PalettedImage)) : stdgo._internal.image.Image_PalettedImage.PalettedImage);
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
                            if (_nrgba != null && ((_nrgba : Dynamic).__nil__ == null || !(_nrgba : Dynamic).__nil__)) {
                                var _offset = (((_y - _b.min.y : stdgo.GoInt)) * _nrgba.stride : stdgo.GoInt);
                                stdgo.Go.copySlice((_cr[(0 : stdgo.GoInt)].__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_nrgba.pix.__slice__(_offset, (_offset + (_b.dx() * (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                            } else if (_rgba != null && ((_rgba : Dynamic).__nil__ == null || !(_rgba : Dynamic).__nil__)) {
                                var _dst = (_cr[(0 : stdgo.GoInt)].__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                                var _src = (_rgba.pix.__slice__(_rgba.pixOffset(_b.min.x, _y), _rgba.pixOffset(_b.max.x, _y)) : stdgo.Slice<stdgo.GoUInt8>);
                                while (((_src.length) >= (4 : stdgo.GoInt) : Bool)) {
                                    var _d = (_dst : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
var _s = (_src : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
if (_s[(3 : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                                        _d[(0 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                                        _d[(1 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                                        _d[(2 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                                        _d[(3 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                                    } else if (_s[(3 : stdgo.GoInt)] == ((255 : stdgo.GoUInt8))) {
                                        stdgo.Go.copySlice((_d.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_s.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
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
                                        var _c = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.image.color.Color_nrgbamodel.nrgbamodel.convert(_m.at(_x, _y))) : stdgo._internal.image.color.Color_NRGBA.NRGBA)) : stdgo._internal.image.color.Color_NRGBA.NRGBA).__copy__() : stdgo._internal.image.color.Color_NRGBA.NRGBA);
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
                                    var _c = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.image.color.Color_gray16Model.gray16Model.convert(_m.at(_x, _y))) : stdgo._internal.image.color.Color_Gray16.Gray16)) : stdgo._internal.image.color.Color_Gray16.Gray16).__copy__() : stdgo._internal.image.color.Color_Gray16.Gray16);
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
                                    var __tmp__ = _m.at(_x, _y).rgba(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, __4:stdgo.GoUInt32 = __tmp__._3;
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
                                    var _c = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.image.color.Color_nrgba64model.nrgba64model.convert(_m.at(_x, _y))) : stdgo._internal.image.color.Color_NRGBA64.NRGBA64)) : stdgo._internal.image.color.Color_NRGBA64.NRGBA64).__copy__() : stdgo._internal.image.color.Color_NRGBA64.NRGBA64);
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
                        var __tmp__ = _e._zw.write(_cr[(_f : stdgo.GoInt)]), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            {
                                for (defer in __deferstack__) {
                                    defer();
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
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo.Error = (null : stdgo.Error);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function write( _e:stdgo.Ref<stdgo._internal.image.png.Png_T_encoder.T_encoder>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.png.Png_T_encoder.T_encoder> = _e;
        _e._writeChunk(_b, ("IDAT" : stdgo.GoString));
        if (_e._err != null) {
            return { _0 : (0 : stdgo.GoInt), _1 : _e._err };
        };
        return { _0 : (_b.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _writePLTEAndTRNS( _e:stdgo.Ref<stdgo._internal.image.png.Png_T_encoder.T_encoder>, _p:stdgo._internal.image.color.Color_Palette.Palette):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.png.Png_T_encoder.T_encoder> = _e;
        if ((((_p.length) < (1 : stdgo.GoInt) : Bool) || ((_p.length) > (256 : stdgo.GoInt) : Bool) : Bool)) {
            _e._err = stdgo.Go.asInterface(((("bad palette length: " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((_p.length))?.__copy__() : stdgo.GoString) : stdgo._internal.image.png.Png_FormatError.FormatError));
            return;
        };
        var _last = (-1 : stdgo.GoInt);
        for (_i => _c in _p) {
            var _c1 = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.image.color.Color_nrgbamodel.nrgbamodel.convert(_c)) : stdgo._internal.image.color.Color_NRGBA.NRGBA)) : stdgo._internal.image.color.Color_NRGBA.NRGBA)?.__copy__() : stdgo._internal.image.color.Color_NRGBA.NRGBA);
            _e._tmp[(((3 : stdgo.GoInt) * _i : stdgo.GoInt) + (0 : stdgo.GoInt) : stdgo.GoInt)] = _c1.r;
            _e._tmp[(((3 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)] = _c1.g;
            _e._tmp[(((3 : stdgo.GoInt) * _i : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt)] = _c1.b;
            if (_c1.a != ((255 : stdgo.GoUInt8))) {
                _last = _i;
            };
            _e._tmp[((768 : stdgo.GoInt) + _i : stdgo.GoInt)] = _c1.a;
        };
        _e._writeChunk((_e._tmp.__slice__(0, ((3 : stdgo.GoInt) * (_p.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ("PLTE" : stdgo.GoString));
        if (_last != ((-1 : stdgo.GoInt))) {
            _e._writeChunk((_e._tmp.__slice__((768 : stdgo.GoInt), ((769 : stdgo.GoInt) + _last : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ("tRNS" : stdgo.GoString));
        };
    }
    @:keep
    static public function _writeIHDR( _e:stdgo.Ref<stdgo._internal.image.png.Png_T_encoder.T_encoder>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.png.Png_T_encoder.T_encoder> = _e;
        var _b = (_e._m.bounds()?.__copy__() : stdgo._internal.image.Image_Rectangle.Rectangle);
        stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.putUint32((_e._tmp.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_b.dx() : stdgo.GoUInt32));
        stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.putUint32((_e._tmp.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_b.dy() : stdgo.GoUInt32));
        {
            final __value__ = _e._cb;
            if (__value__ == ((4 : stdgo.GoInt))) {
                _e._tmp[(8 : stdgo.GoInt)] = (8 : stdgo.GoUInt8);
                _e._tmp[(9 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            } else if (__value__ == ((6 : stdgo.GoInt))) {
                _e._tmp[(8 : stdgo.GoInt)] = (8 : stdgo.GoUInt8);
                _e._tmp[(9 : stdgo.GoInt)] = (2 : stdgo.GoUInt8);
            } else if (__value__ == ((10 : stdgo.GoInt))) {
                _e._tmp[(8 : stdgo.GoInt)] = (8 : stdgo.GoUInt8);
                _e._tmp[(9 : stdgo.GoInt)] = (3 : stdgo.GoUInt8);
            } else if (__value__ == ((9 : stdgo.GoInt))) {
                _e._tmp[(8 : stdgo.GoInt)] = (4 : stdgo.GoUInt8);
                _e._tmp[(9 : stdgo.GoInt)] = (3 : stdgo.GoUInt8);
            } else if (__value__ == ((8 : stdgo.GoInt))) {
                _e._tmp[(8 : stdgo.GoInt)] = (2 : stdgo.GoUInt8);
                _e._tmp[(9 : stdgo.GoInt)] = (3 : stdgo.GoUInt8);
            } else if (__value__ == ((7 : stdgo.GoInt))) {
                _e._tmp[(8 : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
                _e._tmp[(9 : stdgo.GoInt)] = (3 : stdgo.GoUInt8);
            } else if (__value__ == ((11 : stdgo.GoInt))) {
                _e._tmp[(8 : stdgo.GoInt)] = (8 : stdgo.GoUInt8);
                _e._tmp[(9 : stdgo.GoInt)] = (6 : stdgo.GoUInt8);
            } else if (__value__ == ((12 : stdgo.GoInt))) {
                _e._tmp[(8 : stdgo.GoInt)] = (16 : stdgo.GoUInt8);
                _e._tmp[(9 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            } else if (__value__ == ((14 : stdgo.GoInt))) {
                _e._tmp[(8 : stdgo.GoInt)] = (16 : stdgo.GoUInt8);
                _e._tmp[(9 : stdgo.GoInt)] = (2 : stdgo.GoUInt8);
            } else if (__value__ == ((15 : stdgo.GoInt))) {
                _e._tmp[(8 : stdgo.GoInt)] = (16 : stdgo.GoUInt8);
                _e._tmp[(9 : stdgo.GoInt)] = (6 : stdgo.GoUInt8);
            };
        };
        _e._tmp[(10 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        _e._tmp[(11 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        _e._tmp[(12 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        _e._writeChunk((_e._tmp.__slice__(0, (13 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ("IHDR" : stdgo.GoString));
    }
    @:keep
    static public function _writeChunk( _e:stdgo.Ref<stdgo._internal.image.png.Png_T_encoder.T_encoder>, _b:stdgo.Slice<stdgo.GoUInt8>, _name:stdgo.GoString):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.png.Png_T_encoder.T_encoder> = _e;
        if (_e._err != null) {
            return;
        };
        var _n = (_b.length : stdgo.GoUInt32);
        if ((_n : stdgo.GoInt) != ((_b.length))) {
            _e._err = stdgo.Go.asInterface((((_name + (" chunk is too large: " : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((_b.length))?.__copy__() : stdgo.GoString) : stdgo._internal.image.png.Png_UnsupportedError.UnsupportedError));
            return;
        };
        stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.putUint32((_e._header.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _n);
        _e._header[(4 : stdgo.GoInt)] = _name[(0 : stdgo.GoInt)];
        _e._header[(5 : stdgo.GoInt)] = _name[(1 : stdgo.GoInt)];
        _e._header[(6 : stdgo.GoInt)] = _name[(2 : stdgo.GoInt)];
        _e._header[(7 : stdgo.GoInt)] = _name[(3 : stdgo.GoInt)];
        var _crc = (stdgo._internal.hash.crc32.Crc32_newIEEE.newIEEE() : stdgo._internal.hash.Hash_Hash32.Hash32);
        _crc.write((_e._header.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        _crc.write(_b);
        stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.putUint32((_e._footer.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _crc.sum32());
        {
            var __tmp__ = _e._w.write((_e._header.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            _e._err = __tmp__._1;
        };
        if (_e._err != null) {
            return;
        };
        {
            var __tmp__ = _e._w.write(_b);
            _e._err = __tmp__._1;
        };
        if (_e._err != null) {
            return;
        };
        {
            var __tmp__ = _e._w.write((_e._footer.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            _e._err = __tmp__._1;
        };
    }
}
