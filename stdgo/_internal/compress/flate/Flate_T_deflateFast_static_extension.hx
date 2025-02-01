package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_deflateFast_asInterface) class T_deflateFast_static_extension {
    @:keep
    @:tdfield
    static public function _shiftOffsets( _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast> = _e;
        if (((@:checkr _e ?? throw "null pointer dereference")._prev.length) == ((0 : stdgo.GoInt))) {
            for (_i => _ in ((@:checkr _e ?? throw "null pointer dereference")._table.__slice__(0) : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry>)) {
                (@:checkr _e ?? throw "null pointer dereference")._table[(_i : stdgo.GoInt)] = (new stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry() : stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry);
            };
            (@:checkr _e ?? throw "null pointer dereference")._cur = (32769 : stdgo.GoInt32);
            return;
        };
        for (_i => _ in ((@:checkr _e ?? throw "null pointer dereference")._table.__slice__(0) : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry>)) {
            var _v = ((((@:checkr _e ?? throw "null pointer dereference")._table[(_i : stdgo.GoInt)]._offset - (@:checkr _e ?? throw "null pointer dereference")._cur : stdgo.GoInt32) + (32768 : stdgo.GoInt32) : stdgo.GoInt32) + (1 : stdgo.GoInt32) : stdgo.GoInt32);
            if ((_v < (0 : stdgo.GoInt32) : Bool)) {
                _v = (0 : stdgo.GoInt32);
            };
            (@:checkr _e ?? throw "null pointer dereference")._table[(_i : stdgo.GoInt)]._offset = _v;
        };
        (@:checkr _e ?? throw "null pointer dereference")._cur = (32769 : stdgo.GoInt32);
    }
    @:keep
    @:tdfield
    static public function _reset( _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast> = _e;
        (@:checkr _e ?? throw "null pointer dereference")._prev = ((@:checkr _e ?? throw "null pointer dereference")._prev.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _e ?? throw "null pointer dereference")._cur = ((@:checkr _e ?? throw "null pointer dereference")._cur + ((32768 : stdgo.GoInt32)) : stdgo.GoInt32);
        if (((@:checkr _e ?? throw "null pointer dereference")._cur >= (2147352577 : stdgo.GoInt32) : Bool)) {
            @:check2r _e._shiftOffsets();
        };
    }
    @:keep
    @:tdfield
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
        var _tp = (((@:checkr _e ?? throw "null pointer dereference")._prev.length : stdgo.GoInt32) + _t : stdgo.GoInt32);
        if ((_tp < (0 : stdgo.GoInt32) : Bool)) {
            return (0 : stdgo.GoInt32);
        };
        var _a = (_src.__slice__(_s, _s1) : stdgo.Slice<stdgo.GoUInt8>);
        var _b = ((@:checkr _e ?? throw "null pointer dereference")._prev.__slice__(_tp) : stdgo.Slice<stdgo.GoUInt8>);
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
    @:tdfield
    static public function _encode( _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast>, _dst:stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>, _src:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token> {
        @:recv var _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast> = _e;
        var _bytesBetweenHashLookups_3723095:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _candidate_3723050:stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry = ({} : stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry);
        var _skip_3723012:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _nextEmit_3722078:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sLimit_3721967:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _currHash_3725319:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _x_3725169:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _offset_3723429:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _now_3723303:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _nextHash_3722137:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _offset_3725473:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _prevHash_3725194:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _cv_3722115:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _s_3722100:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _l_3724529:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _t_3724492:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _nextS_3723033:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (((@:checkr _e ?? throw "null pointer dereference")._cur >= (2147352577 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3721521i32;
                    } else {
                        _gotoNext = 3721665i32;
                    };
                } else if (__value__ == (3721521i32)) {
                    @:check2r _e._shiftOffsets();
                    _gotoNext = 3721665i32;
                } else if (__value__ == (3721665i32)) {
                    if (((_src.length) < (17 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3721702i32;
                    } else {
                        _gotoNext = 3721967i32;
                    };
                } else if (__value__ == (3721702i32)) {
                    (@:checkr _e ?? throw "null pointer dereference")._cur = ((@:checkr _e ?? throw "null pointer dereference")._cur + ((65535 : stdgo.GoInt32)) : stdgo.GoInt32);
                    (@:checkr _e ?? throw "null pointer dereference")._prev = ((@:checkr _e ?? throw "null pointer dereference")._prev.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    return stdgo._internal.compress.flate.Flate__emitLiteral._emitLiteral(_dst, _src);
                    _gotoNext = 3721967i32;
                } else if (__value__ == (3721967i32)) {
                    _sLimit_3721967 = (((_src.length) - (15 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt32);
                    _nextEmit_3722078 = (0 : stdgo.GoInt32);
                    _s_3722100 = (0 : stdgo.GoInt32);
                    _cv_3722115 = stdgo._internal.compress.flate.Flate__load32._load32(_src, _s_3722100);
                    _nextHash_3722137 = stdgo._internal.compress.flate.Flate__hash._hash(_cv_3722115);
                    var __blank__ = 0i32;
                    _gotoNext = 3722160i32;
                } else if (__value__ == (3722160i32)) {
                    if (true) {
                        _gotoNext = 3722164i32;
                    } else {
                        _gotoNext = 3725655i32;
                    };
                } else if (__value__ == (3722164i32)) {
                    _skip_3723012 = (32 : stdgo.GoInt32);
                    _nextS_3723033 = _s_3722100;
                    var __blank__ = 0i32;
                    _gotoNext = 3723073i32;
                } else if (__value__ == (3723073i32)) {
                    if (true) {
                        _gotoNext = 3723077i32;
                    } else {
                        _gotoNext = 3723782i32;
                    };
                } else if (__value__ == (3723077i32)) {
                    _s_3722100 = _nextS_3723033;
                    _bytesBetweenHashLookups_3723095 = (_skip_3723012 >> (5i64 : stdgo.GoUInt64) : stdgo.GoInt32);
                    _nextS_3723033 = (_s_3722100 + _bytesBetweenHashLookups_3723095 : stdgo.GoInt32);
                    _skip_3723012 = (_skip_3723012 + (_bytesBetweenHashLookups_3723095) : stdgo.GoInt32);
                    if ((_nextS_3723033 > _sLimit_3721967 : Bool)) {
                        _gotoNext = 3723227i32;
                    } else {
                        _gotoNext = 3723260i32;
                    };
                } else if (__value__ == (3723227i32)) {
                    _gotoNext = 3725655i32;
                } else if (__value__ == (3723260i32)) {
                    _candidate_3723050 = (@:checkr _e ?? throw "null pointer dereference")._table[((_nextHash_3722137 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
                    _now_3723303 = stdgo._internal.compress.flate.Flate__load32._load32(_src, _nextS_3723033);
                    (@:checkr _e ?? throw "null pointer dereference")._table[((_nextHash_3722137 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _offset : (_s_3722100 + (@:checkr _e ?? throw "null pointer dereference")._cur : stdgo.GoInt32), _val : _cv_3722115 } : stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry);
                    _nextHash_3722137 = stdgo._internal.compress.flate.Flate__hash._hash(_now_3723303);
                    _offset_3723429 = (_s_3722100 - ((_candidate_3723050._offset - (@:checkr _e ?? throw "null pointer dereference")._cur : stdgo.GoInt32)) : stdgo.GoInt32);
                    if (((_offset_3723429 > (32768 : stdgo.GoInt32) : Bool) || (_cv_3722115 != _candidate_3723050._val) : Bool)) {
                        _gotoNext = 3723523i32;
                    } else {
                        _gotoNext = 3723595i32;
                    };
                } else if (__value__ == (3723523i32)) {
                    _cv_3722115 = _now_3723303;
                    var __blank__ = 0i32;
                    _gotoNext = 3723073i32;
                } else if (__value__ == (3723595i32)) {
                    _gotoNext = 3723782i32;
                } else if (__value__ == (3723782i32)) {
                    _dst = stdgo._internal.compress.flate.Flate__emitLiteral._emitLiteral(_dst, (_src.__slice__(_nextEmit_3722078, _s_3722100) : stdgo.Slice<stdgo.GoUInt8>));
                    var __blank__ = 0i32;
                    _gotoNext = 3724313i32;
                } else if (__value__ == (3724313i32)) {
                    if (true) {
                        _gotoNext = 3724317i32;
                    } else {
                        _gotoNext = 3722160i32;
                    };
                } else if (__value__ == (3724317i32)) {
                    _s_3722100 = (_s_3722100 + ((4 : stdgo.GoInt32)) : stdgo.GoInt32);
                    _t_3724492 = ((_candidate_3723050._offset - (@:checkr _e ?? throw "null pointer dereference")._cur : stdgo.GoInt32) + (4 : stdgo.GoInt32) : stdgo.GoInt32);
                    _l_3724529 = @:check2r _e._matchLen(_s_3722100, _t_3724492, _src);
                    _dst = (_dst.__append__(stdgo._internal.compress.flate.Flate__matchToken._matchToken((((_l_3724529 + (4 : stdgo.GoInt32) : stdgo.GoInt32) - (3 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt32), (((_s_3722100 - _t_3724492 : stdgo.GoInt32) - (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt32))));
                    _s_3722100 = (_s_3722100 + (_l_3724529) : stdgo.GoInt32);
                    _nextEmit_3722078 = _s_3722100;
                    if ((_s_3722100 >= _sLimit_3721967 : Bool)) {
                        _gotoNext = 3724769i32;
                    } else {
                        _gotoNext = 3725169i32;
                    };
                } else if (__value__ == (3724769i32)) {
                    _gotoNext = 3725655i32;
                } else if (__value__ == (3725169i32)) {
                    _x_3725169 = stdgo._internal.compress.flate.Flate__load64._load64(_src, (_s_3722100 - (1 : stdgo.GoInt32) : stdgo.GoInt32));
                    _prevHash_3725194 = stdgo._internal.compress.flate.Flate__hash._hash((_x_3725169 : stdgo.GoUInt32));
                    (@:checkr _e ?? throw "null pointer dereference")._table[((_prevHash_3725194 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _offset : (((@:checkr _e ?? throw "null pointer dereference")._cur + _s_3722100 : stdgo.GoInt32) - (1 : stdgo.GoInt32) : stdgo.GoInt32), _val : (_x_3725169 : stdgo.GoUInt32) } : stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry);
                    _x_3725169 = (_x_3725169 >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _currHash_3725319 = stdgo._internal.compress.flate.Flate__hash._hash((_x_3725169 : stdgo.GoUInt32));
                    _candidate_3723050 = (@:checkr _e ?? throw "null pointer dereference")._table[((_currHash_3725319 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
                    (@:checkr _e ?? throw "null pointer dereference")._table[((_currHash_3725319 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _offset : ((@:checkr _e ?? throw "null pointer dereference")._cur + _s_3722100 : stdgo.GoInt32), _val : (_x_3725169 : stdgo.GoUInt32) } : stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry);
                    _offset_3725473 = (_s_3722100 - ((_candidate_3723050._offset - (@:checkr _e ?? throw "null pointer dereference")._cur : stdgo.GoInt32)) : stdgo.GoInt32);
                    if (((_offset_3725473 > (32768 : stdgo.GoInt32) : Bool) || ((_x_3725169 : stdgo.GoUInt32) != _candidate_3723050._val) : Bool)) {
                        _gotoNext = 3725574i32;
                    } else {
                        _gotoNext = 3724313i32;
                    };
                } else if (__value__ == (3725574i32)) {
                    _cv_3722115 = ((_x_3725169 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32);
                    _nextHash_3722137 = stdgo._internal.compress.flate.Flate__hash._hash(_cv_3722115);
                    _s_3722100++;
                    _gotoNext = 3722160i32;
                } else if (__value__ == (3725655i32)) {
                    _gotoNext = 3725655i32;
                    if (((_nextEmit_3722078 : stdgo.GoInt) < (_src.length) : Bool)) {
                        _gotoNext = 3725699i32;
                    } else {
                        _gotoNext = 3725746i32;
                    };
                } else if (__value__ == (3725699i32)) {
                    _dst = stdgo._internal.compress.flate.Flate__emitLiteral._emitLiteral(_dst, (_src.__slice__(_nextEmit_3722078) : stdgo.Slice<stdgo.GoUInt8>));
                    _gotoNext = 3725746i32;
                } else if (__value__ == (3725746i32)) {
                    (@:checkr _e ?? throw "null pointer dereference")._cur = ((@:checkr _e ?? throw "null pointer dereference")._cur + ((_src.length : stdgo.GoInt32)) : stdgo.GoInt32);
                    (@:checkr _e ?? throw "null pointer dereference")._prev = ((@:checkr _e ?? throw "null pointer dereference")._prev.__slice__(0, (_src.length)) : stdgo.Slice<stdgo.GoUInt8>);
                    (@:checkr _e ?? throw "null pointer dereference")._prev.__copyTo__(_src);
                    return _dst;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
