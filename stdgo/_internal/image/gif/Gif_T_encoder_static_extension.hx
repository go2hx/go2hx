package stdgo._internal.image.gif;
@:keep @:allow(stdgo._internal.image.gif.Gif.T_encoder_asInterface) class T_encoder_static_extension {
    @:keep
    static public function _writeImageBlock( _e:stdgo.Ref<stdgo._internal.image.gif.Gif_T_encoder.T_encoder>, _pm:stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>, _delay:stdgo.GoInt, _disposal:stdgo.GoUInt8):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.gif.Gif_T_encoder.T_encoder> = _e;
        if (_e._err != null) {
            return;
        };
        if ((_pm.palette.length) == ((0 : stdgo.GoInt))) {
            _e._err = stdgo._internal.errors.Errors_new_.new_(("gif: cannot encode image block with empty palette" : stdgo.GoString));
            return;
        };
        var _b = (_pm.bounds()?.__copy__() : stdgo._internal.image.Image_Rectangle.Rectangle);
        if (((((_b.min.x < (0 : stdgo.GoInt) : Bool) || (_b.max.x >= (65536 : stdgo.GoInt) : Bool) : Bool) || (_b.min.y < (0 : stdgo.GoInt) : Bool) : Bool) || (_b.max.y >= (65536 : stdgo.GoInt) : Bool) : Bool)) {
            _e._err = stdgo._internal.errors.Errors_new_.new_(("gif: image block is too large to encode" : stdgo.GoString));
            return;
        };
        if (!_b.in_(({ max : (new stdgo._internal.image.Image_Point.Point(_e._g.config.width, _e._g.config.height) : stdgo._internal.image.Image_Point.Point) } : stdgo._internal.image.Image_Rectangle.Rectangle))) {
            _e._err = stdgo._internal.errors.Errors_new_.new_(("gif: image block is out of bounds" : stdgo.GoString));
            return;
        };
        var _transparentIndex = (-1 : stdgo.GoInt);
        for (_i => _c in _pm.palette) {
            if (_c == null) {
                _e._err = stdgo._internal.errors.Errors_new_.new_(("gif: cannot encode color table with nil entries" : stdgo.GoString));
                return;
            };
            {
                var __tmp__ = _c.rgba(), __0:stdgo.GoUInt32 = __tmp__._0, __1:stdgo.GoUInt32 = __tmp__._1, __2:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
                if (_a == ((0u32 : stdgo.GoUInt32))) {
                    _transparentIndex = _i;
                    break;
                };
            };
        };
        if ((((_delay > (0 : stdgo.GoInt) : Bool) || _disposal != ((0 : stdgo.GoUInt8)) : Bool) || (_transparentIndex != (-1 : stdgo.GoInt)) : Bool)) {
            _e._buf[(0 : stdgo.GoInt)] = (33 : stdgo.GoUInt8);
            _e._buf[(1 : stdgo.GoInt)] = (249 : stdgo.GoUInt8);
            _e._buf[(2 : stdgo.GoInt)] = (4 : stdgo.GoUInt8);
            if (_transparentIndex != ((-1 : stdgo.GoInt))) {
                _e._buf[(3 : stdgo.GoInt)] = ((1 : stdgo.GoUInt8) | (_disposal << (2i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoUInt8);
            } else {
                _e._buf[(3 : stdgo.GoInt)] = ((0 : stdgo.GoUInt8) | (_disposal << (2i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoUInt8);
            };
            stdgo._internal.image.gif.Gif__writeUint16._writeUint16((_e._buf.__slice__((4 : stdgo.GoInt), (6 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_delay : stdgo.GoUInt16));
            if (_transparentIndex != ((-1 : stdgo.GoInt))) {
                _e._buf[(6 : stdgo.GoInt)] = (_transparentIndex : stdgo.GoUInt8);
            } else {
                _e._buf[(6 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            };
            _e._buf[(7 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            _e._write((_e._buf.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        };
        _e._buf[(0 : stdgo.GoInt)] = (44 : stdgo.GoUInt8);
        stdgo._internal.image.gif.Gif__writeUint16._writeUint16((_e._buf.__slice__((1 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_b.min.x : stdgo.GoUInt16));
        stdgo._internal.image.gif.Gif__writeUint16._writeUint16((_e._buf.__slice__((3 : stdgo.GoInt), (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_b.min.y : stdgo.GoUInt16));
        stdgo._internal.image.gif.Gif__writeUint16._writeUint16((_e._buf.__slice__((5 : stdgo.GoInt), (7 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_b.dx() : stdgo.GoUInt16));
        stdgo._internal.image.gif.Gif__writeUint16._writeUint16((_e._buf.__slice__((7 : stdgo.GoInt), (9 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_b.dy() : stdgo.GoUInt16));
        _e._write((_e._buf.__slice__(0, (9 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        var _paddedSize = (stdgo._internal.image.gif.Gif__log2._log2((_pm.palette.length)) : stdgo.GoInt);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_e._g.config.colorModel) : stdgo._internal.image.color.Color_Palette.Palette)) : stdgo._internal.image.color.Color_Palette.Palette), _1 : true };
            } catch(_) {
                { _0 : new stdgo._internal.image.color.Color_Palette.Palette(0, 0), _1 : false };
            }, _gp = __tmp__._0, _ok = __tmp__._1;
            if (((_ok && ((_pm.palette.length) <= (_gp.length) : Bool) : Bool) && (stdgo.Go.toInterface((stdgo.Go.setRef(_gp[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.image.color.Color_Color.Color>)) == stdgo.Go.toInterface((stdgo.Go.setRef(_pm.palette[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.image.color.Color_Color.Color>))) : Bool)) {
                _e._writeByte((0 : stdgo.GoUInt8));
            } else {
                var __tmp__ = stdgo._internal.image.gif.Gif__encodeColorTable._encodeColorTable((_e._localColorTable.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _pm.palette, _paddedSize), _ct:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    if (_e._err == null) {
                        _e._err = _err;
                    };
                    return;
                };
                if (((_ct <= _e._globalCT : Bool) && _e._colorTablesMatch((_pm.palette.length), _transparentIndex) : Bool)) {
                    _e._writeByte((0 : stdgo.GoUInt8));
                } else {
                    _e._writeByte(((128 : stdgo.GoUInt8) | (_paddedSize : stdgo.GoUInt8) : stdgo.GoUInt8));
                    _e._write((_e._localColorTable.__slice__(0, _ct) : stdgo.Slice<stdgo.GoUInt8>));
                };
            };
        };
        var _litWidth = (_paddedSize + (1 : stdgo.GoInt) : stdgo.GoInt);
        if ((_litWidth < (2 : stdgo.GoInt) : Bool)) {
            _litWidth = (2 : stdgo.GoInt);
        };
        _e._writeByte((_litWidth : stdgo.GoUInt8));
        var _bw = ({ _e : _e } : stdgo._internal.image.gif.Gif_T_blockWriter.T_blockWriter);
        _bw._setup();
        var _lzww = (stdgo._internal.compress.lzw.Lzw_newWriter.newWriter(stdgo.Go.asInterface(_bw), (0 : stdgo._internal.compress.lzw.Lzw_Order.Order), _litWidth) : stdgo._internal.io.Io_WriteCloser.WriteCloser);
        {
            var _dx = (_b.dx() : stdgo.GoInt);
            if (_dx == (_pm.stride)) {
                {
                    var __tmp__ = _lzww.write((_pm.pix.__slice__(0, (_dx * _b.dy() : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _e._err = __tmp__._1;
                };
                if (_e._err != null) {
                    _lzww.close();
                    return;
                };
            } else {
                {
                    var __0 = (0 : stdgo.GoInt), __1 = (_b.min.y : stdgo.GoInt);
var _y = __1, _i = __0;
                    stdgo.Go.cfor((_y < _b.max.y : Bool), {
                        final __tmp__0 = (_i + _pm.stride : stdgo.GoInt);
                        final __tmp__1 = (_y + (1 : stdgo.GoInt) : stdgo.GoInt);
                        _i = __tmp__0;
                        _y = __tmp__1;
                    }, {
                        {
                            var __tmp__ = _lzww.write((_pm.pix.__slice__(_i, (_i + _dx : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                            _e._err = __tmp__._1;
                        };
                        if (_e._err != null) {
                            _lzww.close();
                            return;
                        };
                    });
                };
            };
        };
        _lzww.close();
        _bw._close();
    }
    @:keep
    static public function _colorTablesMatch( _e:stdgo.Ref<stdgo._internal.image.gif.Gif_T_encoder.T_encoder>, _localLen:stdgo.GoInt, _transparentIndex:stdgo.GoInt):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.gif.Gif_T_encoder.T_encoder> = _e;
        var _localSize = ((3 : stdgo.GoInt) * _localLen : stdgo.GoInt);
        if ((_transparentIndex >= (0 : stdgo.GoInt) : Bool)) {
            var _trOff = ((3 : stdgo.GoInt) * _transparentIndex : stdgo.GoInt);
            return (stdgo._internal.bytes.Bytes_equal.equal((_e._globalColorTable.__slice__(0, _trOff) : stdgo.Slice<stdgo.GoUInt8>), (_e._localColorTable.__slice__(0, _trOff) : stdgo.Slice<stdgo.GoUInt8>)) && stdgo._internal.bytes.Bytes_equal.equal((_e._globalColorTable.__slice__((_trOff + (3 : stdgo.GoInt) : stdgo.GoInt), _localSize) : stdgo.Slice<stdgo.GoUInt8>), (_e._localColorTable.__slice__((_trOff + (3 : stdgo.GoInt) : stdgo.GoInt), _localSize) : stdgo.Slice<stdgo.GoUInt8>)) : Bool);
        };
        return stdgo._internal.bytes.Bytes_equal.equal((_e._globalColorTable.__slice__(0, _localSize) : stdgo.Slice<stdgo.GoUInt8>), (_e._localColorTable.__slice__(0, _localSize) : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    static public function _writeHeader( _e:stdgo.Ref<stdgo._internal.image.gif.Gif_T_encoder.T_encoder>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.gif.Gif_T_encoder.T_encoder> = _e;
        if (_e._err != null) {
            return;
        };
        {
            var __tmp__ = stdgo._internal.io.Io_writeString.writeString(_e._w, ("GIF89a" : stdgo.GoString));
            _e._err = __tmp__._1;
        };
        if (_e._err != null) {
            return;
        };
        stdgo._internal.image.gif.Gif__writeUint16._writeUint16((_e._buf.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_e._g.config.width : stdgo.GoUInt16));
        stdgo._internal.image.gif.Gif__writeUint16._writeUint16((_e._buf.__slice__((2 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_e._g.config.height : stdgo.GoUInt16));
        _e._write((_e._buf.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_e._g.config.colorModel) : stdgo._internal.image.color.Color_Palette.Palette)) : stdgo._internal.image.color.Color_Palette.Palette), _1 : true };
            } catch(_) {
                { _0 : new stdgo._internal.image.color.Color_Palette.Palette(0, 0), _1 : false };
            }, _p = __tmp__._0, _ok = __tmp__._1;
            if ((_ok && ((_p.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                var _paddedSize = (stdgo._internal.image.gif.Gif__log2._log2((_p.length)) : stdgo.GoInt);
                _e._buf[(0 : stdgo.GoInt)] = ((128 : stdgo.GoUInt8) | (_paddedSize : stdgo.GoUInt8) : stdgo.GoUInt8);
                _e._buf[(1 : stdgo.GoInt)] = _e._g.backgroundIndex;
                _e._buf[(2 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                _e._write((_e._buf.__slice__(0, (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    var __tmp__ = stdgo._internal.image.gif.Gif__encodeColorTable._encodeColorTable((_e._globalColorTable.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _p, _paddedSize);
                    _e._globalCT = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (((_err != null) && (_e._err == null) : Bool)) {
                    _e._err = _err;
                    return;
                };
                _e._write((_e._globalColorTable.__slice__(0, _e._globalCT) : stdgo.Slice<stdgo.GoUInt8>));
            } else {
                _e._buf[(0 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                _e._buf[(1 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                _e._buf[(2 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                _e._write((_e._buf.__slice__(0, (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            };
        };
        if ((((_e._g.image.length) > (1 : stdgo.GoInt) : Bool) && (_e._g.loopCount >= (0 : stdgo.GoInt) : Bool) : Bool)) {
            _e._buf[(0 : stdgo.GoInt)] = (33 : stdgo.GoUInt8);
            _e._buf[(1 : stdgo.GoInt)] = (255 : stdgo.GoUInt8);
            _e._buf[(2 : stdgo.GoInt)] = (11 : stdgo.GoUInt8);
            _e._write((_e._buf.__slice__(0, (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            var __tmp__ = stdgo._internal.io.Io_writeString.writeString(_e._w, ("NETSCAPE2.0" : stdgo.GoString)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) && (_e._err == null) : Bool)) {
                _e._err = _err;
                return;
            };
            _e._buf[(0 : stdgo.GoInt)] = (3 : stdgo.GoUInt8);
            _e._buf[(1 : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
            stdgo._internal.image.gif.Gif__writeUint16._writeUint16((_e._buf.__slice__((2 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_e._g.loopCount : stdgo.GoUInt16));
            _e._buf[(4 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            _e._write((_e._buf.__slice__(0, (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        };
    }
    @:keep
    static public function _writeByte( _e:stdgo.Ref<stdgo._internal.image.gif.Gif_T_encoder.T_encoder>, _b:stdgo.GoUInt8):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.gif.Gif_T_encoder.T_encoder> = _e;
        if (_e._err != null) {
            return;
        };
        _e._err = _e._w.writeByte(_b);
    }
    @:keep
    static public function _write( _e:stdgo.Ref<stdgo._internal.image.gif.Gif_T_encoder.T_encoder>, _p:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.gif.Gif_T_encoder.T_encoder> = _e;
        if (_e._err != null) {
            return;
        };
        {
            var __tmp__ = _e._w.write(_p);
            _e._err = __tmp__._1;
        };
    }
    @:keep
    static public function _flush( _e:stdgo.Ref<stdgo._internal.image.gif.Gif_T_encoder.T_encoder>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.gif.Gif_T_encoder.T_encoder> = _e;
        if (_e._err != null) {
            return;
        };
        _e._err = _e._w.flush();
    }
}
