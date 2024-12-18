package stdgo._internal.image.gif;
@:keep @:allow(stdgo._internal.image.gif.Gif.T_decoder_asInterface) class T_decoder_static_extension {
    @:keep
    static public function _readBlock( _d:stdgo.Ref<stdgo._internal.image.gif.Gif_T_decoder.T_decoder>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.gif.Gif_T_decoder.T_decoder> = _d;
        var __tmp__ = stdgo._internal.image.gif.Gif__readByte._readByte(_d._r), _n:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n == (0 : stdgo.GoUInt8)) || (_err != null) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : _err };
        };
        {
            var _err = (stdgo._internal.image.gif.Gif__readFull._readFull(_d._r, (_d._tmp.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
            if (_err != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : _err };
            };
        };
        return { _0 : (_n : stdgo.GoInt), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _newImageFromDescriptor( _d:stdgo.Ref<stdgo._internal.image.gif.Gif_T_decoder.T_decoder>):{ var _0 : stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.gif.Gif_T_decoder.T_decoder> = _d;
        {
            var _err = (stdgo._internal.image.gif.Gif__readFull._readFull(_d._r, (_d._tmp.__slice__(0, (9 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("gif: can\'t read image descriptor: %s" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
            };
        };
        var _left = ((_d._tmp[(0 : stdgo.GoInt)] : stdgo.GoInt) + ((_d._tmp[(1 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
        var _top = ((_d._tmp[(2 : stdgo.GoInt)] : stdgo.GoInt) + ((_d._tmp[(3 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
        var _width = ((_d._tmp[(4 : stdgo.GoInt)] : stdgo.GoInt) + ((_d._tmp[(5 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
        var _height = ((_d._tmp[(6 : stdgo.GoInt)] : stdgo.GoInt) + ((_d._tmp[(7 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
        _d._imageFields = _d._tmp[(8 : stdgo.GoInt)];
        if ((((_left + _width : stdgo.GoInt) > _d._width : Bool) || ((_top + _height : stdgo.GoInt) > _d._height : Bool) : Bool)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("gif: frame bounds larger than image bounds" : stdgo.GoString)) };
        };
        return { _0 : stdgo._internal.image.Image_newPaletted.newPaletted(({ min : (new stdgo._internal.image.Image_Point.Point(_left, _top) : stdgo._internal.image.Image_Point.Point), max : (new stdgo._internal.image.Image_Point.Point((_left + _width : stdgo.GoInt), (_top + _height : stdgo.GoInt)) : stdgo._internal.image.Image_Point.Point) } : stdgo._internal.image.Image_Rectangle.Rectangle), null), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _readImageDescriptor( _d:stdgo.Ref<stdgo._internal.image.gif.Gif_T_decoder.T_decoder>, _keepAllFrames:Bool):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.gif.Gif_T_decoder.T_decoder> = _d;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = _d._newImageFromDescriptor(), _m:stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            var _useLocalColorTable = ((_d._imageFields & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8)) : Bool);
            if (_useLocalColorTable) {
                {
                    var __tmp__ = _d._readColorTable(_d._imageFields);
                    _m.palette = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return _err;
                };
            } else {
                if (_d._globalColorTable == null) {
                    return stdgo._internal.errors.Errors_new_.new_(("gif: no color table" : stdgo.GoString));
                };
                _m.palette = _d._globalColorTable;
            };
            if (_d._hasTransparentIndex) {
                if (!_useLocalColorTable) {
                    _m.palette = ((new stdgo._internal.image.color.Color_Palette.Palette(0, 0) : stdgo._internal.image.color.Color_Palette.Palette).__append__(stdgo.Go.asInterface(...(_d._globalColorTable : Array<stdgo._internal.image.color.Color_Color.Color>))));
                };
                {
                    var _ti = (_d._transparentIndex : stdgo.GoInt);
                    if ((_ti < (_m.palette.length) : Bool)) {
                        _m.palette[(_ti : stdgo.GoInt)] = stdgo.Go.asInterface((new stdgo._internal.image.color.Color_RGBA.RGBA() : stdgo._internal.image.color.Color_RGBA.RGBA));
                    } else {
                        var _p = (new stdgo.Slice<stdgo._internal.image.color.Color_Color.Color>((_ti + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0) : stdgo._internal.image.color.Color_Palette.Palette);
                        stdgo.Go.copySlice(_p, _m.palette);
                        {
                            var _i = (_m.palette.length : stdgo.GoInt);
                            while ((_i < (_p.length) : Bool)) {
                                _p[(_i : stdgo.GoInt)] = stdgo.Go.asInterface((new stdgo._internal.image.color.Color_RGBA.RGBA() : stdgo._internal.image.color.Color_RGBA.RGBA));
                                _i++;
                            };
                        };
                        _m.palette = _p;
                    };
                };
            };
            var __tmp__ = stdgo._internal.image.gif.Gif__readByte._readByte(_d._r), _litWidth:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("gif: reading image data: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            if (((_litWidth < (2 : stdgo.GoUInt8) : Bool) || (_litWidth > (8 : stdgo.GoUInt8) : Bool) : Bool)) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("gif: pixel size in decode out of range: %d" : stdgo.GoString), stdgo.Go.toInterface(_litWidth));
            };
            var _br = (stdgo.Go.setRef(({ _d : _d } : stdgo._internal.image.gif.Gif_T_blockReader.T_blockReader)) : stdgo.Ref<stdgo._internal.image.gif.Gif_T_blockReader.T_blockReader>);
            var _lzwr = (stdgo._internal.compress.lzw.Lzw_newReader.newReader(stdgo.Go.asInterface(_br), (0 : stdgo._internal.compress.lzw.Lzw_Order.Order), (_litWidth : stdgo.GoInt)) : stdgo._internal.io.Io_ReadCloser.ReadCloser);
            {
                final __f__ = _lzwr.close;
                __deferstack__.unshift(() -> __f__());
            };
            {
                _err = stdgo._internal.image.gif.Gif__readFull._readFull(_lzwr, _m.pix);
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF))) {
                        {
                            final __ret__:stdgo.Error = stdgo._internal.fmt.Fmt_errorf.errorf(("gif: reading image data: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    };
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return stdgo._internal.image.gif.Gif__errNotEnough._errNotEnough;
                    };
                };
            };
            {
                var __tmp__ = _lzwr.read((_d._tmp.__slice__((256 : stdgo.GoInt), (257 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_n != (0 : stdgo.GoInt)) || (((stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF)) : Bool)) : Bool)) {
                    if (_err != null) {
                        {
                            final __ret__:stdgo.Error = stdgo._internal.fmt.Fmt_errorf.errorf(("gif: reading image data: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    };
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return stdgo._internal.image.gif.Gif__errTooMuch._errTooMuch;
                    };
                };
            };
            {
                var _err = (_br._close() : stdgo.Error);
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.image.gif.Gif__errTooMuch._errTooMuch))) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return stdgo._internal.image.gif.Gif__errTooMuch._errTooMuch;
                    };
                } else if (_err != null) {
                    {
                        final __ret__:stdgo.Error = stdgo._internal.fmt.Fmt_errorf.errorf(("gif: reading image data: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            if (((_m.palette.length) < (256 : stdgo.GoInt) : Bool)) {
                for (__0 => _pixel in _m.pix) {
                    if (((_pixel : stdgo.GoInt) >= (_m.palette.length) : Bool)) {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return stdgo._internal.image.gif.Gif__errBadPixel._errBadPixel;
                        };
                    };
                };
            };
            if ((_d._imageFields & (64 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                stdgo._internal.image.gif.Gif__uninterlace._uninterlace(_m);
            };
            if ((_keepAllFrames || (_d._image.length == (0 : stdgo.GoInt)) : Bool)) {
                _d._image = (_d._image.__append__(_m));
                _d._delay = (_d._delay.__append__(_d._delayTime));
                _d._disposal = (_d._disposal.__append__(_d._disposalMethod));
            };
            _d._delayTime = (0 : stdgo.GoInt);
            _d._hasTransparentIndex = false;
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
    static public function _readGraphicControl( _d:stdgo.Ref<stdgo._internal.image.gif.Gif_T_decoder.T_decoder>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.gif.Gif_T_decoder.T_decoder> = _d;
        {
            var _err = (stdgo._internal.image.gif.Gif__readFull._readFull(_d._r, (_d._tmp.__slice__(0, (6 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
            if (_err != null) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("gif: can\'t read graphic control: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        if (_d._tmp[(0 : stdgo.GoInt)] != ((4 : stdgo.GoUInt8))) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("gif: invalid graphic control extension block size: %d" : stdgo.GoString), stdgo.Go.toInterface(_d._tmp[(0 : stdgo.GoInt)]));
        };
        var _flags = (_d._tmp[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
        _d._disposalMethod = (((_flags & (28 : stdgo.GoUInt8) : stdgo.GoUInt8)) >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
        _d._delayTime = ((_d._tmp[(2 : stdgo.GoInt)] : stdgo.GoInt) | ((_d._tmp[(3 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
        if ((_flags & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
            _d._transparentIndex = _d._tmp[(4 : stdgo.GoInt)];
            _d._hasTransparentIndex = true;
        };
        if (_d._tmp[(5 : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("gif: invalid graphic control extension block terminator: %d" : stdgo.GoString), stdgo.Go.toInterface(_d._tmp[(5 : stdgo.GoInt)]));
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _readExtension( _d:stdgo.Ref<stdgo._internal.image.gif.Gif_T_decoder.T_decoder>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.gif.Gif_T_decoder.T_decoder> = _d;
        var __tmp__ = stdgo._internal.image.gif.Gif__readByte._readByte(_d._r), _extension:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("gif: reading extension: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _size = (0 : stdgo.GoInt);
        {
            final __value__ = _extension;
            if (__value__ == ((1 : stdgo.GoUInt8))) {
                _size = (13 : stdgo.GoInt);
            } else if (__value__ == ((249 : stdgo.GoUInt8))) {
                return _d._readGraphicControl();
            } else if (__value__ == ((254 : stdgo.GoUInt8))) {} else if (__value__ == ((255 : stdgo.GoUInt8))) {
                var __tmp__ = stdgo._internal.image.gif.Gif__readByte._readByte(_d._r), _b:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("gif: reading extension: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
                _size = (_b : stdgo.GoInt);
            } else {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("gif: unknown extension 0x%.2x" : stdgo.GoString), stdgo.Go.toInterface(_extension));
            };
        };
        if ((_size > (0 : stdgo.GoInt) : Bool)) {
            {
                var _err = (stdgo._internal.image.gif.Gif__readFull._readFull(_d._r, (_d._tmp.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                if (_err != null) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("gif: reading extension: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
        };
        if (((_extension == (255 : stdgo.GoUInt8)) && (((_d._tmp.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) == ("NETSCAPE2.0" : stdgo.GoString)) : Bool)) {
            var __tmp__ = _d._readBlock(), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("gif: reading extension: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            if (_n == ((0 : stdgo.GoInt))) {
                return (null : stdgo.Error);
            };
            if (((_n == (3 : stdgo.GoInt)) && (_d._tmp[(0 : stdgo.GoInt)] == (1 : stdgo.GoUInt8)) : Bool)) {
                _d._loopCount = ((_d._tmp[(1 : stdgo.GoInt)] : stdgo.GoInt) | ((_d._tmp[(2 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
            };
        };
        while (true) {
            var __tmp__ = _d._readBlock(), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("gif: reading extension: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            if (_n == ((0 : stdgo.GoInt))) {
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    static public function _readColorTable( _d:stdgo.Ref<stdgo._internal.image.gif.Gif_T_decoder.T_decoder>, _fields:stdgo.GoUInt8):{ var _0 : stdgo._internal.image.color.Color_Palette.Palette; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.gif.Gif_T_decoder.T_decoder> = _d;
        var _n = ((1 : stdgo.GoInt) << (((1u32 : stdgo.GoUInt) + ((_fields & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoInt);
        var _err = (stdgo._internal.image.gif.Gif__readFull._readFull(_d._r, (_d._tmp.__slice__(0, ((3 : stdgo.GoInt) * _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
        if (_err != null) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("gif: reading color table: %s" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
        };
        var __0 = (0 : stdgo.GoInt), __1 = (new stdgo.Slice<stdgo._internal.image.color.Color_Color.Color>((_n : stdgo.GoInt).toBasic(), 0) : stdgo._internal.image.color.Color_Palette.Palette);
var _p = __1, _j = __0;
        for (_i => _ in _p) {
            _p[(_i : stdgo.GoInt)] = stdgo.Go.asInterface((new stdgo._internal.image.color.Color_RGBA.RGBA(_d._tmp[(_j + (0 : stdgo.GoInt) : stdgo.GoInt)], _d._tmp[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)], _d._tmp[(_j + (2 : stdgo.GoInt) : stdgo.GoInt)], (255 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_RGBA.RGBA));
            _j = (_j + ((3 : stdgo.GoInt)) : stdgo.GoInt);
        };
        return { _0 : _p, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _readHeaderAndScreenDescriptor( _d:stdgo.Ref<stdgo._internal.image.gif.Gif_T_decoder.T_decoder>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.gif.Gif_T_decoder.T_decoder> = _d;
        var _err = (stdgo._internal.image.gif.Gif__readFull._readFull(_d._r, (_d._tmp.__slice__(0, (13 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
        if (_err != null) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("gif: reading header: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        _d._vers = ((_d._tmp.__slice__(0, (6 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
        if (((_d._vers != ("GIF87a" : stdgo.GoString)) && (_d._vers != ("GIF89a" : stdgo.GoString)) : Bool)) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("gif: can\'t recognize format %q" : stdgo.GoString), stdgo.Go.toInterface(_d._vers));
        };
        _d._width = ((_d._tmp[(6 : stdgo.GoInt)] : stdgo.GoInt) + ((_d._tmp[(7 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
        _d._height = ((_d._tmp[(8 : stdgo.GoInt)] : stdgo.GoInt) + ((_d._tmp[(9 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
        {
            var _fields = (_d._tmp[(10 : stdgo.GoInt)] : stdgo.GoUInt8);
            if ((_fields & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                _d._backgroundIndex = _d._tmp[(11 : stdgo.GoInt)];
                {
                    {
                        var __tmp__ = _d._readColorTable(_fields);
                        _d._globalColorTable = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        return _err;
                    };
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _decode( _d:stdgo.Ref<stdgo._internal.image.gif.Gif_T_decoder.T_decoder>, _r:stdgo._internal.io.Io_Reader.Reader, _configOnly:Bool, _keepAllFrames:Bool):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.gif.Gif_T_decoder.T_decoder> = _d;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo._internal.image.gif.Gif_T_reader.T_reader)) : stdgo._internal.image.gif.Gif_T_reader.T_reader), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.image.gif.Gif_T_reader.T_reader), _1 : false };
            }, _rr = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _d._r = _rr;
            } else {
                _d._r = stdgo.Go.asInterface(stdgo._internal.bufio.Bufio_newReader.newReader(_r));
            };
        };
        _d._loopCount = (-1 : stdgo.GoInt);
        var _err = (_d._readHeaderAndScreenDescriptor() : stdgo.Error);
        if (_err != null) {
            return _err;
        };
        if (_configOnly) {
            return (null : stdgo.Error);
        };
        while (true) {
            var __tmp__ = stdgo._internal.image.gif.Gif__readByte._readByte(_d._r), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("gif: reading frames: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            {
                final __value__ = _c;
                if (__value__ == ((33 : stdgo.GoUInt8))) {
                    {
                        _err = _d._readExtension();
                        if (_err != null) {
                            return _err;
                        };
                    };
                } else if (__value__ == ((44 : stdgo.GoUInt8))) {
                    {
                        _err = _d._readImageDescriptor(_keepAllFrames);
                        if (_err != null) {
                            return _err;
                        };
                    };
                    if ((!_keepAllFrames && (_d._image.length == (1 : stdgo.GoInt)) : Bool)) {
                        return (null : stdgo.Error);
                    };
                } else if (__value__ == ((59 : stdgo.GoUInt8))) {
                    if ((_d._image.length) == ((0 : stdgo.GoInt))) {
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("gif: missing image data" : stdgo.GoString));
                    };
                    return (null : stdgo.Error);
                } else {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("gif: unknown block type: 0x%.2x" : stdgo.GoString), stdgo.Go.toInterface(_c));
                };
            };
        };
    }
}
