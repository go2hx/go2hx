package stdgo._internal.image.gif;
@:keep @:allow(stdgo._internal.image.gif.Gif.T_decoder_asInterface) class T_decoder_static_extension {
    @:keep
    @:tdfield
    static public function _readBlock( _d:stdgo.Ref<stdgo._internal.image.gif.Gif_t_decoder.T_decoder>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.gif.Gif_t_decoder.T_decoder> = _d;
        var __tmp__ = stdgo._internal.image.gif.Gif__readbyte._readByte((@:checkr _d ?? throw "null pointer dereference")._r), _n:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L523"
        if (((_n == (0 : stdgo.GoUInt8)) || (_err != null) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L524"
            return { _0 : (0 : stdgo.GoInt), _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L526"
        {
            var _err = (stdgo._internal.image.gif.Gif__readfull._readFull((@:checkr _d ?? throw "null pointer dereference")._r, ((@:checkr _d ?? throw "null pointer dereference")._tmp.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L527"
                return { _0 : (0 : stdgo.GoInt), _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L529"
        return { _0 : (_n : stdgo.GoInt), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _newImageFromDescriptor( _d:stdgo.Ref<stdgo._internal.image.gif.Gif_t_decoder.T_decoder>):{ var _0 : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.gif.Gif_t_decoder.T_decoder> = _d;
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L487"
        {
            var _err = (stdgo._internal.image.gif.Gif__readfull._readFull((@:checkr _d ?? throw "null pointer dereference")._r, ((@:checkr _d ?? throw "null pointer dereference")._tmp.__slice__(0, (9 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L488"
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("gif: can\'t read image descriptor: %s" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
            };
        };
        var _left = (((@:checkr _d ?? throw "null pointer dereference")._tmp[(0 : stdgo.GoInt)] : stdgo.GoInt) + (((@:checkr _d ?? throw "null pointer dereference")._tmp[(1 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
        var _top = (((@:checkr _d ?? throw "null pointer dereference")._tmp[(2 : stdgo.GoInt)] : stdgo.GoInt) + (((@:checkr _d ?? throw "null pointer dereference")._tmp[(3 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
        var _width = (((@:checkr _d ?? throw "null pointer dereference")._tmp[(4 : stdgo.GoInt)] : stdgo.GoInt) + (((@:checkr _d ?? throw "null pointer dereference")._tmp[(5 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
        var _height = (((@:checkr _d ?? throw "null pointer dereference")._tmp[(6 : stdgo.GoInt)] : stdgo.GoInt) + (((@:checkr _d ?? throw "null pointer dereference")._tmp[(7 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
        (@:checkr _d ?? throw "null pointer dereference")._imageFields = (@:checkr _d ?? throw "null pointer dereference")._tmp[(8 : stdgo.GoInt)];
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L512"
        if ((((_left + _width : stdgo.GoInt) > (@:checkr _d ?? throw "null pointer dereference")._width : Bool) || ((_top + _height : stdgo.GoInt) > (@:checkr _d ?? throw "null pointer dereference")._height : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L513"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("gif: frame bounds larger than image bounds" : stdgo.GoString)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L515"
        return { _0 : stdgo._internal.image.Image_newpaletted.newPaletted(({ min : (new stdgo._internal.image.Image_point.Point(_left, _top) : stdgo._internal.image.Image_point.Point), max : (new stdgo._internal.image.Image_point.Point((_left + _width : stdgo.GoInt), (_top + _height : stdgo.GoInt)) : stdgo._internal.image.Image_point.Point) } : stdgo._internal.image.Image_rectangle.Rectangle), null), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _readImageDescriptor( _d:stdgo.Ref<stdgo._internal.image.gif.Gif_t_decoder.T_decoder>, _keepAllFrames:Bool):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.gif.Gif_t_decoder.T_decoder> = _d;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var __tmp__ = _d._newImageFromDescriptor(), _m:stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L381"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L382"
                return _err;
            };
            var _useLocalColorTable = (((@:checkr _d ?? throw "null pointer dereference")._imageFields & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8)) : Bool);
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L385"
            if (_useLocalColorTable) {
                {
                    var __tmp__ = _d._readColorTable((@:checkr _d ?? throw "null pointer dereference")._imageFields);
                    (@:checkr _m ?? throw "null pointer dereference").palette = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L387"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L388"
                    return _err;
                };
            } else {
                //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L391"
                if ((@:checkr _d ?? throw "null pointer dereference")._globalColorTable == null) {
                    //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L392"
                    return stdgo._internal.errors.Errors_new_.new_(("gif: no color table" : stdgo.GoString));
                };
                (@:checkr _m ?? throw "null pointer dereference").palette = (@:checkr _d ?? throw "null pointer dereference")._globalColorTable;
            };
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L396"
            if ((@:checkr _d ?? throw "null pointer dereference")._hasTransparentIndex) {
                //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L397"
                if (!_useLocalColorTable) {
                    (@:checkr _m ?? throw "null pointer dereference").palette = ((new stdgo._internal.image.color.Color_palette.Palette(0, 0) : stdgo._internal.image.color.Color_palette.Palette).__append__(stdgo.Go.asInterface(...((@:checkr _d ?? throw "null pointer dereference")._globalColorTable : Array<stdgo._internal.image.color.Color_color.Color>))) : stdgo._internal.image.color.Color_palette.Palette);
                };
                //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L401"
                {
                    var _ti = ((@:checkr _d ?? throw "null pointer dereference")._transparentIndex : stdgo.GoInt);
                    if ((_ti < ((@:checkr _m ?? throw "null pointer dereference").palette.length) : Bool)) {
                        (@:checkr _m ?? throw "null pointer dereference").palette[(_ti : stdgo.GoInt)] = stdgo.Go.asInterface((new stdgo._internal.image.color.Color_rgba.RGBA() : stdgo._internal.image.color.Color_rgba.RGBA));
                    } else {
                        var _p = (new stdgo.Slice<stdgo._internal.image.color.Color_color.Color>((_ti + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0) : stdgo._internal.image.color.Color_palette.Palette);
                        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L409"
                        _p.__copyTo__((@:checkr _m ?? throw "null pointer dereference").palette);
                        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L410"
                        {
                            var _i = ((@:checkr _m ?? throw "null pointer dereference").palette.length : stdgo.GoInt);
                            while ((_i < (_p.length) : Bool)) {
                                _p[(_i : stdgo.GoInt)] = stdgo.Go.asInterface((new stdgo._internal.image.color.Color_rgba.RGBA() : stdgo._internal.image.color.Color_rgba.RGBA));
                                _i++;
                            };
                        };
                        (@:checkr _m ?? throw "null pointer dereference").palette = _p;
                    };
                };
            };
            var __tmp__ = stdgo._internal.image.gif.Gif__readbyte._readByte((@:checkr _d ?? throw "null pointer dereference")._r), _litWidth:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L417"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L418"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("gif: reading image data: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L420"
            if (((_litWidth < (2 : stdgo.GoUInt8) : Bool) || (_litWidth > (8 : stdgo.GoUInt8) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L421"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("gif: pixel size in decode out of range: %d" : stdgo.GoString), stdgo.Go.toInterface(_litWidth));
            };
            var _br = (stdgo.Go.setRef(({ _d : _d } : stdgo._internal.image.gif.Gif_t_blockreader.T_blockReader)) : stdgo.Ref<stdgo._internal.image.gif.Gif_t_blockreader.T_blockReader>);
            var _lzwr = (stdgo._internal.compress.lzw.Lzw_newreader.newReader(stdgo.Go.asInterface(_br), (0 : stdgo._internal.compress.lzw.Lzw_order.Order), (_litWidth : stdgo.GoInt)) : stdgo._internal.io.Io_readcloser.ReadCloser);
            {
                final __f__ = _lzwr.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L427"
            {
                _err = stdgo._internal.image.gif.Gif__readfull._readFull(_lzwr, (@:checkr _m ?? throw "null pointer dereference").pix);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L428"
                    if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF))) {
                        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L429"
                        {
                            final __ret__:stdgo.Error = stdgo._internal.fmt.Fmt_errorf.errorf(("gif: reading image data: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L431"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return stdgo._internal.image.gif.Gif__errnotenough._errNotEnough;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L444"
            {
                var __tmp__ = _lzwr.read(((@:checkr _d ?? throw "null pointer dereference")._tmp.__slice__((256 : stdgo.GoInt), (257 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_n != (0 : stdgo.GoInt)) || (((stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF)) : Bool)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L445"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L446"
                        {
                            final __ret__:stdgo.Error = stdgo._internal.fmt.Fmt_errorf.errorf(("gif: reading image data: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L448"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return stdgo._internal.image.gif.Gif__errtoomuch._errTooMuch;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L453"
            {
                var _err = (_br._close() : stdgo.Error);
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.image.gif.Gif__errtoomuch._errTooMuch))) {
                    //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L454"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return stdgo._internal.image.gif.Gif__errtoomuch._errTooMuch;
                    };
                } else if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L456"
                    {
                        final __ret__:stdgo.Error = stdgo._internal.fmt.Fmt_errorf.errorf(("gif: reading image data: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L460"
            if ((((@:checkr _m ?? throw "null pointer dereference").palette.length) < (256 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L461"
                for (__0 => _pixel in (@:checkr _m ?? throw "null pointer dereference").pix) {
                    //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L462"
                    if (((_pixel : stdgo.GoInt) >= ((@:checkr _m ?? throw "null pointer dereference").palette.length) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L463"
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return stdgo._internal.image.gif.Gif__errbadpixel._errBadPixel;
                        };
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L469"
            if (((@:checkr _d ?? throw "null pointer dereference")._imageFields & (64 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L470"
                stdgo._internal.image.gif.Gif__uninterlace._uninterlace(_m);
            };
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L473"
            if ((_keepAllFrames || ((@:checkr _d ?? throw "null pointer dereference")._image.length == (0 : stdgo.GoInt)) : Bool)) {
                (@:checkr _d ?? throw "null pointer dereference")._image = ((@:checkr _d ?? throw "null pointer dereference")._image.__append__(_m) : stdgo.Slice<stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>>);
                (@:checkr _d ?? throw "null pointer dereference")._delay = ((@:checkr _d ?? throw "null pointer dereference")._delay.__append__((@:checkr _d ?? throw "null pointer dereference")._delayTime) : stdgo.Slice<stdgo.GoInt>);
                (@:checkr _d ?? throw "null pointer dereference")._disposal = ((@:checkr _d ?? throw "null pointer dereference")._disposal.__append__((@:checkr _d ?? throw "null pointer dereference")._disposalMethod) : stdgo.Slice<stdgo.GoUInt8>);
            };
            (@:checkr _d ?? throw "null pointer dereference")._delayTime = (0 : stdgo.GoInt);
            (@:checkr _d ?? throw "null pointer dereference")._hasTransparentIndex = false;
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L483"
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
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
    static public function _readGraphicControl( _d:stdgo.Ref<stdgo._internal.image.gif.Gif_t_decoder.T_decoder>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.gif.Gif_t_decoder.T_decoder> = _d;
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L360"
        {
            var _err = (stdgo._internal.image.gif.Gif__readfull._readFull((@:checkr _d ?? throw "null pointer dereference")._r, ((@:checkr _d ?? throw "null pointer dereference")._tmp.__slice__(0, (6 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L361"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("gif: can\'t read graphic control: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L363"
        if ((@:checkr _d ?? throw "null pointer dereference")._tmp[(0 : stdgo.GoInt)] != ((4 : stdgo.GoUInt8))) {
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L364"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("gif: invalid graphic control extension block size: %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _d ?? throw "null pointer dereference")._tmp[(0 : stdgo.GoInt)]));
        };
        var _flags = ((@:checkr _d ?? throw "null pointer dereference")._tmp[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
        (@:checkr _d ?? throw "null pointer dereference")._disposalMethod = (((_flags & (28 : stdgo.GoUInt8) : stdgo.GoUInt8)) >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
        (@:checkr _d ?? throw "null pointer dereference")._delayTime = (((@:checkr _d ?? throw "null pointer dereference")._tmp[(2 : stdgo.GoInt)] : stdgo.GoInt) | (((@:checkr _d ?? throw "null pointer dereference")._tmp[(3 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L369"
        if ((_flags & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
            (@:checkr _d ?? throw "null pointer dereference")._transparentIndex = (@:checkr _d ?? throw "null pointer dereference")._tmp[(4 : stdgo.GoInt)];
            (@:checkr _d ?? throw "null pointer dereference")._hasTransparentIndex = true;
        };
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L373"
        if ((@:checkr _d ?? throw "null pointer dereference")._tmp[(5 : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L374"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("gif: invalid graphic control extension block terminator: %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _d ?? throw "null pointer dereference")._tmp[(5 : stdgo.GoInt)]));
        };
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L376"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _readExtension( _d:stdgo.Ref<stdgo._internal.image.gif.Gif_t_decoder.T_decoder>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.gif.Gif_t_decoder.T_decoder> = _d;
        var __tmp__ = stdgo._internal.image.gif.Gif__readbyte._readByte((@:checkr _d ?? throw "null pointer dereference")._r), _extension:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L307"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L308"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("gif: reading extension: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _size = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L311"
        {
            final __value__ = _extension;
            if (__value__ == ((1 : stdgo.GoUInt8))) {
                _size = (13 : stdgo.GoInt);
            } else if (__value__ == ((249 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L315"
                return _d._readGraphicControl();
            } else if (__value__ == ((254 : stdgo.GoUInt8))) {} else if (__value__ == ((255 : stdgo.GoUInt8))) {
                var __tmp__ = stdgo._internal.image.gif.Gif__readbyte._readByte((@:checkr _d ?? throw "null pointer dereference")._r), _b:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L320"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L321"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("gif: reading extension: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
                _size = (_b : stdgo.GoInt);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L326"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("gif: unknown extension 0x%.2x" : stdgo.GoString), stdgo.Go.toInterface(_extension));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L328"
        if ((_size > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L329"
            {
                var _err = (stdgo._internal.image.gif.Gif__readfull._readFull((@:checkr _d ?? throw "null pointer dereference")._r, ((@:checkr _d ?? throw "null pointer dereference")._tmp.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L330"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("gif: reading extension: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L336"
        if (((_extension == (255 : stdgo.GoUInt8)) && ((((@:checkr _d ?? throw "null pointer dereference")._tmp.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) == ("NETSCAPE2.0" : stdgo.GoString)) : Bool)) {
            var __tmp__ = _d._readBlock(), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L338"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L339"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("gif: reading extension: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L341"
            if (_n == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L342"
                return (null : stdgo.Error);
            };
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L344"
            if (((_n == (3 : stdgo.GoInt)) && ((@:checkr _d ?? throw "null pointer dereference")._tmp[(0 : stdgo.GoInt)] == (1 : stdgo.GoUInt8)) : Bool)) {
                (@:checkr _d ?? throw "null pointer dereference")._loopCount = (((@:checkr _d ?? throw "null pointer dereference")._tmp[(1 : stdgo.GoInt)] : stdgo.GoInt) | (((@:checkr _d ?? throw "null pointer dereference")._tmp[(2 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L348"
        while (true) {
            var __tmp__ = _d._readBlock(), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L350"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L351"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("gif: reading extension: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L353"
            if (_n == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L354"
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _readColorTable( _d:stdgo.Ref<stdgo._internal.image.gif.Gif_t_decoder.T_decoder>, _fields:stdgo.GoUInt8):{ var _0 : stdgo._internal.image.color.Color_palette.Palette; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.gif.Gif_t_decoder.T_decoder> = _d;
        var _n = ((1 : stdgo.GoInt) << (((1u32 : stdgo.GoUInt) + ((_fields & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoInt);
        var _err = (stdgo._internal.image.gif.Gif__readfull._readFull((@:checkr _d ?? throw "null pointer dereference")._r, ((@:checkr _d ?? throw "null pointer dereference")._tmp.__slice__(0, ((3 : stdgo.GoInt) * _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L294"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L295"
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("gif: reading color table: %s" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
        };
        var __0 = (0 : stdgo.GoInt), __1 = (new stdgo.Slice<stdgo._internal.image.color.Color_color.Color>((_n : stdgo.GoInt).toBasic(), 0) : stdgo._internal.image.color.Color_palette.Palette);
var _p = __1, _j = __0;
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L298"
        for (_i => _ in _p) {
            _p[(_i : stdgo.GoInt)] = stdgo.Go.asInterface((new stdgo._internal.image.color.Color_rgba.RGBA((@:checkr _d ?? throw "null pointer dereference")._tmp[(_j + (0 : stdgo.GoInt) : stdgo.GoInt)], (@:checkr _d ?? throw "null pointer dereference")._tmp[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)], (@:checkr _d ?? throw "null pointer dereference")._tmp[(_j + (2 : stdgo.GoInt) : stdgo.GoInt)], (255 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_rgba.RGBA));
            _j = (_j + ((3 : stdgo.GoInt)) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L302"
        return { _0 : _p, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _readHeaderAndScreenDescriptor( _d:stdgo.Ref<stdgo._internal.image.gif.Gif_t_decoder.T_decoder>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.gif.Gif_t_decoder.T_decoder> = _d;
        var _err = (stdgo._internal.image.gif.Gif__readfull._readFull((@:checkr _d ?? throw "null pointer dereference")._r, ((@:checkr _d ?? throw "null pointer dereference")._tmp.__slice__(0, (13 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L271"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L272"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("gif: reading header: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        (@:checkr _d ?? throw "null pointer dereference")._vers = (((@:checkr _d ?? throw "null pointer dereference")._tmp.__slice__(0, (6 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L275"
        if ((((@:checkr _d ?? throw "null pointer dereference")._vers != ("GIF87a" : stdgo.GoString)) && ((@:checkr _d ?? throw "null pointer dereference")._vers != ("GIF89a" : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L276"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("gif: can\'t recognize format %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _d ?? throw "null pointer dereference")._vers));
        };
        (@:checkr _d ?? throw "null pointer dereference")._width = (((@:checkr _d ?? throw "null pointer dereference")._tmp[(6 : stdgo.GoInt)] : stdgo.GoInt) + (((@:checkr _d ?? throw "null pointer dereference")._tmp[(7 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
        (@:checkr _d ?? throw "null pointer dereference")._height = (((@:checkr _d ?? throw "null pointer dereference")._tmp[(8 : stdgo.GoInt)] : stdgo.GoInt) + (((@:checkr _d ?? throw "null pointer dereference")._tmp[(9 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L280"
        {
            var _fields = ((@:checkr _d ?? throw "null pointer dereference")._tmp[(10 : stdgo.GoInt)] : stdgo.GoUInt8);
            if ((_fields & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                (@:checkr _d ?? throw "null pointer dereference")._backgroundIndex = (@:checkr _d ?? throw "null pointer dereference")._tmp[(11 : stdgo.GoInt)];
                //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L283"
                {
                    {
                        var __tmp__ = _d._readColorTable(_fields);
                        (@:checkr _d ?? throw "null pointer dereference")._globalColorTable = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L284"
                        return _err;
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L288"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _decode( _d:stdgo.Ref<stdgo._internal.image.gif.Gif_t_decoder.T_decoder>, _r:stdgo._internal.io.Io_reader.Reader, _configOnly:Bool, _keepAllFrames:Bool):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.gif.Gif_t_decoder.T_decoder> = _d;
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L221"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo._internal.image.gif.Gif_t_reader.T_reader)) : stdgo._internal.image.gif.Gif_t_reader.T_reader), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.image.gif.Gif_t_reader.T_reader), _1 : false };
            }, _rr = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                (@:checkr _d ?? throw "null pointer dereference")._r = _rr;
            } else {
                (@:checkr _d ?? throw "null pointer dereference")._r = stdgo.Go.asInterface(stdgo._internal.bufio.Bufio_newreader.newReader(_r));
            };
        };
        (@:checkr _d ?? throw "null pointer dereference")._loopCount = (-1 : stdgo.GoInt);
        var _err = (_d._readHeaderAndScreenDescriptor() : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L230"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L231"
            return _err;
        };
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L233"
        if (_configOnly) {
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L234"
            return (null : stdgo.Error);
        };
        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L237"
        while (true) {
            var __tmp__ = stdgo._internal.image.gif.Gif__readbyte._readByte((@:checkr _d ?? throw "null pointer dereference")._r), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L239"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L240"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("gif: reading frames: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L242"
            {
                final __value__ = _c;
                if (__value__ == ((33 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L244"
                    {
                        _err = _d._readExtension();
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L245"
                            return _err;
                        };
                    };
                } else if (__value__ == ((44 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L249"
                    {
                        _err = _d._readImageDescriptor(_keepAllFrames);
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L250"
                            return _err;
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L253"
                    if ((!_keepAllFrames && ((@:checkr _d ?? throw "null pointer dereference")._image.length == (1 : stdgo.GoInt)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L254"
                        return (null : stdgo.Error);
                    };
                } else if (__value__ == ((59 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L258"
                    if (((@:checkr _d ?? throw "null pointer dereference")._image.length) == ((0 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L259"
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("gif: missing image data" : stdgo.GoString));
                    };
                    //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L261"
                    return (null : stdgo.Error);
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/image/gif/reader.go#L264"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("gif: unknown block type: 0x%.2x" : stdgo.GoString), stdgo.Go.toInterface(_c));
                };
            };
        };
    }
}
