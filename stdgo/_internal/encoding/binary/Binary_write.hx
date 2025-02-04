package stdgo._internal.encoding.binary;
function write(_w:stdgo._internal.io.Io_writer.Writer, _order:stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder, _data:stdgo.AnyInterface):stdgo.Error {
        {
            var _n = (stdgo._internal.encoding.binary.Binary__intdatasize._intDataSize(_data) : stdgo.GoInt);
            if (_n != ((0 : stdgo.GoInt))) {
                var _bs = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                {
                    final __type__ = _data;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<Bool>))) {
                        var _v:stdgo.Pointer<Bool> = __type__ == null ? (null : stdgo.Pointer<Bool>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<Bool>) : __type__ == null ? (null : stdgo.Pointer<Bool>) : __type__.__underlying__().value;
                        if (_v.value) {
                            _bs[(0 : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
                        } else {
                            _bs[(0 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : Bool))) {
                        var _v:Bool = __type__ == null ? false : __type__.__underlying__() == null ? false : __type__ == null ? false : __type__.__underlying__().value;
                        if (_v) {
                            _bs[(0 : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
                        } else {
                            _bs[(0 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<Bool>))) {
                        var _v:stdgo.Slice<Bool> = __type__ == null ? (null : stdgo.Slice<Bool>) : __type__.__underlying__() == null ? (null : stdgo.Slice<Bool>) : __type__ == null ? (null : stdgo.Slice<Bool>) : __type__.__underlying__().value;
                        for (_i => _x in _v) {
                            if (_x) {
                                _bs[(_i : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
                            } else {
                                _bs[(_i : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                            };
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt8>))) {
                        var _v:stdgo.Pointer<stdgo.GoInt8> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt8>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoInt8>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt8>) : __type__.__underlying__().value;
                        _bs[(0 : stdgo.GoInt)] = (_v.value : stdgo.GoUInt8);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt8))) {
                        var _v:stdgo.GoInt8 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                        _bs[(0 : stdgo.GoInt)] = (_v : stdgo.GoUInt8);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoInt8>))) {
                        var _v:stdgo.Slice<stdgo.GoInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoInt8>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoInt8>) : __type__.__underlying__().value;
                        for (_i => _x in _v) {
                            _bs[(_i : stdgo.GoInt)] = (_x : stdgo.GoUInt8);
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt8>))) {
                        var _v:stdgo.Pointer<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoUInt8>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt8>) : __type__.__underlying__().value;
                        _bs[(0 : stdgo.GoInt)] = _v.value;
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt8))) {
                        var _v:stdgo.GoUInt8 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                        _bs[(0 : stdgo.GoInt)] = _v;
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt8>))) {
                        var _v:stdgo.Slice<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__().value;
                        _bs = _v;
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt16>))) {
                        var _v:stdgo.Pointer<stdgo.GoInt16> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt16>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoInt16>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt16>) : __type__.__underlying__().value;
                        _order.putUint16(_bs, (_v.value : stdgo.GoUInt16));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt16))) {
                        var _v:stdgo.GoInt16 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                        _order.putUint16(_bs, (_v : stdgo.GoUInt16));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoInt16>))) {
                        var _v:stdgo.Slice<stdgo.GoInt16> = __type__ == null ? (null : stdgo.Slice<stdgo.GoInt16>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoInt16>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoInt16>) : __type__.__underlying__().value;
                        for (_i => _x in _v) {
                            _order.putUint16((_bs.__slice__(((2 : stdgo.GoInt) * _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_x : stdgo.GoUInt16));
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt16>))) {
                        var _v:stdgo.Pointer<stdgo.GoUInt16> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt16>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoUInt16>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt16>) : __type__.__underlying__().value;
                        _order.putUint16(_bs, _v.value);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt16))) {
                        var _v:stdgo.GoUInt16 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                        _order.putUint16(_bs, _v);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt16>))) {
                        var _v:stdgo.Slice<stdgo.GoUInt16> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt16>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt16>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt16>) : __type__.__underlying__().value;
                        for (_i => _x in _v) {
                            _order.putUint16((_bs.__slice__(((2 : stdgo.GoInt) * _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x);
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt32>))) {
                        var _v:stdgo.Pointer<stdgo.GoInt32> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt32>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoInt32>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt32>) : __type__.__underlying__().value;
                        _order.putUint32(_bs, (_v.value : stdgo.GoUInt32));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt32))) {
                        var _v:stdgo.GoInt32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                        _order.putUint32(_bs, (_v : stdgo.GoUInt32));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoInt32>))) {
                        var _v:stdgo.Slice<stdgo.GoInt32> = __type__ == null ? (null : stdgo.Slice<stdgo.GoInt32>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoInt32>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoInt32>) : __type__.__underlying__().value;
                        for (_i => _x in _v) {
                            _order.putUint32((_bs.__slice__(((4 : stdgo.GoInt) * _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_x : stdgo.GoUInt32));
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt32>))) {
                        var _v:stdgo.Pointer<stdgo.GoUInt32> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt32>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoUInt32>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt32>) : __type__.__underlying__().value;
                        _order.putUint32(_bs, _v.value);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt32))) {
                        var _v:stdgo.GoUInt32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                        _order.putUint32(_bs, _v);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt32>))) {
                        var _v:stdgo.Slice<stdgo.GoUInt32> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt32>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt32>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt32>) : __type__.__underlying__().value;
                        for (_i => _x in _v) {
                            _order.putUint32((_bs.__slice__(((4 : stdgo.GoInt) * _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x);
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt64>))) {
                        var _v:stdgo.Pointer<stdgo.GoInt64> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt64>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoInt64>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt64>) : __type__.__underlying__().value;
                        _order.putUint64(_bs, (_v.value : stdgo.GoUInt64));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt64))) {
                        var _v:stdgo.GoInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                        _order.putUint64(_bs, (_v : stdgo.GoUInt64));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoInt64>))) {
                        var _v:stdgo.Slice<stdgo.GoInt64> = __type__ == null ? (null : stdgo.Slice<stdgo.GoInt64>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoInt64>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoInt64>) : __type__.__underlying__().value;
                        for (_i => _x in _v) {
                            _order.putUint64((_bs.__slice__(((8 : stdgo.GoInt) * _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_x : stdgo.GoUInt64));
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt64>))) {
                        var _v:stdgo.Pointer<stdgo.GoUInt64> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt64>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoUInt64>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt64>) : __type__.__underlying__().value;
                        _order.putUint64(_bs, _v.value);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt64))) {
                        var _v:stdgo.GoUInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                        _order.putUint64(_bs, _v);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt64>))) {
                        var _v:stdgo.Slice<stdgo.GoUInt64> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt64>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt64>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt64>) : __type__.__underlying__().value;
                        for (_i => _x in _v) {
                            _order.putUint64((_bs.__slice__(((8 : stdgo.GoInt) * _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x);
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoFloat32>))) {
                        var _v:stdgo.Pointer<stdgo.GoFloat32> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoFloat32>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoFloat32>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoFloat32>) : __type__.__underlying__().value;
                        _order.putUint32(_bs, stdgo._internal.math.Math_float32bits.float32bits(_v.value));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoFloat32))) {
                        var _v:stdgo.GoFloat32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                        _order.putUint32(_bs, stdgo._internal.math.Math_float32bits.float32bits(_v));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoFloat32>))) {
                        var _v:stdgo.Slice<stdgo.GoFloat32> = __type__ == null ? (null : stdgo.Slice<stdgo.GoFloat32>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoFloat32>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoFloat32>) : __type__.__underlying__().value;
                        for (_i => _x in _v) {
                            _order.putUint32((_bs.__slice__(((4 : stdgo.GoInt) * _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.math.Math_float32bits.float32bits(_x));
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoFloat64>))) {
                        var _v:stdgo.Pointer<stdgo.GoFloat64> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoFloat64>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoFloat64>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoFloat64>) : __type__.__underlying__().value;
                        _order.putUint64(_bs, stdgo._internal.math.Math_float64bits.float64bits(_v.value));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoFloat64))) {
                        var _v:stdgo.GoFloat64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                        _order.putUint64(_bs, stdgo._internal.math.Math_float64bits.float64bits(_v));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoFloat64>))) {
                        var _v:stdgo.Slice<stdgo.GoFloat64> = __type__ == null ? (null : stdgo.Slice<stdgo.GoFloat64>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoFloat64>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoFloat64>) : __type__.__underlying__().value;
                        for (_i => _x in _v) {
                            _order.putUint64((_bs.__slice__(((8 : stdgo.GoInt) * _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.math.Math_float64bits.float64bits(_x));
                        };
                    };
                };
                var __tmp__ = _w.write(_bs), __8:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                return _err;
            };
        };
        var _v = (stdgo._internal.reflect.Reflect_indirect.indirect(stdgo._internal.reflect.Reflect_valueof.valueOf(_data)?.__copy__())?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _size = (stdgo._internal.encoding.binary.Binary__datasize._dataSize(_v?.__copy__()) : stdgo.GoInt);
        if ((_size < (0 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_((("binary.Write: some values are not fixed-sized in type " : stdgo.GoString) + (stdgo._internal.reflect.Reflect_typeof.typeOf(_data).string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _e = (stdgo.Go.setRef(({ _order : _order, _buf : _buf } : stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder)) : stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_encoder.T_encoder>);
        @:check2r _e._value(_v?.__copy__());
        var __tmp__ = _w.write(_buf), __8:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
