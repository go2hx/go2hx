package stdgo._internal.debug.gosym;
function _walksymtab(_data:stdgo.Slice<stdgo.GoUInt8>, _fn:stdgo._internal.debug.gosym.Gosym_t_sym.T_sym -> stdgo.Error):stdgo.Error {
        if ((_data.length) == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Error);
        };
        var _order:stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder = stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian);
        var _newTable = (false : Bool);
        if (stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_data, stdgo._internal.debug.gosym.Gosym__oldlittleendiansymtab._oldLittleEndianSymtab)) {
            _data = (_data.__slice__((6 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _order = stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian);
        } else if (stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_data, stdgo._internal.debug.gosym.Gosym__bigendiansymtab._bigEndianSymtab)) {
            _newTable = true;
        } else if (stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_data, stdgo._internal.debug.gosym.Gosym__littleendiansymtab._littleEndianSymtab)) {
            _newTable = true;
            _order = stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian);
        };
        var _ptrsz:stdgo.GoInt = (0 : stdgo.GoInt);
        if (_newTable) {
            if (((_data.length) < (8 : stdgo.GoInt) : Bool)) {
                return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.gosym.Gosym_decodingerror.DecodingError((_data.length), ("unexpected EOF" : stdgo.GoString), (null : stdgo.AnyInterface)) : stdgo._internal.debug.gosym.Gosym_decodingerror.DecodingError)) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_decodingerror.DecodingError>));
            };
            _ptrsz = (_data[(7 : stdgo.GoInt)] : stdgo.GoInt);
            if (((_ptrsz != (4 : stdgo.GoInt)) && (_ptrsz != (8 : stdgo.GoInt)) : Bool)) {
                return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.gosym.Gosym_decodingerror.DecodingError((7 : stdgo.GoInt), ("invalid pointer size" : stdgo.GoString), stdgo.Go.toInterface(_ptrsz)) : stdgo._internal.debug.gosym.Gosym_decodingerror.DecodingError)) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_decodingerror.DecodingError>));
            };
            _data = (_data.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _s:stdgo._internal.debug.gosym.Gosym_t_sym.T_sym = ({} : stdgo._internal.debug.gosym.Gosym_t_sym.T_sym);
        var _p = _data;
        while (((_p.length) >= (4 : stdgo.GoInt) : Bool)) {
            var _typ:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
            if (_newTable) {
                _typ = (_p[(0 : stdgo.GoInt)] & (63 : stdgo.GoUInt8) : stdgo.GoUInt8);
                var _wideValue = ((_p[(0 : stdgo.GoInt)] & (64 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8)) : Bool);
                var _goType = ((_p[(0 : stdgo.GoInt)] & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8)) : Bool);
                if ((_typ < (26 : stdgo.GoUInt8) : Bool)) {
                    _typ = (_typ + ((65 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                } else {
                    _typ = (_typ + ((71 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                };
                _s._typ = _typ;
                _p = (_p.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                if (_wideValue) {
                    if (((_p.length) < _ptrsz : Bool)) {
                        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.gosym.Gosym_decodingerror.DecodingError((_data.length), ("unexpected EOF" : stdgo.GoString), (null : stdgo.AnyInterface)) : stdgo._internal.debug.gosym.Gosym_decodingerror.DecodingError)) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_decodingerror.DecodingError>));
                    };
                    if (_ptrsz == ((8 : stdgo.GoInt))) {
                        _s._value = _order.uint64((_p.__slice__((0 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                        _p = (_p.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    } else {
                        _s._value = (_order.uint32((_p.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt64);
                        _p = (_p.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    };
                } else {
                    _s._value = (0i64 : stdgo.GoUInt64);
                    var _shift = ((0u32 : stdgo.GoUInt) : stdgo.GoUInt);
                    while ((((_p.length) > (0 : stdgo.GoInt) : Bool) && ((_p[(0 : stdgo.GoInt)] & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != (0 : stdgo.GoUInt8)) : Bool)) {
                        _s._value = (_s._value | ((((_p[(0 : stdgo.GoInt)] & (127 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64) << _shift : stdgo.GoUInt64)) : stdgo.GoUInt64);
                        _shift = (_shift + ((7u32 : stdgo.GoUInt)) : stdgo.GoUInt);
                        _p = (_p.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    };
                    if ((_p.length) == ((0 : stdgo.GoInt))) {
                        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.gosym.Gosym_decodingerror.DecodingError((_data.length), ("unexpected EOF" : stdgo.GoString), (null : stdgo.AnyInterface)) : stdgo._internal.debug.gosym.Gosym_decodingerror.DecodingError)) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_decodingerror.DecodingError>));
                    };
                    _s._value = (_s._value | (((_p[(0 : stdgo.GoInt)] : stdgo.GoUInt64) << _shift : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _p = (_p.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                };
                if (_goType) {
                    if (((_p.length) < _ptrsz : Bool)) {
                        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.gosym.Gosym_decodingerror.DecodingError((_data.length), ("unexpected EOF" : stdgo.GoString), (null : stdgo.AnyInterface)) : stdgo._internal.debug.gosym.Gosym_decodingerror.DecodingError)) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_decodingerror.DecodingError>));
                    };
                    if (_ptrsz == ((8 : stdgo.GoInt))) {
                        _s._gotype = _order.uint64((_p.__slice__((0 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                        _p = (_p.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    } else {
                        _s._gotype = (_order.uint32((_p.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt64);
                        _p = (_p.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    };
                };
            } else {
                _s._value = (_order.uint32((_p.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt64);
                if (((_p.length) < (5 : stdgo.GoInt) : Bool)) {
                    return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.gosym.Gosym_decodingerror.DecodingError((_data.length), ("unexpected EOF" : stdgo.GoString), (null : stdgo.AnyInterface)) : stdgo._internal.debug.gosym.Gosym_decodingerror.DecodingError)) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_decodingerror.DecodingError>));
                };
                _typ = _p[(4 : stdgo.GoInt)];
                if ((_typ & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((0 : stdgo.GoUInt8))) {
                    return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.gosym.Gosym_decodingerror.DecodingError((((_data.length) - (_p.length) : stdgo.GoInt) + (4 : stdgo.GoInt) : stdgo.GoInt), ("bad symbol type" : stdgo.GoString), stdgo.Go.toInterface(_typ)) : stdgo._internal.debug.gosym.Gosym_decodingerror.DecodingError)) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_decodingerror.DecodingError>));
                };
                _typ = (_typ & ((((128 : stdgo.GoUInt8)) ^ (-1i32 : stdgo.GoInt32) : stdgo.GoUInt8)) : stdgo.GoUInt8);
                _s._typ = _typ;
                _p = (_p.__slice__((5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            var _nnul:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                _i = (0 : stdgo.GoInt);
                while ((_i < (_p.length) : Bool)) {
                    if (_p[(_i : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                        _nnul = (1 : stdgo.GoInt);
                        break;
                    };
                    _i++;
                };
            };
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _typ;
                        if (__value__ == ((122 : stdgo.GoUInt8)) || __value__ == ((90 : stdgo.GoUInt8))) {
                            _p = (_p.__slice__((_i + _nnul : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                            {
                                _i = (0 : stdgo.GoInt);
                                while (((_i + (2 : stdgo.GoInt) : stdgo.GoInt) <= (_p.length) : Bool)) {
                                    if (((_p[(_i : stdgo.GoInt)] == (0 : stdgo.GoUInt8)) && (_p[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == (0 : stdgo.GoUInt8)) : Bool)) {
                                        _nnul = (2 : stdgo.GoInt);
                                        break;
                                    };
                                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                                };
                            };
                            break;
                        };
                    };
                    break;
                };
            };
            if (((_p.length) < (_i + _nnul : stdgo.GoInt) : Bool)) {
                return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.gosym.Gosym_decodingerror.DecodingError((_data.length), ("unexpected EOF" : stdgo.GoString), (null : stdgo.AnyInterface)) : stdgo._internal.debug.gosym.Gosym_decodingerror.DecodingError)) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_decodingerror.DecodingError>));
            };
            _s._name = (_p.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoUInt8>);
            _i = (_i + (_nnul) : stdgo.GoInt);
            _p = (_p.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>);
            if (!_newTable) {
                if (((_p.length) < (4 : stdgo.GoInt) : Bool)) {
                    return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.gosym.Gosym_decodingerror.DecodingError((_data.length), ("unexpected EOF" : stdgo.GoString), (null : stdgo.AnyInterface)) : stdgo._internal.debug.gosym.Gosym_decodingerror.DecodingError)) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_decodingerror.DecodingError>));
                };
                _s._gotype = (_order.uint32((_p.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt64);
                _p = (_p.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
            _fn(_s?.__copy__());
        };
        return (null : stdgo.Error);
    }
