package stdgo._internal.index.suffixarray;
@:keep @:allow(stdgo._internal.index.suffixarray.Suffixarray.Index_asInterface) class Index_static_extension {
    @:keep
    static public function findAllIndex( _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_Index.Index>, _r:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> {
        @:recv var _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_Index.Index> = _x;
        var _result = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        var __tmp__ = _r.literalPrefix(), _prefix:stdgo.GoString = __tmp__._0, _complete:Bool = __tmp__._1;
        var _lit = (_prefix : stdgo.Slice<stdgo.GoUInt8>);
        if (_prefix == (stdgo.Go.str())) {
            return _r.findAllIndex(_x._data, _n);
        };
        if (_complete) {
            {
                var _n1 = (_n : stdgo.GoInt);
                stdgo.Go.cfor(true, _n1 = (_n1 + (((2 : stdgo.GoInt) * ((_n - (_result.length) : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.GoInt), {
                    var _indices = _x.lookup(_lit, _n1);
                    if ((_indices.length) == ((0 : stdgo.GoInt))) {
                        return _result;
                    };
                    stdgo._internal.sort.Sort_ints.ints(_indices);
                    var _pairs = (new stdgo.Slice<stdgo.GoInt>(((2 : stdgo.GoInt) * (_indices.length) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>((_indices.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
                    var _count = (0 : stdgo.GoInt);
                    var _prev = (0 : stdgo.GoInt);
                    for (__0 => _i in _indices) {
                        if (_count == (_n)) {
                            break;
                        };
                        if ((_prev <= _i : Bool)) {
                            var _j = ((2 : stdgo.GoInt) * _count : stdgo.GoInt);
                            _pairs[(_j + (0 : stdgo.GoInt) : stdgo.GoInt)] = _i;
                            _pairs[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_i + (_lit.length) : stdgo.GoInt);
                            _result[(_count : stdgo.GoInt)] = (_pairs.__slice__(_j, (_j + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
                            _count++;
                            _prev = (_i + (_lit.length) : stdgo.GoInt);
                        };
                    };
                    _result = (_result.__slice__((0 : stdgo.GoInt), _count) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
                    if ((((_result.length) >= _n : Bool) || (_indices.length != _n1) : Bool)) {
                        break;
                    };
                });
            };
            if ((_result.length) == ((0 : stdgo.GoInt))) {
                _result = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
            };
            return _result;
        };
        _r = stdgo._internal.regexp.Regexp_mustCompile.mustCompile((("^" : stdgo.GoString) + (_r.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
        {
            var _n1 = (_n : stdgo.GoInt);
            stdgo.Go.cfor(true, _n1 = (_n1 + (((2 : stdgo.GoInt) * ((_n - (_result.length) : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.GoInt), {
                var _indices = _x.lookup(_lit, _n1);
                if ((_indices.length) == ((0 : stdgo.GoInt))) {
                    return _result;
                };
                stdgo._internal.sort.Sort_ints.ints(_indices);
                _result = (_result.__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
                var _prev = (0 : stdgo.GoInt);
                for (__0 => _i in _indices) {
                    if ((_result.length) == (_n)) {
                        break;
                    };
                    var _m = _r.findIndex((_x._data.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>));
                    if (((_m != null) && (_prev <= _i : Bool) : Bool)) {
                        _m[(0 : stdgo.GoInt)] = _i;
                        _m[(1 : stdgo.GoInt)] = (_m[(1 : stdgo.GoInt)] + (_i) : stdgo.GoInt);
                        _result = (_result.__append__(_m));
                        _prev = _m[(1 : stdgo.GoInt)];
                    };
                };
                if ((((_result.length) >= _n : Bool) || (_indices.length != _n1) : Bool)) {
                    break;
                };
            });
        };
        if ((_result.length) == ((0 : stdgo.GoInt))) {
            _result = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        };
        return _result;
    }
    @:keep
    static public function lookup( _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_Index.Index>, _s:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoInt> {
        @:recv var _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_Index.Index> = _x;
        var _result = (null : stdgo.Slice<stdgo.GoInt>);
        if ((((_s.length) > (0 : stdgo.GoInt) : Bool) && (_n != (0 : stdgo.GoInt)) : Bool)) {
            var _matches = (_x._lookupAll(_s)?.__copy__() : stdgo._internal.index.suffixarray.Suffixarray_T_ints.T_ints);
            var _count = (_matches._len() : stdgo.GoInt);
            if (((_n < (0 : stdgo.GoInt) : Bool) || (_count < _n : Bool) : Bool)) {
                _n = _count;
            };
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                _result = (new stdgo.Slice<stdgo.GoInt>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                if (_matches._int32 != null) {
                    for (_i => _ in _result) {
                        _result[(_i : stdgo.GoInt)] = (_matches._int32[(_i : stdgo.GoInt)] : stdgo.GoInt);
                    };
                } else {
                    for (_i => _ in _result) {
                        _result[(_i : stdgo.GoInt)] = (_matches._int64[(_i : stdgo.GoInt)] : stdgo.GoInt);
                    };
                };
            };
        };
        return _result;
    }
    @:keep
    static public function _lookupAll( _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_Index.Index>, _s:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.index.suffixarray.Suffixarray_T_ints.T_ints {
        @:recv var _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_Index.Index> = _x;
        var _i = (stdgo._internal.sort.Sort_search.search(_x._sa._len(), function(_i:stdgo.GoInt):Bool {
            return (stdgo._internal.bytes.Bytes_compare.compare(_x._at(_i), _s) >= (0 : stdgo.GoInt) : Bool);
        }) : stdgo.GoInt);
        var _j = (_i + stdgo._internal.sort.Sort_search.search((_x._sa._len() - _i : stdgo.GoInt), function(_j:stdgo.GoInt):Bool {
            return !stdgo._internal.bytes.Bytes_hasPrefix.hasPrefix(_x._at((_j + _i : stdgo.GoInt)), _s);
        }) : stdgo.GoInt);
        return _x._sa._slice(_i, _j)?.__copy__();
    }
    @:keep
    static public function _at( _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_Index.Index>, _i:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_Index.Index> = _x;
        return (_x._data.__slice__(_x._sa._get(_i)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    static public function bytes( _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_Index.Index>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_Index.Index> = _x;
        return _x._data;
    }
    @:keep
    static public function write( _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_Index.Index>, _w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error {
        @:recv var _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_Index.Index> = _x;
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((16384 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _err = (stdgo._internal.index.suffixarray.Suffixarray__writeInt._writeInt(_w, _buf, (_x._data.length)) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        {
            var __tmp__ = _w.write(_x._data), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var _sa = (_x._sa?.__copy__() : stdgo._internal.index.suffixarray.Suffixarray_T_ints.T_ints);
        while ((_sa._len() > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = stdgo._internal.index.suffixarray.Suffixarray__writeSlice._writeSlice(_w, _buf, _sa?.__copy__()), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            _sa = _sa._slice(_n, _sa._len())?.__copy__();
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function read( _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_Index.Index>, _r:stdgo._internal.io.Io_Reader.Reader):stdgo.Error {
        @:recv var _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_Index.Index> = _x;
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((16384 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = stdgo._internal.index.suffixarray.Suffixarray__readInt._readInt(_r, _buf), _n64:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        if (((((_n64 : stdgo.GoInt) : stdgo.GoInt64) != _n64) || ((_n64 : stdgo.GoInt) < (0 : stdgo.GoInt) : Bool) : Bool)) {
            return stdgo._internal.index.suffixarray.Suffixarray__errTooBig._errTooBig;
        };
        var _n = (_n64 : stdgo.GoInt);
        if (((((((2 : stdgo.GoInt) * _n : stdgo.GoInt) < _x._data.capacity : Bool) || (_x._data.capacity < _n : Bool) : Bool) || (_x._sa._int32 != null && (_n > stdgo._internal.index.suffixarray.Suffixarray__maxData32._maxData32 : Bool) : Bool) : Bool) || (_x._sa._int64 != null && (_n <= stdgo._internal.index.suffixarray.Suffixarray__maxData32._maxData32 : Bool) : Bool) : Bool)) {
            _x._data = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            _x._sa._int32 = (null : stdgo.Slice<stdgo.GoInt32>);
            _x._sa._int64 = (null : stdgo.Slice<stdgo.GoInt64>);
            if ((_n <= stdgo._internal.index.suffixarray.Suffixarray__maxData32._maxData32 : Bool)) {
                _x._sa._int32 = (new stdgo.Slice<stdgo.GoInt32>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            } else {
                _x._sa._int64 = (new stdgo.Slice<stdgo.GoInt64>((_n : stdgo.GoInt).toBasic(), 0).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
            };
        } else {
            _x._data = (_x._data.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
            _x._sa = _x._sa._slice((0 : stdgo.GoInt), _n)?.__copy__();
        };
        {
            var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_r, _x._data), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var _sa = (_x._sa?.__copy__() : stdgo._internal.index.suffixarray.Suffixarray_T_ints.T_ints);
        while ((_sa._len() > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = stdgo._internal.index.suffixarray.Suffixarray__readSlice._readSlice(_r, _buf, _sa?.__copy__()), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            _sa = _sa._slice(_n, _sa._len())?.__copy__();
        };
        return (null : stdgo.Error);
    }
}
