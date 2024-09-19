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
        stdgo._internal.internal.Macro.controlFlow({
            if ((_e._cur >= (2147352577 : stdgo.GoInt32) : Bool)) {
                _e._shiftOffsets();
            };
            if (((_src.length) < (17 : stdgo.GoInt) : Bool)) {
                _e._cur = (_e._cur + ((65535 : stdgo.GoInt32)) : stdgo.GoInt32);
                _e._prev = (_e._prev.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                return stdgo._internal.compress.flate.Flate__emitLiteral._emitLiteral(_dst, _src);
            };
            var _sLimit = (((_src.length) - (15 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt32);
            var _nextEmit = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
            var _s = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
            var _cv = (stdgo._internal.compress.flate.Flate__load32._load32(_src, _s) : stdgo.GoUInt32);
            var _nextHash = (stdgo._internal.compress.flate.Flate__hash._hash(_cv) : stdgo.GoUInt32);
            while (true) {
                var _skip = ((32 : stdgo.GoInt32) : stdgo.GoInt32);
                var _nextS = (_s : stdgo.GoInt32);
                var _candidate:stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry = ({} : stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry);
                while (true) {
                    _s = _nextS;
                    var _bytesBetweenHashLookups = (_skip >> (5i64 : stdgo.GoUInt64) : stdgo.GoInt32);
                    _nextS = (_s + _bytesBetweenHashLookups : stdgo.GoInt32);
                    _skip = (_skip + (_bytesBetweenHashLookups) : stdgo.GoInt32);
                    if ((_nextS > _sLimit : Bool)) {
                        @:goto "emitRemainder";
                    };
                    _candidate = _e._table[((_nextHash & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
                    var _now = (stdgo._internal.compress.flate.Flate__load32._load32(_src, _nextS) : stdgo.GoUInt32);
                    _e._table[((_nextHash & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _offset : (_s + _e._cur : stdgo.GoInt32), _val : _cv } : stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry);
                    _nextHash = stdgo._internal.compress.flate.Flate__hash._hash(_now);
                    var _offset = (_s - ((_candidate._offset - _e._cur : stdgo.GoInt32)) : stdgo.GoInt32);
                    if (((_offset > (32768 : stdgo.GoInt32) : Bool) || (_cv != _candidate._val) : Bool)) {
                        _cv = _now;
                        continue;
                    };
                    break;
                };
                _dst = stdgo._internal.compress.flate.Flate__emitLiteral._emitLiteral(_dst, (_src.__slice__(_nextEmit, _s) : stdgo.Slice<stdgo.GoUInt8>));
                while (true) {
                    _s = (_s + ((4 : stdgo.GoInt32)) : stdgo.GoInt32);
                    var _t = ((_candidate._offset - _e._cur : stdgo.GoInt32) + (4 : stdgo.GoInt32) : stdgo.GoInt32);
                    var _l = (_e._matchLen(_s, _t, _src) : stdgo.GoInt32);
                    _dst = (_dst.__append__(stdgo._internal.compress.flate.Flate__matchToken._matchToken((((_l + (4 : stdgo.GoInt32) : stdgo.GoInt32) - (3 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt32), (((_s - _t : stdgo.GoInt32) - (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt32))));
                    _s = (_s + (_l) : stdgo.GoInt32);
                    _nextEmit = _s;
                    if ((_s >= _sLimit : Bool)) {
                        @:goto "emitRemainder";
                    };
                    var _x = (stdgo._internal.compress.flate.Flate__load64._load64(_src, (_s - (1 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoUInt64);
                    var _prevHash = (stdgo._internal.compress.flate.Flate__hash._hash((_x : stdgo.GoUInt32)) : stdgo.GoUInt32);
                    _e._table[((_prevHash & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _offset : ((_e._cur + _s : stdgo.GoInt32) - (1 : stdgo.GoInt32) : stdgo.GoInt32), _val : (_x : stdgo.GoUInt32) } : stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry);
                    _x = (_x >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    var _currHash = (stdgo._internal.compress.flate.Flate__hash._hash((_x : stdgo.GoUInt32)) : stdgo.GoUInt32);
                    _candidate = _e._table[((_currHash & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
                    _e._table[((_currHash & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _offset : (_e._cur + _s : stdgo.GoInt32), _val : (_x : stdgo.GoUInt32) } : stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry);
                    var _offset = (_s - ((_candidate._offset - _e._cur : stdgo.GoInt32)) : stdgo.GoInt32);
                    if (((_offset > (32768 : stdgo.GoInt32) : Bool) || ((_x : stdgo.GoUInt32) != _candidate._val) : Bool)) {
                        _cv = ((_x >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32);
                        _nextHash = stdgo._internal.compress.flate.Flate__hash._hash(_cv);
                        _s++;
                        break;
                    };
                };
            };
            @:label("emitRemainder") if (((_nextEmit : stdgo.GoInt) < (_src.length) : Bool)) {
                _dst = stdgo._internal.compress.flate.Flate__emitLiteral._emitLiteral(_dst, (_src.__slice__(_nextEmit) : stdgo.Slice<stdgo.GoUInt8>));
            };
            _e._cur = (_e._cur + ((_src.length : stdgo.GoInt32)) : stdgo.GoInt32);
            _e._prev = (_e._prev.__slice__(0, (_src.length)) : stdgo.Slice<stdgo.GoUInt8>);
            stdgo.Go.copySlice(_e._prev, _src);
            return _dst;
        });
    }
}
