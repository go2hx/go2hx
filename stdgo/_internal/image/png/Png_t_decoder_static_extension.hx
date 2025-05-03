package stdgo._internal.image.png;
@:keep @:allow(stdgo._internal.image.png.Png.T_decoder_asInterface) class T_decoder_static_extension {
    @:keep
    @:tdfield
    static public function _checkHeader( _d:stdgo.Ref<stdgo._internal.image.png.Png_t_decoder.T_decoder>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.png.Png_t_decoder.T_decoder> = _d;
        var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _d ?? throw "null pointer dereference")._r, ((@:checkr _d ?? throw "null pointer dereference")._tmp.__slice__(0, ((stdgo.Go.str(137, "PNG\r\n", 26, "\n") : stdgo.GoString).length)) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L965"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L966"
            return _err;
        };
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L968"
        if ((((@:checkr _d ?? throw "null pointer dereference")._tmp.__slice__(0, ((stdgo.Go.str(137, "PNG\r\n", 26, "\n") : stdgo.GoString).length)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != ((stdgo.Go.str(137, "PNG\r\n", 26, "\n") : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L969"
            return stdgo.Go.asInterface((("not a PNG file" : stdgo.GoString) : stdgo._internal.image.png.Png_formaterror.FormatError));
        };
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L971"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _verifyChecksum( _d:stdgo.Ref<stdgo._internal.image.png.Png_t_decoder.T_decoder>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.png.Png_t_decoder.T_decoder> = _d;
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L954"
        {
            var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _d ?? throw "null pointer dereference")._r, ((@:checkr _d ?? throw "null pointer dereference")._tmp.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L955"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L957"
        if (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32(((@:checkr _d ?? throw "null pointer dereference")._tmp.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) != ((@:checkr _d ?? throw "null pointer dereference")._crc.sum32())) {
            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L958"
            return stdgo.Go.asInterface((("invalid checksum" : stdgo.GoString) : stdgo._internal.image.png.Png_formaterror.FormatError));
        };
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L960"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _parseChunk( _d:stdgo.Ref<stdgo._internal.image.png.Png_t_decoder.T_decoder>, _configOnly:Bool):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.png.Png_t_decoder.T_decoder> = _d;
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L879"
        {
            var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _d ?? throw "null pointer dereference")._r, ((@:checkr _d ?? throw "null pointer dereference")._tmp.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L880"
                return _err;
            };
        };
        var _length = (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32(((@:checkr _d ?? throw "null pointer dereference")._tmp.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L883"
        (@:checkr _d ?? throw "null pointer dereference")._crc.reset();
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L884"
        (@:checkr _d ?? throw "null pointer dereference")._crc.write(((@:checkr _d ?? throw "null pointer dereference")._tmp.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L887"
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = (((@:checkr _d ?? throw "null pointer dereference")._tmp.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString);
                    if (__value__ == (("IHDR" : stdgo.GoString))) {
                        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L889"
                        if ((@:checkr _d ?? throw "null pointer dereference")._stage != ((0 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L890"
                            return stdgo.Go.asInterface(stdgo._internal.image.png.Png__chunkordererror._chunkOrderError);
                        };
                        (@:checkr _d ?? throw "null pointer dereference")._stage = (1 : stdgo.GoInt);
                        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L893"
                        return _d._parseIHDR(_length);
                        break;
                    } else if (__value__ == (("PLTE" : stdgo.GoString))) {
                        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L895"
                        if ((@:checkr _d ?? throw "null pointer dereference")._stage != ((1 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L896"
                            return stdgo.Go.asInterface(stdgo._internal.image.png.Png__chunkordererror._chunkOrderError);
                        };
                        (@:checkr _d ?? throw "null pointer dereference")._stage = (2 : stdgo.GoInt);
                        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L899"
                        return _d._parsePLTE(_length);
                        break;
                    } else if (__value__ == (("tRNS" : stdgo.GoString))) {
                        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L901"
                        if (stdgo._internal.image.png.Png__cbpaletted._cbPaletted((@:checkr _d ?? throw "null pointer dereference")._cb)) {
                            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L902"
                            if ((@:checkr _d ?? throw "null pointer dereference")._stage != ((2 : stdgo.GoInt))) {
                                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L903"
                                return stdgo.Go.asInterface(stdgo._internal.image.png.Png__chunkordererror._chunkOrderError);
                            };
                        } else if (stdgo._internal.image.png.Png__cbtruecolor._cbTrueColor((@:checkr _d ?? throw "null pointer dereference")._cb)) {
                            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L906"
                            if ((((@:checkr _d ?? throw "null pointer dereference")._stage != (1 : stdgo.GoInt)) && ((@:checkr _d ?? throw "null pointer dereference")._stage != (2 : stdgo.GoInt)) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L907"
                                return stdgo.Go.asInterface(stdgo._internal.image.png.Png__chunkordererror._chunkOrderError);
                            };
                        } else if ((@:checkr _d ?? throw "null pointer dereference")._stage != ((1 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L910"
                            return stdgo.Go.asInterface(stdgo._internal.image.png.Png__chunkordererror._chunkOrderError);
                        };
                        (@:checkr _d ?? throw "null pointer dereference")._stage = (3 : stdgo.GoInt);
                        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L913"
                        return _d._parsetRNS(_length);
                        break;
                    } else if (__value__ == (("IDAT" : stdgo.GoString))) {
                        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L915"
                        if (((((@:checkr _d ?? throw "null pointer dereference")._stage < (1 : stdgo.GoInt) : Bool) || ((@:checkr _d ?? throw "null pointer dereference")._stage > (4 : stdgo.GoInt) : Bool) : Bool) || ((((@:checkr _d ?? throw "null pointer dereference")._stage == (1 : stdgo.GoInt)) && stdgo._internal.image.png.Png__cbpaletted._cbPaletted((@:checkr _d ?? throw "null pointer dereference")._cb) : Bool)) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L916"
                            return stdgo.Go.asInterface(stdgo._internal.image.png.Png__chunkordererror._chunkOrderError);
                        } else if ((@:checkr _d ?? throw "null pointer dereference")._stage == ((4 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L923"
                            break;
                        };
                        (@:checkr _d ?? throw "null pointer dereference")._stage = (4 : stdgo.GoInt);
                        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L926"
                        if (_configOnly) {
                            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L927"
                            return (null : stdgo.Error);
                        };
                        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L929"
                        return _d._parseIDAT(_length);
                        break;
                    } else if (__value__ == (("IEND" : stdgo.GoString))) {
                        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L931"
                        if ((@:checkr _d ?? throw "null pointer dereference")._stage != ((4 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L932"
                            return stdgo.Go.asInterface(stdgo._internal.image.png.Png__chunkordererror._chunkOrderError);
                        };
                        (@:checkr _d ?? throw "null pointer dereference")._stage = (5 : stdgo.GoInt);
                        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L935"
                        return _d._parseIEND(_length);
                        break;
                    };
                };
                break;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L937"
        if ((_length > (2147483647u32 : stdgo.GoUInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L938"
            return stdgo.Go.asInterface((stdgo._internal.fmt.Fmt_sprintf.sprintf(("Bad chunk length: %d" : stdgo.GoString), stdgo.Go.toInterface(_length)) : stdgo._internal.image.png.Png_formaterror.FormatError));
        };
        var _ignored:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4096, 4096).__setNumber32__();
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L942"
        while ((_length > (0u32 : stdgo.GoUInt32) : Bool)) {
            var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _d ?? throw "null pointer dereference")._r, (_ignored.__slice__(0, stdgo._internal.image.png.Png__min._min((_ignored.length), (_length : stdgo.GoInt))) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L944"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L945"
                return _err;
            };
            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L947"
            (@:checkr _d ?? throw "null pointer dereference")._crc.write((_ignored.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
            _length = (_length - ((_n : stdgo.GoUInt32)) : stdgo.GoUInt32);
        };
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L950"
        return _d._verifyChecksum();
    }
    @:keep
    @:tdfield
    static public function _parseIEND( _d:stdgo.Ref<stdgo._internal.image.png.Png_t_decoder.T_decoder>, _length:stdgo.GoUInt32):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.png.Png_t_decoder.T_decoder> = _d;
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L871"
        if (_length != ((0u32 : stdgo.GoUInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L872"
            return stdgo.Go.asInterface((("bad IEND length" : stdgo.GoString) : stdgo._internal.image.png.Png_formaterror.FormatError));
        };
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L874"
        return _d._verifyChecksum();
    }
    @:keep
    @:tdfield
    static public function _parseIDAT( _d:stdgo.Ref<stdgo._internal.image.png.Png_t_decoder.T_decoder>, _length:stdgo.GoUInt32):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.png.Png_t_decoder.T_decoder> = _d;
        var _err = (null : stdgo.Error);
        (@:checkr _d ?? throw "null pointer dereference")._idatLength = _length;
        {
            var __tmp__ = _d._decode();
            (@:checkr _d ?? throw "null pointer dereference")._img = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L864"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L865"
            return _err;
        };
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L867"
        return _err = _d._verifyChecksum();
    }
    @:keep
    @:tdfield
    static public function _mergePassInto( _d:stdgo.Ref<stdgo._internal.image.png.Png_t_decoder.T_decoder>, _dst:stdgo._internal.image.Image_image.Image, _src:stdgo._internal.image.Image_image.Image, _pass:stdgo.GoInt):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.png.Png_t_decoder.T_decoder> = _d;
        var _p = (stdgo._internal.image.png.Png__interlacing._interlacing[(_pass : stdgo.GoInt)] : stdgo._internal.image.png.Png_t_interlacescan.T_interlaceScan);
        var _srcPix:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>), _dstPix:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>), _stride:stdgo.GoInt = (0 : stdgo.GoInt), _rect:stdgo._internal.image.Image_rectangle.Rectangle = ({} : stdgo._internal.image.Image_rectangle.Rectangle), _bytesPerPixel:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L804"
        {
            final __type__ = _dst;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha>))) {
                var _target:stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha>) : __type__.__underlying__().value);
                _srcPix = (@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_src) : stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha>)) : stdgo.Ref<stdgo._internal.image.Image_alpha.Alpha>) ?? throw "null pointer dereference").pix;
                {
                    final __tmp__0 = (@:checkr _target ?? throw "null pointer dereference").pix;
                    final __tmp__1 = (@:checkr _target ?? throw "null pointer dereference").stride;
                    final __tmp__2 = (@:checkr _target ?? throw "null pointer dereference").rect?.__copy__();
                    _dstPix = @:binopAssign __tmp__0;
                    _stride = @:binopAssign __tmp__1;
                    _rect = @:binopAssign __tmp__2;
                };
                _bytesPerPixel = (1 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16>))) {
                var _target:stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16>) : __type__.__underlying__().value);
                _srcPix = (@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_src) : stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16>)) : stdgo.Ref<stdgo._internal.image.Image_alpha16.Alpha16>) ?? throw "null pointer dereference").pix;
                {
                    final __tmp__0 = (@:checkr _target ?? throw "null pointer dereference").pix;
                    final __tmp__1 = (@:checkr _target ?? throw "null pointer dereference").stride;
                    final __tmp__2 = (@:checkr _target ?? throw "null pointer dereference").rect?.__copy__();
                    _dstPix = @:binopAssign __tmp__0;
                    _stride = @:binopAssign __tmp__1;
                    _rect = @:binopAssign __tmp__2;
                };
                _bytesPerPixel = (2 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>))) {
                var _target:stdgo.Ref<stdgo._internal.image.Image_gray.Gray> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>) : __type__.__underlying__().value);
                _srcPix = (@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_src) : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>)) : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>) ?? throw "null pointer dereference").pix;
                {
                    final __tmp__0 = (@:checkr _target ?? throw "null pointer dereference").pix;
                    final __tmp__1 = (@:checkr _target ?? throw "null pointer dereference").stride;
                    final __tmp__2 = (@:checkr _target ?? throw "null pointer dereference").rect?.__copy__();
                    _dstPix = @:binopAssign __tmp__0;
                    _stride = @:binopAssign __tmp__1;
                    _rect = @:binopAssign __tmp__2;
                };
                _bytesPerPixel = (1 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16>))) {
                var _target:stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16>) : __type__.__underlying__().value);
                _srcPix = (@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_src) : stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16>)) : stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16>) ?? throw "null pointer dereference").pix;
                {
                    final __tmp__0 = (@:checkr _target ?? throw "null pointer dereference").pix;
                    final __tmp__1 = (@:checkr _target ?? throw "null pointer dereference").stride;
                    final __tmp__2 = (@:checkr _target ?? throw "null pointer dereference").rect?.__copy__();
                    _dstPix = @:binopAssign __tmp__0;
                    _stride = @:binopAssign __tmp__1;
                    _rect = @:binopAssign __tmp__2;
                };
                _bytesPerPixel = (2 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA>))) {
                var _target:stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA>) : __type__.__underlying__().value);
                _srcPix = (@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_src) : stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA>)) : stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA>) ?? throw "null pointer dereference").pix;
                {
                    final __tmp__0 = (@:checkr _target ?? throw "null pointer dereference").pix;
                    final __tmp__1 = (@:checkr _target ?? throw "null pointer dereference").stride;
                    final __tmp__2 = (@:checkr _target ?? throw "null pointer dereference").rect?.__copy__();
                    _dstPix = @:binopAssign __tmp__0;
                    _stride = @:binopAssign __tmp__1;
                    _rect = @:binopAssign __tmp__2;
                };
                _bytesPerPixel = (4 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_nrgba64.NRGBA64>))) {
                var _target:stdgo.Ref<stdgo._internal.image.Image_nrgba64.NRGBA64> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_nrgba64.NRGBA64>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_nrgba64.NRGBA64>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_nrgba64.NRGBA64>) : __type__.__underlying__().value);
                _srcPix = (@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_src) : stdgo.Ref<stdgo._internal.image.Image_nrgba64.NRGBA64>)) : stdgo.Ref<stdgo._internal.image.Image_nrgba64.NRGBA64>) ?? throw "null pointer dereference").pix;
                {
                    final __tmp__0 = (@:checkr _target ?? throw "null pointer dereference").pix;
                    final __tmp__1 = (@:checkr _target ?? throw "null pointer dereference").stride;
                    final __tmp__2 = (@:checkr _target ?? throw "null pointer dereference").rect?.__copy__();
                    _dstPix = @:binopAssign __tmp__0;
                    _stride = @:binopAssign __tmp__1;
                    _rect = @:binopAssign __tmp__2;
                };
                _bytesPerPixel = (8 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>))) {
                var _target:stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>) : __type__.__underlying__().value);
                var _source = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_src) : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>)) : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>);
                _srcPix = (@:checkr _source ?? throw "null pointer dereference").pix;
                {
                    final __tmp__0 = (@:checkr _target ?? throw "null pointer dereference").pix;
                    final __tmp__1 = (@:checkr _target ?? throw "null pointer dereference").stride;
                    final __tmp__2 = (@:checkr _target ?? throw "null pointer dereference").rect?.__copy__();
                    _dstPix = @:binopAssign __tmp__0;
                    _stride = @:binopAssign __tmp__1;
                    _rect = @:binopAssign __tmp__2;
                };
                _bytesPerPixel = (1 : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L834"
                if ((((@:checkr _target ?? throw "null pointer dereference").palette.length) < ((@:checkr _source ?? throw "null pointer dereference").palette.length) : Bool)) {
                    (@:checkr _target ?? throw "null pointer dereference").palette = (@:checkr _source ?? throw "null pointer dereference").palette;
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>))) {
                var _target:stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>) : __type__.__underlying__().value);
                _srcPix = (@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_src) : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>)) : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>) ?? throw "null pointer dereference").pix;
                {
                    final __tmp__0 = (@:checkr _target ?? throw "null pointer dereference").pix;
                    final __tmp__1 = (@:checkr _target ?? throw "null pointer dereference").stride;
                    final __tmp__2 = (@:checkr _target ?? throw "null pointer dereference").rect?.__copy__();
                    _dstPix = @:binopAssign __tmp__0;
                    _stride = @:binopAssign __tmp__1;
                    _rect = @:binopAssign __tmp__2;
                };
                _bytesPerPixel = (4 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_rgba64.RGBA64>))) {
                var _target:stdgo.Ref<stdgo._internal.image.Image_rgba64.RGBA64> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_rgba64.RGBA64>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_rgba64.RGBA64>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_rgba64.RGBA64>) : __type__.__underlying__().value);
                _srcPix = (@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_src) : stdgo.Ref<stdgo._internal.image.Image_rgba64.RGBA64>)) : stdgo.Ref<stdgo._internal.image.Image_rgba64.RGBA64>) ?? throw "null pointer dereference").pix;
                {
                    final __tmp__0 = (@:checkr _target ?? throw "null pointer dereference").pix;
                    final __tmp__1 = (@:checkr _target ?? throw "null pointer dereference").stride;
                    final __tmp__2 = (@:checkr _target ?? throw "null pointer dereference").rect?.__copy__();
                    _dstPix = @:binopAssign __tmp__0;
                    _stride = @:binopAssign __tmp__1;
                    _rect = @:binopAssign __tmp__2;
                };
                _bytesPerPixel = (8 : stdgo.GoInt);
            };
        };
        var __0 = (0 : stdgo.GoInt), __1 = (_src.bounds()?.__copy__() : stdgo._internal.image.Image_rectangle.Rectangle);
var _bounds = __1, _s = __0;
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L851"
        {
            var _y = (_bounds.min.y : stdgo.GoInt);
            while ((_y < _bounds.max.y : Bool)) {
                var _dBase = ((((((_y * _p._yFactor : stdgo.GoInt) + _p._yOffset : stdgo.GoInt) - _rect.min.y : stdgo.GoInt)) * _stride : stdgo.GoInt) + (((_p._xOffset - _rect.min.x : stdgo.GoInt)) * _bytesPerPixel : stdgo.GoInt) : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L853"
                {
                    var _x = (_bounds.min.x : stdgo.GoInt);
                    while ((_x < _bounds.max.x : Bool)) {
                        var _d = (_dBase + ((_x * _p._xFactor : stdgo.GoInt) * _bytesPerPixel : stdgo.GoInt) : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L855"
                        (_dstPix.__slice__(_d) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_srcPix.__slice__(_s, (_s + _bytesPerPixel : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
_s = (_s + (_bytesPerPixel) : stdgo.GoInt);
                        _x++;
                    };
                };
                _y++;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _readImagePass( _d:stdgo.Ref<stdgo._internal.image.png.Png_t_decoder.T_decoder>, _r:stdgo._internal.io.Io_reader.Reader, _pass:stdgo.GoInt, _allocateOnly:Bool):{ var _0 : stdgo._internal.image.Image_image.Image; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.png.Png_t_decoder.T_decoder> = _d;
        var _bitsPerPixel = (0 : stdgo.GoInt);
        var _pixOffset = (0 : stdgo.GoInt);
        var _gray:stdgo.Ref<stdgo._internal.image.Image_gray.Gray> = (null : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>), _rgba:stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA> = (null : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>), _paletted:stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted> = (null : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>), _nrgba:stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA> = (null : stdgo.Ref<stdgo._internal.image.Image_nrgba.NRGBA>), _gray16:stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16> = (null : stdgo.Ref<stdgo._internal.image.Image_gray16.Gray16>), _rgba64:stdgo.Ref<stdgo._internal.image.Image_rgba64.RGBA64> = (null : stdgo.Ref<stdgo._internal.image.Image_rgba64.RGBA64>), _nrgba64:stdgo.Ref<stdgo._internal.image.Image_nrgba64.NRGBA64> = (null : stdgo.Ref<stdgo._internal.image.Image_nrgba64.NRGBA64>), _img:stdgo._internal.image.Image_image.Image = (null : stdgo._internal.image.Image_image.Image);
        var __0 = ((@:checkr _d ?? throw "null pointer dereference")._width : stdgo.GoInt), __1 = ((@:checkr _d ?? throw "null pointer dereference")._height : stdgo.GoInt);
var _height = __1, _width = __0;
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L432"
        if ((((@:checkr _d ?? throw "null pointer dereference")._interlace == (1 : stdgo.GoInt)) && !_allocateOnly : Bool)) {
            var _p = (stdgo._internal.image.png.Png__interlacing._interlacing[(_pass : stdgo.GoInt)] : stdgo._internal.image.png.Png_t_interlacescan.T_interlaceScan);
            _width = (((((_width - _p._xOffset : stdgo.GoInt) + _p._xFactor : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) / _p._xFactor : stdgo.GoInt);
            _height = (((((_height - _p._yOffset : stdgo.GoInt) + _p._yFactor : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) / _p._yFactor : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L440"
            if (((_width == (0 : stdgo.GoInt)) || (_height == (0 : stdgo.GoInt)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L441"
                return { _0 : (null : stdgo._internal.image.Image_image.Image), _1 : (null : stdgo.Error) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L444"
        {
            final __value__ = (@:checkr _d ?? throw "null pointer dereference")._cb;
            if (__value__ == ((1 : stdgo.GoInt)) || __value__ == ((2 : stdgo.GoInt)) || __value__ == ((3 : stdgo.GoInt)) || __value__ == ((4 : stdgo.GoInt))) {
                _bitsPerPixel = (@:checkr _d ?? throw "null pointer dereference")._depth;
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L447"
                if ((@:checkr _d ?? throw "null pointer dereference")._useTransparent) {
                    _nrgba = stdgo._internal.image.Image_newnrgba.newNRGBA(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), _width, _height)?.__copy__());
                    _img = stdgo.Go.asInterface(_nrgba);
                } else {
                    _gray = stdgo._internal.image.Image_newgray.newGray(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), _width, _height)?.__copy__());
                    _img = stdgo.Go.asInterface(_gray);
                };
            } else if (__value__ == ((5 : stdgo.GoInt))) {
                _bitsPerPixel = (16 : stdgo.GoInt);
                _nrgba = stdgo._internal.image.Image_newnrgba.newNRGBA(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), _width, _height)?.__copy__());
                _img = stdgo.Go.asInterface(_nrgba);
            } else if (__value__ == ((6 : stdgo.GoInt))) {
                _bitsPerPixel = (24 : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L460"
                if ((@:checkr _d ?? throw "null pointer dereference")._useTransparent) {
                    _nrgba = stdgo._internal.image.Image_newnrgba.newNRGBA(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), _width, _height)?.__copy__());
                    _img = stdgo.Go.asInterface(_nrgba);
                } else {
                    _rgba = stdgo._internal.image.Image_newrgba.newRGBA(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), _width, _height)?.__copy__());
                    _img = stdgo.Go.asInterface(_rgba);
                };
            } else if (__value__ == ((7 : stdgo.GoInt)) || __value__ == ((8 : stdgo.GoInt)) || __value__ == ((9 : stdgo.GoInt)) || __value__ == ((10 : stdgo.GoInt))) {
                _bitsPerPixel = (@:checkr _d ?? throw "null pointer dereference")._depth;
                _paletted = stdgo._internal.image.Image_newpaletted.newPaletted(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), _width, _height)?.__copy__(), (@:checkr _d ?? throw "null pointer dereference")._palette);
                _img = stdgo.Go.asInterface(_paletted);
            } else if (__value__ == ((11 : stdgo.GoInt))) {
                _bitsPerPixel = (32 : stdgo.GoInt);
                _nrgba = stdgo._internal.image.Image_newnrgba.newNRGBA(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), _width, _height)?.__copy__());
                _img = stdgo.Go.asInterface(_nrgba);
            } else if (__value__ == ((12 : stdgo.GoInt))) {
                _bitsPerPixel = (16 : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L477"
                if ((@:checkr _d ?? throw "null pointer dereference")._useTransparent) {
                    _nrgba64 = stdgo._internal.image.Image_newnrgba64.newNRGBA64(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), _width, _height)?.__copy__());
                    _img = stdgo.Go.asInterface(_nrgba64);
                } else {
                    _gray16 = stdgo._internal.image.Image_newgray16.newGray16(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), _width, _height)?.__copy__());
                    _img = stdgo.Go.asInterface(_gray16);
                };
            } else if (__value__ == ((13 : stdgo.GoInt))) {
                _bitsPerPixel = (32 : stdgo.GoInt);
                _nrgba64 = stdgo._internal.image.Image_newnrgba64.newNRGBA64(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), _width, _height)?.__copy__());
                _img = stdgo.Go.asInterface(_nrgba64);
            } else if (__value__ == ((14 : stdgo.GoInt))) {
                _bitsPerPixel = (48 : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L490"
                if ((@:checkr _d ?? throw "null pointer dereference")._useTransparent) {
                    _nrgba64 = stdgo._internal.image.Image_newnrgba64.newNRGBA64(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), _width, _height)?.__copy__());
                    _img = stdgo.Go.asInterface(_nrgba64);
                } else {
                    _rgba64 = stdgo._internal.image.Image_newrgba64.newRGBA64(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), _width, _height)?.__copy__());
                    _img = stdgo.Go.asInterface(_rgba64);
                };
            } else if (__value__ == ((15 : stdgo.GoInt))) {
                _bitsPerPixel = (64 : stdgo.GoInt);
                _nrgba64 = stdgo._internal.image.Image_newnrgba64.newNRGBA64(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), _width, _height)?.__copy__());
                _img = stdgo.Go.asInterface(_nrgba64);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L502"
        if (_allocateOnly) {
            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L503"
            return { _0 : _img, _1 : (null : stdgo.Error) };
        };
        var _bytesPerPixel = (((_bitsPerPixel + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt);
        var _rowSize = ((1i64 : stdgo.GoInt64) + (((((_bitsPerPixel : stdgo.GoInt64) * (_width : stdgo.GoInt64) : stdgo.GoInt64) + (7i64 : stdgo.GoInt64) : stdgo.GoInt64)) / (8i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L509"
        if (_rowSize != (((_rowSize : stdgo.GoInt) : stdgo.GoInt64))) {
            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L510"
            return { _0 : (null : stdgo._internal.image.Image_image.Image), _1 : stdgo.Go.asInterface((("dimension overflow" : stdgo.GoString) : stdgo._internal.image.png.Png_unsupportederror.UnsupportedError)) };
        };
        var _cr = (new stdgo.Slice<stdgo.GoUInt8>((_rowSize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _pr = (new stdgo.Slice<stdgo.GoUInt8>((_rowSize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L516"
        {
            var _y = (0 : stdgo.GoInt);
            while ((_y < _height : Bool)) {
                var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_r, _cr), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
//"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L519"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L520"
                    if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) || (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L521"
                        return { _0 : (null : stdgo._internal.image.Image_image.Image), _1 : stdgo.Go.asInterface((("not enough pixel data" : stdgo.GoString) : stdgo._internal.image.png.Png_formaterror.FormatError)) };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L523"
                    return { _0 : (null : stdgo._internal.image.Image_image.Image), _1 : _err };
                };
var _cdat = (_cr.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
var _pdat = (_pr.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
//"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L529"
                {
                    final __value__ = _cr[(0 : stdgo.GoInt)];
                    if (__value__ == ((0 : stdgo.GoUInt8))) {} else if (__value__ == ((1 : stdgo.GoUInt8))) {
                        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L533"
                        {
                            var _i = (_bytesPerPixel : stdgo.GoInt);
                            while ((_i < (_cdat.length) : Bool)) {
                                _cdat[(_i : stdgo.GoInt)] = (_cdat[(_i : stdgo.GoInt)] + (_cdat[((_i - _bytesPerPixel : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoUInt8);
                                _i++;
                            };
                        };
                    } else if (__value__ == ((2 : stdgo.GoUInt8))) {
                        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L537"
                        for (_i => _p in _pdat) {
                            _cdat[(_i : stdgo.GoInt)] = (_cdat[(_i : stdgo.GoInt)] + (_p) : stdgo.GoUInt8);
                        };
                    } else if (__value__ == ((3 : stdgo.GoUInt8))) {
                        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L544"
                        {
                            var _i = (0 : stdgo.GoInt);
                            while ((_i < _bytesPerPixel : Bool)) {
                                _cdat[(_i : stdgo.GoInt)] = (_cdat[(_i : stdgo.GoInt)] + ((_pdat[(_i : stdgo.GoInt)] / (2 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt8);
                                _i++;
                            };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L547"
                        {
                            var _i = (_bytesPerPixel : stdgo.GoInt);
                            while ((_i < (_cdat.length) : Bool)) {
                                _cdat[(_i : stdgo.GoInt)] = (_cdat[(_i : stdgo.GoInt)] + ((((((_cdat[(_i - _bytesPerPixel : stdgo.GoInt)] : stdgo.GoInt) + (_pdat[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8)) : stdgo.GoUInt8);
                                _i++;
                            };
                        };
                    } else if (__value__ == ((4 : stdgo.GoUInt8))) {
                        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L551"
                        stdgo._internal.image.png.Png__filterpaeth._filterPaeth(_cdat, _pdat, _bytesPerPixel);
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L553"
                        return { _0 : (null : stdgo._internal.image.Image_image.Image), _1 : stdgo.Go.asInterface((("bad filter type" : stdgo.GoString) : stdgo._internal.image.png.Png_formaterror.FormatError)) };
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L557"
                {
                    final __value__ = (@:checkr _d ?? throw "null pointer dereference")._cb;
                    if (__value__ == ((1 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L559"
                        if ((@:checkr _d ?? throw "null pointer dereference")._useTransparent) {
                            var _ty = ((@:checkr _d ?? throw "null pointer dereference")._transparent[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
                            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L561"
                            {
                                var _x = (0 : stdgo.GoInt);
                                while ((_x < _width : Bool)) {
                                    var _b = (_cdat[(_x / (8 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L563"
                                    {
                                        var _x2 = (0 : stdgo.GoInt);
                                        while (((_x2 < (8 : stdgo.GoInt) : Bool) && ((_x + _x2 : stdgo.GoInt) < _width : Bool) : Bool)) {
                                            var _ycol = (((_b >> (7i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) * (255 : stdgo.GoUInt8) : stdgo.GoUInt8);
var _acol = ((255 : stdgo.GoUInt8) : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L566"
                                            if (_ycol == (_ty)) {
                                                _acol = (0 : stdgo.GoUInt8);
                                            };
//"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L569"
                                            _nrgba.setNRGBA((_x + _x2 : stdgo.GoInt), _y, (new stdgo._internal.image.color.Color_nrgba.NRGBA(_ycol, _ycol, _ycol, _acol) : stdgo._internal.image.color.Color_nrgba.NRGBA));
_b = (_b << ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt8);
                                            _x2++;
                                        };
                                    };
                                    _x = (_x + ((8 : stdgo.GoInt)) : stdgo.GoInt);
                                };
                            };
                        } else {
                            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L574"
                            {
                                var _x = (0 : stdgo.GoInt);
                                while ((_x < _width : Bool)) {
                                    var _b = (_cdat[(_x / (8 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L576"
                                    {
                                        var _x2 = (0 : stdgo.GoInt);
                                        while (((_x2 < (8 : stdgo.GoInt) : Bool) && ((_x + _x2 : stdgo.GoInt) < _width : Bool) : Bool)) {
                                            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L577"
                                            _gray.setGray((_x + _x2 : stdgo.GoInt), _y, (new stdgo._internal.image.color.Color_gray.Gray((((_b >> (7i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) * (255 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_gray.Gray));
_b = (_b << ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt8);
                                            _x2++;
                                        };
                                    };
                                    _x = (_x + ((8 : stdgo.GoInt)) : stdgo.GoInt);
                                };
                            };
                        };
                    } else if (__value__ == ((2 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L583"
                        if ((@:checkr _d ?? throw "null pointer dereference")._useTransparent) {
                            var _ty = ((@:checkr _d ?? throw "null pointer dereference")._transparent[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
                            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L585"
                            {
                                var _x = (0 : stdgo.GoInt);
                                while ((_x < _width : Bool)) {
                                    var _b = (_cdat[(_x / (4 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L587"
                                    {
                                        var _x2 = (0 : stdgo.GoInt);
                                        while (((_x2 < (4 : stdgo.GoInt) : Bool) && ((_x + _x2 : stdgo.GoInt) < _width : Bool) : Bool)) {
                                            var _ycol = (((_b >> (6i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) * (85 : stdgo.GoUInt8) : stdgo.GoUInt8);
var _acol = ((255 : stdgo.GoUInt8) : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L590"
                                            if (_ycol == (_ty)) {
                                                _acol = (0 : stdgo.GoUInt8);
                                            };
//"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L593"
                                            _nrgba.setNRGBA((_x + _x2 : stdgo.GoInt), _y, (new stdgo._internal.image.color.Color_nrgba.NRGBA(_ycol, _ycol, _ycol, _acol) : stdgo._internal.image.color.Color_nrgba.NRGBA));
_b = (_b << ((2i64 : stdgo.GoUInt64)) : stdgo.GoUInt8);
                                            _x2++;
                                        };
                                    };
                                    _x = (_x + ((4 : stdgo.GoInt)) : stdgo.GoInt);
                                };
                            };
                        } else {
                            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L598"
                            {
                                var _x = (0 : stdgo.GoInt);
                                while ((_x < _width : Bool)) {
                                    var _b = (_cdat[(_x / (4 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L600"
                                    {
                                        var _x2 = (0 : stdgo.GoInt);
                                        while (((_x2 < (4 : stdgo.GoInt) : Bool) && ((_x + _x2 : stdgo.GoInt) < _width : Bool) : Bool)) {
                                            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L601"
                                            _gray.setGray((_x + _x2 : stdgo.GoInt), _y, (new stdgo._internal.image.color.Color_gray.Gray((((_b >> (6i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) * (85 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_gray.Gray));
_b = (_b << ((2i64 : stdgo.GoUInt64)) : stdgo.GoUInt8);
                                            _x2++;
                                        };
                                    };
                                    _x = (_x + ((4 : stdgo.GoInt)) : stdgo.GoInt);
                                };
                            };
                        };
                    } else if (__value__ == ((3 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L607"
                        if ((@:checkr _d ?? throw "null pointer dereference")._useTransparent) {
                            var _ty = ((@:checkr _d ?? throw "null pointer dereference")._transparent[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
                            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L609"
                            {
                                var _x = (0 : stdgo.GoInt);
                                while ((_x < _width : Bool)) {
                                    var _b = (_cdat[(_x / (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L611"
                                    {
                                        var _x2 = (0 : stdgo.GoInt);
                                        while (((_x2 < (2 : stdgo.GoInt) : Bool) && ((_x + _x2 : stdgo.GoInt) < _width : Bool) : Bool)) {
                                            var _ycol = (((_b >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) * (17 : stdgo.GoUInt8) : stdgo.GoUInt8);
var _acol = ((255 : stdgo.GoUInt8) : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L614"
                                            if (_ycol == (_ty)) {
                                                _acol = (0 : stdgo.GoUInt8);
                                            };
//"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L617"
                                            _nrgba.setNRGBA((_x + _x2 : stdgo.GoInt), _y, (new stdgo._internal.image.color.Color_nrgba.NRGBA(_ycol, _ycol, _ycol, _acol) : stdgo._internal.image.color.Color_nrgba.NRGBA));
_b = (_b << ((4i64 : stdgo.GoUInt64)) : stdgo.GoUInt8);
                                            _x2++;
                                        };
                                    };
                                    _x = (_x + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                                };
                            };
                        } else {
                            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L622"
                            {
                                var _x = (0 : stdgo.GoInt);
                                while ((_x < _width : Bool)) {
                                    var _b = (_cdat[(_x / (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L624"
                                    {
                                        var _x2 = (0 : stdgo.GoInt);
                                        while (((_x2 < (2 : stdgo.GoInt) : Bool) && ((_x + _x2 : stdgo.GoInt) < _width : Bool) : Bool)) {
                                            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L625"
                                            _gray.setGray((_x + _x2 : stdgo.GoInt), _y, (new stdgo._internal.image.color.Color_gray.Gray((((_b >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) * (17 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_gray.Gray));
_b = (_b << ((4i64 : stdgo.GoUInt64)) : stdgo.GoUInt8);
                                            _x2++;
                                        };
                                    };
                                    _x = (_x + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                                };
                            };
                        };
                    } else if (__value__ == ((4 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L631"
                        if ((@:checkr _d ?? throw "null pointer dereference")._useTransparent) {
                            var _ty = ((@:checkr _d ?? throw "null pointer dereference")._transparent[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
                            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L633"
                            {
                                var _x = (0 : stdgo.GoInt);
                                while ((_x < _width : Bool)) {
                                    var _ycol = (_cdat[(_x : stdgo.GoInt)] : stdgo.GoUInt8);
var _acol = ((255 : stdgo.GoUInt8) : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L636"
                                    if (_ycol == (_ty)) {
                                        _acol = (0 : stdgo.GoUInt8);
                                    };
//"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L639"
                                    _nrgba.setNRGBA(_x, _y, (new stdgo._internal.image.color.Color_nrgba.NRGBA(_ycol, _ycol, _ycol, _acol) : stdgo._internal.image.color.Color_nrgba.NRGBA));
                                    _x++;
                                };
                            };
                        } else {
                            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L642"
                            ((@:checkr _gray ?? throw "null pointer dereference").pix.__slice__(_pixOffset) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_cdat);
                            _pixOffset = (_pixOffset + ((@:checkr _gray ?? throw "null pointer dereference").stride) : stdgo.GoInt);
                        };
                    } else if (__value__ == ((5 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L646"
                        {
                            var _x = (0 : stdgo.GoInt);
                            while ((_x < _width : Bool)) {
                                var _ycol = (_cdat[(((2 : stdgo.GoInt) * _x : stdgo.GoInt) + (0 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L648"
                                _nrgba.setNRGBA(_x, _y, (new stdgo._internal.image.color.Color_nrgba.NRGBA(_ycol, _ycol, _ycol, _cdat[(((2 : stdgo.GoInt) * _x : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo._internal.image.color.Color_nrgba.NRGBA));
                                _x++;
                            };
                        };
                    } else if (__value__ == ((6 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L651"
                        if ((@:checkr _d ?? throw "null pointer dereference")._useTransparent) {
                            var __0 = (@:checkr _nrgba ?? throw "null pointer dereference").pix, __1 = (_pixOffset : stdgo.GoInt), __2 = (0 : stdgo.GoInt);
var _j = __2, _i = __1, _pix = __0;
                            var __0 = ((@:checkr _d ?? throw "null pointer dereference")._transparent[(1 : stdgo.GoInt)] : stdgo.GoUInt8), __1 = ((@:checkr _d ?? throw "null pointer dereference")._transparent[(3 : stdgo.GoInt)] : stdgo.GoUInt8), __2 = ((@:checkr _d ?? throw "null pointer dereference")._transparent[(5 : stdgo.GoInt)] : stdgo.GoUInt8);
var _tb = __2, _tg = __1, _tr = __0;
                            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L654"
                            {
                                var _x = (0 : stdgo.GoInt);
                                while ((_x < _width : Bool)) {
                                    var _r = (_cdat[(_j + (0 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
var _g = (_cdat[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
var _b = (_cdat[(_j + (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
var _a = ((255 : stdgo.GoUInt8) : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L659"
                                    if (((_r == (_tr) && _g == (_tg) : Bool) && (_b == _tb) : Bool)) {
                                        _a = (0 : stdgo.GoUInt8);
                                    };
_pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] = _r;
_pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = _g;
_pix[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)] = _b;
_pix[(_i + (3 : stdgo.GoInt) : stdgo.GoInt)] = _a;
_i = (_i + ((4 : stdgo.GoInt)) : stdgo.GoInt);
_j = (_j + ((3 : stdgo.GoInt)) : stdgo.GoInt);
                                    _x++;
                                };
                            };
                            _pixOffset = (_pixOffset + ((@:checkr _nrgba ?? throw "null pointer dereference").stride) : stdgo.GoInt);
                        } else {
                            var __0 = (@:checkr _rgba ?? throw "null pointer dereference").pix, __1 = (_pixOffset : stdgo.GoInt), __2 = (0 : stdgo.GoInt);
var _j = __2, _i = __1, _pix = __0;
                            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L672"
                            {
                                var _x = (0 : stdgo.GoInt);
                                while ((_x < _width : Bool)) {
                                    _pix[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)] = _cdat[(_j + (0 : stdgo.GoInt) : stdgo.GoInt)];
_pix[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = _cdat[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)];
_pix[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)] = _cdat[(_j + (2 : stdgo.GoInt) : stdgo.GoInt)];
_pix[(_i + (3 : stdgo.GoInt) : stdgo.GoInt)] = (255 : stdgo.GoUInt8);
_i = (_i + ((4 : stdgo.GoInt)) : stdgo.GoInt);
_j = (_j + ((3 : stdgo.GoInt)) : stdgo.GoInt);
                                    _x++;
                                };
                            };
                            _pixOffset = (_pixOffset + ((@:checkr _rgba ?? throw "null pointer dereference").stride) : stdgo.GoInt);
                        };
                    } else if (__value__ == ((7 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L683"
                        {
                            var _x = (0 : stdgo.GoInt);
                            while ((_x < _width : Bool)) {
                                var _b = (_cdat[(_x / (8 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L685"
                                {
                                    var _x2 = (0 : stdgo.GoInt);
                                    while (((_x2 < (8 : stdgo.GoInt) : Bool) && ((_x + _x2 : stdgo.GoInt) < _width : Bool) : Bool)) {
                                        var _idx = (_b >> (7i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L687"
                                        if ((((@:checkr _paletted ?? throw "null pointer dereference").palette.length) <= (_idx : stdgo.GoInt) : Bool)) {
                                            (@:checkr _paletted ?? throw "null pointer dereference").palette = ((@:checkr _paletted ?? throw "null pointer dereference").palette.__slice__(0, ((_idx : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.image.color.Color_palette.Palette);
                                        };
//"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L690"
                                        _paletted.setColorIndex((_x + _x2 : stdgo.GoInt), _y, _idx);
_b = (_b << ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt8);
                                        _x2++;
                                    };
                                };
                                _x = (_x + ((8 : stdgo.GoInt)) : stdgo.GoInt);
                            };
                        };
                    } else if (__value__ == ((8 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L695"
                        {
                            var _x = (0 : stdgo.GoInt);
                            while ((_x < _width : Bool)) {
                                var _b = (_cdat[(_x / (4 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L697"
                                {
                                    var _x2 = (0 : stdgo.GoInt);
                                    while (((_x2 < (4 : stdgo.GoInt) : Bool) && ((_x + _x2 : stdgo.GoInt) < _width : Bool) : Bool)) {
                                        var _idx = (_b >> (6i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L699"
                                        if ((((@:checkr _paletted ?? throw "null pointer dereference").palette.length) <= (_idx : stdgo.GoInt) : Bool)) {
                                            (@:checkr _paletted ?? throw "null pointer dereference").palette = ((@:checkr _paletted ?? throw "null pointer dereference").palette.__slice__(0, ((_idx : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.image.color.Color_palette.Palette);
                                        };
//"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L702"
                                        _paletted.setColorIndex((_x + _x2 : stdgo.GoInt), _y, _idx);
_b = (_b << ((2i64 : stdgo.GoUInt64)) : stdgo.GoUInt8);
                                        _x2++;
                                    };
                                };
                                _x = (_x + ((4 : stdgo.GoInt)) : stdgo.GoInt);
                            };
                        };
                    } else if (__value__ == ((9 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L707"
                        {
                            var _x = (0 : stdgo.GoInt);
                            while ((_x < _width : Bool)) {
                                var _b = (_cdat[(_x / (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L709"
                                {
                                    var _x2 = (0 : stdgo.GoInt);
                                    while (((_x2 < (2 : stdgo.GoInt) : Bool) && ((_x + _x2 : stdgo.GoInt) < _width : Bool) : Bool)) {
                                        var _idx = (_b >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L711"
                                        if ((((@:checkr _paletted ?? throw "null pointer dereference").palette.length) <= (_idx : stdgo.GoInt) : Bool)) {
                                            (@:checkr _paletted ?? throw "null pointer dereference").palette = ((@:checkr _paletted ?? throw "null pointer dereference").palette.__slice__(0, ((_idx : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.image.color.Color_palette.Palette);
                                        };
//"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L714"
                                        _paletted.setColorIndex((_x + _x2 : stdgo.GoInt), _y, _idx);
_b = (_b << ((4i64 : stdgo.GoUInt64)) : stdgo.GoUInt8);
                                        _x2++;
                                    };
                                };
                                _x = (_x + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                            };
                        };
                    } else if (__value__ == ((10 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L719"
                        if (((@:checkr _paletted ?? throw "null pointer dereference").palette.length) != ((256 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L720"
                            {
                                var _x = (0 : stdgo.GoInt);
                                while ((_x < _width : Bool)) {
                                    //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L721"
                                    if ((((@:checkr _paletted ?? throw "null pointer dereference").palette.length) <= (_cdat[(_x : stdgo.GoInt)] : stdgo.GoInt) : Bool)) {
                                        (@:checkr _paletted ?? throw "null pointer dereference").palette = ((@:checkr _paletted ?? throw "null pointer dereference").palette.__slice__(0, ((_cdat[(_x : stdgo.GoInt)] : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.image.color.Color_palette.Palette);
                                    };
                                    _x++;
                                };
                            };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L726"
                        ((@:checkr _paletted ?? throw "null pointer dereference").pix.__slice__(_pixOffset) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_cdat);
                        _pixOffset = (_pixOffset + ((@:checkr _paletted ?? throw "null pointer dereference").stride) : stdgo.GoInt);
                    } else if (__value__ == ((11 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L729"
                        ((@:checkr _nrgba ?? throw "null pointer dereference").pix.__slice__(_pixOffset) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_cdat);
                        _pixOffset = (_pixOffset + ((@:checkr _nrgba ?? throw "null pointer dereference").stride) : stdgo.GoInt);
                    } else if (__value__ == ((12 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L732"
                        if ((@:checkr _d ?? throw "null pointer dereference")._useTransparent) {
                            var _ty = ((((@:checkr _d ?? throw "null pointer dereference")._transparent[(0 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | ((@:checkr _d ?? throw "null pointer dereference")._transparent[(1 : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16);
                            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L734"
                            {
                                var _x = (0 : stdgo.GoInt);
                                while ((_x < _width : Bool)) {
                                    var _ycol = (((_cdat[(((2 : stdgo.GoInt) * _x : stdgo.GoInt) + (0 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_cdat[(((2 : stdgo.GoInt) * _x : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16);
var _acol = ((65535 : stdgo.GoUInt16) : stdgo.GoUInt16);
//"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L737"
                                    if (_ycol == (_ty)) {
                                        _acol = (0 : stdgo.GoUInt16);
                                    };
//"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L740"
                                    _nrgba64.setNRGBA64(_x, _y, (new stdgo._internal.image.color.Color_nrgba64.NRGBA64(_ycol, _ycol, _ycol, _acol) : stdgo._internal.image.color.Color_nrgba64.NRGBA64));
                                    _x++;
                                };
                            };
                        } else {
                            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L743"
                            {
                                var _x = (0 : stdgo.GoInt);
                                while ((_x < _width : Bool)) {
                                    var _ycol = (((_cdat[(((2 : stdgo.GoInt) * _x : stdgo.GoInt) + (0 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_cdat[(((2 : stdgo.GoInt) * _x : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16);
//"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L745"
                                    _gray16.setGray16(_x, _y, (new stdgo._internal.image.color.Color_gray16.Gray16(_ycol) : stdgo._internal.image.color.Color_gray16.Gray16));
                                    _x++;
                                };
                            };
                        };
                    } else if (__value__ == ((13 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L749"
                        {
                            var _x = (0 : stdgo.GoInt);
                            while ((_x < _width : Bool)) {
                                var _ycol = (((_cdat[(((4 : stdgo.GoInt) * _x : stdgo.GoInt) + (0 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_cdat[(((4 : stdgo.GoInt) * _x : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16);
var _acol = (((_cdat[(((4 : stdgo.GoInt) * _x : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_cdat[(((4 : stdgo.GoInt) * _x : stdgo.GoInt) + (3 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16);
//"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L752"
                                _nrgba64.setNRGBA64(_x, _y, (new stdgo._internal.image.color.Color_nrgba64.NRGBA64(_ycol, _ycol, _ycol, _acol) : stdgo._internal.image.color.Color_nrgba64.NRGBA64));
                                _x++;
                            };
                        };
                    } else if (__value__ == ((14 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L755"
                        if ((@:checkr _d ?? throw "null pointer dereference")._useTransparent) {
                            var _tr = ((((@:checkr _d ?? throw "null pointer dereference")._transparent[(0 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | ((@:checkr _d ?? throw "null pointer dereference")._transparent[(1 : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16);
                            var _tg = ((((@:checkr _d ?? throw "null pointer dereference")._transparent[(2 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | ((@:checkr _d ?? throw "null pointer dereference")._transparent[(3 : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16);
                            var _tb = ((((@:checkr _d ?? throw "null pointer dereference")._transparent[(4 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | ((@:checkr _d ?? throw "null pointer dereference")._transparent[(5 : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16);
                            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L759"
                            {
                                var _x = (0 : stdgo.GoInt);
                                while ((_x < _width : Bool)) {
                                    var _rcol = (((_cdat[(((6 : stdgo.GoInt) * _x : stdgo.GoInt) + (0 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_cdat[(((6 : stdgo.GoInt) * _x : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16);
var _gcol = (((_cdat[(((6 : stdgo.GoInt) * _x : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_cdat[(((6 : stdgo.GoInt) * _x : stdgo.GoInt) + (3 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16);
var _bcol = (((_cdat[(((6 : stdgo.GoInt) * _x : stdgo.GoInt) + (4 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_cdat[(((6 : stdgo.GoInt) * _x : stdgo.GoInt) + (5 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16);
var _acol = ((65535 : stdgo.GoUInt16) : stdgo.GoUInt16);
//"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L764"
                                    if (((_rcol == (_tr) && _gcol == (_tg) : Bool) && (_bcol == _tb) : Bool)) {
                                        _acol = (0 : stdgo.GoUInt16);
                                    };
//"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L767"
                                    _nrgba64.setNRGBA64(_x, _y, (new stdgo._internal.image.color.Color_nrgba64.NRGBA64(_rcol, _gcol, _bcol, _acol) : stdgo._internal.image.color.Color_nrgba64.NRGBA64));
                                    _x++;
                                };
                            };
                        } else {
                            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L770"
                            {
                                var _x = (0 : stdgo.GoInt);
                                while ((_x < _width : Bool)) {
                                    var _rcol = (((_cdat[(((6 : stdgo.GoInt) * _x : stdgo.GoInt) + (0 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_cdat[(((6 : stdgo.GoInt) * _x : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16);
var _gcol = (((_cdat[(((6 : stdgo.GoInt) * _x : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_cdat[(((6 : stdgo.GoInt) * _x : stdgo.GoInt) + (3 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16);
var _bcol = (((_cdat[(((6 : stdgo.GoInt) * _x : stdgo.GoInt) + (4 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_cdat[(((6 : stdgo.GoInt) * _x : stdgo.GoInt) + (5 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16);
//"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L774"
                                    _rgba64.setRGBA64(_x, _y, (new stdgo._internal.image.color.Color_rgba64.RGBA64(_rcol, _gcol, _bcol, (65535 : stdgo.GoUInt16)) : stdgo._internal.image.color.Color_rgba64.RGBA64));
                                    _x++;
                                };
                            };
                        };
                    } else if (__value__ == ((15 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L778"
                        {
                            var _x = (0 : stdgo.GoInt);
                            while ((_x < _width : Bool)) {
                                var _rcol = (((_cdat[(((8 : stdgo.GoInt) * _x : stdgo.GoInt) + (0 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_cdat[(((8 : stdgo.GoInt) * _x : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16);
var _gcol = (((_cdat[(((8 : stdgo.GoInt) * _x : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_cdat[(((8 : stdgo.GoInt) * _x : stdgo.GoInt) + (3 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16);
var _bcol = (((_cdat[(((8 : stdgo.GoInt) * _x : stdgo.GoInt) + (4 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_cdat[(((8 : stdgo.GoInt) * _x : stdgo.GoInt) + (5 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16);
var _acol = (((_cdat[(((8 : stdgo.GoInt) * _x : stdgo.GoInt) + (6 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_cdat[(((8 : stdgo.GoInt) * _x : stdgo.GoInt) + (7 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16);
//"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L783"
                                _nrgba64.setNRGBA64(_x, _y, (new stdgo._internal.image.color.Color_nrgba64.NRGBA64(_rcol, _gcol, _bcol, _acol) : stdgo._internal.image.color.Color_nrgba64.NRGBA64));
                                _x++;
                            };
                        };
                    };
                };
{
                    final __tmp__0 = _cr;
                    final __tmp__1 = _pr;
                    _pr = @:binopAssign __tmp__0;
                    _cr = @:binopAssign __tmp__1;
                };
                _y++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L791"
        return { _0 : _img, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _decode( _d:stdgo.Ref<stdgo._internal.image.png.Png_t_decoder.T_decoder>):{ var _0 : stdgo._internal.image.Image_image.Image; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.png.Png_t_decoder.T_decoder> = _d;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var __tmp__ = stdgo._internal.compress.zlib.Zlib_newreader.newReader(stdgo.Go.asInterface(_d)), _r:stdgo._internal.io.Io_readcloser.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L372"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L373"
                return { _0 : (null : stdgo._internal.image.Image_image.Image), _1 : _err };
            };
            {
                final __f__ = _r.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _img:stdgo._internal.image.Image_image.Image = (null : stdgo._internal.image.Image_image.Image);
            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L377"
            if ((@:checkr _d ?? throw "null pointer dereference")._interlace == ((0 : stdgo.GoInt))) {
                {
                    var __tmp__ = _d._readImagePass(_r, (0 : stdgo.GoInt), false);
                    _img = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L379"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L380"
                    {
                        final __ret__:{ var _0 : stdgo._internal.image.Image_image.Image; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.image.Image_image.Image), _1 : _err };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            } else if ((@:checkr _d ?? throw "null pointer dereference")._interlace == ((1 : stdgo.GoInt))) {
                {
                    var __tmp__ = _d._readImagePass((null : stdgo._internal.io.Io_reader.Reader), (0 : stdgo.GoInt), true);
                    _img = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L385"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L386"
                    {
                        final __ret__:{ var _0 : stdgo._internal.image.Image_image.Image; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.image.Image_image.Image), _1 : _err };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L388"
                {
                    var _pass = (0 : stdgo.GoInt);
                    while ((_pass < (7 : stdgo.GoInt) : Bool)) {
                        var __tmp__ = _d._readImagePass(_r, _pass, false), _imagePass:stdgo._internal.image.Image_image.Image = __tmp__._0, _err:stdgo.Error = __tmp__._1;
//"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L390"
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L391"
                            {
                                final __ret__:{ var _0 : stdgo._internal.image.Image_image.Image; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.image.Image_image.Image), _1 : _err };
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
//"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L393"
                        if (_imagePass != null) {
                            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L394"
                            _d._mergePassInto(_img, _imagePass, _pass);
                        };
                        _pass++;
                    };
                };
            };
            var _n = (0 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L401"
            {
                var _i = (0 : stdgo.GoInt);
                while (((_n == (0 : stdgo.GoInt)) && (_err == null) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L402"
                    if (_i == ((100 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L403"
                        {
                            final __ret__:{ var _0 : stdgo._internal.image.Image_image.Image; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.image.Image_image.Image), _1 : stdgo._internal.io.Io_errnoprogress.errNoProgress };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
{
                        var __tmp__ = _r.read(((@:checkr _d ?? throw "null pointer dereference")._tmp.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                        _n = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    _i++;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L407"
            if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L408"
                {
                    final __ret__:{ var _0 : stdgo._internal.image.Image_image.Image; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.image.Image_image.Image), _1 : stdgo.Go.asInterface((_err.error() : stdgo._internal.image.png.Png_formaterror.FormatError)) };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L410"
            if (((_n != (0 : stdgo.GoInt)) || ((@:checkr _d ?? throw "null pointer dereference")._idatLength != (0u32 : stdgo.GoUInt32)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L411"
                {
                    final __ret__:{ var _0 : stdgo._internal.image.Image_image.Image; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.image.Image_image.Image), _1 : stdgo.Go.asInterface((("too much pixel data" : stdgo.GoString) : stdgo._internal.image.png.Png_formaterror.FormatError)) };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L414"
            {
                final __ret__:{ var _0 : stdgo._internal.image.Image_image.Image; var _1 : stdgo.Error; } = { _0 : _img, _1 : (null : stdgo.Error) };
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
                return { _0 : (null : stdgo._internal.image.Image_image.Image), _1 : (null : stdgo.Error) };
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
                return { _0 : (null : stdgo._internal.image.Image_image.Image), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function read( _d:stdgo.Ref<stdgo._internal.image.png.Png_t_decoder.T_decoder>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.png.Png_t_decoder.T_decoder> = _d;
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L340"
        if ((_p.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L341"
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L343"
        while ((@:checkr _d ?? throw "null pointer dereference")._idatLength == ((0u32 : stdgo.GoUInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L345"
            {
                var _err = (_d._verifyChecksum() : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L346"
                    return { _0 : (0 : stdgo.GoInt), _1 : _err };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L350"
            {
                var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _d ?? throw "null pointer dereference")._r, ((@:checkr _d ?? throw "null pointer dereference")._tmp.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L351"
                    return { _0 : (0 : stdgo.GoInt), _1 : _err };
                };
            };
            (@:checkr _d ?? throw "null pointer dereference")._idatLength = stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32(((@:checkr _d ?? throw "null pointer dereference")._tmp.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L354"
            if ((((@:checkr _d ?? throw "null pointer dereference")._tmp.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != (("IDAT" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L355"
                return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((("not enough pixel data" : stdgo.GoString) : stdgo._internal.image.png.Png_formaterror.FormatError)) };
            };
            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L357"
            (@:checkr _d ?? throw "null pointer dereference")._crc.reset();
            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L358"
            (@:checkr _d ?? throw "null pointer dereference")._crc.write(((@:checkr _d ?? throw "null pointer dereference")._tmp.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        };
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L360"
        if ((((@:checkr _d ?? throw "null pointer dereference")._idatLength : stdgo.GoInt) < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L361"
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((("IDAT chunk length overflow" : stdgo.GoString) : stdgo._internal.image.png.Png_unsupportederror.UnsupportedError)) };
        };
        var __tmp__ = (@:checkr _d ?? throw "null pointer dereference")._r.read((_p.__slice__(0, stdgo._internal.image.png.Png__min._min((_p.length), ((@:checkr _d ?? throw "null pointer dereference")._idatLength : stdgo.GoInt))) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L364"
        (@:checkr _d ?? throw "null pointer dereference")._crc.write((_p.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
        (@:checkr _d ?? throw "null pointer dereference")._idatLength = ((@:checkr _d ?? throw "null pointer dereference")._idatLength - ((_n : stdgo.GoUInt32)) : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L366"
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _parsetRNS( _d:stdgo.Ref<stdgo._internal.image.png.Png_t_decoder.T_decoder>, _length:stdgo.GoUInt32):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.png.Png_t_decoder.T_decoder> = _d;
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L271"
        {
            final __value__ = (@:checkr _d ?? throw "null pointer dereference")._cb;
            if (__value__ == ((1 : stdgo.GoInt)) || __value__ == ((2 : stdgo.GoInt)) || __value__ == ((3 : stdgo.GoInt)) || __value__ == ((4 : stdgo.GoInt)) || __value__ == ((12 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L273"
                if (_length != ((2u32 : stdgo.GoUInt32))) {
                    //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L274"
                    return stdgo.Go.asInterface((("bad tRNS length" : stdgo.GoString) : stdgo._internal.image.png.Png_formaterror.FormatError));
                };
                var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _d ?? throw "null pointer dereference")._r, ((@:checkr _d ?? throw "null pointer dereference")._tmp.__slice__(0, _length) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L277"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L278"
                    return _err;
                };
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L280"
                (@:checkr _d ?? throw "null pointer dereference")._crc.write(((@:checkr _d ?? throw "null pointer dereference")._tmp.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L282"
                ((@:checkr _d ?? throw "null pointer dereference")._transparent.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _d ?? throw "null pointer dereference")._tmp.__slice__(0, _length) : stdgo.Slice<stdgo.GoUInt8>));
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L283"
                {
                    final __value__ = (@:checkr _d ?? throw "null pointer dereference")._cb;
                    if (__value__ == ((1 : stdgo.GoInt))) {
                        (@:checkr _d ?? throw "null pointer dereference")._transparent[(1 : stdgo.GoInt)] = ((@:checkr _d ?? throw "null pointer dereference")._transparent[(1 : stdgo.GoInt)] * ((255 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                    } else if (__value__ == ((2 : stdgo.GoInt))) {
                        (@:checkr _d ?? throw "null pointer dereference")._transparent[(1 : stdgo.GoInt)] = ((@:checkr _d ?? throw "null pointer dereference")._transparent[(1 : stdgo.GoInt)] * ((85 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                    } else if (__value__ == ((3 : stdgo.GoInt))) {
                        (@:checkr _d ?? throw "null pointer dereference")._transparent[(1 : stdgo.GoInt)] = ((@:checkr _d ?? throw "null pointer dereference")._transparent[(1 : stdgo.GoInt)] * ((17 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                    };
                };
                (@:checkr _d ?? throw "null pointer dereference")._useTransparent = true;
            } else if (__value__ == ((6 : stdgo.GoInt)) || __value__ == ((14 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L294"
                if (_length != ((6u32 : stdgo.GoUInt32))) {
                    //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L295"
                    return stdgo.Go.asInterface((("bad tRNS length" : stdgo.GoString) : stdgo._internal.image.png.Png_formaterror.FormatError));
                };
                var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _d ?? throw "null pointer dereference")._r, ((@:checkr _d ?? throw "null pointer dereference")._tmp.__slice__(0, _length) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L298"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L299"
                    return _err;
                };
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L301"
                (@:checkr _d ?? throw "null pointer dereference")._crc.write(((@:checkr _d ?? throw "null pointer dereference")._tmp.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L303"
                ((@:checkr _d ?? throw "null pointer dereference")._transparent.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _d ?? throw "null pointer dereference")._tmp.__slice__(0, _length) : stdgo.Slice<stdgo.GoUInt8>));
                (@:checkr _d ?? throw "null pointer dereference")._useTransparent = true;
            } else if (__value__ == ((7 : stdgo.GoInt)) || __value__ == ((8 : stdgo.GoInt)) || __value__ == ((9 : stdgo.GoInt)) || __value__ == ((10 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L307"
                if ((_length > (256u32 : stdgo.GoUInt32) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L308"
                    return stdgo.Go.asInterface((("bad tRNS length" : stdgo.GoString) : stdgo._internal.image.png.Png_formaterror.FormatError));
                };
                var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _d ?? throw "null pointer dereference")._r, ((@:checkr _d ?? throw "null pointer dereference")._tmp.__slice__(0, _length) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L311"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L312"
                    return _err;
                };
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L314"
                (@:checkr _d ?? throw "null pointer dereference")._crc.write(((@:checkr _d ?? throw "null pointer dereference")._tmp.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L316"
                if ((((@:checkr _d ?? throw "null pointer dereference")._palette.length) < _n : Bool)) {
                    (@:checkr _d ?? throw "null pointer dereference")._palette = ((@:checkr _d ?? throw "null pointer dereference")._palette.__slice__(0, _n) : stdgo._internal.image.color.Color_palette.Palette);
                };
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L319"
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < _n : Bool)) {
                        var _rgba = ((stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _d ?? throw "null pointer dereference")._palette[(_i : stdgo.GoInt)]) : stdgo._internal.image.color.Color_rgba.RGBA)) : stdgo._internal.image.color.Color_rgba.RGBA).__copy__() : stdgo._internal.image.color.Color_rgba.RGBA);
(@:checkr _d ?? throw "null pointer dereference")._palette[(_i : stdgo.GoInt)] = stdgo.Go.asInterface((new stdgo._internal.image.color.Color_nrgba.NRGBA(_rgba.r, _rgba.g, _rgba.b, (@:checkr _d ?? throw "null pointer dereference")._tmp[(_i : stdgo.GoInt)]) : stdgo._internal.image.color.Color_nrgba.NRGBA));
                        _i++;
                    };
                };
            } else {
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L325"
                return stdgo.Go.asInterface((("tRNS, color type mismatch" : stdgo.GoString) : stdgo._internal.image.png.Png_formaterror.FormatError));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L327"
        return _d._verifyChecksum();
    }
    @:keep
    @:tdfield
    static public function _parsePLTE( _d:stdgo.Ref<stdgo._internal.image.png.Png_t_decoder.T_decoder>, _length:stdgo.GoUInt32):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.png.Png_t_decoder.T_decoder> = _d;
        var _np = ((_length / (3u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L238"
        if (((((_length % (3u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32)) || (_np <= (0 : stdgo.GoInt) : Bool) : Bool) || (_np > (256 : stdgo.GoInt) : Bool) : Bool) || (_np > ((1 : stdgo.GoInt) << ((@:checkr _d ?? throw "null pointer dereference")._depth : stdgo.GoUInt) : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L239"
            return stdgo.Go.asInterface((("bad PLTE length" : stdgo.GoString) : stdgo._internal.image.png.Png_formaterror.FormatError));
        };
        var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _d ?? throw "null pointer dereference")._r, ((@:checkr _d ?? throw "null pointer dereference")._tmp.__slice__(0, ((3 : stdgo.GoInt) * _np : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L242"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L243"
            return _err;
        };
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L245"
        (@:checkr _d ?? throw "null pointer dereference")._crc.write(((@:checkr _d ?? throw "null pointer dereference")._tmp.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L246"
        {
            final __value__ = (@:checkr _d ?? throw "null pointer dereference")._cb;
            if (__value__ == ((7 : stdgo.GoInt)) || __value__ == ((8 : stdgo.GoInt)) || __value__ == ((9 : stdgo.GoInt)) || __value__ == ((10 : stdgo.GoInt))) {
                (@:checkr _d ?? throw "null pointer dereference")._palette = (new stdgo.Slice<stdgo._internal.image.color.Color_color.Color>((256 : stdgo.GoInt).toBasic(), 0) : stdgo._internal.image.color.Color_palette.Palette);
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L249"
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < _np : Bool)) {
                        (@:checkr _d ?? throw "null pointer dereference")._palette[(_i : stdgo.GoInt)] = stdgo.Go.asInterface((new stdgo._internal.image.color.Color_rgba.RGBA((@:checkr _d ?? throw "null pointer dereference")._tmp[(((3 : stdgo.GoInt) * _i : stdgo.GoInt) + (0 : stdgo.GoInt) : stdgo.GoInt)], (@:checkr _d ?? throw "null pointer dereference")._tmp[(((3 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)], (@:checkr _d ?? throw "null pointer dereference")._tmp[(((3 : stdgo.GoInt) * _i : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt)], (255 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_rgba.RGBA));
                        _i++;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L252"
                {
                    var _i = (_np : stdgo.GoInt);
                    while ((_i < (256 : stdgo.GoInt) : Bool)) {
                        (@:checkr _d ?? throw "null pointer dereference")._palette[(_i : stdgo.GoInt)] = stdgo.Go.asInterface((new stdgo._internal.image.color.Color_rgba.RGBA((0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)) : stdgo._internal.image.color.Color_rgba.RGBA));
                        _i++;
                    };
                };
                (@:checkr _d ?? throw "null pointer dereference")._palette = ((@:checkr _d ?? throw "null pointer dereference")._palette.__slice__(0, _np) : stdgo._internal.image.color.Color_palette.Palette);
            } else if (__value__ == ((6 : stdgo.GoInt)) || __value__ == ((11 : stdgo.GoInt)) || __value__ == ((14 : stdgo.GoInt)) || __value__ == ((15 : stdgo.GoInt))) {} else {
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L265"
                return stdgo.Go.asInterface((("PLTE, color type mismatch" : stdgo.GoString) : stdgo._internal.image.png.Png_formaterror.FormatError));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L267"
        return _d._verifyChecksum();
    }
    @:keep
    @:tdfield
    static public function _parseIHDR( _d:stdgo.Ref<stdgo._internal.image.png.Png_t_decoder.T_decoder>, _length:stdgo.GoUInt32):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.png.Png_t_decoder.T_decoder> = _d;
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L147"
        if (_length != ((13u32 : stdgo.GoUInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L148"
            return stdgo.Go.asInterface((("bad IHDR length" : stdgo.GoString) : stdgo._internal.image.png.Png_formaterror.FormatError));
        };
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L150"
        {
            var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _d ?? throw "null pointer dereference")._r, ((@:checkr _d ?? throw "null pointer dereference")._tmp.__slice__(0, (13 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L151"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L153"
        (@:checkr _d ?? throw "null pointer dereference")._crc.write(((@:checkr _d ?? throw "null pointer dereference")._tmp.__slice__(0, (13 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L154"
        if ((@:checkr _d ?? throw "null pointer dereference")._tmp[(10 : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L155"
            return stdgo.Go.asInterface((("compression method" : stdgo.GoString) : stdgo._internal.image.png.Png_unsupportederror.UnsupportedError));
        };
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L157"
        if ((@:checkr _d ?? throw "null pointer dereference")._tmp[(11 : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L158"
            return stdgo.Go.asInterface((("filter method" : stdgo.GoString) : stdgo._internal.image.png.Png_unsupportederror.UnsupportedError));
        };
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L160"
        if ((((@:checkr _d ?? throw "null pointer dereference")._tmp[(12 : stdgo.GoInt)] != (0 : stdgo.GoUInt8)) && ((@:checkr _d ?? throw "null pointer dereference")._tmp[(12 : stdgo.GoInt)] != (1 : stdgo.GoUInt8)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L161"
            return stdgo.Go.asInterface((("invalid interlace method" : stdgo.GoString) : stdgo._internal.image.png.Png_formaterror.FormatError));
        };
        (@:checkr _d ?? throw "null pointer dereference")._interlace = ((@:checkr _d ?? throw "null pointer dereference")._tmp[(12 : stdgo.GoInt)] : stdgo.GoInt);
        var _w = (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32(((@:checkr _d ?? throw "null pointer dereference")._tmp.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt32);
        var _h = (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32(((@:checkr _d ?? throw "null pointer dereference")._tmp.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L167"
        if (((_w <= (0 : stdgo.GoInt32) : Bool) || (_h <= (0 : stdgo.GoInt32) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L168"
            return stdgo.Go.asInterface((("non-positive dimension" : stdgo.GoString) : stdgo._internal.image.png.Png_formaterror.FormatError));
        };
        var _nPixels64 = ((_w : stdgo.GoInt64) * (_h : stdgo.GoInt64) : stdgo.GoInt64);
        var _nPixels = (_nPixels64 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L172"
        if (_nPixels64 != ((_nPixels : stdgo.GoInt64))) {
            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L173"
            return stdgo.Go.asInterface((("dimension overflow" : stdgo.GoString) : stdgo._internal.image.png.Png_unsupportederror.UnsupportedError));
        };
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L176"
        if (_nPixels != ((((_nPixels * (8 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L177"
            return stdgo.Go.asInterface((("dimension overflow" : stdgo.GoString) : stdgo._internal.image.png.Png_unsupportederror.UnsupportedError));
        };
        (@:checkr _d ?? throw "null pointer dereference")._cb = (0 : stdgo.GoInt);
        (@:checkr _d ?? throw "null pointer dereference")._depth = ((@:checkr _d ?? throw "null pointer dereference")._tmp[(8 : stdgo.GoInt)] : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L182"
        {
            final __value__ = (@:checkr _d ?? throw "null pointer dereference")._depth;
            if (__value__ == ((1 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L184"
                {
                    final __value__ = (@:checkr _d ?? throw "null pointer dereference")._tmp[(9 : stdgo.GoInt)];
                    if (__value__ == ((0 : stdgo.GoUInt8))) {
                        (@:checkr _d ?? throw "null pointer dereference")._cb = (1 : stdgo.GoInt);
                    } else if (__value__ == ((3 : stdgo.GoUInt8))) {
                        (@:checkr _d ?? throw "null pointer dereference")._cb = (7 : stdgo.GoInt);
                    };
                };
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L191"
                {
                    final __value__ = (@:checkr _d ?? throw "null pointer dereference")._tmp[(9 : stdgo.GoInt)];
                    if (__value__ == ((0 : stdgo.GoUInt8))) {
                        (@:checkr _d ?? throw "null pointer dereference")._cb = (2 : stdgo.GoInt);
                    } else if (__value__ == ((3 : stdgo.GoUInt8))) {
                        (@:checkr _d ?? throw "null pointer dereference")._cb = (8 : stdgo.GoInt);
                    };
                };
            } else if (__value__ == ((4 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L198"
                {
                    final __value__ = (@:checkr _d ?? throw "null pointer dereference")._tmp[(9 : stdgo.GoInt)];
                    if (__value__ == ((0 : stdgo.GoUInt8))) {
                        (@:checkr _d ?? throw "null pointer dereference")._cb = (3 : stdgo.GoInt);
                    } else if (__value__ == ((3 : stdgo.GoUInt8))) {
                        (@:checkr _d ?? throw "null pointer dereference")._cb = (9 : stdgo.GoInt);
                    };
                };
            } else if (__value__ == ((8 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L205"
                {
                    final __value__ = (@:checkr _d ?? throw "null pointer dereference")._tmp[(9 : stdgo.GoInt)];
                    if (__value__ == ((0 : stdgo.GoUInt8))) {
                        (@:checkr _d ?? throw "null pointer dereference")._cb = (4 : stdgo.GoInt);
                    } else if (__value__ == ((2 : stdgo.GoUInt8))) {
                        (@:checkr _d ?? throw "null pointer dereference")._cb = (6 : stdgo.GoInt);
                    } else if (__value__ == ((3 : stdgo.GoUInt8))) {
                        (@:checkr _d ?? throw "null pointer dereference")._cb = (10 : stdgo.GoInt);
                    } else if (__value__ == ((4 : stdgo.GoUInt8))) {
                        (@:checkr _d ?? throw "null pointer dereference")._cb = (5 : stdgo.GoInt);
                    } else if (__value__ == ((6 : stdgo.GoUInt8))) {
                        (@:checkr _d ?? throw "null pointer dereference")._cb = (11 : stdgo.GoInt);
                    };
                };
            } else if (__value__ == ((16 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L218"
                {
                    final __value__ = (@:checkr _d ?? throw "null pointer dereference")._tmp[(9 : stdgo.GoInt)];
                    if (__value__ == ((0 : stdgo.GoUInt8))) {
                        (@:checkr _d ?? throw "null pointer dereference")._cb = (12 : stdgo.GoInt);
                    } else if (__value__ == ((2 : stdgo.GoUInt8))) {
                        (@:checkr _d ?? throw "null pointer dereference")._cb = (14 : stdgo.GoInt);
                    } else if (__value__ == ((4 : stdgo.GoUInt8))) {
                        (@:checkr _d ?? throw "null pointer dereference")._cb = (13 : stdgo.GoInt);
                    } else if (__value__ == ((6 : stdgo.GoUInt8))) {
                        (@:checkr _d ?? throw "null pointer dereference")._cb = (15 : stdgo.GoInt);
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L229"
        if ((@:checkr _d ?? throw "null pointer dereference")._cb == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L230"
            return stdgo.Go.asInterface((stdgo._internal.fmt.Fmt_sprintf.sprintf(("bit depth %d, color type %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _d ?? throw "null pointer dereference")._tmp[(8 : stdgo.GoInt)]), stdgo.Go.toInterface((@:checkr _d ?? throw "null pointer dereference")._tmp[(9 : stdgo.GoInt)])) : stdgo._internal.image.png.Png_unsupportederror.UnsupportedError));
        };
        {
            final __tmp__0 = (_w : stdgo.GoInt);
            final __tmp__1 = (_h : stdgo.GoInt);
            (@:checkr _d ?? throw "null pointer dereference")._width = @:binopAssign __tmp__0;
            (@:checkr _d ?? throw "null pointer dereference")._height = @:binopAssign __tmp__1;
        };
        //"file:///home/runner/.go/go1.21.3/src/image/png/reader.go#L233"
        return _d._verifyChecksum();
    }
}
