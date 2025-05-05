package stdgo._internal.index.suffixarray;
@:keep @:allow(stdgo._internal.index.suffixarray.Suffixarray.Index_asInterface) class Index_static_extension {
    @:keep
    @:tdfield
    static public function findAllIndex( _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_index.Index>, _r:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> {
        @:recv var _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_index.Index> = _x;
        var _result = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        var __tmp__ = _r.literalPrefix(), _prefix:stdgo.GoString = __tmp__._0, _complete:Bool = __tmp__._1;
        var _lit = (_prefix : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L293"
        if (_prefix == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L294"
            return _result = _r.findAllIndex((@:checkr _x ?? throw "null pointer dereference")._data, _n);
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L299"
        if (_complete) {
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L306"
            {
                var _n1 = (_n : stdgo.GoInt);
                while (true) {
                    var _indices = _x.lookup(_lit, _n1);
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L308"
                    if ((_indices.length) == ((0 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L309"
                        return _result;
                    };
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L311"
                    stdgo._internal.sort.Sort_ints.ints(_indices);
var _pairs = (new stdgo.Slice<stdgo.GoInt>(((2 : stdgo.GoInt) * (_indices.length) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
_result = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>((_indices.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
var _count = (0 : stdgo.GoInt);
var _prev = (0 : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L316"
                    for (__0 => _i in _indices) {
                        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L317"
                        if (_count == (_n)) {
                            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L318"
                            break;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L321"
                        if ((_prev <= _i : Bool)) {
                            var _j = ((2 : stdgo.GoInt) * _count : stdgo.GoInt);
                            _pairs[(_j + (0 : stdgo.GoInt) : stdgo.GoInt)] = _i;
                            _pairs[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_i + (_lit.length) : stdgo.GoInt);
                            _result[(_count : stdgo.GoInt)] = (_pairs.__slice__(_j, (_j + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
                            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L326"
                            _count++;
                            _prev = (_i + (_lit.length) : stdgo.GoInt);
                        };
                    };
_result = (_result.__slice__((0 : stdgo.GoInt), _count) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L331"
                    if ((((_result.length) >= _n : Bool) || (_indices.length != _n1) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L334"
                        break;
                    };
                    _n1 = (_n1 + (((2 : stdgo.GoInt) * ((_n - (_result.length) : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.GoInt);
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L337"
            if ((_result.length) == ((0 : stdgo.GoInt))) {
                _result = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
            };
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L340"
            return _result;
        };
        _r = stdgo._internal.regexp.Regexp_mustcompile.mustCompile((("^" : stdgo.GoString) + (_r.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L350"
        {
            var _n1 = (_n : stdgo.GoInt);
            while (true) {
                var _indices = _x.lookup(_lit, _n1);
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L352"
                if ((_indices.length) == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L353"
                    return _result;
                };
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L355"
                stdgo._internal.sort.Sort_ints.ints(_indices);
_result = (_result.__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
var _prev = (0 : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L358"
                for (__0 => _i in _indices) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L359"
                    if ((_result.length) == (_n)) {
                        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L360"
                        break;
                    };
                    var _m = _r.findIndex(((@:checkr _x ?? throw "null pointer dereference")._data.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>));
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L364"
                    if (((_m != null) && (_prev <= _i : Bool) : Bool)) {
                        _m[(0 : stdgo.GoInt)] = _i;
                        _m[(1 : stdgo.GoInt)] = (_m[(1 : stdgo.GoInt)] + (_i) : stdgo.GoInt);
                        _result = (_result.__append__(_m) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
                        _prev = _m[(1 : stdgo.GoInt)];
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L371"
                if ((((_result.length) >= _n : Bool) || (_indices.length != _n1) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L374"
                    break;
                };
                _n1 = (_n1 + (((2 : stdgo.GoInt) * ((_n - (_result.length) : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L377"
        if ((_result.length) == ((0 : stdgo.GoInt))) {
            _result = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L380"
        return _result;
    }
    @:keep
    @:tdfield
    static public function lookup( _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_index.Index>, _s:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoInt> {
        @:recv var _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_index.Index> = _x;
        var _result = (null : stdgo.Slice<stdgo.GoInt>);
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L257"
        if ((((_s.length) > (0 : stdgo.GoInt) : Bool) && (_n != (0 : stdgo.GoInt)) : Bool)) {
            var _matches = (_x._lookupAll(_s)?.__copy__() : stdgo._internal.index.suffixarray.Suffixarray_t_ints.T_ints);
            var _count = (_matches._len() : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L260"
            if (((_n < (0 : stdgo.GoInt) : Bool) || (_count < _n : Bool) : Bool)) {
                _n = _count;
            };
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L264"
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                _result = (new stdgo.Slice<stdgo.GoInt>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L266"
                if (_matches._int32 != null) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L267"
                    for (_i => _ in _result) {
                        _result[(_i : stdgo.GoInt)] = (_matches._int32[(_i : stdgo.GoInt)] : stdgo.GoInt);
                    };
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L271"
                    for (_i => _ in _result) {
                        _result[(_i : stdgo.GoInt)] = (_matches._int64[(_i : stdgo.GoInt)] : stdgo.GoInt);
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L277"
        return _result;
    }
    @:keep
    @:tdfield
    static public function _lookupAll( _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_index.Index>, _s:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.index.suffixarray.Suffixarray_t_ints.T_ints {
        @:recv var _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_index.Index> = _x;
        var _i = (stdgo._internal.sort.Sort_search.search((@:checkr _x ?? throw "null pointer dereference")._sa._len(), function(_i:stdgo.GoInt):Bool {
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L245"
            return (stdgo._internal.bytes.Bytes_compare.compare(_x._at(_i), _s) >= (0 : stdgo.GoInt) : Bool);
        }) : stdgo.GoInt);
        var _j = (_i + stdgo._internal.sort.Sort_search.search(((@:checkr _x ?? throw "null pointer dereference")._sa._len() - _i : stdgo.GoInt), function(_j:stdgo.GoInt):Bool {
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L247"
            return !stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_x._at((_j + _i : stdgo.GoInt)), _s);
        }) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L248"
        return (@:checkr _x ?? throw "null pointer dereference")._sa._slice(_i, _j)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _at( _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_index.Index>, _i:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_index.Index> = _x;
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L237"
        return ((@:checkr _x ?? throw "null pointer dereference")._data.__slice__((@:checkr _x ?? throw "null pointer dereference")._sa._get(_i)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function bytes( _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_index.Index>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_index.Index> = _x;
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L233"
        return (@:checkr _x ?? throw "null pointer dereference")._data;
    }
    @:keep
    @:tdfield
    static public function write( _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_index.Index>, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        @:recv var _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_index.Index> = _x;
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((16384 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L209"
        {
            var _err = (stdgo._internal.index.suffixarray.Suffixarray__writeint._writeInt(_w, _buf, ((@:checkr _x ?? throw "null pointer dereference")._data.length)) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L210"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L214"
        {
            var __tmp__ = _w.write((@:checkr _x ?? throw "null pointer dereference")._data), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L215"
                return _err;
            };
        };
        var _sa = ((@:checkr _x ?? throw "null pointer dereference")._sa?.__copy__() : stdgo._internal.index.suffixarray.Suffixarray_t_ints.T_ints);
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L220"
        while ((_sa._len() > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = stdgo._internal.index.suffixarray.Suffixarray__writeslice._writeSlice(_w, _buf, _sa?.__copy__()), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L222"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L223"
                return _err;
            };
            _sa = _sa._slice(_n, _sa._len())?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L227"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function read( _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_index.Index>, _r:stdgo._internal.io.Io_reader.Reader):stdgo.Error {
        @:recv var _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_index.Index> = _x;
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((16384 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = stdgo._internal.index.suffixarray.Suffixarray__readint._readInt(_r, _buf), _n64:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L160"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L161"
            return _err;
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L163"
        if (((((_n64 : stdgo.GoInt) : stdgo.GoInt64) != _n64) || ((_n64 : stdgo.GoInt) < (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L164"
            return stdgo._internal.index.suffixarray.Suffixarray__errtoobig._errTooBig;
        };
        var _n = (_n64 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L169"
        if (((((((2 : stdgo.GoInt) * _n : stdgo.GoInt) < (@:checkr _x ?? throw "null pointer dereference")._data.capacity : Bool) || ((@:checkr _x ?? throw "null pointer dereference")._data.capacity < _n : Bool) : Bool) || ((@:checkr _x ?? throw "null pointer dereference")._sa._int32 != null && (_n > stdgo._internal.index.suffixarray.Suffixarray__maxdata32._maxData32 : Bool) : Bool) : Bool) || ((@:checkr _x ?? throw "null pointer dereference")._sa._int64 != null && (_n <= stdgo._internal.index.suffixarray.Suffixarray__maxdata32._maxData32 : Bool) : Bool) : Bool)) {
            (@:checkr _x ?? throw "null pointer dereference")._data = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            (@:checkr _x ?? throw "null pointer dereference")._sa._int32 = (null : stdgo.Slice<stdgo.GoInt32>);
            (@:checkr _x ?? throw "null pointer dereference")._sa._int64 = (null : stdgo.Slice<stdgo.GoInt64>);
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L175"
            if ((_n <= stdgo._internal.index.suffixarray.Suffixarray__maxdata32._maxData32 : Bool)) {
                (@:checkr _x ?? throw "null pointer dereference")._sa._int32 = (new stdgo.Slice<stdgo.GoInt32>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            } else {
                (@:checkr _x ?? throw "null pointer dereference")._sa._int64 = (new stdgo.Slice<stdgo.GoInt64>((_n : stdgo.GoInt).toBasic(), 0).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
            };
        } else {
            (@:checkr _x ?? throw "null pointer dereference")._data = ((@:checkr _x ?? throw "null pointer dereference")._data.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
            (@:checkr _x ?? throw "null pointer dereference")._sa = (@:checkr _x ?? throw "null pointer dereference")._sa._slice((0 : stdgo.GoInt), _n)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L187"
        {
            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_r, (@:checkr _x ?? throw "null pointer dereference")._data), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L188"
                return _err;
            };
        };
        var _sa = ((@:checkr _x ?? throw "null pointer dereference")._sa?.__copy__() : stdgo._internal.index.suffixarray.Suffixarray_t_ints.T_ints);
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L193"
        while ((_sa._len() > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = stdgo._internal.index.suffixarray.Suffixarray__readslice._readSlice(_r, _buf, _sa?.__copy__()), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L195"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L196"
                return _err;
            };
            _sa = _sa._slice(_n, _sa._len())?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray.go#L200"
        return (null : stdgo.Error);
    }
}
