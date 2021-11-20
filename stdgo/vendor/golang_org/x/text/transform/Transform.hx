package stdgo.vendor.golang_org.x.text.transform;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
typedef Transformer = StructType & {
    public function transform(_dst:Slice<GoByte>, _src:Slice<GoByte>, _atEOF:Bool):{ var _0 : GoInt; var _1 : GoInt; var _2 : Error; };
    public function reset():Void;
};
typedef SpanningTransformer = StructType & {
    > Transformer,
    public function span(_src:Slice<GoByte>, _atEOF:Bool):{ var _0 : GoInt; var _1 : Error; };
};
@:structInit class NopResetter {
    public function reset():Void {}
    public function new() stdgo.internal.Macro.initLocals();
    public function toString() {
        return "{}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new NopResetter();
    }
    public function __set__(__tmp__) {
        return this;
    }
}
@:structInit class Reader {
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((0 : GoInt)), _err:stdgo.Error = ((((null : stdgo.Error)) : Error));
        while (true) {
            if (_r.value._dst0 != _r.value._dst1) {
                _n = Go.copy(_p, _r.value._dst.__slice__(_r.value._dst0, _r.value._dst1));
                _r.value._dst0 = _r.value._dst0 + (_n);
                if (_r.value._dst0 == _r.value._dst1 && _r.value._transformComplete) {
                    return { _0 : _n, _1 : _r.value._err };
                };
                return { _0 : _n, _1 : ((null : stdgo.Error)) };
            } else if (_r.value._transformComplete) {
                return { _0 : ((0 : GoInt)), _1 : _r.value._err };
            };
            if (_r.value._src0 != _r.value._src1 || _r.value._err != null) {
                _r.value._dst0 = ((0 : GoInt));
                {
                    var __tmp__ = _r.value._t.transform(_r.value._dst, _r.value._src.__slice__(_r.value._src0, _r.value._src1), Go.toInterface(_r.value._err) == Go.toInterface(stdgo.io.Io.eof));
                    _r.value._dst1 = __tmp__._0;
                    _n = __tmp__._1;
                    _err = __tmp__._2;
                };
                _r.value._src0 = _r.value._src0 + (_n);
                if (_err == null) {
                    if (_r.value._src0 != _r.value._src1) {
                        _r.value._err = _errInconsistentByteCount;
                    };
                    _r.value._transformComplete = _r.value._err != null;
                    continue;
                } else if (Go.toInterface(_err) == Go.toInterface(errShortDst) && (_r.value._dst1 != ((0 : GoInt)) || _n != ((0 : GoInt)))) {
                    continue;
                } else if (Go.toInterface(_err) == Go.toInterface(errShortSrc) && _r.value._src1 - _r.value._src0 != _r.value._src.length && _r.value._err == null) {} else {
                    _r.value._transformComplete = true;
                    if (_r.value._err == null || Go.toInterface(_r.value._err) == Go.toInterface(stdgo.io.Io.eof)) {
                        _r.value._err = _err;
                    };
                    continue;
                };
            };
            if (_r.value._src0 != ((0 : GoInt))) {
                {
                    final __tmp__0 = ((0 : GoInt));
                    final __tmp__1 = Go.copy(_r.value._src, _r.value._src.__slice__(_r.value._src0, _r.value._src1));
                    _r.value._src0 = __tmp__0;
                    _r.value._src1 = __tmp__1;
                };
            };
            {
                var __tmp__ = _r.value._r.read(_r.value._src.__slice__(_r.value._src1));
                _n = __tmp__._0;
                _r.value._err = __tmp__._1;
            };
            _r.value._src1 = _r.value._src1 + (_n);
        };
    }
    public var _r : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public var _t : Transformer = ((null : Transformer));
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public var _dst : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _dst0 : GoInt = ((0 : GoInt));
    public var _dst1 : GoInt = ((0 : GoInt));
    public var _src : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _src0 : GoInt = ((0 : GoInt));
    public var _src1 : GoInt = ((0 : GoInt));
    public var _transformComplete : Bool = false;
    public function new(?_r:stdgo.io.Io.Reader, ?_t:Transformer, ?_err:stdgo.Error, ?_dst:Slice<GoUInt8>, ?_dst0:GoInt, ?_dst1:GoInt, ?_src:Slice<GoUInt8>, ?_src0:GoInt, ?_src1:GoInt, ?_transformComplete:Bool) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_r) + " " + Go.string(_t) + " " + Go.string(_err) + " " + Go.string(_dst) + " " + Go.string(_dst0) + " " + Go.string(_dst1) + " " + Go.string(_src) + " " + Go.string(_src0) + " " + Go.string(_src1) + " " + Go.string(_transformComplete) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Reader(_r, _t, _err, _dst, _dst0, _dst1, _src, _src0, _src1, _transformComplete);
    }
    public function __set__(__tmp__) {
        this._r = __tmp__._r;
        this._t = __tmp__._t;
        this._err = __tmp__._err;
        this._dst = __tmp__._dst;
        this._dst0 = __tmp__._dst0;
        this._dst1 = __tmp__._dst1;
        this._src = __tmp__._src;
        this._src0 = __tmp__._src0;
        this._src1 = __tmp__._src1;
        this._transformComplete = __tmp__._transformComplete;
        return this;
    }
}
@:structInit class Writer {
    public function close():Error {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _src:Slice<GoUInt8> = _w.value._src.__slice__(0, _w.value._n);
        while (true) {
            var __tmp__ = _w.value._t.transform(_w.value._dst, _src, true), _nDst:GoInt = __tmp__._0, _nSrc:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            {
                var __tmp__ = _w.value._w.write(_w.value._dst.__slice__(0, _nDst)), _:GoInt = __tmp__._0, _werr:stdgo.Error = __tmp__._1;
                if (_werr != null) {
                    return _werr;
                };
            };
            if (Go.toInterface(_err) != Go.toInterface(errShortDst)) {
                return _err;
            };
            _src = _src.__slice__(_nSrc);
        };
    }
    public function write(_data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        var _src:Slice<GoUInt8> = _data;
        if (_w.value._n > ((0 : GoInt))) {
            _n = Go.copy(_w.value._src.__slice__(_w.value._n), _data);
            _w.value._n = _w.value._n + (_n);
            _src = _w.value._src.__slice__(0, _w.value._n);
        };
        while (true) {
            var __tmp__ = _w.value._t.transform(_w.value._dst, _src, false), _nDst:GoInt = __tmp__._0, _nSrc:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            {
                var __tmp__ = _w.value._w.write(_w.value._dst.__slice__(0, _nDst)), _:GoInt = __tmp__._0, _werr:stdgo.Error = __tmp__._1;
                if (_werr != null) {
                    return { _0 : _n, _1 : _werr };
                };
            };
            _src = _src.__slice__(_nSrc);
            if (_w.value._n == ((0 : GoInt))) {
                _n = _n + (_nSrc);
            } else if (_src.length <= _n) {
                _w.value._n = ((0 : GoInt));
                _n = _n - (_src.length);
                _src = _data.__slice__(_n);
                if (_n < _data.length && (_err == null || Go.toInterface(_err) == Go.toInterface(errShortSrc))) {
                    continue;
                };
            };
            if (Go.toInterface(_err) == Go.toInterface(errShortDst)) {
                if (_nDst > ((0 : GoInt)) || _nSrc > ((0 : GoInt))) {
                    continue;
                };
            } else if (Go.toInterface(_err) == Go.toInterface(errShortSrc)) {
                if (_src.length < _w.value._src.length) {
                    var _m:GoInt = Go.copy(_w.value._src, _src);
                    if (_w.value._n == ((0 : GoInt))) {
                        _n = _n + (_m);
                    };
                    _w.value._n = _m;
                    _err = ((null : stdgo.Error));
                } else if (_nDst > ((0 : GoInt)) || _nSrc > ((0 : GoInt))) {
                    continue;
                };
            } else if (_err == null) {
                if (_w.value._n > ((0 : GoInt))) {
                    _err = _errInconsistentByteCount;
                };
            };
            return { _0 : _n, _1 : _err };
        };
    }
    public var _w : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public var _t : Transformer = ((null : Transformer));
    public var _dst : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _src : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _n : GoInt = ((0 : GoInt));
    public function new(?_w:stdgo.io.Io.Writer, ?_t:Transformer, ?_dst:Slice<GoUInt8>, ?_src:Slice<GoUInt8>, ?_n:GoInt) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_w) + " " + Go.string(_t) + " " + Go.string(_dst) + " " + Go.string(_src) + " " + Go.string(_n) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Writer(_w, _t, _dst, _src, _n);
    }
    public function __set__(__tmp__) {
        this._w = __tmp__._w;
        this._t = __tmp__._t;
        this._dst = __tmp__._dst;
        this._src = __tmp__._src;
        this._n = __tmp__._n;
        return this;
    }
}
@:structInit class T_nop {
    public function span(_src:Slice<GoByte>, _atEOF:Bool):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        return { _0 : _src.length, _1 : ((null : stdgo.Error)) };
    }
    public function transform(_dst:Slice<GoByte>, _src:Slice<GoByte>, _atEOF:Bool):{ var _0 : GoInt; var _1 : GoInt; var _2 : Error; } {
        var _nDst:GoInt = ((0 : GoInt)), _nSrc:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        var _n:GoInt = Go.copy(_dst, _src);
        if (_n < _src.length) {
            _err = errShortDst;
        };
        return { _0 : _n, _1 : _n, _2 : _err };
    }
    @:embedded
    public var nopResetter : NopResetter = new NopResetter();
    public function new(?nopResetter:NopResetter) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(nopResetter) + "}";
    }
    public function reset() nopResetter.reset();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_nop(nopResetter);
    }
    public function __set__(__tmp__) {
        this.nopResetter = __tmp__.nopResetter;
        return this;
    }
}
@:structInit class T_discard {
    public function transform(_dst:Slice<GoByte>, _src:Slice<GoByte>, _atEOF:Bool):{ var _0 : GoInt; var _1 : GoInt; var _2 : Error; } {
        var _nDst:GoInt = ((0 : GoInt)), _nSrc:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        return { _0 : ((0 : GoInt)), _1 : _src.length, _2 : ((null : stdgo.Error)) };
    }
    @:embedded
    public var nopResetter : NopResetter = new NopResetter();
    public function new(?nopResetter:NopResetter) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(nopResetter) + "}";
    }
    public function reset() nopResetter.reset();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_discard(nopResetter);
    }
    public function __set__(__tmp__) {
        this.nopResetter = __tmp__.nopResetter;
        return this;
    }
}
@:structInit class T_chain {
    public function transform(_dst:Slice<GoByte>, _src:Slice<GoByte>, _atEOF:Bool):{ var _0 : GoInt; var _1 : GoInt; var _2 : Error; } {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _nDst:GoInt = ((0 : GoInt)), _nSrc:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        var _srcL:Pointer<T_link> = Go.pointer(_c.value._link[((0 : GoInt))]);
        var _dstL:Pointer<T_link> = Go.pointer(_c.value._link[_c.value._link.length - ((1 : GoInt))]);
        {
            final __tmp__0 = _src;
            final __tmp__1 = ((0 : GoInt));
            final __tmp__2 = _src.length;
            _srcL.value._b = __tmp__0;
            _srcL.value._p = __tmp__1;
            _srcL.value._n = __tmp__2;
        };
        {
            final __tmp__0 = _dst;
            final __tmp__1 = ((0 : GoInt));
            _dstL.value._b = __tmp__0;
            _dstL.value._n = __tmp__1;
        };
        var _lastFull:Bool = false, _needProgress:Bool = false;
        {
            var _low:GoInt = _c.value._errStart, _i:GoInt = _c.value._errStart, _high:GoInt = _c.value._link.length - ((2 : GoInt));
            while (_low <= _i && _i <= _high) {
                var _in:Pointer<T_link> = Go.pointer(_c.value._link[_i]), _out:Pointer<T_link> = Go.pointer(_c.value._link[_i + ((1 : GoInt))]);
                var __tmp__ = _in.value._t.transform(_out.value._dst(), _in.value._src(), _atEOF && _low == _i), _nDst:GoInt = __tmp__._0, _nSrc:GoInt = __tmp__._1, _err0:stdgo.Error = __tmp__._2;
                _out.value._n = _out.value._n + (_nDst);
                _in.value._p = _in.value._p + (_nSrc);
                if (_i > ((0 : GoInt)) && _in.value._p == _in.value._n) {
                    {
                        final __tmp__0 = ((0 : GoInt));
                        final __tmp__1 = ((0 : GoInt));
                        _in.value._p = __tmp__0;
                        _in.value._n = __tmp__1;
                    };
                };
                {
                    final __tmp__0 = _lastFull;
                    final __tmp__1 = false;
                    _needProgress = __tmp__0;
                    _lastFull = __tmp__1;
                };
                {
                    var __switchIndex__ = -1;
                    while (true) {
                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && Go.toInterface(_err0) == Go.toInterface(errShortDst))) {
                            if (_i == _high) {
                                return { _0 : _dstL.value._n, _1 : _srcL.value._p, _2 : errShortDst };
                            };
                            if (_out.value._n != ((0 : GoInt))) {
                                _i++;
                                _lastFull = true;
                                continue;
                            };
                            _c.value._fatalError(_i, _errShortInternal);
                            break;
                            break;
                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && Go.toInterface(_err0) == Go.toInterface(errShortSrc))) {
                            if (_i == ((0 : GoInt))) {
                                _err = errShortSrc;
                                break;
                            };
                            if (_needProgress && _nSrc == ((0 : GoInt)) || _in.value._n - _in.value._p == _in.value._b.length) {
                                _c.value._fatalError(_i, _errShortInternal);
                                break;
                            };
                            {
                                final __tmp__0 = ((0 : GoInt));
                                final __tmp__1 = Go.copy(_in.value._b, _in.value._src());
                                _in.value._p = __tmp__0;
                                _in.value._n = __tmp__1;
                            };
                            @:fallthrough {
                                __switchIndex__ = 2;
                                continue;
                            };
                            break;
                        } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && _err0 == null)) {
                            if (_i > _low) {
                                _i--;
                                continue;
                            };
                            break;
                            break;
                        } else {
                            _c.value._fatalError(_i, _err0);
                            break;
                        };
                        break;
                    };
                };
                _i++;
                _low = _i;
            };
        };
        if (_c.value._errStart > ((0 : GoInt))) {
            {
                var _i:GoInt = ((1 : GoInt));
                Go.cfor(_i < _c.value._errStart, _i++, {
                    {
                        final __tmp__0 = ((0 : GoInt));
                        final __tmp__1 = ((0 : GoInt));
                        _c.value._link[_i]._p = __tmp__0;
                        _c.value._link[_i]._n = __tmp__1;
                    };
                });
            };
            {
                final __tmp__0 = _c.value._err;
                final __tmp__1 = ((0 : GoInt));
                final __tmp__2 = ((null : stdgo.Error));
                _err = __tmp__0;
                _c.value._errStart = __tmp__1;
                _c.value._err = __tmp__2;
            };
        };
        return { _0 : _dstL.value._n, _1 : _srcL.value._p, _2 : _err };
    }
    public function reset():Void {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _i;
            var _l;
            for (_obj in _c.value._link.keyValueIterator()) {
                _i = _obj.key;
                _l = _obj.value;
                if (_l._t != null) {
                    _l._t.reset();
                };
                {
                    final __tmp__0 = ((0 : GoInt));
                    final __tmp__1 = ((0 : GoInt));
                    _c.value._link[_i]._p = __tmp__0;
                    _c.value._link[_i]._n = __tmp__1;
                };
            };
        };
    }
    public function _fatalError(_errIndex:GoInt, _err:Error):Void {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _i:GoInt = _errIndex + ((1 : GoInt));
            if (_i > _c.value._errStart) {
                _c.value._errStart = _i;
                _c.value._err = _err;
            };
        };
    }
    public var _link : Slice<T_link> = new Slice<T_link>().nil();
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public var _errStart : GoInt = ((0 : GoInt));
    public function new(?_link:Slice<T_link>, ?_err:stdgo.Error, ?_errStart:GoInt) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_link) + " " + Go.string(_err) + " " + Go.string(_errStart) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_chain(_link, _err, _errStart);
    }
    public function __set__(__tmp__) {
        this._link = __tmp__._link;
        this._err = __tmp__._err;
        this._errStart = __tmp__._errStart;
        return this;
    }
}
@:structInit class T_link {
    public function _dst():Slice<GoByte> {
        var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _l.value._b.__slice__(_l.value._n);
    }
    public function _src():Slice<GoByte> {
        var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _l.value._b.__slice__(_l.value._p, _l.value._n);
    }
    public var _t : Transformer = ((null : Transformer));
    public var _b : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _p : GoInt = ((0 : GoInt));
    public var _n : GoInt = ((0 : GoInt));
    public function new(?_t:Transformer, ?_b:Slice<GoUInt8>, ?_p:GoInt, ?_n:GoInt) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_t) + " " + Go.string(_b) + " " + Go.string(_p) + " " + Go.string(_n) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_link(_t, _b, _p, _n);
    }
    public function __set__(__tmp__) {
        this._t = __tmp__._t;
        this._b = __tmp__._b;
        this._p = __tmp__._p;
        this._n = __tmp__._n;
        return this;
    }
}
@:named class T_removeF {
    public function transform(_dst:Slice<GoByte>, _src:Slice<GoByte>, _atEOF:Bool):{ var _0 : GoInt; var _1 : GoInt; var _2 : Error; } {
        var _t = this.__copy__();
        var _nDst:GoInt = ((0 : GoInt)), _nSrc:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        {
            var _r:GoInt32 = ((((0 : GoInt32)) : GoRune)), _sz:GoInt = ((0 : GoInt));
            Go.cfor(_src.length > ((0 : GoInt)), _src = _src.__slice__(_sz), {
                {
                    _r = ((_src[((0 : GoInt))] : GoRune));
                    if (_r < stdgo.unicode.utf8.Utf8.runeSelf) {
                        _sz = ((1 : GoInt));
                    } else {
                        {
                            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_src);
                            _r = __tmp__._0;
                            _sz = __tmp__._1;
                        };
                        if (_sz == ((1 : GoInt))) {
                            if (!_atEOF && !stdgo.unicode.utf8.Utf8.fullRune(_src)) {
                                _err = errShortSrc;
                                break;
                            };
                            if (!_t.__t__(_r)) {
                                if (_nDst + ((3 : GoInt)) > _dst.length) {
                                    _err = errShortDst;
                                    break;
                                };
                                _nDst = _nDst + (Go.copy(_dst.__slice__(_nDst), "\uFFFD"));
                            };
                            _nSrc++;
                            continue;
                        };
                    };
                };
                if (!_t.__t__(_r)) {
                    if (_nDst + _sz > _dst.length) {
                        _err = errShortDst;
                        break;
                    };
                    _nDst = _nDst + (Go.copy(_dst.__slice__(_nDst), _src.__slice__(0, _sz)));
                };
                _nSrc = _nSrc + (_sz);
            });
        };
        return { _0 : _nDst, _1 : _nSrc, _2 : _err };
    }
    public function reset():Void {}
    public var __t__ : GoInt32 -> Bool;
    public function new(?t:GoInt32 -> Bool) {
        __t__ = t == null ? null : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_removeF(__t__);
}
final _initialBufSize : GoInt64 = ((128 : GoUnTypedInt));
var errEndOfSpan : stdgo.Error = stdgo.errors.Errors.new_("transform: input and output are not identical");
final _defaultBufSize : GoInt64 = ((4096 : GoUnTypedInt));
var errShortSrc : stdgo.Error = stdgo.errors.Errors.new_("transform: short source buffer");
var discard : Transformer = new T_discard().__copy__();
var errShortDst : stdgo.Error = stdgo.errors.Errors.new_("transform: short destination buffer");
var _errShortInternal : stdgo.Error = stdgo.errors.Errors.new_("transform: short internal buffer");
var _errInconsistentByteCount : stdgo.Error = stdgo.errors.Errors.new_("transform: inconsistent byte count returned");
var nop : SpanningTransformer = new T_nop().__copy__();
/**
    // NewReader returns a new Reader that wraps r by transforming the bytes read
    // via t. It calls Reset on t.
**/
function newReader(_r:stdgo.io.Io.Reader, _t:Transformer):Pointer<Reader> {
        _t.reset();
        return Go.pointer((({ _r : _r, _t : _t, _dst : new Slice<GoUInt8>(...[for (i in 0 ... ((_defaultBufSize : GoInt)).toBasic()) ((0 : GoUInt8))]), _src : new Slice<GoUInt8>(...[for (i in 0 ... ((_defaultBufSize : GoInt)).toBasic()) ((0 : GoUInt8))]), _err : ((null : stdgo.Error)), _dst0 : 0, _dst1 : 0, _src0 : 0, _src1 : 0, _transformComplete : false } : Reader)));
    }
/**
    // NewWriter returns a new Writer that wraps w by transforming the bytes written
    // via t. It calls Reset on t.
**/
function newWriter(_w:stdgo.io.Io.Writer, _t:Transformer):Pointer<Writer> {
        _t.reset();
        return Go.pointer((({ _w : _w, _t : _t, _dst : new Slice<GoUInt8>(...[for (i in 0 ... ((_defaultBufSize : GoInt)).toBasic()) ((0 : GoUInt8))]), _src : new Slice<GoUInt8>(...[for (i in 0 ... ((_defaultBufSize : GoInt)).toBasic()) ((0 : GoUInt8))]), _n : 0 } : Writer)));
    }
/**
    // Chain returns a Transformer that applies t in sequence.
**/
function chain(_t:haxe.Rest<Transformer>):Transformer {
        var _t = new Slice<Transformer>(..._t);
        if (_t.length == ((0 : GoInt))) {
            return new T_nop().__copy__();
        };
        var _c:Pointer<T_chain> = Go.pointer((({ _link : new Slice<T_link>(...[for (i in 0 ... ((_t.length + ((1 : GoInt)) : GoInt)).toBasic()) new T_link()]), _err : ((null : stdgo.Error)), _errStart : 0 } : T_chain)));
        {
            var _i;
            var _tt;
            for (_obj in _t.keyValueIterator()) {
                _i = _obj.key;
                _tt = _obj.value;
                _c.value._link[_i]._t = _tt;
            };
        };
        var _b:Slice<GoArray<GoUInt8>> = new Slice<GoArray<GoUInt8>>(...[for (i in 0 ... ((_t.length - ((1 : GoInt)) : GoInt)).toBasic()) new GoArray<GoUInt8>(...[for (i in 0 ... 4096) ((0 : GoUInt8))])]);
        {
            var _i;
            for (_obj in _b.keyValueIterator()) {
                _i = _obj.key;
                _c.value._link[_i + ((1 : GoInt))]._b = _b[_i].__slice__(0);
            };
        };
        return _c.value;
    }
/**
    // Deprecated: Use runes.Remove instead.
**/
function removeFunc(_f:(_r:GoRune) -> Bool):Transformer {
        return new T_removeF(_f).__copy__();
    }
/**
    // grow returns a new []byte that is longer than b, and copies the first n bytes
    // of b to the start of the new slice.
**/
function _grow(_b:Slice<GoByte>, _n:GoInt):Slice<GoByte> {
        var _m:GoInt = _b.length;
        if (_m <= ((32 : GoInt))) {
            _m = ((64 : GoInt));
        } else if (_m <= ((256 : GoInt))) {
            _m = _m * (((2 : GoInt)));
        } else {
            _m = _m + ((_m >> ((1 : GoUnTypedInt))));
        };
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_m : GoInt)).toBasic()) ((0 : GoUInt8))]);
        Go.copy(_buf, _b.__slice__(0, _n));
        return _buf;
    }
/**
    // String returns a string with the result of converting s[:n] using t, where
    // n <= len(s). If err == nil, n will be len(s). It calls Reset on t.
**/
function toString(_t:Transformer, _s:GoString):{ var _0 : GoString; var _1 : GoInt; var _2 : Error; } {
        var _result:GoString = (("" : GoString)), _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _t.reset();
        if (_s == (("" : GoString))) {
            {
                var __tmp__ = _t.transform(new Slice<GoUInt8>().nil(), new Slice<GoUInt8>().nil(), true), _:GoInt = __tmp__._0, _:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err == null) {
                    return { _0 : "", _1 : ((0 : GoInt)), _2 : ((null : stdgo.Error)) };
                };
            };
        };
        var _buf:GoArray<GoUInt8> = new GoArray<GoUInt8>(...([].concat([for (i in 0 ... 256) 0]))).copy();
        var _dst:Slice<GoUInt8> = _buf.__slice__(0, _initialBufSize).setCap(((_initialBufSize : GoInt)) - ((1 : GoInt)));
        var _src:Slice<GoUInt8> = _buf.__slice__(_initialBufSize, ((2 : GoUnTypedInt)) * _initialBufSize);
        var _nDst:GoInt = ((0 : GoInt)), _nSrc:GoInt = ((0 : GoInt));
        var _pDst:GoInt = ((0 : GoInt)), _pSrc:GoInt = ((0 : GoInt));
        var _pPrefix:GoInt = ((0 : GoInt));
        while (true) {
            var _n:GoInt = Go.copy(_src, _s.__slice__(_pSrc));
            {
                var __tmp__ = _t.transform(_dst, _src.__slice__(0, _n), _pSrc + _n == _s.length);
                _nDst = __tmp__._0;
                _nSrc = __tmp__._1;
                _err = __tmp__._2;
            };
            _pDst = _pDst + (_nDst);
            _pSrc = _pSrc + (_nSrc);
            if (!stdgo.bytes.Bytes.equal(_dst.__slice__(0, _nDst), _src.__slice__(0, _nSrc))) {
                break;
            };
            _pPrefix = _pSrc;
            if (Go.toInterface(_err) == Go.toInterface(errShortDst)) {
                break;
            } else if (Go.toInterface(_err) == Go.toInterface(errShortSrc)) {
                if (_nSrc == ((0 : GoInt))) {
                    break;
                };
            } else if (_err != null || _pPrefix == _s.length) {
                return { _0 : ((_s.__slice__(0, _pPrefix) : GoString)), _1 : _pPrefix, _2 : _err };
            };
        };
        if (_pPrefix != ((0 : GoInt))) {
            var _newDst:Slice<GoUInt8> = _dst;
            if (_pDst > _newDst.length) {
                _newDst = new Slice<GoUInt8>(...[for (i in 0 ... ((_s.length + _nDst - _nSrc : GoInt)).toBasic()) ((0 : GoUInt8))]);
            };
            Go.copy(_newDst.__slice__(_pPrefix, _pDst), _dst.__slice__(0, _nDst));
            Go.copy(_newDst.__slice__(0, _pPrefix), _s.__slice__(0, _pPrefix));
            _dst = _newDst;
        };
        if ((_err == null && _pSrc == _s.length) || (_err != null && Go.toInterface(_err) != Go.toInterface(errShortDst) && Go.toInterface(_err) != Go.toInterface(errShortSrc))) {
            return { _0 : ((_dst.__slice__(0, _pDst) : GoString)), _1 : _pSrc, _2 : _err };
        };
        while (true) {
            var _n:GoInt = Go.copy(_src, _s.__slice__(_pSrc));
            var _atEOF:Bool = _pSrc + _n == _s.length;
            var __tmp__ = _t.transform(_dst.__slice__(_pDst), _src.__slice__(0, _n), _atEOF), _nDst:GoInt = __tmp__._0, _nSrc:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            _pDst = _pDst + (_nDst);
            _pSrc = _pSrc + (_nSrc);
            if (Go.toInterface(_err) == Go.toInterface(errShortDst)) {
                if (_nDst == ((0 : GoInt))) {
                    _dst = _grow(_dst, _pDst);
                };
            } else if (Go.toInterface(_err) == Go.toInterface(errShortSrc)) {
                if (_atEOF) {
                    return { _0 : ((_dst.__slice__(0, _pDst) : GoString)), _1 : _pSrc, _2 : _err };
                };
                if (_nSrc == ((0 : GoInt))) {
                    _src = _grow(_src, ((0 : GoInt)));
                };
            } else if (_err != null || _pSrc == _s.length) {
                return { _0 : ((_dst.__slice__(0, _pDst) : GoString)), _1 : _pSrc, _2 : _err };
            };
        };
    }
/**
    // Bytes returns a new byte slice with the result of converting b[:n] using t,
    // where n <= len(b). If err == nil, n will be len(b). It calls Reset on t.
**/
function bytes(_t:Transformer, _b:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : GoInt; var _2 : Error; } {
        var _result:Slice<GoByte> = new Slice<GoUInt8>().nil(), _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        return _doAppend(_t, ((0 : GoInt)), new Slice<GoUInt8>(...[for (i in 0 ... ((_b.length : GoInt)).toBasic()) ((0 : GoUInt8))]), _b);
    }
/**
    // Append appends the result of converting src[:n] using t to dst, where
    // n <= len(src), If err == nil, n will be len(src). It calls Reset on t.
**/
function append(_t:Transformer, _dst:Slice<GoByte>, _src:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : GoInt; var _2 : Error; } {
        var _result:Slice<GoByte> = new Slice<GoUInt8>().nil(), _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_dst.length == _dst.cap()) {
            var _n:GoInt = _src.length + _dst.length;
            var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((0 : GoUInt8))]);
            _dst = _b.__slice__(0, Go.copy(_b, _dst));
        };
        return _doAppend(_t, _dst.length, _dst.__slice__(0, _dst.cap()), _src);
    }
function _doAppend(_t:Transformer, _pDst:GoInt, _dst:Slice<GoByte>, _src:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : GoInt; var _2 : Error; } {
        var _result:Slice<GoByte> = new Slice<GoUInt8>().nil(), _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _t.reset();
        var _pSrc:GoInt = ((0 : GoInt));
        while (true) {
            var __tmp__ = _t.transform(_dst.__slice__(_pDst), _src.__slice__(_pSrc), true), _nDst:GoInt = __tmp__._0, _nSrc:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            _pDst = _pDst + (_nDst);
            _pSrc = _pSrc + (_nSrc);
            if (Go.toInterface(_err) != Go.toInterface(errShortDst)) {
                return { _0 : _dst.__slice__(0, _pDst), _1 : _pSrc, _2 : _err };
            };
            if (_nDst == ((0 : GoInt))) {
                _dst = _grow(_dst, _pDst);
            };
        };
    }
class NopResetter_extension_fields {
    public function reset(__tmp__):Void __tmp__.reset();
}
class Reader_extension_fields {
    public function read(__tmp__, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.read(_p);
}
class Writer_extension_fields {
    public function write(__tmp__, _data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.write(_data);
    public function close(__tmp__):Error return __tmp__.close();
}
class T_nop_extension_fields {
    public function transform(__tmp__, _dst:Slice<GoByte>, _src:Slice<GoByte>, _atEOF:Bool):{ var _0 : GoInt; var _1 : GoInt; var _2 : Error; } return __tmp__.transform(_dst, _src, _atEOF);
    public function span(__tmp__, _src:Slice<GoByte>, _atEOF:Bool):{ var _0 : GoInt; var _1 : Error; } return __tmp__.span(_src, _atEOF);
}
class T_discard_extension_fields {
    public function transform(__tmp__, _dst:Slice<GoByte>, _src:Slice<GoByte>, _atEOF:Bool):{ var _0 : GoInt; var _1 : GoInt; var _2 : Error; } return __tmp__.transform(_dst, _src, _atEOF);
}
class T_chain_extension_fields {
    public function _fatalError(__tmp__, _errIndex:GoInt, _err:Error):Void __tmp__._fatalError(_errIndex, _err);
    public function reset(__tmp__):Void __tmp__.reset();
    public function transform(__tmp__, _dst:Slice<GoByte>, _src:Slice<GoByte>, _atEOF:Bool):{ var _0 : GoInt; var _1 : GoInt; var _2 : Error; } return __tmp__.transform(_dst, _src, _atEOF);
}
class T_link_extension_fields {
    public function _src(__tmp__):Slice<GoByte> return __tmp__._src();
    public function _dst(__tmp__):Slice<GoByte> return __tmp__._dst();
}
class T_removeF_extension_fields {
    public function reset(__tmp__):Void __tmp__.reset();
    public function transform(__tmp__, _dst:Slice<GoByte>, _src:Slice<GoByte>, _atEOF:Bool):{ var _0 : GoInt; var _1 : GoInt; var _2 : Error; } return __tmp__.transform(_dst, _src, _atEOF);
}
