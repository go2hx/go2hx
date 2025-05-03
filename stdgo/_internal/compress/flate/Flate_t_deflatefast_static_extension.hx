package stdgo._internal.compress.flate;
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_deflateFast_asInterface) class T_deflateFast_static_extension {
    @:keep
    @:tdfield
    static public function _shiftOffsets( _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_deflatefast.T_deflateFast>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_deflatefast.T_deflateFast> = _e;
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflatefast.go#L287"
        if (((@:checkr _e ?? throw "null pointer dereference")._prev.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflatefast.go#L289"
            for (_i => _ in ((@:checkr _e ?? throw "null pointer dereference")._table.__slice__(0) : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry>)) {
                (@:checkr _e ?? throw "null pointer dereference")._table[(_i : stdgo.GoInt)] = (new stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry() : stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry);
            };
            (@:checkr _e ?? throw "null pointer dereference")._cur = (32769 : stdgo.GoInt32);
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflatefast.go#L293"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflatefast.go#L297"
        for (_i => _ in ((@:checkr _e ?? throw "null pointer dereference")._table.__slice__(0) : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry>)) {
            var _v = ((((@:checkr _e ?? throw "null pointer dereference")._table[(_i : stdgo.GoInt)]._offset - (@:checkr _e ?? throw "null pointer dereference")._cur : stdgo.GoInt32) + (32768 : stdgo.GoInt32) : stdgo.GoInt32) + (1 : stdgo.GoInt32) : stdgo.GoInt32);
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflatefast.go#L299"
            if ((_v < (0 : stdgo.GoInt32) : Bool)) {
                _v = (0 : stdgo.GoInt32);
            };
            (@:checkr _e ?? throw "null pointer dereference")._table[(_i : stdgo.GoInt)]._offset = _v;
        };
        (@:checkr _e ?? throw "null pointer dereference")._cur = (32769 : stdgo.GoInt32);
    }
    @:keep
    @:tdfield
    static public function _reset( _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_deflatefast.T_deflateFast>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_deflatefast.T_deflateFast> = _e;
        (@:checkr _e ?? throw "null pointer dereference")._prev = ((@:checkr _e ?? throw "null pointer dereference")._prev.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _e ?? throw "null pointer dereference")._cur = ((@:checkr _e ?? throw "null pointer dereference")._cur + ((32768 : stdgo.GoInt32)) : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflatefast.go#L277"
        if (((@:checkr _e ?? throw "null pointer dereference")._cur >= (2147352577 : stdgo.GoInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflatefast.go#L278"
            _e._shiftOffsets();
        };
    }
    @:keep
    @:tdfield
    static public function _matchLen( _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_deflatefast.T_deflateFast>, _s:stdgo.GoInt32, _t:stdgo.GoInt32, _src:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt32 {
        @:recv var _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_deflatefast.T_deflateFast> = _e;
        var _s1 = (((_s : stdgo.GoInt) + (258 : stdgo.GoInt) : stdgo.GoInt) - (4 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflatefast.go#L213"
        if ((_s1 > (_src.length) : Bool)) {
            _s1 = (_src.length);
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflatefast.go#L218"
        if ((_t >= (0 : stdgo.GoInt32) : Bool)) {
            var _b = (_src.__slice__(_t) : stdgo.Slice<stdgo.GoUInt8>);
            var _a = (_src.__slice__(_s, _s1) : stdgo.Slice<stdgo.GoUInt8>);
            _b = (_b.__slice__(0, (_a.length)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflatefast.go#L223"
            for (_i => _ in _a) {
                //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflatefast.go#L224"
                if (_a[(_i : stdgo.GoInt)] != (_b[(_i : stdgo.GoInt)])) {
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflatefast.go#L225"
                    return (_i : stdgo.GoInt32);
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflatefast.go#L228"
            return (_a.length : stdgo.GoInt32);
        };
        var _tp = (((@:checkr _e ?? throw "null pointer dereference")._prev.length : stdgo.GoInt32) + _t : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflatefast.go#L233"
        if ((_tp < (0 : stdgo.GoInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflatefast.go#L234"
            return (0 : stdgo.GoInt32);
        };
        var _a = (_src.__slice__(_s, _s1) : stdgo.Slice<stdgo.GoUInt8>);
        var _b = ((@:checkr _e ?? throw "null pointer dereference")._prev.__slice__(_tp) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflatefast.go#L240"
        if (((_b.length) > (_a.length) : Bool)) {
            _b = (_b.__slice__(0, (_a.length)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        _a = (_a.__slice__(0, (_b.length)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflatefast.go#L244"
        for (_i => _ in _b) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflatefast.go#L245"
            if (_a[(_i : stdgo.GoInt)] != (_b[(_i : stdgo.GoInt)])) {
                //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflatefast.go#L246"
                return (_i : stdgo.GoInt32);
            };
        };
        var _n = (_b.length : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflatefast.go#L253"
        if (((_s + _n : stdgo.GoInt32) : stdgo.GoInt) == (_s1)) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflatefast.go#L254"
            return _n;
        };
        _a = (_src.__slice__((_s + _n : stdgo.GoInt32), _s1) : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_src.__slice__(0, (_a.length)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflatefast.go#L260"
        for (_i => _ in _a) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflatefast.go#L261"
            if (_a[(_i : stdgo.GoInt)] != (_b[(_i : stdgo.GoInt)])) {
                //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflatefast.go#L262"
                return ((_i : stdgo.GoInt32) + _n : stdgo.GoInt32);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflatefast.go#L265"
        return ((_a.length : stdgo.GoInt32) + _n : stdgo.GoInt32);
    }
    @:keep
    @:tdfield
    static public function _encode( _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_deflatefast.T_deflateFast>, _dst:stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>, _src:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token> {
        @:recv var _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_deflatefast.T_deflateFast> = _e;
        var _x_27:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _now_23:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _cv_17:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _nextEmit_15:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _prevHash_28:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _l_26:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _offset_24:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _candidate_21:stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry = ({} : stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry);
        var _currHash_29:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _t_25:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _bytesBetweenHashLookups_22:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _skip_19:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _nextHash_18:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _s_16:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _offset_30:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _nextS_20:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sLimit_14:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflatefast.go#L71"
                    if (((@:checkr _e ?? throw "null pointer dereference")._cur >= (2147352577 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3694442i64;
                    } else {
                        _gotoNext = 3694586i64;
                    };
                } else if (__value__ == (3694442i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflatefast.go#L72"
                    _e._shiftOffsets();
                    _gotoNext = 3694586i64;
                } else if (__value__ == (3694586i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflatefast.go#L77"
                    if (((_src.length) < (17 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3694623i64;
                    } else {
                        _gotoNext = 3694888i64;
                    };
                } else if (__value__ == (3694623i64)) {
                    (@:checkr _e ?? throw "null pointer dereference")._cur = ((@:checkr _e ?? throw "null pointer dereference")._cur + ((65535 : stdgo.GoInt32)) : stdgo.GoInt32);
                    (@:checkr _e ?? throw "null pointer dereference")._prev = ((@:checkr _e ?? throw "null pointer dereference")._prev.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflatefast.go#L80"
                    return stdgo._internal.compress.flate.Flate__emitliteral._emitLiteral(_dst, _src);
                    _gotoNext = 3694888i64;
                } else if (__value__ == (3694888i64)) {
                    _sLimit_14 = (((_src.length) - (15 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt32);
                    _nextEmit_15 = (0 : stdgo.GoInt32);
                    _s_16 = (0 : stdgo.GoInt32);
                    _cv_17 = stdgo._internal.compress.flate.Flate__load32._load32(_src, _s_16);
                    _nextHash_18 = stdgo._internal.compress.flate.Flate__hash._hash(_cv_17);
                    0i64;
                    _gotoNext = 3695081i64;
                } else if (__value__ == (3695081i64)) {
                    //"file://#L0"
                    if (true) {
                        _gotoNext = 3695085i64;
                    } else {
                        _gotoNext = 3698576i64;
                    };
                } else if (__value__ == (3695085i64)) {
                    _skip_19 = (32 : stdgo.GoInt32);
                    _nextS_20 = _s_16;
                    0i64;
                    _gotoNext = 3695994i64;
                } else if (__value__ == (3695994i64)) {
                    //"file://#L0"
                    if (true) {
                        _gotoNext = 3695998i64;
                    } else {
                        _gotoNext = 3696703i64;
                    };
                } else if (__value__ == (3695998i64)) {
                    _s_16 = _nextS_20;
                    _bytesBetweenHashLookups_22 = (_skip_19 >> (5i64 : stdgo.GoUInt64) : stdgo.GoInt32);
                    _nextS_20 = (_s_16 + _bytesBetweenHashLookups_22 : stdgo.GoInt32);
                    _skip_19 = (_skip_19 + (_bytesBetweenHashLookups_22) : stdgo.GoInt32);
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflatefast.go#L119"
                    if ((_nextS_20 > _sLimit_14 : Bool)) {
                        _gotoNext = 3696148i64;
                    } else {
                        _gotoNext = 3696181i64;
                    };
                } else if (__value__ == (3696148i64)) {
                    _gotoNext = 3698576i64;
                } else if (__value__ == (3696181i64)) {
                    _candidate_21 = (@:checkr _e ?? throw "null pointer dereference")._table[((_nextHash_18 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
                    _now_23 = stdgo._internal.compress.flate.Flate__load32._load32(_src, _nextS_20);
                    (@:checkr _e ?? throw "null pointer dereference")._table[((_nextHash_18 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _offset : (_s_16 + (@:checkr _e ?? throw "null pointer dereference")._cur : stdgo.GoInt32), _val : _cv_17 } : stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry);
                    _nextHash_18 = stdgo._internal.compress.flate.Flate__hash._hash(_now_23);
                    _offset_24 = (_s_16 - ((_candidate_21._offset - (@:checkr _e ?? throw "null pointer dereference")._cur : stdgo.GoInt32)) : stdgo.GoInt32);
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflatefast.go#L128"
                    if (((_offset_24 > (32768 : stdgo.GoInt32) : Bool) || (_cv_17 != _candidate_21._val) : Bool)) {
                        _gotoNext = 3696444i64;
                    } else {
                        _gotoNext = 3696516i64;
                    };
                } else if (__value__ == (3696444i64)) {
                    _cv_17 = _now_23;
                    0i64;
                    _gotoNext = 3695994i64;
                } else if (__value__ == (3696516i64)) {
                    _gotoNext = 3696703i64;
                } else if (__value__ == (3696703i64)) {
                    _dst = stdgo._internal.compress.flate.Flate__emitliteral._emitLiteral(_dst, (_src.__slice__(_nextEmit_15, _s_16) : stdgo.Slice<stdgo.GoUInt8>));
                    0i64;
                    _gotoNext = 3697234i64;
                } else if (__value__ == (3697234i64)) {
                    //"file://#L0"
                    if (true) {
                        _gotoNext = 3697238i64;
                    } else {
                        _gotoNext = 3695081i64;
                    };
                } else if (__value__ == (3697238i64)) {
                    _s_16 = (_s_16 + ((4 : stdgo.GoInt32)) : stdgo.GoInt32);
                    _t_25 = ((_candidate_21._offset - (@:checkr _e ?? throw "null pointer dereference")._cur : stdgo.GoInt32) + (4 : stdgo.GoInt32) : stdgo.GoInt32);
                    _l_26 = _e._matchLen(_s_16, _t_25, _src);
                    _dst = (_dst.__append__(stdgo._internal.compress.flate.Flate__matchtoken._matchToken((((_l_26 + (4 : stdgo.GoInt32) : stdgo.GoInt32) - (3 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt32), (((_s_16 - _t_25 : stdgo.GoInt32) - (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt32))) : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>);
                    _s_16 = (_s_16 + (_l_26) : stdgo.GoInt32);
                    _nextEmit_15 = _s_16;
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflatefast.go#L163"
                    if ((_s_16 >= _sLimit_14 : Bool)) {
                        _gotoNext = 3697690i64;
                    } else {
                        _gotoNext = 3698090i64;
                    };
                } else if (__value__ == (3697690i64)) {
                    _gotoNext = 3698576i64;
                } else if (__value__ == (3698090i64)) {
                    _x_27 = stdgo._internal.compress.flate.Flate__load64._load64(_src, (_s_16 - (1 : stdgo.GoInt32) : stdgo.GoInt32));
                    _prevHash_28 = stdgo._internal.compress.flate.Flate__hash._hash((_x_27 : stdgo.GoUInt32));
                    (@:checkr _e ?? throw "null pointer dereference")._table[((_prevHash_28 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _offset : (((@:checkr _e ?? throw "null pointer dereference")._cur + _s_16 : stdgo.GoInt32) - (1 : stdgo.GoInt32) : stdgo.GoInt32), _val : (_x_27 : stdgo.GoUInt32) } : stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry);
                    _x_27 = (_x_27 >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _currHash_29 = stdgo._internal.compress.flate.Flate__hash._hash((_x_27 : stdgo.GoUInt32));
                    _candidate_21 = (@:checkr _e ?? throw "null pointer dereference")._table[((_currHash_29 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
                    (@:checkr _e ?? throw "null pointer dereference")._table[((_currHash_29 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _offset : ((@:checkr _e ?? throw "null pointer dereference")._cur + _s_16 : stdgo.GoInt32), _val : (_x_27 : stdgo.GoUInt32) } : stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry);
                    _offset_30 = (_s_16 - ((_candidate_21._offset - (@:checkr _e ?? throw "null pointer dereference")._cur : stdgo.GoInt32)) : stdgo.GoInt32);
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflatefast.go#L182"
                    if (((_offset_30 > (32768 : stdgo.GoInt32) : Bool) || ((_x_27 : stdgo.GoUInt32) != _candidate_21._val) : Bool)) {
                        _gotoNext = 3698495i64;
                    } else {
                        _gotoNext = 3697234i64;
                    };
                } else if (__value__ == (3698495i64)) {
                    _cv_17 = ((_x_27 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32);
                    _nextHash_18 = stdgo._internal.compress.flate.Flate__hash._hash(_cv_17);
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflatefast.go#L185"
                    _s_16++;
                    _gotoNext = 3695081i64;
                } else if (__value__ == (3698576i64)) {
                    _gotoNext = 3698576i64;
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflatefast.go#L192"
                    if (((_nextEmit_15 : stdgo.GoInt) < (_src.length) : Bool)) {
                        _gotoNext = 3698620i64;
                    } else {
                        _gotoNext = 3698667i64;
                    };
                } else if (__value__ == (3698620i64)) {
                    _dst = stdgo._internal.compress.flate.Flate__emitliteral._emitLiteral(_dst, (_src.__slice__(_nextEmit_15) : stdgo.Slice<stdgo.GoUInt8>));
                    _gotoNext = 3698667i64;
                } else if (__value__ == (3698667i64)) {
                    (@:checkr _e ?? throw "null pointer dereference")._cur = ((@:checkr _e ?? throw "null pointer dereference")._cur + ((_src.length : stdgo.GoInt32)) : stdgo.GoInt32);
                    (@:checkr _e ?? throw "null pointer dereference")._prev = ((@:checkr _e ?? throw "null pointer dereference")._prev.__slice__(0, (_src.length)) : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflatefast.go#L197"
                    (@:checkr _e ?? throw "null pointer dereference")._prev.__copyTo__(_src);
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflatefast.go#L198"
                    return _dst;
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
