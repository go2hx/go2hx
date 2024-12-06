package stdgo._internal.compress.flate;
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_deflateFast_asInterface) class T_deflateFast_static_extension {
    @:keep
    static public function _shiftOffsets( _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast> = _e;
        if ((_e._prev.length) == ((0 : stdgo.GoInt))) {
            for (_i => _ in (_e._table.__slice__(0) : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry>)) {
                _e._table[(_i : stdgo.GoInt)] = (new stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry() : stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry);
            };
            _e._cur = (32769 : stdgo.GoInt32);
            return;
        };
        for (_i => _ in (_e._table.__slice__(0) : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry>)) {
            var _v = (((_e._table[(_i : stdgo.GoInt)]._offset - _e._cur : stdgo.GoInt32) + (32768 : stdgo.GoInt32) : stdgo.GoInt32) + (1 : stdgo.GoInt32) : stdgo.GoInt32);
            if ((_v < (0 : stdgo.GoInt32) : Bool)) {
                _v = (0 : stdgo.GoInt32);
            };
            _e._table[(_i : stdgo.GoInt)]._offset = _v;
        };
        _e._cur = (32769 : stdgo.GoInt32);
    }
    @:keep
    static public function _reset( _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast> = _e;
        _e._prev = (_e._prev.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _e._cur = (_e._cur + ((32768 : stdgo.GoInt32)) : stdgo.GoInt32);
        if ((_e._cur >= (2147352577 : stdgo.GoInt32) : Bool)) {
            _e._shiftOffsets();
        };
    }
    @:keep
    static public function _matchLen( _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast>, _s:stdgo.GoInt32, _t:stdgo.GoInt32, _src:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt32 {
        @:recv var _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast> = _e;
        var _s1 = (((_s : stdgo.GoInt) + (258 : stdgo.GoInt) : stdgo.GoInt) - (4 : stdgo.GoInt) : stdgo.GoInt);
        if ((_s1 > (_src.length) : Bool)) {
            _s1 = (_src.length);
        };
        if ((_t >= (0 : stdgo.GoInt32) : Bool)) {
            var _b = (_src.__slice__(_t) : stdgo.Slice<stdgo.GoUInt8>);
            var _a = (_src.__slice__(_s, _s1) : stdgo.Slice<stdgo.GoUInt8>);
            _b = (_b.__slice__(0, (_a.length)) : stdgo.Slice<stdgo.GoUInt8>);
            for (_i => _ in _a) {
                if (_a[(_i : stdgo.GoInt)] != (_b[(_i : stdgo.GoInt)])) {
                    return (_i : stdgo.GoInt32);
                };
            };
            return (_a.length : stdgo.GoInt32);
        };
        var _tp = ((_e._prev.length : stdgo.GoInt32) + _t : stdgo.GoInt32);
        if ((_tp < (0 : stdgo.GoInt32) : Bool)) {
            return (0 : stdgo.GoInt32);
        };
        var _a = (_src.__slice__(_s, _s1) : stdgo.Slice<stdgo.GoUInt8>);
        var _b = (_e._prev.__slice__(_tp) : stdgo.Slice<stdgo.GoUInt8>);
        if (((_b.length) > (_a.length) : Bool)) {
            _b = (_b.__slice__(0, (_a.length)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        _a = (_a.__slice__(0, (_b.length)) : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _ in _b) {
            if (_a[(_i : stdgo.GoInt)] != (_b[(_i : stdgo.GoInt)])) {
                return (_i : stdgo.GoInt32);
            };
        };
        var _n = (_b.length : stdgo.GoInt32);
        if (((_s + _n : stdgo.GoInt32) : stdgo.GoInt) == (_s1)) {
            return _n;
        };
        _a = (_src.__slice__((_s + _n : stdgo.GoInt32), _s1) : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_src.__slice__(0, (_a.length)) : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _ in _a) {
            if (_a[(_i : stdgo.GoInt)] != (_b[(_i : stdgo.GoInt)])) {
                return ((_i : stdgo.GoInt32) + _n : stdgo.GoInt32);
            };
        };
        return ((_a.length : stdgo.GoInt32) + _n : stdgo.GoInt32);
    }
    @:keep
    static public function _encode( _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast>, _dst:stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>, _src:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token> {
        @:recv var _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast> = _e;
        var _offset_3677525:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _candidate_3677146:stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry = ({} : stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry);
        var _nextHash_3676233:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _nextEmit_3676174:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _currHash_3679415:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _l_3678625:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _bytesBetweenHashLookups_3677191:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _nextS_3677129:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _s_3676196:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _offset_3679569:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _x_3679265:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _t_3678588:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _now_3677399:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _skip_3677108:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _prevHash_3679290:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _cv_3676211:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _sLimit_3676063:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_e._cur >= (2147352577 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3675617i32;
                    } else {
                        _gotoNext = 3675761i32;
                    };
                } else if (__value__ == (3675617i32)) {
                    _e._shiftOffsets();
                    _gotoNext = 3675761i32;
                } else if (__value__ == (3675761i32)) {
                    if (((_src.length) < (17 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3675798i32;
                    } else {
                        _gotoNext = 3676063i32;
                    };
                } else if (__value__ == (3675798i32)) {
                    _e._cur = (_e._cur + ((65535 : stdgo.GoInt32)) : stdgo.GoInt32);
                    _e._prev = (_e._prev.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    return stdgo._internal.compress.flate.Flate__emitLiteral._emitLiteral(_dst, _src);
                    _gotoNext = 3676063i32;
                } else if (__value__ == (3676063i32)) {
                    _sLimit_3676063 = (((_src.length) - (15 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt32);
                    _nextEmit_3676174 = (0 : stdgo.GoInt32);
                    _s_3676196 = (0 : stdgo.GoInt32);
                    _cv_3676211 = stdgo._internal.compress.flate.Flate__load32._load32(_src, _s_3676196);
                    _nextHash_3676233 = stdgo._internal.compress.flate.Flate__hash._hash(_cv_3676211);
                    var __blank__ = 0i32;
                    _gotoNext = 3676256i32;
                } else if (__value__ == (3676256i32)) {
                    if (true) {
                        _gotoNext = 3676260i32;
                    } else {
                        _gotoNext = 3679751i32;
                    };
                } else if (__value__ == (3676260i32)) {
                    _skip_3677108 = (32 : stdgo.GoInt32);
                    _nextS_3677129 = _s_3676196;
                    var __blank__ = 0i32;
                    _gotoNext = 3677169i32;
                } else if (__value__ == (3677169i32)) {
                    if (true) {
                        _gotoNext = 3677173i32;
                    } else {
                        _gotoNext = 3677878i32;
                    };
                } else if (__value__ == (3677173i32)) {
                    _s_3676196 = _nextS_3677129;
                    _bytesBetweenHashLookups_3677191 = (_skip_3677108 >> (5i64 : stdgo.GoUInt64) : stdgo.GoInt32);
                    _nextS_3677129 = (_s_3676196 + _bytesBetweenHashLookups_3677191 : stdgo.GoInt32);
                    _skip_3677108 = (_skip_3677108 + (_bytesBetweenHashLookups_3677191) : stdgo.GoInt32);
                    if ((_nextS_3677129 > _sLimit_3676063 : Bool)) {
                        _gotoNext = 3677323i32;
                    } else {
                        _gotoNext = 3677356i32;
                    };
                } else if (__value__ == (3677323i32)) {
                    _gotoNext = 3679751i32;
                } else if (__value__ == (3677356i32)) {
                    _candidate_3677146 = _e._table[((_nextHash_3676233 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
                    _now_3677399 = stdgo._internal.compress.flate.Flate__load32._load32(_src, _nextS_3677129);
                    _e._table[((_nextHash_3676233 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _offset : (_s_3676196 + _e._cur : stdgo.GoInt32), _val : _cv_3676211 } : stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry);
                    _nextHash_3676233 = stdgo._internal.compress.flate.Flate__hash._hash(_now_3677399);
                    _offset_3677525 = (_s_3676196 - ((_candidate_3677146._offset - _e._cur : stdgo.GoInt32)) : stdgo.GoInt32);
                    if (((_offset_3677525 > (32768 : stdgo.GoInt32) : Bool) || (_cv_3676211 != _candidate_3677146._val) : Bool)) {
                        _gotoNext = 3677619i32;
                    } else {
                        _gotoNext = 3677691i32;
                    };
                } else if (__value__ == (3677619i32)) {
                    _cv_3676211 = _now_3677399;
                    var __blank__ = 0i32;
                    _gotoNext = 3677169i32;
                } else if (__value__ == (3677691i32)) {
                    _gotoNext = 3677878i32;
                } else if (__value__ == (3677878i32)) {
                    _dst = stdgo._internal.compress.flate.Flate__emitLiteral._emitLiteral(_dst, (_src.__slice__(_nextEmit_3676174, _s_3676196) : stdgo.Slice<stdgo.GoUInt8>));
                    var __blank__ = 0i32;
                    _gotoNext = 3678409i32;
                } else if (__value__ == (3678409i32)) {
                    if (true) {
                        _gotoNext = 3678413i32;
                    } else {
                        _gotoNext = 3679751i32;
                    };
                } else if (__value__ == (3678413i32)) {
                    _s_3676196 = (_s_3676196 + ((4 : stdgo.GoInt32)) : stdgo.GoInt32);
                    _t_3678588 = ((_candidate_3677146._offset - _e._cur : stdgo.GoInt32) + (4 : stdgo.GoInt32) : stdgo.GoInt32);
                    _l_3678625 = _e._matchLen(_s_3676196, _t_3678588, _src);
                    _dst = (_dst.__append__(stdgo._internal.compress.flate.Flate__matchToken._matchToken((((_l_3678625 + (4 : stdgo.GoInt32) : stdgo.GoInt32) - (3 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt32), (((_s_3676196 - _t_3678588 : stdgo.GoInt32) - (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt32))));
                    _s_3676196 = (_s_3676196 + (_l_3678625) : stdgo.GoInt32);
                    _nextEmit_3676174 = _s_3676196;
                    if ((_s_3676196 >= _sLimit_3676063 : Bool)) {
                        _gotoNext = 3678865i32;
                    } else {
                        _gotoNext = 3679265i32;
                    };
                } else if (__value__ == (3678865i32)) {
                    _gotoNext = 3679751i32;
                } else if (__value__ == (3679265i32)) {
                    _x_3679265 = stdgo._internal.compress.flate.Flate__load64._load64(_src, (_s_3676196 - (1 : stdgo.GoInt32) : stdgo.GoInt32));
                    _prevHash_3679290 = stdgo._internal.compress.flate.Flate__hash._hash((_x_3679265 : stdgo.GoUInt32));
                    _e._table[((_prevHash_3679290 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _offset : ((_e._cur + _s_3676196 : stdgo.GoInt32) - (1 : stdgo.GoInt32) : stdgo.GoInt32), _val : (_x_3679265 : stdgo.GoUInt32) } : stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry);
                    _x_3679265 = (_x_3679265 >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _currHash_3679415 = stdgo._internal.compress.flate.Flate__hash._hash((_x_3679265 : stdgo.GoUInt32));
                    _candidate_3677146 = _e._table[((_currHash_3679415 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
                    _e._table[((_currHash_3679415 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _offset : (_e._cur + _s_3676196 : stdgo.GoInt32), _val : (_x_3679265 : stdgo.GoUInt32) } : stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry);
                    _offset_3679569 = (_s_3676196 - ((_candidate_3677146._offset - _e._cur : stdgo.GoInt32)) : stdgo.GoInt32);
                    if (((_offset_3679569 > (32768 : stdgo.GoInt32) : Bool) || ((_x_3679265 : stdgo.GoUInt32) != _candidate_3677146._val) : Bool)) {
                        _gotoNext = 3679670i32;
                    } else {
                        _gotoNext = 3679751i32;
                    };
                } else if (__value__ == (3679670i32)) {
                    _cv_3676211 = ((_x_3679265 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32);
                    _nextHash_3676233 = stdgo._internal.compress.flate.Flate__hash._hash(_cv_3676211);
                    _s_3676196++;
                    _gotoNext = 3679751i32;
                } else if (__value__ == (3679751i32)) {
                    _gotoNext = 3679751i32;
                    if (((_nextEmit_3676174 : stdgo.GoInt) < (_src.length) : Bool)) {
                        _gotoNext = 3679795i32;
                    } else {
                        _gotoNext = 3679842i32;
                    };
                } else if (__value__ == (3679795i32)) {
                    _dst = stdgo._internal.compress.flate.Flate__emitLiteral._emitLiteral(_dst, (_src.__slice__(_nextEmit_3676174) : stdgo.Slice<stdgo.GoUInt8>));
                    _gotoNext = 3679842i32;
                } else if (__value__ == (3679842i32)) {
                    _e._cur = (_e._cur + ((_src.length : stdgo.GoInt32)) : stdgo.GoInt32);
                    _e._prev = (_e._prev.__slice__(0, (_src.length)) : stdgo.Slice<stdgo.GoUInt8>);
                    stdgo.Go.copySlice(_e._prev, _src);
                    return _dst;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
