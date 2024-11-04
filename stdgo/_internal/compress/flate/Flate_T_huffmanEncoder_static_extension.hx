package stdgo._internal.compress.flate;
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_huffmanEncoder_asInterface) class T_huffmanEncoder_static_extension {
    @:keep
    static public function _generate( _h:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanEncoder.T_huffmanEncoder>, _freq:stdgo.Slice<stdgo.GoInt32>, _maxBits:stdgo.GoInt32):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanEncoder.T_huffmanEncoder> = _h;
        if (_h._freqcache == null) {
            _h._freqcache = (new stdgo.Slice<stdgo._internal.compress.flate.Flate_T_literalNode.T_literalNode>((287 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((287 : stdgo.GoInt).toBasic() > 0 ? (287 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.compress.flate.Flate_T_literalNode.T_literalNode)]) : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_literalNode.T_literalNode>);
        };
        var _list = (_h._freqcache.__slice__(0, ((_freq.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_literalNode.T_literalNode>);
        var _count = (0 : stdgo.GoInt);
        for (_i => _f in _freq) {
            if (_f != ((0 : stdgo.GoInt32))) {
                _list[(_count : stdgo.GoInt)] = (new stdgo._internal.compress.flate.Flate_T_literalNode.T_literalNode((_i : stdgo.GoUInt16), _f) : stdgo._internal.compress.flate.Flate_T_literalNode.T_literalNode);
                _count++;
            } else {
                _h._codes[(_i : stdgo.GoInt)]._len = (0 : stdgo.GoUInt16);
            };
        };
        _list = (_list.__slice__(0, _count) : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_literalNode.T_literalNode>);
        if ((_count <= (2 : stdgo.GoInt) : Bool)) {
            for (_i => _node in _list) {
                _h._codes[(_node._literal : stdgo.GoInt)]._set((_i : stdgo.GoUInt16), (1 : stdgo.GoUInt16));
            };
            return;
        };
        _h._lfs._sort(_list);
        var _bitCount = _h._bitCounts(_list, _maxBits);
        _h._assignEncodingAndSize(_bitCount, _list);
    }
    @:keep
    static public function _assignEncodingAndSize( _h:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanEncoder.T_huffmanEncoder>, _bitCount:stdgo.Slice<stdgo.GoInt32>, _list:stdgo.Slice<stdgo._internal.compress.flate.Flate_T_literalNode.T_literalNode>):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanEncoder.T_huffmanEncoder> = _h;
        var _code = ((0 : stdgo.GoUInt16) : stdgo.GoUInt16);
        for (_n => _bits in _bitCount) {
            _code = (_code << ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt16);
            if (((_n == (0 : stdgo.GoInt)) || (_bits == (0 : stdgo.GoInt32)) : Bool)) {
                continue;
            };
            var _chunk = (_list.__slice__(((_list.length) - (_bits : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_literalNode.T_literalNode>);
            _h._lns._sort(_chunk);
            for (__0 => _node in _chunk) {
                _h._codes[(_node._literal : stdgo.GoInt)] = ({ _code : stdgo._internal.compress.flate.Flate__reverseBits._reverseBits(_code, (_n : stdgo.GoUInt8)), _len : (_n : stdgo.GoUInt16) } : stdgo._internal.compress.flate.Flate_T_hcode.T_hcode);
                _code++;
            };
            _list = (_list.__slice__((0 : stdgo.GoInt), ((_list.length) - (_bits : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_literalNode.T_literalNode>);
        };
    }
    @:keep
    static public function _bitCounts( _h:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanEncoder.T_huffmanEncoder>, _list:stdgo.Slice<stdgo._internal.compress.flate.Flate_T_literalNode.T_literalNode>, _maxBits:stdgo.GoInt32):stdgo.Slice<stdgo.GoInt32> {
        @:recv var _h:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanEncoder.T_huffmanEncoder> = _h;
        if ((_maxBits >= (16 : stdgo.GoInt32) : Bool)) {
            throw stdgo.Go.toInterface(("flate: maxBits too large" : stdgo.GoString));
        };
        var _n = (_list.length : stdgo.GoInt32);
        _list = (_list.__slice__((0 : stdgo.GoInt), (_n + (1 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_literalNode.T_literalNode>);
        _list[(_n : stdgo.GoInt)] = stdgo._internal.compress.flate.Flate__maxNode._maxNode()?.__copy__();
        if ((_maxBits > (_n - (1 : stdgo.GoInt32) : stdgo.GoInt32) : Bool)) {
            _maxBits = (_n - (1 : stdgo.GoInt32) : stdgo.GoInt32);
        };
        var _levels:stdgo.GoArray<stdgo._internal.compress.flate.Flate_T_levelInfo.T_levelInfo> = new stdgo.GoArray<stdgo._internal.compress.flate.Flate_T_levelInfo.T_levelInfo>(16, 16, ...[for (i in 0 ... 16) ({} : stdgo._internal.compress.flate.Flate_T_levelInfo.T_levelInfo)]);
        var _leafCounts:stdgo.GoArray<stdgo.GoArray<stdgo.GoInt32>> = new stdgo.GoArray<stdgo.GoArray<stdgo.GoInt32>>(16, 16, ...[for (i in 0 ... 16) new stdgo.GoArray<stdgo.GoInt32>(16, 16, ...[for (i in 0 ... 16) (0 : stdgo.GoInt32)])]);
        {
            var _level = ((1 : stdgo.GoInt32) : stdgo.GoInt32);
            while ((_level <= _maxBits : Bool)) {
                _levels[(_level : stdgo.GoInt)] = ({ _level : _level, _lastFreq : _list[(1 : stdgo.GoInt)]._freq, _nextCharFreq : _list[(2 : stdgo.GoInt)]._freq, _nextPairFreq : (_list[(0 : stdgo.GoInt)]._freq + _list[(1 : stdgo.GoInt)]._freq : stdgo.GoInt32) } : stdgo._internal.compress.flate.Flate_T_levelInfo.T_levelInfo);
_leafCounts[(_level : stdgo.GoInt)][(_level : stdgo.GoInt)] = (2 : stdgo.GoInt32);
if (_level == ((1 : stdgo.GoInt32))) {
                    _levels[(_level : stdgo.GoInt)]._nextPairFreq = (2147483647 : stdgo.GoInt32);
                };
                _level++;
            };
        };
        _levels[(_maxBits : stdgo.GoInt)]._needed = (((2 : stdgo.GoInt32) * _n : stdgo.GoInt32) - (4 : stdgo.GoInt32) : stdgo.GoInt32);
        var _level = (_maxBits : stdgo.GoInt32);
        while (true) {
            var _l = (stdgo.Go.setRef(_levels[(_level : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_levelInfo.T_levelInfo>);
            if (((_l._nextPairFreq == (2147483647 : stdgo.GoInt32)) && (_l._nextCharFreq == (2147483647 : stdgo.GoInt32)) : Bool)) {
                _l._needed = (0 : stdgo.GoInt32);
                _levels[((_level + (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)]._nextPairFreq = (2147483647 : stdgo.GoInt32);
                _level++;
                continue;
            };
            var _prevFreq = (_l._lastFreq : stdgo.GoInt32);
            if ((_l._nextCharFreq < _l._nextPairFreq : Bool)) {
                var _n = (_leafCounts[(_level : stdgo.GoInt)][(_level : stdgo.GoInt)] + (1 : stdgo.GoInt32) : stdgo.GoInt32);
                _l._lastFreq = _l._nextCharFreq;
                _leafCounts[(_level : stdgo.GoInt)][(_level : stdgo.GoInt)] = _n;
                _l._nextCharFreq = _list[(_n : stdgo.GoInt)]._freq;
            } else {
                _l._lastFreq = _l._nextPairFreq;
                stdgo.Go.copySlice((_leafCounts[(_level : stdgo.GoInt)].__slice__(0, _level) : stdgo.Slice<stdgo.GoInt32>), (_leafCounts[((_level - (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)].__slice__(0, _level) : stdgo.Slice<stdgo.GoInt32>));
                _levels[((_l._level - (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)]._needed = (2 : stdgo.GoInt32);
            };
            {
                _l._needed--;
                if (_l._needed == ((0 : stdgo.GoInt32))) {
                    if (_l._level == (_maxBits)) {
                        break;
                    };
                    _levels[((_l._level + (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)]._nextPairFreq = (_prevFreq + _l._lastFreq : stdgo.GoInt32);
                    _level++;
                } else {
                    while ((_levels[((_level - (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)]._needed > (0 : stdgo.GoInt32) : Bool)) {
                        _level--;
                    };
                };
            };
        };
        if (_leafCounts[(_maxBits : stdgo.GoInt)][(_maxBits : stdgo.GoInt)] != (_n)) {
            throw stdgo.Go.toInterface(("leafCounts[maxBits][maxBits] != n" : stdgo.GoString));
        };
        var _bitCount = (_h._bitCount.__slice__(0, (_maxBits + (1 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.Slice<stdgo.GoInt32>);
        var _bits = (1 : stdgo.GoInt);
        var _counts = (stdgo.Go.setRef(_leafCounts[(_maxBits : stdgo.GoInt)]) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt32>>);
        {
            var _level = (_maxBits : stdgo.GoInt32);
            while ((_level > (0 : stdgo.GoInt32) : Bool)) {
                _bitCount[(_bits : stdgo.GoInt)] = (_counts[(_level : stdgo.GoInt)] - _counts[((_level - (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)] : stdgo.GoInt32);
_bits++;
                _level--;
            };
        };
        return _bitCount;
    }
    @:keep
    static public function _bitLength( _h:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanEncoder.T_huffmanEncoder>, _freq:stdgo.Slice<stdgo.GoInt32>):stdgo.GoInt {
        @:recv var _h:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanEncoder.T_huffmanEncoder> = _h;
        var _total:stdgo.GoInt = (0 : stdgo.GoInt);
        for (_i => _f in _freq) {
            if (_f != ((0 : stdgo.GoInt32))) {
                _total = (_total + (((_f : stdgo.GoInt) * (_h._codes[(_i : stdgo.GoInt)]._len : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        return _total;
    }
}
