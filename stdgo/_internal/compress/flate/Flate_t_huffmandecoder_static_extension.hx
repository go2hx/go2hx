package stdgo._internal.compress.flate;
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_huffmanDecoder_asInterface) class T_huffmanDecoder_static_extension {
    @:keep
    @:tdfield
    static public function _init( _h:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder>, _lengths:stdgo.Slice<stdgo.GoInt>):Bool {
        @:recv var _h:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder> = _h;
        {};
        if ((@:checkr _h ?? throw "null pointer dereference")._min != ((0 : stdgo.GoInt))) {
            {
                var __tmp__ = (new stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder() : stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder);
                var x = (_h : stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder);
                x._min = __tmp__?._min;
                x._chunks = __tmp__?._chunks;
                x._links = __tmp__?._links;
                x._linkMask = __tmp__?._linkMask;
            };
        };
        var _count:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(16, 16).__setNumber32__();
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt);
var _max = __1, _min = __0;
        for (__0 => _n in _lengths) {
            if (_n == ((0 : stdgo.GoInt))) {
                continue;
            };
            if (((_min == (0 : stdgo.GoInt)) || (_n < _min : Bool) : Bool)) {
                _min = _n;
            };
            if ((_n > _max : Bool)) {
                _max = _n;
            };
            _count[(_n : stdgo.GoInt)]++;
        };
        if (_max == ((0 : stdgo.GoInt))) {
            return true;
        };
        var _code = (0 : stdgo.GoInt);
        var _nextcode:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(16, 16).__setNumber32__();
        {
            var _i = (_min : stdgo.GoInt);
            while ((_i <= _max : Bool)) {
                _code = (_code << ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt);
_nextcode[(_i : stdgo.GoInt)] = _code;
_code = (_code + (_count[(_i : stdgo.GoInt)]) : stdgo.GoInt);
                _i++;
            };
        };
        if (((_code != ((1 : stdgo.GoInt) << (_max : stdgo.GoUInt) : stdgo.GoInt)) && !(((_code == (1 : stdgo.GoInt)) && (_max == (1 : stdgo.GoInt)) : Bool)) : Bool)) {
            return false;
        };
        (@:checkr _h ?? throw "null pointer dereference")._min = _min;
        if ((_max > (9 : stdgo.GoInt) : Bool)) {
            var _numLinks = ((1 : stdgo.GoInt) << (((_max : stdgo.GoUInt) - (9u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoInt);
            (@:checkr _h ?? throw "null pointer dereference")._linkMask = ((_numLinks - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32);
            var _link = (_nextcode[(10 : stdgo.GoInt)] >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt);
            (@:checkr _h ?? throw "null pointer dereference")._links = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt32>>(((512 : stdgo.GoInt) - _link : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt32>>);
            {
                var _j = (_link : stdgo.GoUInt);
                while ((_j < (512u32 : stdgo.GoUInt) : Bool)) {
                    var _reverse = (stdgo._internal.math.bits.Bits_reverse16.reverse16((_j : stdgo.GoUInt16)) : stdgo.GoInt);
_reverse = (_reverse >> ((7u32 : stdgo.GoUInt)) : stdgo.GoInt);
var _off = (_j - (_link : stdgo.GoUInt) : stdgo.GoUInt);
if ((false && ((@:checkr _h ?? throw "null pointer dereference")._chunks[(_reverse : stdgo.GoInt)] != (0u32 : stdgo.GoUInt32)) : Bool)) {
                        throw stdgo.Go.toInterface(("impossible: overwriting existing chunk" : stdgo.GoString));
                    };
(@:checkr _h ?? throw "null pointer dereference")._chunks[(_reverse : stdgo.GoInt)] = (((_off << (4i64 : stdgo.GoUInt64) : stdgo.GoUInt) | (10u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoUInt32);
(@:checkr _h ?? throw "null pointer dereference")._links[(_off : stdgo.GoInt)] = (new stdgo.Slice<stdgo.GoUInt32>((_numLinks : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
                    _j++;
                };
            };
        };
        for (_i => _n in _lengths) {
            if (_n == ((0 : stdgo.GoInt))) {
                continue;
            };
            var _code = (_nextcode[(_n : stdgo.GoInt)] : stdgo.GoInt);
            _nextcode[(_n : stdgo.GoInt)]++;
            var _chunk = (((_i << (4i64 : stdgo.GoUInt64) : stdgo.GoInt) | _n : stdgo.GoInt) : stdgo.GoUInt32);
            var _reverse = (stdgo._internal.math.bits.Bits_reverse16.reverse16((_code : stdgo.GoUInt16)) : stdgo.GoInt);
            _reverse = (_reverse >> ((((16 : stdgo.GoInt) - _n : stdgo.GoInt) : stdgo.GoUInt)) : stdgo.GoInt);
            if ((_n <= (9 : stdgo.GoInt) : Bool)) {
                {
                    var _off = (_reverse : stdgo.GoInt);
                    while ((_off < ((@:checkr _h ?? throw "null pointer dereference")._chunks.length) : Bool)) {
                        if ((false && ((@:checkr _h ?? throw "null pointer dereference")._chunks[(_off : stdgo.GoInt)] != (0u32 : stdgo.GoUInt32)) : Bool)) {
                            throw stdgo.Go.toInterface(("impossible: overwriting existing chunk" : stdgo.GoString));
                        };
(@:checkr _h ?? throw "null pointer dereference")._chunks[(_off : stdgo.GoInt)] = _chunk;
                        _off = (_off + (((1 : stdgo.GoInt) << (_n : stdgo.GoUInt) : stdgo.GoInt)) : stdgo.GoInt);
                    };
                };
            } else {
                var _j = (_reverse & (511 : stdgo.GoInt) : stdgo.GoInt);
                if ((false && (((@:checkr _h ?? throw "null pointer dereference")._chunks[(_j : stdgo.GoInt)] & (15u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != (10u32 : stdgo.GoUInt32)) : Bool)) {
                    throw stdgo.Go.toInterface(("impossible: not an indirect chunk" : stdgo.GoString));
                };
                var _value = ((@:checkr _h ?? throw "null pointer dereference")._chunks[(_j : stdgo.GoInt)] >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
                var _linktab = (@:checkr _h ?? throw "null pointer dereference")._links[(_value : stdgo.GoInt)];
                _reverse = (_reverse >> ((9i64 : stdgo.GoUInt64)) : stdgo.GoInt);
                {
                    var _off = (_reverse : stdgo.GoInt);
                    while ((_off < (_linktab.length) : Bool)) {
                        if ((false && (_linktab[(_off : stdgo.GoInt)] != (0u32 : stdgo.GoUInt32)) : Bool)) {
                            throw stdgo.Go.toInterface(("impossible: overwriting existing chunk" : stdgo.GoString));
                        };
_linktab[(_off : stdgo.GoInt)] = _chunk;
                        _off = (_off + (((1 : stdgo.GoInt) << ((_n - (9 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoInt)) : stdgo.GoInt);
                    };
                };
            };
        };
        if (false) {
            for (_i => _chunk in (@:checkr _h ?? throw "null pointer dereference")._chunks) {
                if (_chunk == ((0u32 : stdgo.GoUInt32))) {
                    if (((_code == (1 : stdgo.GoInt)) && ((_i % (2 : stdgo.GoInt) : stdgo.GoInt) == (1 : stdgo.GoInt)) : Bool)) {
                        continue;
                    };
                    throw stdgo.Go.toInterface(("impossible: missing chunk" : stdgo.GoString));
                };
            };
            for (__1 => _linktab in (@:checkr _h ?? throw "null pointer dereference")._links) {
                for (__2 => _chunk in _linktab) {
                    if (_chunk == ((0u32 : stdgo.GoUInt32))) {
                        throw stdgo.Go.toInterface(("impossible: missing chunk" : stdgo.GoString));
                    };
                };
            };
        };
        return true;
    }
}
