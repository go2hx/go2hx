package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_protobuf_asInterface) class T_protobuf_static_extension {
    @:keep
    @:tdfield
    static public function _endMessage( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf>, _tag:stdgo.GoInt, _start:stdgo._internal.runtime.pprof.Pprof_t_msgoffset.T_msgOffset):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf> = _b;
        var _n1 = (_start : stdgo.GoInt);
        var _n2 = ((@:checkr _b ?? throw "null pointer dereference")._data.length : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L135"
        _b._length(_tag, (_n2 - _n1 : stdgo.GoInt));
        var _n3 = ((@:checkr _b ?? throw "null pointer dereference")._data.length : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L137"
        ((@:checkr _b ?? throw "null pointer dereference")._tmp.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _b ?? throw "null pointer dereference")._data.__slice__(_n2, _n3) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L138"
        ((@:checkr _b ?? throw "null pointer dereference")._data.__slice__((_n1 + ((_n3 - _n2 : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _b ?? throw "null pointer dereference")._data.__slice__(_n1, _n2) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L139"
        ((@:checkr _b ?? throw "null pointer dereference")._data.__slice__(_n1) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _b ?? throw "null pointer dereference")._tmp.__slice__(0, (_n3 - _n2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L140"
        (@:checkr _b ?? throw "null pointer dereference")._nest--;
    }
    @:keep
    @:tdfield
    static public function _startMessage( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf>):stdgo._internal.runtime.pprof.Pprof_t_msgoffset.T_msgOffset {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf> = _b;
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L128"
        (@:checkr _b ?? throw "null pointer dereference")._nest++;
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L129"
        return ((@:checkr _b ?? throw "null pointer dereference")._data.length : stdgo._internal.runtime.pprof.Pprof_t_msgoffset.T_msgOffset);
    }
    @:keep
    @:tdfield
    static public function _boolOpt( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf>, _tag:stdgo.GoInt, _x:Bool):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf> = _b;
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L119"
        if (!_x) {
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L120"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L122"
        _b._bool(_tag, _x);
    }
    @:keep
    @:tdfield
    static public function _bool( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf>, _tag:stdgo.GoInt, _x:Bool):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf> = _b;
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L111"
        if (_x) {
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L112"
            _b._uint64(_tag, (1i64 : stdgo.GoUInt64));
        } else {
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L114"
            _b._uint64(_tag, (0i64 : stdgo.GoUInt64));
        };
    }
    @:keep
    @:tdfield
    static public function _stringOpt( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf>, _tag:stdgo.GoInt, _x:stdgo.GoString):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf> = _b;
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L104"
        if (_x == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L105"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L107"
        _b._string(_tag, _x?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _strings( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf>, _tag:stdgo.GoInt, _x:stdgo.Slice<stdgo.GoString>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf> = _b;
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L98"
        for (__0 => _s in _x) {
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L99"
            _b._string(_tag, _s?.__copy__());
        };
    }
    @:keep
    @:tdfield
    static public function _string( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf>, _tag:stdgo.GoInt, _x:stdgo.GoString):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf> = _b;
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L93"
        _b._length(_tag, (_x.length));
        (@:checkr _b ?? throw "null pointer dereference")._data = ((@:checkr _b ?? throw "null pointer dereference")._data.__append__(...(_x : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _int64s( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf>, _tag:stdgo.GoInt, _x:stdgo.Slice<stdgo.GoInt64>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf> = _b;
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L73"
        if (((_x.length) > (2 : stdgo.GoInt) : Bool)) {
            var _n1 = ((@:checkr _b ?? throw "null pointer dereference")._data.length : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L76"
            for (__0 => _u in _x) {
                //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L77"
                _b._varint((_u : stdgo.GoUInt64));
            };
            var _n2 = ((@:checkr _b ?? throw "null pointer dereference")._data.length : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L80"
            _b._length(_tag, (_n2 - _n1 : stdgo.GoInt));
            var _n3 = ((@:checkr _b ?? throw "null pointer dereference")._data.length : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L82"
            ((@:checkr _b ?? throw "null pointer dereference")._tmp.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _b ?? throw "null pointer dereference")._data.__slice__(_n2, _n3) : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L83"
            ((@:checkr _b ?? throw "null pointer dereference")._data.__slice__((_n1 + ((_n3 - _n2 : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _b ?? throw "null pointer dereference")._data.__slice__(_n1, _n2) : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L84"
            ((@:checkr _b ?? throw "null pointer dereference")._data.__slice__(_n1) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _b ?? throw "null pointer dereference")._tmp.__slice__(0, (_n3 - _n2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L85"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L87"
        for (__0 => _u in _x) {
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L88"
            _b._int64(_tag, _u);
        };
    }
    @:keep
    @:tdfield
    static public function _int64Opt( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf>, _tag:stdgo.GoInt, _x:stdgo.GoInt64):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf> = _b;
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L66"
        if (_x == ((0i64 : stdgo.GoInt64))) {
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L67"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L69"
        _b._int64(_tag, _x);
    }
    @:keep
    @:tdfield
    static public function _int64( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf>, _tag:stdgo.GoInt, _x:stdgo.GoInt64):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf> = _b;
        var _u = (_x : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L62"
        _b._uint64(_tag, _u);
    }
    @:keep
    @:tdfield
    static public function _uint64Opt( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf>, _tag:stdgo.GoInt, _x:stdgo.GoUInt64):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf> = _b;
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L54"
        if (_x == ((0i64 : stdgo.GoUInt64))) {
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L55"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L57"
        _b._uint64(_tag, _x);
    }
    @:keep
    @:tdfield
    static public function _uint64s( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf>, _tag:stdgo.GoInt, _x:stdgo.Slice<stdgo.GoUInt64>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf> = _b;
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L34"
        if (((_x.length) > (2 : stdgo.GoInt) : Bool)) {
            var _n1 = ((@:checkr _b ?? throw "null pointer dereference")._data.length : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L37"
            for (__0 => _u in _x) {
                //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L38"
                _b._varint(_u);
            };
            var _n2 = ((@:checkr _b ?? throw "null pointer dereference")._data.length : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L41"
            _b._length(_tag, (_n2 - _n1 : stdgo.GoInt));
            var _n3 = ((@:checkr _b ?? throw "null pointer dereference")._data.length : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L43"
            ((@:checkr _b ?? throw "null pointer dereference")._tmp.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _b ?? throw "null pointer dereference")._data.__slice__(_n2, _n3) : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L44"
            ((@:checkr _b ?? throw "null pointer dereference")._data.__slice__((_n1 + ((_n3 - _n2 : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _b ?? throw "null pointer dereference")._data.__slice__(_n1, _n2) : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L45"
            ((@:checkr _b ?? throw "null pointer dereference")._data.__slice__(_n1) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _b ?? throw "null pointer dereference")._tmp.__slice__(0, (_n3 - _n2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L46"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L48"
        for (__0 => _u in _x) {
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L49"
            _b._uint64(_tag, _u);
        };
    }
    @:keep
    @:tdfield
    static public function _uint64( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf>, _tag:stdgo.GoInt, _x:stdgo.GoUInt64):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf> = _b;
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L29"
        _b._varint((((_tag : stdgo.GoUInt64) << (3i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (0i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L30"
        _b._varint(_x);
    }
    @:keep
    @:tdfield
    static public function _length( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf>, _tag:stdgo.GoInt, _len:stdgo.GoInt):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf> = _b;
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L23"
        _b._varint((((_tag : stdgo.GoUInt64) << (3i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L24"
        _b._varint((_len : stdgo.GoUInt64));
    }
    @:keep
    @:tdfield
    static public function _varint( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf>, _x:stdgo.GoUInt64):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf> = _b;
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protobuf.go#L15"
        while ((_x >= (128i64 : stdgo.GoUInt64) : Bool)) {
            (@:checkr _b ?? throw "null pointer dereference")._data = ((@:checkr _b ?? throw "null pointer dereference")._data.__append__(((_x : stdgo.GoUInt8) | (128 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            _x = (_x >> ((7i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        (@:checkr _b ?? throw "null pointer dereference")._data = ((@:checkr _b ?? throw "null pointer dereference")._data.__append__((_x : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
    }
}
