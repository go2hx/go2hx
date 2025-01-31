package stdgo._internal.image.jpeg;
import stdgo._internal.image.color.Color;
import stdgo._internal.image.Image;
import stdgo._internal.errors.Errors;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.io.Io;
import stdgo._internal.image.internal.imageutil.Imageutil;
@:keep @:allow(stdgo._internal.image.jpeg.Jpeg.T_encoder_asInterface) class T_encoder_static_extension {
    @:keep
    @:tdfield
    static public function _writeSOS( _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder>, _m:stdgo._internal.image.Image_Image.Image):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder> = _e;
        {
            final __type__ = _m;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_Gray.Gray>))) {
                @:check2r _e._write(stdgo._internal.image.jpeg.Jpeg__sosHeaderY._sosHeaderY);
            } else {
                @:check2r _e._write(stdgo._internal.image.jpeg.Jpeg__sosHeaderYCbCr._sosHeaderYCbCr);
            };
        };
        var __0:stdgo._internal.image.jpeg.Jpeg_T_block.T_block = new stdgo._internal.image.jpeg.Jpeg_T_block.T_block(64, 64, ...[for (i in 0 ... 64) (0 : stdgo.GoInt32)]), __1:stdgo.GoArray<stdgo._internal.image.jpeg.Jpeg_T_block.T_block> = new stdgo.GoArray<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>(4, 4, ...[for (i in 0 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) new stdgo._internal.image.jpeg.Jpeg_T_block.T_block(64, 64, ...[for (i in 0 ... 64) (0 : stdgo.GoInt32)])]), __2:stdgo.GoArray<stdgo._internal.image.jpeg.Jpeg_T_block.T_block> = new stdgo.GoArray<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>(4, 4, ...[for (i in 0 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) new stdgo._internal.image.jpeg.Jpeg_T_block.T_block(64, 64, ...[for (i in 0 ... 64) (0 : stdgo.GoInt32)])]), __3:stdgo.GoInt32 = (0 : stdgo.GoInt32), __4:stdgo.GoInt32 = (0 : stdgo.GoInt32), __5:stdgo.GoInt32 = (0 : stdgo.GoInt32);
var _prevDCCr = __5, _prevDCCb = __4, _prevDCY = __3, _cr = __2, _cb = __1, _b = __0;
        var _bounds = (_m.bounds()?.__copy__() : stdgo._internal.image.Image_Rectangle.Rectangle);
        {
            final __type__ = _m;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_Gray.Gray>))) {
                var _m:stdgo.Ref<stdgo._internal.image.Image_Gray.Gray> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_Gray.Gray>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image_Gray.Gray>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image_Gray.Gray>) : __type__.__underlying__().value;
                {
                    var _y = (_bounds.min.y : stdgo.GoInt);
                    while ((_y < _bounds.max.y : Bool)) {
                        {
                            var _x = (_bounds.min.x : stdgo.GoInt);
                            while ((_x < _bounds.max.x : Bool)) {
                                var _p = (stdgo._internal.image.Image_pt.pt(_x, _y).__copy__() : stdgo._internal.image.Image_Point.Point);
stdgo._internal.image.jpeg.Jpeg__grayToY._grayToY(_m, _p.__copy__(), (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>));
_prevDCY = @:check2r _e._writeBlock((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>), (0 : stdgo._internal.image.jpeg.Jpeg_T_quantIndex.T_quantIndex), _prevDCY);
                                _x = (_x + ((8 : stdgo.GoInt)) : stdgo.GoInt);
                            };
                        };
                        _y = (_y + ((8 : stdgo.GoInt)) : stdgo.GoInt);
                    };
                };
            } else {
                var _m:stdgo._internal.image.Image_Image.Image = __type__ == null ? (null : stdgo._internal.image.Image_Image.Image) : cast __type__;
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>)) : stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>), _1 : false };
                }, _rgba = __tmp__._0, __0 = __tmp__._1;
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr>)) : stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr>), _1 : false };
                }, _ycbcr = __tmp__._0, __1 = __tmp__._1;
                {
                    var _y = (_bounds.min.y : stdgo.GoInt);
                    while ((_y < _bounds.max.y : Bool)) {
                        {
                            var _x = (_bounds.min.x : stdgo.GoInt);
                            while ((_x < _bounds.max.x : Bool)) {
                                {
                                    var _i = (0 : stdgo.GoInt);
                                    while ((_i < (4 : stdgo.GoInt) : Bool)) {
                                        var _xOff = (((_i & (1 : stdgo.GoInt) : stdgo.GoInt)) * (8 : stdgo.GoInt) : stdgo.GoInt);
var _yOff = (((_i & (2 : stdgo.GoInt) : stdgo.GoInt)) * (4 : stdgo.GoInt) : stdgo.GoInt);
var _p = (stdgo._internal.image.Image_pt.pt((_x + _xOff : stdgo.GoInt), (_y + _yOff : stdgo.GoInt)).__copy__() : stdgo._internal.image.Image_Point.Point);
if ((_rgba != null && ((_rgba : Dynamic).__nil__ == null || !(_rgba : Dynamic).__nil__))) {
                                            stdgo._internal.image.jpeg.Jpeg__rgbaToYCbCr._rgbaToYCbCr(_rgba, _p.__copy__(), (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>), (stdgo.Go.setRef(_cb[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>), (stdgo.Go.setRef(_cr[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>));
                                        } else if ((_ycbcr != null && ((_ycbcr : Dynamic).__nil__ == null || !(_ycbcr : Dynamic).__nil__))) {
                                            stdgo._internal.image.jpeg.Jpeg__yCbCrToYCbCr._yCbCrToYCbCr(_ycbcr, _p.__copy__(), (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>), (stdgo.Go.setRef(_cb[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>), (stdgo.Go.setRef(_cr[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>));
                                        } else {
                                            stdgo._internal.image.jpeg.Jpeg__toYCbCr._toYCbCr(_m, _p.__copy__(), (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>), (stdgo.Go.setRef(_cb[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>), (stdgo.Go.setRef(_cr[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>));
                                        };
_prevDCY = @:check2r _e._writeBlock((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>), (0 : stdgo._internal.image.jpeg.Jpeg_T_quantIndex.T_quantIndex), _prevDCY);
                                        _i++;
                                    };
                                };
stdgo._internal.image.jpeg.Jpeg__scale._scale((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>), (stdgo.Go.setRef(_cb) : stdgo.Ref<stdgo.GoArray<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>>));
_prevDCCb = @:check2r _e._writeBlock((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>), (1 : stdgo._internal.image.jpeg.Jpeg_T_quantIndex.T_quantIndex), _prevDCCb);
stdgo._internal.image.jpeg.Jpeg__scale._scale((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>), (stdgo.Go.setRef(_cr) : stdgo.Ref<stdgo.GoArray<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>>));
_prevDCCr = @:check2r _e._writeBlock((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>), (1 : stdgo._internal.image.jpeg.Jpeg_T_quantIndex.T_quantIndex), _prevDCCr);
                                _x = (_x + ((16 : stdgo.GoInt)) : stdgo.GoInt);
                            };
                        };
                        _y = (_y + ((16 : stdgo.GoInt)) : stdgo.GoInt);
                    };
                };
            };
        };
        @:check2r _e._emit((127u32 : stdgo.GoUInt32), (7u32 : stdgo.GoUInt32));
    }
    @:keep
    @:tdfield
    static public function _writeBlock( _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder>, _b:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>, _q:stdgo._internal.image.jpeg.Jpeg_T_quantIndex.T_quantIndex, _prevDC:stdgo.GoInt32):stdgo.GoInt32 {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder> = _e;
        stdgo._internal.image.jpeg.Jpeg__fdct._fdct(_b);
        var _dc = (stdgo._internal.image.jpeg.Jpeg__div._div(_b[(0 : stdgo.GoInt)], ((8 : stdgo.GoInt32) * ((@:checkr _e ?? throw "null pointer dereference")._quant[(_q : stdgo.GoInt)][(0 : stdgo.GoInt)] : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32);
        @:check2r _e._emitHuffRLE(((((2 : stdgo._internal.image.jpeg.Jpeg_T_quantIndex.T_quantIndex) * _q : stdgo._internal.image.jpeg.Jpeg_T_quantIndex.T_quantIndex) + (0 : stdgo._internal.image.jpeg.Jpeg_T_quantIndex.T_quantIndex) : stdgo._internal.image.jpeg.Jpeg_T_quantIndex.T_quantIndex) : stdgo._internal.image.jpeg.Jpeg_T_huffIndex.T_huffIndex), (0 : stdgo.GoInt32), (_dc - _prevDC : stdgo.GoInt32));
        var __0 = ((((2 : stdgo._internal.image.jpeg.Jpeg_T_quantIndex.T_quantIndex) * _q : stdgo._internal.image.jpeg.Jpeg_T_quantIndex.T_quantIndex) + (1 : stdgo._internal.image.jpeg.Jpeg_T_quantIndex.T_quantIndex) : stdgo._internal.image.jpeg.Jpeg_T_quantIndex.T_quantIndex) : stdgo._internal.image.jpeg.Jpeg_T_huffIndex.T_huffIndex), __1 = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
var _runLength = __1, _h = __0;
        {
            var _zig = (1 : stdgo.GoInt);
            while ((_zig < (64 : stdgo.GoInt) : Bool)) {
                var _ac = (stdgo._internal.image.jpeg.Jpeg__div._div(_b[(stdgo._internal.image.jpeg.Jpeg__unzig._unzig[(_zig : stdgo.GoInt)] : stdgo.GoInt)], ((8 : stdgo.GoInt32) * ((@:checkr _e ?? throw "null pointer dereference")._quant[(_q : stdgo.GoInt)][(_zig : stdgo.GoInt)] : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32);
if (_ac == ((0 : stdgo.GoInt32))) {
                    _runLength++;
                } else {
                    while ((_runLength > (15 : stdgo.GoInt32) : Bool)) {
                        @:check2r _e._emitHuff(_h, (240 : stdgo.GoInt32));
                        _runLength = (_runLength - ((16 : stdgo.GoInt32)) : stdgo.GoInt32);
                    };
                    @:check2r _e._emitHuffRLE(_h, _runLength, _ac);
                    _runLength = (0 : stdgo.GoInt32);
                };
                _zig++;
            };
        };
        if ((_runLength > (0 : stdgo.GoInt32) : Bool)) {
            @:check2r _e._emitHuff(_h, (0 : stdgo.GoInt32));
        };
        return _dc;
    }
    @:keep
    @:tdfield
    static public function _writeDHT( _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder>, _nComponent:stdgo.GoInt):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder> = _e;
        var _markerlen = (2 : stdgo.GoInt);
        var _specs = (stdgo._internal.image.jpeg.Jpeg__theHuffmanSpec._theHuffmanSpec.__slice__(0) : stdgo.Slice<stdgo._internal.image.jpeg.Jpeg_T_huffmanSpec.T_huffmanSpec>);
        if (_nComponent == ((1 : stdgo.GoInt))) {
            _specs = (_specs.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.image.jpeg.Jpeg_T_huffmanSpec.T_huffmanSpec>);
        };
        for (__0 => _s in _specs) {
            _markerlen = (_markerlen + (((17 : stdgo.GoInt) + (_s._value.length) : stdgo.GoInt)) : stdgo.GoInt);
        };
        @:check2r _e._writeMarkerHeader((196 : stdgo.GoUInt8), _markerlen);
        for (_i => _s in _specs) {
            @:check2r _e._writeByte(stdgo.Go.str(0, 16, 1, 17)[(_i : stdgo.GoInt)]);
            @:check2r _e._write((_s._count.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
            @:check2r _e._write(_s._value);
        };
    }
    @:keep
    @:tdfield
    static public function _writeSOF0( _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder>, _size:stdgo._internal.image.Image_Point.Point, _nComponent:stdgo.GoInt):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder> = _e;
        var _markerlen = ((8 : stdgo.GoInt) + ((3 : stdgo.GoInt) * _nComponent : stdgo.GoInt) : stdgo.GoInt);
        @:check2r _e._writeMarkerHeader((192 : stdgo.GoUInt8), _markerlen);
        (@:checkr _e ?? throw "null pointer dereference")._buf[(0 : stdgo.GoInt)] = (8 : stdgo.GoUInt8);
        (@:checkr _e ?? throw "null pointer dereference")._buf[(1 : stdgo.GoInt)] = ((_size.y >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
        (@:checkr _e ?? throw "null pointer dereference")._buf[(2 : stdgo.GoInt)] = ((_size.y & (255 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
        (@:checkr _e ?? throw "null pointer dereference")._buf[(3 : stdgo.GoInt)] = ((_size.x >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
        (@:checkr _e ?? throw "null pointer dereference")._buf[(4 : stdgo.GoInt)] = ((_size.x & (255 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
        (@:checkr _e ?? throw "null pointer dereference")._buf[(5 : stdgo.GoInt)] = (_nComponent : stdgo.GoUInt8);
        if (_nComponent == ((1 : stdgo.GoInt))) {
            (@:checkr _e ?? throw "null pointer dereference")._buf[(6 : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
            (@:checkr _e ?? throw "null pointer dereference")._buf[(7 : stdgo.GoInt)] = (17 : stdgo.GoUInt8);
            (@:checkr _e ?? throw "null pointer dereference")._buf[(8 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        } else {
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < _nComponent : Bool)) {
                    (@:checkr _e ?? throw "null pointer dereference")._buf[(((3 : stdgo.GoInt) * _i : stdgo.GoInt) + (6 : stdgo.GoInt) : stdgo.GoInt)] = ((_i + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
(@:checkr _e ?? throw "null pointer dereference")._buf[(((3 : stdgo.GoInt) * _i : stdgo.GoInt) + (7 : stdgo.GoInt) : stdgo.GoInt)] = stdgo.Go.str("\"", 17, 17)[(_i : stdgo.GoInt)];
(@:checkr _e ?? throw "null pointer dereference")._buf[(((3 : stdgo.GoInt) * _i : stdgo.GoInt) + (8 : stdgo.GoInt) : stdgo.GoInt)] = stdgo.Go.str(0, 1, 1)[(_i : stdgo.GoInt)];
                    _i++;
                };
            };
        };
        @:check2r _e._write(((@:checkr _e ?? throw "null pointer dereference")._buf.__slice__(0, (((3 : stdgo.GoInt) * ((_nComponent - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) + (9 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    @:tdfield
    static public function _writeDQT( _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder> = _e;
        {};
        @:check2r _e._writeMarkerHeader((219 : stdgo.GoUInt8), (132 : stdgo.GoInt));
        for (_i => _ in (@:checkr _e ?? throw "null pointer dereference")._quant) {
            @:check2r _e._writeByte((_i : stdgo.GoUInt8));
            @:check2r _e._write(((@:checkr _e ?? throw "null pointer dereference")._quant[(_i : stdgo.GoInt)].__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        };
    }
    @:keep
    @:tdfield
    static public function _writeMarkerHeader( _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder>, _marker:stdgo.GoUInt8, _markerlen:stdgo.GoInt):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder> = _e;
        (@:checkr _e ?? throw "null pointer dereference")._buf[(0 : stdgo.GoInt)] = (255 : stdgo.GoUInt8);
        (@:checkr _e ?? throw "null pointer dereference")._buf[(1 : stdgo.GoInt)] = _marker;
        (@:checkr _e ?? throw "null pointer dereference")._buf[(2 : stdgo.GoInt)] = ((_markerlen >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
        (@:checkr _e ?? throw "null pointer dereference")._buf[(3 : stdgo.GoInt)] = ((_markerlen & (255 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
        @:check2r _e._write(((@:checkr _e ?? throw "null pointer dereference")._buf.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    @:tdfield
    static public function _emitHuffRLE( _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder>, _h:stdgo._internal.image.jpeg.Jpeg_T_huffIndex.T_huffIndex, _runLength:stdgo.GoInt32, _value:stdgo.GoInt32):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder> = _e;
        var __0 = (_value : stdgo.GoInt32), __1 = (_value : stdgo.GoInt32);
var _b = __1, _a = __0;
        if ((_a < (0 : stdgo.GoInt32) : Bool)) {
            {
                final __tmp__0 = -_value;
                final __tmp__1 = (_value - (1 : stdgo.GoInt32) : stdgo.GoInt32);
                _a = __tmp__0;
                _b = __tmp__1;
            };
        };
        var _nBits:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        if ((_a < (256 : stdgo.GoInt32) : Bool)) {
            _nBits = (stdgo._internal.image.jpeg.Jpeg__bitCount._bitCount[(_a : stdgo.GoInt)] : stdgo.GoUInt32);
        } else {
            _nBits = ((8u32 : stdgo.GoUInt32) + (stdgo._internal.image.jpeg.Jpeg__bitCount._bitCount[((_a >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
        };
        @:check2r _e._emitHuff(_h, ((_runLength << (4i64 : stdgo.GoUInt64) : stdgo.GoInt32) | (_nBits : stdgo.GoInt32) : stdgo.GoInt32));
        if ((_nBits > (0u32 : stdgo.GoUInt32) : Bool)) {
            @:check2r _e._emit(((_b : stdgo.GoUInt32) & ((((1u32 : stdgo.GoUInt32) << _nBits : stdgo.GoUInt32) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.GoUInt32), _nBits);
        };
    }
    @:keep
    @:tdfield
    static public function _emitHuff( _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder>, _h:stdgo._internal.image.jpeg.Jpeg_T_huffIndex.T_huffIndex, _value:stdgo.GoInt32):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder> = _e;
        var _x = (stdgo._internal.image.jpeg.Jpeg__theHuffmanLUT._theHuffmanLUT[(_h : stdgo.GoInt)][(_value : stdgo.GoInt)] : stdgo.GoUInt32);
        @:check2r _e._emit((_x & (16777215u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (_x >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32));
    }
    @:keep
    @:tdfield
    static public function _emit( _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder>, _bits:stdgo.GoUInt32, _nBits:stdgo.GoUInt32):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder> = _e;
        _nBits = (_nBits + ((@:checkr _e ?? throw "null pointer dereference")._nBits) : stdgo.GoUInt32);
        _bits = (_bits << (((32u32 : stdgo.GoUInt32) - _nBits : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _bits = (_bits | ((@:checkr _e ?? throw "null pointer dereference")._bits) : stdgo.GoUInt32);
        while ((_nBits >= (8u32 : stdgo.GoUInt32) : Bool)) {
            var _b = ((_bits >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
            @:check2r _e._writeByte(_b);
            if (_b == ((255 : stdgo.GoUInt8))) {
                @:check2r _e._writeByte((0 : stdgo.GoUInt8));
            };
            _bits = (_bits << ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
            _nBits = (_nBits - ((8u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
        };
        {
            final __tmp__0 = _bits;
            final __tmp__1 = _nBits;
            (@:checkr _e ?? throw "null pointer dereference")._bits = __tmp__0;
            (@:checkr _e ?? throw "null pointer dereference")._nBits = __tmp__1;
        };
    }
    @:keep
    @:tdfield
    static public function _writeByte( _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder>, _b:stdgo.GoUInt8):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder> = _e;
        if ((@:checkr _e ?? throw "null pointer dereference")._err != null) {
            return;
        };
        (@:checkr _e ?? throw "null pointer dereference")._err = (@:checkr _e ?? throw "null pointer dereference")._w.writeByte(_b);
    }
    @:keep
    @:tdfield
    static public function _write( _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder>, _p:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder> = _e;
        if ((@:checkr _e ?? throw "null pointer dereference")._err != null) {
            return;
        };
        {
            var __tmp__ = (@:checkr _e ?? throw "null pointer dereference")._w.write(_p);
            (@:checkr _e ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
        };
    }
    @:keep
    @:tdfield
    static public function _flush( _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder> = _e;
        if ((@:checkr _e ?? throw "null pointer dereference")._err != null) {
            return;
        };
        (@:checkr _e ?? throw "null pointer dereference")._err = (@:checkr _e ?? throw "null pointer dereference")._w.flush();
    }
}
