package stdgo._internal.image.jpeg;
@:keep @:allow(stdgo._internal.image.jpeg.Jpeg.T_encoder_asInterface) class T_encoder_static_extension {
    @:keep
    @:tdfield
    static public function _writeSOS( _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_encoder.T_encoder>, _m:stdgo._internal.image.Image_image.Image):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_encoder.T_encoder> = _e;
        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L510"
        {
            final __type__ = _m;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>))) {
                //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L512"
                _e._write(stdgo._internal.image.jpeg.Jpeg__sosheadery._sosHeaderY);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L514"
                _e._write(stdgo._internal.image.jpeg.Jpeg__sosheaderycbcr._sosHeaderYCbCr);
            };
        };
        var _b:stdgo._internal.image.jpeg.Jpeg_t_block.T_block = new stdgo._internal.image.jpeg.Jpeg_t_block.T_block(64, 64, ...[for (i in 0 ... 64) (0 : stdgo.GoInt32)]), _cb:stdgo.GoArray<stdgo._internal.image.jpeg.Jpeg_t_block.T_block> = new stdgo.GoArray<stdgo._internal.image.jpeg.Jpeg_t_block.T_block>(4, 4, ...[for (i in 0 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) new stdgo._internal.image.jpeg.Jpeg_t_block.T_block(64, 64, ...[for (i in 0 ... 64) (0 : stdgo.GoInt32)])]), _cr:stdgo.GoArray<stdgo._internal.image.jpeg.Jpeg_t_block.T_block> = new stdgo.GoArray<stdgo._internal.image.jpeg.Jpeg_t_block.T_block>(4, 4, ...[for (i in 0 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) new stdgo._internal.image.jpeg.Jpeg_t_block.T_block(64, 64, ...[for (i in 0 ... 64) (0 : stdgo.GoInt32)])]), _prevDCY:stdgo.GoInt32 = (0 : stdgo.GoInt32), _prevDCCb:stdgo.GoInt32 = (0 : stdgo.GoInt32), _prevDCCr:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _bounds = (_m.bounds()?.__copy__() : stdgo._internal.image.Image_rectangle.Rectangle);
        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L525"
        {
            final __type__ = _m;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>))) {
                var _m:stdgo.Ref<stdgo._internal.image.Image_gray.Gray> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L528"
                {
                    var _y = (_bounds.min.y : stdgo.GoInt);
                    while ((_y < _bounds.max.y : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L529"
                        {
                            var _x = (_bounds.min.x : stdgo.GoInt);
                            while ((_x < _bounds.max.x : Bool)) {
                                var _p = (stdgo._internal.image.Image_pt.pt(_x, _y).__copy__() : stdgo._internal.image.Image_point.Point);
//"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L531"
                                stdgo._internal.image.jpeg.Jpeg__graytoy._grayToY(_m, _p.__copy__(), (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_block.T_block>));
_prevDCY = _e._writeBlock((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_block.T_block>), (0 : stdgo._internal.image.jpeg.Jpeg_t_quantindex.T_quantIndex), _prevDCY);
                                _x = (_x + ((8 : stdgo.GoInt)) : stdgo.GoInt);
                            };
                        };
                        _y = (_y + ((8 : stdgo.GoInt)) : stdgo.GoInt);
                    };
                };
            } else {
                var _m:stdgo._internal.image.Image_image.Image = __type__ == null ? (null : stdgo._internal.image.Image_image.Image) : cast __type__;
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>)) : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>), _1 : false };
                }, _rgba = __tmp__._0, __0 = __tmp__._1;
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>)) : stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>), _1 : false };
                }, _ycbcr = __tmp__._0, __1 = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L538"
                {
                    var _y = (_bounds.min.y : stdgo.GoInt);
                    while ((_y < _bounds.max.y : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L539"
                        {
                            var _x = (_bounds.min.x : stdgo.GoInt);
                            while ((_x < _bounds.max.x : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L540"
                                {
                                    var _i = (0 : stdgo.GoInt);
                                    while ((_i < (4 : stdgo.GoInt) : Bool)) {
                                        var _xOff = (((_i & (1 : stdgo.GoInt) : stdgo.GoInt)) * (8 : stdgo.GoInt) : stdgo.GoInt);
var _yOff = (((_i & (2 : stdgo.GoInt) : stdgo.GoInt)) * (4 : stdgo.GoInt) : stdgo.GoInt);
var _p = (stdgo._internal.image.Image_pt.pt((_x + _xOff : stdgo.GoInt), (_y + _yOff : stdgo.GoInt)).__copy__() : stdgo._internal.image.Image_point.Point);
//"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L544"
                                        if (({
                                            final value = _rgba;
                                            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                                        })) {
                                            //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L545"
                                            stdgo._internal.image.jpeg.Jpeg__rgbatoycbcr._rgbaToYCbCr(_rgba, _p.__copy__(), (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_block.T_block>), (stdgo.Go.setRef(_cb[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_block.T_block>), (stdgo.Go.setRef(_cr[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_block.T_block>));
                                        } else if (({
                                            final value = _ycbcr;
                                            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                                        })) {
                                            //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L547"
                                            stdgo._internal.image.jpeg.Jpeg__ycbcrtoycbcr._yCbCrToYCbCr(_ycbcr, _p.__copy__(), (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_block.T_block>), (stdgo.Go.setRef(_cb[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_block.T_block>), (stdgo.Go.setRef(_cr[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_block.T_block>));
                                        } else {
                                            //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L549"
                                            stdgo._internal.image.jpeg.Jpeg__toycbcr._toYCbCr(_m, _p.__copy__(), (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_block.T_block>), (stdgo.Go.setRef(_cb[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_block.T_block>), (stdgo.Go.setRef(_cr[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_block.T_block>));
                                        };
_prevDCY = _e._writeBlock((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_block.T_block>), (0 : stdgo._internal.image.jpeg.Jpeg_t_quantindex.T_quantIndex), _prevDCY);
                                        _i++;
                                    };
                                };
//"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L553"
                                stdgo._internal.image.jpeg.Jpeg__scale._scale((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_block.T_block>), (stdgo.Go.setRef(_cb) : stdgo.Ref<stdgo.GoArray<stdgo._internal.image.jpeg.Jpeg_t_block.T_block>>));
_prevDCCb = _e._writeBlock((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_block.T_block>), (1 : stdgo._internal.image.jpeg.Jpeg_t_quantindex.T_quantIndex), _prevDCCb);
//"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L555"
                                stdgo._internal.image.jpeg.Jpeg__scale._scale((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_block.T_block>), (stdgo.Go.setRef(_cr) : stdgo.Ref<stdgo.GoArray<stdgo._internal.image.jpeg.Jpeg_t_block.T_block>>));
_prevDCCr = _e._writeBlock((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_block.T_block>), (1 : stdgo._internal.image.jpeg.Jpeg_t_quantindex.T_quantIndex), _prevDCCr);
                                _x = (_x + ((16 : stdgo.GoInt)) : stdgo.GoInt);
                            };
                        };
                        _y = (_y + ((16 : stdgo.GoInt)) : stdgo.GoInt);
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L561"
        _e._emit((127u32 : stdgo.GoUInt32), (7u32 : stdgo.GoUInt32));
    }
    @:keep
    @:tdfield
    static public function _writeBlock( _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_encoder.T_encoder>, _b:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_block.T_block>, _q:stdgo._internal.image.jpeg.Jpeg_t_quantindex.T_quantIndex, _prevDC:stdgo.GoInt32):stdgo.GoInt32 {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_encoder.T_encoder> = _e;
        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L363"
        stdgo._internal.image.jpeg.Jpeg__fdct._fdct(_b);
        var _dc = (stdgo._internal.image.jpeg.Jpeg__div._div(_b[(0 : stdgo.GoInt)], ((8 : stdgo.GoInt32) * ((@:checkr _e ?? throw "null pointer dereference")._quant[(_q : stdgo.GoInt)][(0 : stdgo.GoInt)] : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L366"
        _e._emitHuffRLE(((((2 : stdgo._internal.image.jpeg.Jpeg_t_quantindex.T_quantIndex) * _q : stdgo._internal.image.jpeg.Jpeg_t_quantindex.T_quantIndex) + (0 : stdgo._internal.image.jpeg.Jpeg_t_quantindex.T_quantIndex) : stdgo._internal.image.jpeg.Jpeg_t_quantindex.T_quantIndex) : stdgo._internal.image.jpeg.Jpeg_t_huffindex.T_huffIndex), (0 : stdgo.GoInt32), (_dc - _prevDC : stdgo.GoInt32));
        var __0 = ((((2 : stdgo._internal.image.jpeg.Jpeg_t_quantindex.T_quantIndex) * _q : stdgo._internal.image.jpeg.Jpeg_t_quantindex.T_quantIndex) + (1 : stdgo._internal.image.jpeg.Jpeg_t_quantindex.T_quantIndex) : stdgo._internal.image.jpeg.Jpeg_t_quantindex.T_quantIndex) : stdgo._internal.image.jpeg.Jpeg_t_huffindex.T_huffIndex), __1 = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
var _runLength = __1, _h = __0;
        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L369"
        {
            var _zig = (1 : stdgo.GoInt);
            while ((_zig < (64 : stdgo.GoInt) : Bool)) {
                var _ac = (stdgo._internal.image.jpeg.Jpeg__div._div(_b[(stdgo._internal.image.jpeg.Jpeg__unzig._unzig[(_zig : stdgo.GoInt)] : stdgo.GoInt)], ((8 : stdgo.GoInt32) * ((@:checkr _e ?? throw "null pointer dereference")._quant[(_q : stdgo.GoInt)][(_zig : stdgo.GoInt)] : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32);
//"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L371"
                if (_ac == ((0 : stdgo.GoInt32))) {
                    //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L372"
                    _runLength++;
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L374"
                    while ((_runLength > (15 : stdgo.GoInt32) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L375"
                        _e._emitHuff(_h, (240 : stdgo.GoInt32));
                        _runLength = (_runLength - ((16 : stdgo.GoInt32)) : stdgo.GoInt32);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L378"
                    _e._emitHuffRLE(_h, _runLength, _ac);
                    _runLength = (0 : stdgo.GoInt32);
                };
                _zig++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L382"
        if ((_runLength > (0 : stdgo.GoInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L383"
            _e._emitHuff(_h, (0 : stdgo.GoInt32));
        };
        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L385"
        return _dc;
    }
    @:keep
    @:tdfield
    static public function _writeDHT( _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_encoder.T_encoder>, _nComponent:stdgo.GoInt):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_encoder.T_encoder> = _e;
        var _markerlen = (2 : stdgo.GoInt);
        var _specs = (stdgo._internal.image.jpeg.Jpeg__thehuffmanspec._theHuffmanSpec.__slice__(0) : stdgo.Slice<stdgo._internal.image.jpeg.Jpeg_t_huffmanspec.T_huffmanSpec>);
        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L344"
        if (_nComponent == ((1 : stdgo.GoInt))) {
            _specs = (_specs.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.image.jpeg.Jpeg_t_huffmanspec.T_huffmanSpec>);
        };
        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L348"
        for (__0 => _s in _specs) {
            _markerlen = (_markerlen + (((17 : stdgo.GoInt) + (_s._value.length) : stdgo.GoInt)) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L351"
        _e._writeMarkerHeader((196 : stdgo.GoUInt8), _markerlen);
        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L352"
        for (_i => _s in _specs) {
            //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L353"
            _e._writeByte((stdgo.Go.str(0, 16, 1, 17) : stdgo.GoString)[(_i : stdgo.GoInt)]);
            //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L354"
            _e._write((_s._count.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L355"
            _e._write(_s._value);
        };
    }
    @:keep
    @:tdfield
    static public function _writeSOF0( _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_encoder.T_encoder>, _size:stdgo._internal.image.Image_point.Point, _nComponent:stdgo.GoInt):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_encoder.T_encoder> = _e;
        var _markerlen = ((8 : stdgo.GoInt) + ((3 : stdgo.GoInt) * _nComponent : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L317"
        _e._writeMarkerHeader((192 : stdgo.GoUInt8), _markerlen);
        (@:checkr _e ?? throw "null pointer dereference")._buf[(0 : stdgo.GoInt)] = (8 : stdgo.GoUInt8);
        (@:checkr _e ?? throw "null pointer dereference")._buf[(1 : stdgo.GoInt)] = ((_size.y >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
        (@:checkr _e ?? throw "null pointer dereference")._buf[(2 : stdgo.GoInt)] = ((_size.y & (255 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
        (@:checkr _e ?? throw "null pointer dereference")._buf[(3 : stdgo.GoInt)] = ((_size.x >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
        (@:checkr _e ?? throw "null pointer dereference")._buf[(4 : stdgo.GoInt)] = ((_size.x & (255 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
        (@:checkr _e ?? throw "null pointer dereference")._buf[(5 : stdgo.GoInt)] = (_nComponent : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L324"
        if (_nComponent == ((1 : stdgo.GoInt))) {
            (@:checkr _e ?? throw "null pointer dereference")._buf[(6 : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
            (@:checkr _e ?? throw "null pointer dereference")._buf[(7 : stdgo.GoInt)] = (17 : stdgo.GoUInt8);
            (@:checkr _e ?? throw "null pointer dereference")._buf[(8 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        } else {
            //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L330"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < _nComponent : Bool)) {
                    (@:checkr _e ?? throw "null pointer dereference")._buf[(((3 : stdgo.GoInt) * _i : stdgo.GoInt) + (6 : stdgo.GoInt) : stdgo.GoInt)] = ((_i + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
(@:checkr _e ?? throw "null pointer dereference")._buf[(((3 : stdgo.GoInt) * _i : stdgo.GoInt) + (7 : stdgo.GoInt) : stdgo.GoInt)] = (stdgo.Go.str("\"", 17, 17) : stdgo.GoString)[(_i : stdgo.GoInt)];
(@:checkr _e ?? throw "null pointer dereference")._buf[(((3 : stdgo.GoInt) * _i : stdgo.GoInt) + (8 : stdgo.GoInt) : stdgo.GoInt)] = (stdgo.Go.str(0, 1, 1) : stdgo.GoString)[(_i : stdgo.GoInt)];
                    _i++;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L337"
        _e._write(((@:checkr _e ?? throw "null pointer dereference")._buf.__slice__(0, (((3 : stdgo.GoInt) * ((_nComponent - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) + (9 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    @:tdfield
    static public function _writeDQT( _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_encoder.T_encoder>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_encoder.T_encoder> = _e;
        {};
        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L307"
        _e._writeMarkerHeader((219 : stdgo.GoUInt8), (132 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L308"
        for (_i => _ in (@:checkr _e ?? throw "null pointer dereference")._quant.__copy__()) {
            //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L309"
            _e._writeByte((_i : stdgo.GoUInt8));
            //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L310"
            _e._write(((@:checkr _e ?? throw "null pointer dereference")._quant[(_i : stdgo.GoInt)].__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        };
    }
    @:keep
    @:tdfield
    static public function _writeMarkerHeader( _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_encoder.T_encoder>, _marker:stdgo.GoUInt8, _markerlen:stdgo.GoInt):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_encoder.T_encoder> = _e;
        (@:checkr _e ?? throw "null pointer dereference")._buf[(0 : stdgo.GoInt)] = (255 : stdgo.GoUInt8);
        (@:checkr _e ?? throw "null pointer dereference")._buf[(1 : stdgo.GoInt)] = _marker;
        (@:checkr _e ?? throw "null pointer dereference")._buf[(2 : stdgo.GoInt)] = ((_markerlen >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
        (@:checkr _e ?? throw "null pointer dereference")._buf[(3 : stdgo.GoInt)] = ((_markerlen & (255 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L301"
        _e._write(((@:checkr _e ?? throw "null pointer dereference")._buf.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    @:tdfield
    static public function _emitHuffRLE( _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_encoder.T_encoder>, _h:stdgo._internal.image.jpeg.Jpeg_t_huffindex.T_huffIndex, _runLength:stdgo.GoInt32, _value:stdgo.GoInt32):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_encoder.T_encoder> = _e;
        var __0 = (_value : stdgo.GoInt32), __1 = (_value : stdgo.GoInt32);
var _b = __1, _a = __0;
        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L280"
        if ((_a < (0 : stdgo.GoInt32) : Bool)) {
            {
                final __tmp__0 = -_value;
                final __tmp__1 = (_value - (1 : stdgo.GoInt32) : stdgo.GoInt32);
                _a = @:binopAssign __tmp__0;
                _b = @:binopAssign __tmp__1;
            };
        };
        var _nBits:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L284"
        if ((_a < (256 : stdgo.GoInt32) : Bool)) {
            _nBits = (stdgo._internal.image.jpeg.Jpeg__bitcount._bitCount[(_a : stdgo.GoInt)] : stdgo.GoUInt32);
        } else {
            _nBits = ((8u32 : stdgo.GoUInt32) + (stdgo._internal.image.jpeg.Jpeg__bitcount._bitCount[((_a >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
        };
        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L289"
        _e._emitHuff(_h, ((_runLength << (4i64 : stdgo.GoUInt64) : stdgo.GoInt32) | (_nBits : stdgo.GoInt32) : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L290"
        if ((_nBits > (0u32 : stdgo.GoUInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L291"
            _e._emit(((_b : stdgo.GoUInt32) & ((((1u32 : stdgo.GoUInt32) << _nBits : stdgo.GoUInt32) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.GoUInt32), _nBits);
        };
    }
    @:keep
    @:tdfield
    static public function _emitHuff( _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_encoder.T_encoder>, _h:stdgo._internal.image.jpeg.Jpeg_t_huffindex.T_huffIndex, _value:stdgo.GoInt32):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_encoder.T_encoder> = _e;
        var _x = (stdgo._internal.image.jpeg.Jpeg__thehuffmanlut._theHuffmanLUT[(_h : stdgo.GoInt)][(_value : stdgo.GoInt)] : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L273"
        _e._emit((_x & (16777215u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (_x >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32));
    }
    @:keep
    @:tdfield
    static public function _emit( _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_encoder.T_encoder>, _bits:stdgo.GoUInt32, _nBits:stdgo.GoUInt32):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_encoder.T_encoder> = _e;
        _nBits = (_nBits + ((@:checkr _e ?? throw "null pointer dereference")._nBits) : stdgo.GoUInt32);
        _bits = (_bits << (((32u32 : stdgo.GoUInt32) - _nBits : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _bits = (_bits | ((@:checkr _e ?? throw "null pointer dereference")._bits) : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L258"
        while ((_nBits >= (8u32 : stdgo.GoUInt32) : Bool)) {
            var _b = ((_bits >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L260"
            _e._writeByte(_b);
            //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L261"
            if (_b == ((255 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L262"
                _e._writeByte((0 : stdgo.GoUInt8));
            };
            _bits = (_bits << ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
            _nBits = (_nBits - ((8u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
        };
        {
            final __tmp__0 = _bits;
            final __tmp__1 = _nBits;
            (@:checkr _e ?? throw "null pointer dereference")._bits = @:binopAssign __tmp__0;
            (@:checkr _e ?? throw "null pointer dereference")._nBits = @:binopAssign __tmp__1;
        };
    }
    @:keep
    @:tdfield
    static public function _writeByte( _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_encoder.T_encoder>, _b:stdgo.GoUInt8):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_encoder.T_encoder> = _e;
        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L246"
        if ((@:checkr _e ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L247"
            return;
        };
        (@:checkr _e ?? throw "null pointer dereference")._err = (@:checkr _e ?? throw "null pointer dereference")._w.writeByte(_b);
    }
    @:keep
    @:tdfield
    static public function _write( _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_encoder.T_encoder>, _p:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_encoder.T_encoder> = _e;
        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L239"
        if ((@:checkr _e ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L240"
            return;
        };
        {
            var __tmp__ = (@:checkr _e ?? throw "null pointer dereference")._w.write(_p);
            (@:checkr _e ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
        };
    }
    @:keep
    @:tdfield
    static public function _flush( _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_encoder.T_encoder>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_t_encoder.T_encoder> = _e;
        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L232"
        if ((@:checkr _e ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/image/jpeg/writer.go#L233"
            return;
        };
        (@:checkr _e ?? throw "null pointer dereference")._err = (@:checkr _e ?? throw "null pointer dereference")._w.flush();
    }
}
