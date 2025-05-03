package stdgo._internal.image.gif;
@:keep @:allow(stdgo._internal.image.gif.Gif.T_encoder_asInterface) class T_encoder_static_extension {
    @:keep
    @:tdfield
    static public function _writeImageBlock( _e:stdgo.Ref<stdgo._internal.image.gif.Gif_t_encoder.T_encoder>, _pm:stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>, _delay:stdgo.GoInt, _disposal:stdgo.GoUInt8):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.gif.Gif_t_encoder.T_encoder> = _e;
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L242"
        if ((@:checkr _e ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L243"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L246"
        if (((@:checkr _pm ?? throw "null pointer dereference").palette.length) == ((0 : stdgo.GoInt))) {
            (@:checkr _e ?? throw "null pointer dereference")._err = stdgo._internal.errors.Errors_new_.new_(("gif: cannot encode image block with empty palette" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L248"
            return;
        };
        var _b = (_pm.bounds()?.__copy__() : stdgo._internal.image.Image_rectangle.Rectangle);
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L252"
        if (((((_b.min.x < (0 : stdgo.GoInt) : Bool) || (_b.max.x >= (65536 : stdgo.GoInt) : Bool) : Bool) || (_b.min.y < (0 : stdgo.GoInt) : Bool) : Bool) || (_b.max.y >= (65536 : stdgo.GoInt) : Bool) : Bool)) {
            (@:checkr _e ?? throw "null pointer dereference")._err = stdgo._internal.errors.Errors_new_.new_(("gif: image block is too large to encode" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L254"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L256"
        if (!_b.in_(({ max : (new stdgo._internal.image.Image_point.Point((@:checkr _e ?? throw "null pointer dereference")._g.config.width, (@:checkr _e ?? throw "null pointer dereference")._g.config.height) : stdgo._internal.image.Image_point.Point) } : stdgo._internal.image.Image_rectangle.Rectangle))) {
            (@:checkr _e ?? throw "null pointer dereference")._err = stdgo._internal.errors.Errors_new_.new_(("gif: image block is out of bounds" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L258"
            return;
        };
        var _transparentIndex = (-1 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L262"
        for (_i => _c in (@:checkr _pm ?? throw "null pointer dereference").palette) {
            //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L263"
            if (_c == null) {
                (@:checkr _e ?? throw "null pointer dereference")._err = stdgo._internal.errors.Errors_new_.new_(("gif: cannot encode color table with nil entries" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L265"
                return;
            };
            //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L267"
            {
                var __tmp__ = _c.rGBA(), __0:stdgo.GoUInt32 = __tmp__._0, __1:stdgo.GoUInt32 = __tmp__._1, __2:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
                if (_a == ((0u32 : stdgo.GoUInt32))) {
                    _transparentIndex = _i;
                    //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L269"
                    break;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L273"
        if ((((_delay > (0 : stdgo.GoInt) : Bool) || _disposal != ((0 : stdgo.GoUInt8)) : Bool) || (_transparentIndex != (-1 : stdgo.GoInt)) : Bool)) {
            (@:checkr _e ?? throw "null pointer dereference")._buf[(0 : stdgo.GoInt)] = (33 : stdgo.GoUInt8);
            (@:checkr _e ?? throw "null pointer dereference")._buf[(1 : stdgo.GoInt)] = (249 : stdgo.GoUInt8);
            (@:checkr _e ?? throw "null pointer dereference")._buf[(2 : stdgo.GoInt)] = (4 : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L277"
            if (_transparentIndex != ((-1 : stdgo.GoInt))) {
                (@:checkr _e ?? throw "null pointer dereference")._buf[(3 : stdgo.GoInt)] = ((1 : stdgo.GoUInt8) | (_disposal << (2i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoUInt8);
            } else {
                (@:checkr _e ?? throw "null pointer dereference")._buf[(3 : stdgo.GoInt)] = ((0 : stdgo.GoUInt8) | (_disposal << (2i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoUInt8);
            };
            //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L282"
            stdgo._internal.image.gif.Gif__writeuint16._writeUint16(((@:checkr _e ?? throw "null pointer dereference")._buf.__slice__((4 : stdgo.GoInt), (6 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_delay : stdgo.GoUInt16));
            //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L285"
            if (_transparentIndex != ((-1 : stdgo.GoInt))) {
                (@:checkr _e ?? throw "null pointer dereference")._buf[(6 : stdgo.GoInt)] = (_transparentIndex : stdgo.GoUInt8);
            } else {
                (@:checkr _e ?? throw "null pointer dereference")._buf[(6 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            };
            (@:checkr _e ?? throw "null pointer dereference")._buf[(7 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L291"
            _e._write(((@:checkr _e ?? throw "null pointer dereference")._buf.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        };
        (@:checkr _e ?? throw "null pointer dereference")._buf[(0 : stdgo.GoInt)] = (44 : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L294"
        stdgo._internal.image.gif.Gif__writeuint16._writeUint16(((@:checkr _e ?? throw "null pointer dereference")._buf.__slice__((1 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_b.min.x : stdgo.GoUInt16));
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L295"
        stdgo._internal.image.gif.Gif__writeuint16._writeUint16(((@:checkr _e ?? throw "null pointer dereference")._buf.__slice__((3 : stdgo.GoInt), (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_b.min.y : stdgo.GoUInt16));
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L296"
        stdgo._internal.image.gif.Gif__writeuint16._writeUint16(((@:checkr _e ?? throw "null pointer dereference")._buf.__slice__((5 : stdgo.GoInt), (7 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_b.dx() : stdgo.GoUInt16));
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L297"
        stdgo._internal.image.gif.Gif__writeuint16._writeUint16(((@:checkr _e ?? throw "null pointer dereference")._buf.__slice__((7 : stdgo.GoInt), (9 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_b.dy() : stdgo.GoUInt16));
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L298"
        _e._write(((@:checkr _e ?? throw "null pointer dereference")._buf.__slice__(0, (9 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        var _paddedSize = (stdgo._internal.image.gif.Gif__log2._log2(((@:checkr _pm ?? throw "null pointer dereference").palette.length)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L305"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference")._g.config.colorModel) : stdgo._internal.image.color.Color_palette.Palette)) : stdgo._internal.image.color.Color_palette.Palette), _1 : true };
            } catch(_) {
                { _0 : (new stdgo._internal.image.color.Color_palette.Palette(0, 0) : stdgo._internal.image.color.Color_palette.Palette), _1 : false };
            }, _gp = __tmp__._0, _ok = __tmp__._1;
            if (((_ok && (((@:checkr _pm ?? throw "null pointer dereference").palette.length) <= (_gp.length) : Bool) : Bool) && (stdgo.Go.toInterface((stdgo.Go.setRef(_gp[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.image.color.Color_color.Color>)) == stdgo.Go.toInterface((stdgo.Go.setRef((@:checkr _pm ?? throw "null pointer dereference").palette[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.image.color.Color_color.Color>))) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L306"
                _e._writeByte((0 : stdgo.GoUInt8));
            } else {
                var __tmp__ = stdgo._internal.image.gif.Gif__encodecolortable._encodeColorTable(((@:checkr _e ?? throw "null pointer dereference")._localColorTable.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _pm ?? throw "null pointer dereference").palette, _paddedSize), _ct:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L309"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L310"
                    if ((@:checkr _e ?? throw "null pointer dereference")._err == null) {
                        (@:checkr _e ?? throw "null pointer dereference")._err = _err;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L313"
                    return;
                };
                //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L318"
                if (((_ct <= (@:checkr _e ?? throw "null pointer dereference")._globalCT : Bool) && _e._colorTablesMatch(((@:checkr _pm ?? throw "null pointer dereference").palette.length), _transparentIndex) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L319"
                    _e._writeByte((0 : stdgo.GoUInt8));
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L322"
                    _e._writeByte(((128 : stdgo.GoUInt8) | (_paddedSize : stdgo.GoUInt8) : stdgo.GoUInt8));
                    //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L323"
                    _e._write(((@:checkr _e ?? throw "null pointer dereference")._localColorTable.__slice__(0, _ct) : stdgo.Slice<stdgo.GoUInt8>));
                };
            };
        };
        var _litWidth = (_paddedSize + (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L328"
        if ((_litWidth < (2 : stdgo.GoInt) : Bool)) {
            _litWidth = (2 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L331"
        _e._writeByte((_litWidth : stdgo.GoUInt8));
        var _bw = ({ _e : _e } : stdgo._internal.image.gif.Gif_t_blockwriter.T_blockWriter);
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L334"
        _bw._setup();
        var _lzww = (stdgo._internal.compress.lzw.Lzw_newwriter.newWriter(stdgo.Go.asInterface(_bw), (0 : stdgo._internal.compress.lzw.Lzw_order.Order), _litWidth) : stdgo._internal.io.Io_writecloser.WriteCloser);
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L336"
        {
            var _dx = (_b.dx() : stdgo.GoInt);
            if (_dx == ((@:checkr _pm ?? throw "null pointer dereference").stride)) {
                {
                    var __tmp__ = _lzww.write(((@:checkr _pm ?? throw "null pointer dereference").pix.__slice__(0, (_dx * _b.dy() : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    (@:checkr _e ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L338"
                if ((@:checkr _e ?? throw "null pointer dereference")._err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L339"
                    _lzww.close();
                    //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L340"
                    return;
                };
            } else {
                //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L343"
                {
                    var __0 = (0 : stdgo.GoInt), __1 = (_b.min.y : stdgo.GoInt);
var _y = __1, _i = __0;
                    while ((_y < _b.max.y : Bool)) {
                        {
                            var __tmp__ = _lzww.write(((@:checkr _pm ?? throw "null pointer dereference").pix.__slice__(_i, (_i + _dx : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                            (@:checkr _e ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
                        };
//"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L345"
                        if ((@:checkr _e ?? throw "null pointer dereference")._err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L346"
                            _lzww.close();
                            //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L347"
                            return;
                        };
                        {
                            final __tmp__0 = (_i + (@:checkr _pm ?? throw "null pointer dereference").stride : stdgo.GoInt);
                            final __tmp__1 = (_y + (1 : stdgo.GoInt) : stdgo.GoInt);
                            _i = @:binopAssign __tmp__0;
                            _y = @:binopAssign __tmp__1;
                        };
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L351"
        _lzww.close();
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L352"
        _bw._close();
    }
    @:keep
    @:tdfield
    static public function _colorTablesMatch( _e:stdgo.Ref<stdgo._internal.image.gif.Gif_t_encoder.T_encoder>, _localLen:stdgo.GoInt, _transparentIndex:stdgo.GoInt):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.gif.Gif_t_encoder.T_encoder> = _e;
        var _localSize = ((3 : stdgo.GoInt) * _localLen : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L233"
        if ((_transparentIndex >= (0 : stdgo.GoInt) : Bool)) {
            var _trOff = ((3 : stdgo.GoInt) * _transparentIndex : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L235"
            return (stdgo._internal.bytes.Bytes_equal.equal(((@:checkr _e ?? throw "null pointer dereference")._globalColorTable.__slice__(0, _trOff) : stdgo.Slice<stdgo.GoUInt8>), ((@:checkr _e ?? throw "null pointer dereference")._localColorTable.__slice__(0, _trOff) : stdgo.Slice<stdgo.GoUInt8>)) && stdgo._internal.bytes.Bytes_equal.equal(((@:checkr _e ?? throw "null pointer dereference")._globalColorTable.__slice__((_trOff + (3 : stdgo.GoInt) : stdgo.GoInt), _localSize) : stdgo.Slice<stdgo.GoUInt8>), ((@:checkr _e ?? throw "null pointer dereference")._localColorTable.__slice__((_trOff + (3 : stdgo.GoInt) : stdgo.GoInt), _localSize) : stdgo.Slice<stdgo.GoUInt8>)) : Bool);
        };
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L238"
        return stdgo._internal.bytes.Bytes_equal.equal(((@:checkr _e ?? throw "null pointer dereference")._globalColorTable.__slice__(0, _localSize) : stdgo.Slice<stdgo.GoUInt8>), ((@:checkr _e ?? throw "null pointer dereference")._localColorTable.__slice__(0, _localSize) : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    @:tdfield
    static public function _writeHeader( _e:stdgo.Ref<stdgo._internal.image.gif.Gif_t_encoder.T_encoder>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.gif.Gif_t_encoder.T_encoder> = _e;
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L145"
        if ((@:checkr _e ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L146"
            return;
        };
        {
            var __tmp__ = stdgo._internal.io.Io_writestring.writeString((@:checkr _e ?? throw "null pointer dereference")._w, ("GIF89a" : stdgo.GoString));
            (@:checkr _e ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L149"
        if ((@:checkr _e ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L150"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L154"
        stdgo._internal.image.gif.Gif__writeuint16._writeUint16(((@:checkr _e ?? throw "null pointer dereference")._buf.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ((@:checkr _e ?? throw "null pointer dereference")._g.config.width : stdgo.GoUInt16));
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L155"
        stdgo._internal.image.gif.Gif__writeuint16._writeUint16(((@:checkr _e ?? throw "null pointer dereference")._buf.__slice__((2 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ((@:checkr _e ?? throw "null pointer dereference")._g.config.height : stdgo.GoUInt16));
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L156"
        _e._write(((@:checkr _e ?? throw "null pointer dereference")._buf.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L158"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference")._g.config.colorModel) : stdgo._internal.image.color.Color_palette.Palette)) : stdgo._internal.image.color.Color_palette.Palette), _1 : true };
            } catch(_) {
                { _0 : (new stdgo._internal.image.color.Color_palette.Palette(0, 0) : stdgo._internal.image.color.Color_palette.Palette), _1 : false };
            }, _p = __tmp__._0, _ok = __tmp__._1;
            if ((_ok && ((_p.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                var _paddedSize = (stdgo._internal.image.gif.Gif__log2._log2((_p.length)) : stdgo.GoInt);
                (@:checkr _e ?? throw "null pointer dereference")._buf[(0 : stdgo.GoInt)] = ((128 : stdgo.GoUInt8) | (_paddedSize : stdgo.GoUInt8) : stdgo.GoUInt8);
                (@:checkr _e ?? throw "null pointer dereference")._buf[(1 : stdgo.GoInt)] = (@:checkr _e ?? throw "null pointer dereference")._g.backgroundIndex;
                (@:checkr _e ?? throw "null pointer dereference")._buf[(2 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L163"
                _e._write(((@:checkr _e ?? throw "null pointer dereference")._buf.__slice__(0, (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    var __tmp__ = stdgo._internal.image.gif.Gif__encodecolortable._encodeColorTable(((@:checkr _e ?? throw "null pointer dereference")._globalColorTable.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _p, _paddedSize);
                    (@:checkr _e ?? throw "null pointer dereference")._globalCT = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L166"
                if (((_err != null) && ((@:checkr _e ?? throw "null pointer dereference")._err == null) : Bool)) {
                    (@:checkr _e ?? throw "null pointer dereference")._err = _err;
                    //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L168"
                    return;
                };
                //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L170"
                _e._write(((@:checkr _e ?? throw "null pointer dereference")._globalColorTable.__slice__(0, (@:checkr _e ?? throw "null pointer dereference")._globalCT) : stdgo.Slice<stdgo.GoUInt8>));
            } else {
                (@:checkr _e ?? throw "null pointer dereference")._buf[(0 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                (@:checkr _e ?? throw "null pointer dereference")._buf[(1 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                (@:checkr _e ?? throw "null pointer dereference")._buf[(2 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L177"
                _e._write(((@:checkr _e ?? throw "null pointer dereference")._buf.__slice__(0, (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L181"
        if (((((@:checkr _e ?? throw "null pointer dereference")._g.image.length) > (1 : stdgo.GoInt) : Bool) && ((@:checkr _e ?? throw "null pointer dereference")._g.loopCount >= (0 : stdgo.GoInt) : Bool) : Bool)) {
            (@:checkr _e ?? throw "null pointer dereference")._buf[(0 : stdgo.GoInt)] = (33 : stdgo.GoUInt8);
            (@:checkr _e ?? throw "null pointer dereference")._buf[(1 : stdgo.GoInt)] = (255 : stdgo.GoUInt8);
            (@:checkr _e ?? throw "null pointer dereference")._buf[(2 : stdgo.GoInt)] = (11 : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L185"
            _e._write(((@:checkr _e ?? throw "null pointer dereference")._buf.__slice__(0, (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            var __tmp__ = stdgo._internal.io.Io_writestring.writeString((@:checkr _e ?? throw "null pointer dereference")._w, ("NETSCAPE2.0" : stdgo.GoString)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L187"
            if (((_err != null) && ((@:checkr _e ?? throw "null pointer dereference")._err == null) : Bool)) {
                (@:checkr _e ?? throw "null pointer dereference")._err = _err;
                //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L189"
                return;
            };
            (@:checkr _e ?? throw "null pointer dereference")._buf[(0 : stdgo.GoInt)] = (3 : stdgo.GoUInt8);
            (@:checkr _e ?? throw "null pointer dereference")._buf[(1 : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L193"
            stdgo._internal.image.gif.Gif__writeuint16._writeUint16(((@:checkr _e ?? throw "null pointer dereference")._buf.__slice__((2 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ((@:checkr _e ?? throw "null pointer dereference")._g.loopCount : stdgo.GoUInt16));
            (@:checkr _e ?? throw "null pointer dereference")._buf[(4 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L195"
            _e._write(((@:checkr _e ?? throw "null pointer dereference")._buf.__slice__(0, (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        };
    }
    @:keep
    @:tdfield
    static public function _writeByte( _e:stdgo.Ref<stdgo._internal.image.gif.Gif_t_encoder.T_encoder>, _b:stdgo.GoUInt8):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.gif.Gif_t_encoder.T_encoder> = _e;
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L138"
        if ((@:checkr _e ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L139"
            return;
        };
        (@:checkr _e ?? throw "null pointer dereference")._err = (@:checkr _e ?? throw "null pointer dereference")._w.writeByte(_b);
    }
    @:keep
    @:tdfield
    static public function _write( _e:stdgo.Ref<stdgo._internal.image.gif.Gif_t_encoder.T_encoder>, _p:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.gif.Gif_t_encoder.T_encoder> = _e;
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L131"
        if ((@:checkr _e ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L132"
            return;
        };
        {
            var __tmp__ = (@:checkr _e ?? throw "null pointer dereference")._w.write(_p);
            (@:checkr _e ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
        };
    }
    @:keep
    @:tdfield
    static public function _flush( _e:stdgo.Ref<stdgo._internal.image.gif.Gif_t_encoder.T_encoder>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.gif.Gif_t_encoder.T_encoder> = _e;
        //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L124"
        if ((@:checkr _e ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/image/gif/writer.go#L125"
            return;
        };
        (@:checkr _e ?? throw "null pointer dereference")._err = (@:checkr _e ?? throw "null pointer dereference")._w.flush();
    }
}
