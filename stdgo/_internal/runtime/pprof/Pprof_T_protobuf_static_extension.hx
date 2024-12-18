package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_protobuf_asInterface) class T_protobuf_static_extension {
    @:keep
    static public function _endMessage( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_protobuf.T_protobuf>, _tag:stdgo.GoInt, _start:stdgo._internal.runtime.pprof.Pprof_T_msgOffset.T_msgOffset):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_protobuf.T_protobuf> = _b;
        var _n1 = (_start : stdgo.GoInt);
        var _n2 = (_b._data.length : stdgo.GoInt);
        _b._length(_tag, (_n2 - _n1 : stdgo.GoInt));
        var _n3 = (_b._data.length : stdgo.GoInt);
        (_b._tmp.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_b._data.__slice__(_n2, _n3) : stdgo.Slice<stdgo.GoUInt8>));
        (_b._data.__slice__((_n1 + ((_n3 - _n2 : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_b._data.__slice__(_n1, _n2) : stdgo.Slice<stdgo.GoUInt8>));
        (_b._data.__slice__(_n1) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_b._tmp.__slice__(0, (_n3 - _n2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        _b._nest--;
    }
    @:keep
    static public function _startMessage( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_protobuf.T_protobuf>):stdgo._internal.runtime.pprof.Pprof_T_msgOffset.T_msgOffset {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_protobuf.T_protobuf> = _b;
        _b._nest++;
        return (_b._data.length : stdgo._internal.runtime.pprof.Pprof_T_msgOffset.T_msgOffset);
    }
    @:keep
    static public function _boolOpt( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_protobuf.T_protobuf>, _tag:stdgo.GoInt, _x:Bool):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_protobuf.T_protobuf> = _b;
        if (!_x) {
            return;
        };
        _b._bool(_tag, _x);
    }
    @:keep
    static public function _bool( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_protobuf.T_protobuf>, _tag:stdgo.GoInt, _x:Bool):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_protobuf.T_protobuf> = _b;
        if (_x) {
            _b._uint64(_tag, (1i64 : stdgo.GoUInt64));
        } else {
            _b._uint64(_tag, (0i64 : stdgo.GoUInt64));
        };
    }
    @:keep
    static public function _stringOpt( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_protobuf.T_protobuf>, _tag:stdgo.GoInt, _x:stdgo.GoString):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_protobuf.T_protobuf> = _b;
        if (_x == (stdgo.Go.str())) {
            return;
        };
        _b._string(_tag, _x?.__copy__());
    }
    @:keep
    static public function _strings( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_protobuf.T_protobuf>, _tag:stdgo.GoInt, _x:stdgo.Slice<stdgo.GoString>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_protobuf.T_protobuf> = _b;
        for (__0 => _s in _x) {
            _b._string(_tag, _s?.__copy__());
        };
    }
    @:keep
    static public function _string( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_protobuf.T_protobuf>, _tag:stdgo.GoInt, _x:stdgo.GoString):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_protobuf.T_protobuf> = _b;
        _b._length(_tag, (_x.length));
        _b._data = (_b._data.__append__(...(_x : Array<stdgo.GoUInt8>)));
    }
    @:keep
    static public function _int64s( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_protobuf.T_protobuf>, _tag:stdgo.GoInt, _x:stdgo.Slice<stdgo.GoInt64>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_protobuf.T_protobuf> = _b;
        if (((_x.length) > (2 : stdgo.GoInt) : Bool)) {
            var _n1 = (_b._data.length : stdgo.GoInt);
            for (__0 => _u in _x) {
                _b._varint((_u : stdgo.GoUInt64));
            };
            var _n2 = (_b._data.length : stdgo.GoInt);
            _b._length(_tag, (_n2 - _n1 : stdgo.GoInt));
            var _n3 = (_b._data.length : stdgo.GoInt);
            (_b._tmp.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_b._data.__slice__(_n2, _n3) : stdgo.Slice<stdgo.GoUInt8>));
            (_b._data.__slice__((_n1 + ((_n3 - _n2 : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_b._data.__slice__(_n1, _n2) : stdgo.Slice<stdgo.GoUInt8>));
            (_b._data.__slice__(_n1) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_b._tmp.__slice__(0, (_n3 - _n2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            return;
        };
        for (__0 => _u in _x) {
            _b._int64(_tag, _u);
        };
    }
    @:keep
    static public function _int64Opt( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_protobuf.T_protobuf>, _tag:stdgo.GoInt, _x:stdgo.GoInt64):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_protobuf.T_protobuf> = _b;
        if (_x == ((0i64 : stdgo.GoInt64))) {
            return;
        };
        _b._int64(_tag, _x);
    }
    @:keep
    static public function _int64( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_protobuf.T_protobuf>, _tag:stdgo.GoInt, _x:stdgo.GoInt64):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_protobuf.T_protobuf> = _b;
        var _u = (_x : stdgo.GoUInt64);
        _b._uint64(_tag, _u);
    }
    @:keep
    static public function _uint64Opt( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_protobuf.T_protobuf>, _tag:stdgo.GoInt, _x:stdgo.GoUInt64):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_protobuf.T_protobuf> = _b;
        if (_x == ((0i64 : stdgo.GoUInt64))) {
            return;
        };
        _b._uint64(_tag, _x);
    }
    @:keep
    static public function _uint64s( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_protobuf.T_protobuf>, _tag:stdgo.GoInt, _x:stdgo.Slice<stdgo.GoUInt64>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_protobuf.T_protobuf> = _b;
        if (((_x.length) > (2 : stdgo.GoInt) : Bool)) {
            var _n1 = (_b._data.length : stdgo.GoInt);
            for (__0 => _u in _x) {
                _b._varint(_u);
            };
            var _n2 = (_b._data.length : stdgo.GoInt);
            _b._length(_tag, (_n2 - _n1 : stdgo.GoInt));
            var _n3 = (_b._data.length : stdgo.GoInt);
            (_b._tmp.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_b._data.__slice__(_n2, _n3) : stdgo.Slice<stdgo.GoUInt8>));
            (_b._data.__slice__((_n1 + ((_n3 - _n2 : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_b._data.__slice__(_n1, _n2) : stdgo.Slice<stdgo.GoUInt8>));
            (_b._data.__slice__(_n1) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_b._tmp.__slice__(0, (_n3 - _n2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            return;
        };
        for (__0 => _u in _x) {
            _b._uint64(_tag, _u);
        };
    }
    @:keep
    static public function _uint64( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_protobuf.T_protobuf>, _tag:stdgo.GoInt, _x:stdgo.GoUInt64):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_protobuf.T_protobuf> = _b;
        _b._varint((((_tag : stdgo.GoUInt64) << (3i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (0i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
        _b._varint(_x);
    }
    @:keep
    static public function _length( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_protobuf.T_protobuf>, _tag:stdgo.GoInt, _len:stdgo.GoInt):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_protobuf.T_protobuf> = _b;
        _b._varint((((_tag : stdgo.GoUInt64) << (3i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
        _b._varint((_len : stdgo.GoUInt64));
    }
    @:keep
    static public function _varint( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_protobuf.T_protobuf>, _x:stdgo.GoUInt64):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_protobuf.T_protobuf> = _b;
        while ((_x >= (128i64 : stdgo.GoUInt64) : Bool)) {
            _b._data = (_b._data.__append__(((_x : stdgo.GoUInt8) | (128 : stdgo.GoUInt8) : stdgo.GoUInt8)));
            _x = (_x >> ((7i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        _b._data = (_b._data.__append__((_x : stdgo.GoUInt8)));
    }
}
