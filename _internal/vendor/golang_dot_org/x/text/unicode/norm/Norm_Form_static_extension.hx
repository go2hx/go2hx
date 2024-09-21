package _internal.vendor.golang_dot_org.x.text.unicode.norm;
@:keep @:allow(_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm.Form_asInterface) class Form_static_extension {
    @:keep
    static public function _transform( _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form = _f;
        var _nDst = (0 : stdgo.GoInt), _nSrc = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _rb = (new _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer() : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer);
        _rb._init(_f, _src);
        while (true) {
            _rb._setFlusher((_dst.__slice__(_nDst) : stdgo.Slice<stdgo.GoUInt8>), _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__flushTransform._flushTransform);
            var _end = (_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__decomposeSegment._decomposeSegment((stdgo.Go.setRef(_rb) : stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer>), _nSrc, _atEOF) : stdgo.GoInt);
            if ((_end < (0 : stdgo.GoInt) : Bool)) {
                return { _0 : _nDst, _1 : _nSrc, _2 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__errs._errs[(-_end : stdgo.GoInt)] };
            };
            _nDst = ((_dst.length) - (_rb._out.length) : stdgo.GoInt);
            _nSrc = _end;
            _end = _rb._nsrc;
            var _eof = (_atEOF : Bool);
            {
                var _n = ((_nSrc + (_dst.length) : stdgo.GoInt) - _nDst : stdgo.GoInt);
                if ((_n < _end : Bool)) {
                    _err = _internal.golang_dot_org.x.text.transform.Transform_errShortDst.errShortDst;
                    _end = _n;
                    _eof = false;
                };
            };
            var __tmp__ = _rb._f._quickSpan(_rb._src?.__copy__(), _nSrc, _end, _eof), _end:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            var _n = (stdgo.Go.copySlice((_dst.__slice__(_nDst) : stdgo.Slice<stdgo.GoUInt8>), (_rb._src._bytes.__slice__(_nSrc, _end) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
            _nSrc = (_nSrc + (_n) : stdgo.GoInt);
            _nDst = (_nDst + (_n) : stdgo.GoInt);
            if (_ok) {
                if (((_err == null && (_n < _rb._nsrc : Bool) : Bool) && !_atEOF : Bool)) {
                    _err = _internal.golang_dot_org.x.text.transform.Transform_errShortSrc.errShortSrc;
                };
                return { _0 : _nDst, _1 : _nSrc, _2 : _err };
            };
        };
    }
    @:keep
    static public function transform( _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form = _f;
        var _nDst = (0 : stdgo.GoInt), _nSrc = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _b = _src;
        var _eof = (_atEOF : Bool);
        {
            var _ns = (_dst.length : stdgo.GoInt);
            if ((_ns < (_b.length) : Bool)) {
                _err = _internal.golang_dot_org.x.text.transform.Transform_errShortDst.errShortDst;
                _eof = false;
                _b = (_b.__slice__(0, _ns) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        var __tmp__ = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__formTable._formTable[(_f : stdgo.GoInt)]._quickSpan(_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__inputBytes._inputBytes(_b)?.__copy__(), (0 : stdgo.GoInt), (_b.length), _eof), _i:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        var _n = (stdgo.Go.copySlice(_dst, (_b.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
        if (!_ok) {
            {
                var __tmp__ = _f._transform((_dst.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>), _atEOF);
                _nDst = __tmp__._0;
                _nSrc = __tmp__._1;
                _err = __tmp__._2;
            };
            return { _0 : (_nDst + _n : stdgo.GoInt), _1 : (_nSrc + _n : stdgo.GoInt), _2 : _err };
        };
        if (((_err == null && (_n < (_src.length) : Bool) : Bool) && !_atEOF : Bool)) {
            _err = _internal.golang_dot_org.x.text.transform.Transform_errShortSrc.errShortSrc;
        };
        return { _0 : _n, _1 : _n, _2 : _err };
    }
    @:keep
    static public function reset( _:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form):Void {
        @:recv var _:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form = _;
    }
    @:keep
    static public function reader( _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form, _r:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        @:recv var _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form = _f;
        {};
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((4000 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _rr = (stdgo.Go.setRef(({ _rb : (new _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer() : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer), _r : _r, _inbuf : _buf } : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_normReader.T_normReader)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_normReader.T_normReader>);
        _rr._rb._init(_f, _buf);
        return stdgo.Go.asInterface(_rr);
    }
    @:keep
    static public function writer( _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form, _w:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_WriteCloser.WriteCloser {
        @:recv var _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form = _f;
        var _wr = (stdgo.Go.setRef(({ _rb : (new _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer() : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer), _w : _w } : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_normWriter.T_normWriter)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_normWriter.T_normWriter>);
        _wr._rb._init(_f, (null : stdgo.Slice<stdgo.GoUInt8>));
        return stdgo.Go.asInterface(_wr);
    }
    @:keep
    static public function lastBoundary( _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        @:recv var _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form = _f;
        return _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__lastBoundary._lastBoundary(_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__formTable._formTable[(_f : stdgo.GoInt)], _b);
    }
    @:keep
    static public function _nextBoundary( _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form, _src:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input, _nsrc:stdgo.GoInt, _atEOF:Bool):stdgo.GoInt {
        @:recv var _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form = _f;
        if (_nsrc == ((0 : stdgo.GoInt))) {
            if (_atEOF) {
                return (0 : stdgo.GoInt);
            };
            return (-1 : stdgo.GoInt);
        };
        var _fd = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__formTable._formTable[(_f : stdgo.GoInt)];
        var _info = (_fd._info(_src?.__copy__(), (0 : stdgo.GoInt))?.__copy__() : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties);
        if (_info._size == ((0 : stdgo.GoUInt8))) {
            if (_atEOF) {
                return (1 : stdgo.GoInt);
            };
            return (-1 : stdgo.GoInt);
        };
        var _ss = ((0 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe) : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe);
        _ss._first(stdgo.Go.pointer(_ss), _info?.__copy__());
        {
            var _i = (_info._size : stdgo.GoInt);
            stdgo.Go.cfor((_i < _nsrc : Bool), _i = (_i + ((_info._size : stdgo.GoInt)) : stdgo.GoInt), {
                _info = _fd._info(_src?.__copy__(), _i)?.__copy__();
                if (_info._size == ((0 : stdgo.GoUInt8))) {
                    if (_atEOF) {
                        return _i;
                    };
                    return (-1 : stdgo.GoInt);
                };
                {
                    var _s = (_ss._next(stdgo.Go.pointer(_ss), _info?.__copy__()) : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState);
                    if (_s != ((0 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState))) {
                        return _i;
                    };
                };
            });
        };
        if (((!_atEOF && !_info.boundaryAfter() : Bool) && !_ss._isMax() : Bool)) {
            return (-1 : stdgo.GoInt);
        };
        return _nsrc;
    }
    @:keep
    static public function nextBoundaryInString( _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form, _s:stdgo.GoString, _atEOF:Bool):stdgo.GoInt {
        @:recv var _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form = _f;
        return _f._nextBoundary(_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__inputString._inputString(_s?.__copy__())?.__copy__(), (_s.length), _atEOF);
    }
    @:keep
    static public function nextBoundary( _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form, _b:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):stdgo.GoInt {
        @:recv var _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form = _f;
        return _f._nextBoundary(_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__inputBytes._inputBytes(_b)?.__copy__(), (_b.length), _atEOF);
    }
    @:keep
    static public function firstBoundaryInString( _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form, _s:stdgo.GoString):stdgo.GoInt {
        @:recv var _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form = _f;
        return _f._firstBoundary(_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__inputString._inputString(_s?.__copy__())?.__copy__(), (_s.length));
    }
    @:keep
    static public function _firstBoundary( _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form, _src:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input, _nsrc:stdgo.GoInt):stdgo.GoInt {
        @:recv var _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form = _f;
        var _i = (_src._skipContinuationBytes((0 : stdgo.GoInt)) : stdgo.GoInt);
        if ((_i >= _nsrc : Bool)) {
            return (-1 : stdgo.GoInt);
        };
        var _fd = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__formTable._formTable[(_f : stdgo.GoInt)];
        var _ss = ((0 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe) : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe);
        while (true) {
            var _info = (_fd._info(_src?.__copy__(), _i)?.__copy__() : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties);
            if (_info._size == ((0 : stdgo.GoUInt8))) {
                return (-1 : stdgo.GoInt);
            };
            {
                var _s = (_ss._next(stdgo.Go.pointer(_ss), _info?.__copy__()) : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState);
                if (_s != ((0 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState))) {
                    return _i;
                };
            };
            _i = (_i + ((_info._size : stdgo.GoInt)) : stdgo.GoInt);
            if ((_i >= _nsrc : Bool)) {
                if ((!_info.boundaryAfter() && !_ss._isMax() : Bool)) {
                    return (-1 : stdgo.GoInt);
                };
                return _nsrc;
            };
        };
    }
    @:keep
    static public function firstBoundary( _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        @:recv var _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form = _f;
        return _f._firstBoundary(_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__inputBytes._inputBytes(_b)?.__copy__(), (_b.length));
    }
    @:keep
    static public function quickSpanString( _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form, _s:stdgo.GoString):stdgo.GoInt {
        @:recv var _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form = _f;
        var __tmp__ = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__formTable._formTable[(_f : stdgo.GoInt)]._quickSpan(_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__inputString._inputString(_s?.__copy__())?.__copy__(), (0 : stdgo.GoInt), (_s.length), true), _n:stdgo.GoInt = __tmp__._0, __0:Bool = __tmp__._1;
        return _n;
    }
    @:keep
    static public function spanString( _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form, _s:stdgo.GoString, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form = _f;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var __tmp__ = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__formTable._formTable[(_f : stdgo.GoInt)]._quickSpan(_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__inputString._inputString(_s?.__copy__())?.__copy__(), (0 : stdgo.GoInt), (_s.length), _atEOF), _n:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if ((_n < (_s.length) : Bool)) {
            if (!_ok) {
                _err = _internal.golang_dot_org.x.text.transform.Transform_errEndOfSpan.errEndOfSpan;
            } else {
                _err = _internal.golang_dot_org.x.text.transform.Transform_errShortSrc.errShortSrc;
            };
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function span( _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form, _b:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form = _f;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var __tmp__ = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__formTable._formTable[(_f : stdgo.GoInt)]._quickSpan(_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__inputBytes._inputBytes(_b)?.__copy__(), (0 : stdgo.GoInt), (_b.length), _atEOF), _n:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if ((_n < (_b.length) : Bool)) {
            if (!_ok) {
                _err = _internal.golang_dot_org.x.text.transform.Transform_errEndOfSpan.errEndOfSpan;
            } else {
                _err = _internal.golang_dot_org.x.text.transform.Transform_errShortSrc.errShortSrc;
            };
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function quickSpan( _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        @:recv var _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form = _f;
        var __tmp__ = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__formTable._formTable[(_f : stdgo.GoInt)]._quickSpan(_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__inputBytes._inputBytes(_b)?.__copy__(), (0 : stdgo.GoInt), (_b.length), true), _n:stdgo.GoInt = __tmp__._0, __0:Bool = __tmp__._1;
        return _n;
    }
    @:keep
    static public function appendString( _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form, _out:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form = _f;
        return _f._doAppend(_out, _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__inputString._inputString(_src?.__copy__())?.__copy__(), (_src.length));
    }
    @:keep
    static public function _doAppend( _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form, _out:stdgo.Slice<stdgo.GoUInt8>, _src:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form = _f;
        if (_n == ((0 : stdgo.GoInt))) {
            return _out;
        };
        var _ft = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__formTable._formTable[(_f : stdgo.GoInt)];
        if ((_out.length) == ((0 : stdgo.GoInt))) {
            var __tmp__ = _ft._quickSpan(_src?.__copy__(), (0 : stdgo.GoInt), _n, true), _p:stdgo.GoInt = __tmp__._0, __0:Bool = __tmp__._1;
            _out = _src._appendSlice(_out, (0 : stdgo.GoInt), _p);
            if (_p == (_n)) {
                return _out;
            };
            var _rb = ({ _f : (_ft : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_formInfo.T_formInfo)?.__copy__(), _src : _src?.__copy__(), _nsrc : _n, _out : _out, _flushF : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__appendFlush._appendFlush } : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer);
            return _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__doAppendInner._doAppendInner((stdgo.Go.setRef(_rb) : stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer>), _p);
        };
        var _rb = ({ _f : (_ft : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_formInfo.T_formInfo)?.__copy__(), _src : _src?.__copy__(), _nsrc : _n } : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer);
        return _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__doAppend._doAppend((stdgo.Go.setRef(_rb) : stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer>), _out, (0 : stdgo.GoInt));
    }
    @:keep
    static public function append( _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form, _out:stdgo.Slice<stdgo.GoUInt8>, _src:haxe.Rest<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        var _src = new stdgo.Slice<stdgo.GoUInt8>(_src.length, 0, ..._src);
        @:recv var _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form = _f;
        return _f._doAppend(_out, _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__inputBytes._inputBytes(_src)?.__copy__(), (_src.length));
    }
    @:keep
    static public function isNormalString( _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form, _s:stdgo.GoString):Bool {
        @:recv var _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form = _f;
        var _src = (_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__inputString._inputString(_s?.__copy__())?.__copy__() : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input);
        var _ft = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__formTable._formTable[(_f : stdgo.GoInt)];
        var __tmp__ = _ft._quickSpan(_src?.__copy__(), (0 : stdgo.GoInt), (_s.length), true), _bp:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (_ok) {
            return true;
        };
        var _rb = ({ _f : (_ft : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_formInfo.T_formInfo)?.__copy__(), _src : _src?.__copy__(), _nsrc : (_s.length) } : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer);
        _rb._setFlusher((null : stdgo.Slice<stdgo.GoUInt8>), function(_rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer>):Bool {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _rb._nrune : Bool), _i++, {
                    var _info = (_rb._rune[(_i : stdgo.GoInt)] : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties);
                    if (((_bp + (_info._size : stdgo.GoInt) : stdgo.GoInt) > (_s.length) : Bool)) {
                        return false;
                    };
                    var _p = (_info._pos : stdgo.GoUInt8);
                    var _pe = (_p + _info._size : stdgo.GoUInt8);
                    stdgo.Go.cfor((_p < _pe : Bool), _p++, {
                        if (_s[(_bp : stdgo.GoInt)] != (_rb._byte[(_p : stdgo.GoInt)])) {
                            return false;
                        };
                        _bp++;
                    });
                });
            };
            return true;
        });
        while ((_bp < (_s.length) : Bool)) {
            {
                _bp = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__decomposeSegment._decomposeSegment((stdgo.Go.setRef(_rb) : stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer>), _bp, true);
                if ((_bp < (0 : stdgo.GoInt) : Bool)) {
                    return false;
                };
            };
            {
                var __tmp__ = _rb._f._quickSpan(_rb._src?.__copy__(), _bp, (_s.length), true);
                _bp = __tmp__._0;
            };
        };
        return true;
    }
    @:keep
    static public function isNormal( _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form, _b:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form = _f;
        var _src = (_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__inputBytes._inputBytes(_b)?.__copy__() : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input);
        var _ft = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__formTable._formTable[(_f : stdgo.GoInt)];
        var __tmp__ = _ft._quickSpan(_src?.__copy__(), (0 : stdgo.GoInt), (_b.length), true), _bp:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (_ok) {
            return true;
        };
        var _rb = ({ _f : (_ft : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_formInfo.T_formInfo)?.__copy__(), _src : _src?.__copy__(), _nsrc : (_b.length) } : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer);
        _rb._setFlusher((null : stdgo.Slice<stdgo.GoUInt8>), _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__cmpNormalBytes._cmpNormalBytes);
        while ((_bp < (_b.length) : Bool)) {
            _rb._out = (_b.__slice__(_bp) : stdgo.Slice<stdgo.GoUInt8>);
            {
                _bp = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__decomposeSegment._decomposeSegment((stdgo.Go.setRef(_rb) : stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer>), _bp, true);
                if ((_bp < (0 : stdgo.GoInt) : Bool)) {
                    return false;
                };
            };
            {
                var __tmp__ = _rb._f._quickSpan(_rb._src?.__copy__(), _bp, (_b.length), true);
                _bp = __tmp__._0;
            };
        };
        return true;
    }
    @:keep
    static public function string( _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form, _s:stdgo.GoString):stdgo.GoString {
        @:recv var _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form = _f;
        var _src = (_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__inputString._inputString(_s?.__copy__())?.__copy__() : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input);
        var _ft = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__formTable._formTable[(_f : stdgo.GoInt)];
        var __tmp__ = _ft._quickSpan(_src?.__copy__(), (0 : stdgo.GoInt), (_s.length), true), _n:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (_ok) {
            return _s?.__copy__();
        };
        var _out = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), (_s.length)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        stdgo.Go.copySlice(_out, (_s.__slice__((0 : stdgo.GoInt), _n) : stdgo.GoString));
        var _rb = ({ _f : (_ft : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_formInfo.T_formInfo)?.__copy__(), _src : _src?.__copy__(), _nsrc : (_s.length), _out : _out, _flushF : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__appendFlush._appendFlush } : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer);
        return (_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__doAppendInner._doAppendInner((stdgo.Go.setRef(_rb) : stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer>), _n) : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function bytes( _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form = _f;
        var _src = (_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__inputBytes._inputBytes(_b)?.__copy__() : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input);
        var _ft = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__formTable._formTable[(_f : stdgo.GoInt)];
        var __tmp__ = _ft._quickSpan(_src?.__copy__(), (0 : stdgo.GoInt), (_b.length), true), _n:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (_ok) {
            return _b;
        };
        var _out = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), (_b.length)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        stdgo.Go.copySlice(_out, (_b.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>));
        var _rb = ({ _f : (_ft : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_formInfo.T_formInfo)?.__copy__(), _src : _src?.__copy__(), _nsrc : (_b.length), _out : _out, _flushF : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__appendFlush._appendFlush } : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer);
        return _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__doAppendInner._doAppendInner((stdgo.Go.setRef(_rb) : stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer>), _n);
    }
    @:keep
    static public function propertiesString( _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form, _s:stdgo.GoString):_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties {
        @:recv var _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form = _f;
        if (((_f == (0 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form)) || (_f == (1 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form)) : Bool)) {
            return ({
                var __tmp__ = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__nfcData._nfcData._lookupString(_s?.__copy__());
                _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__compInfo._compInfo((__tmp__._0 : stdgo.GoUInt16), (__tmp__._1 : stdgo.GoInt));
            });
        };
        return ({
            var __tmp__ = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__nfkcData._nfkcData._lookupString(_s?.__copy__());
            _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__compInfo._compInfo((__tmp__._0 : stdgo.GoUInt16), (__tmp__._1 : stdgo.GoInt));
        });
    }
    @:keep
    static public function properties( _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form, _s:stdgo.Slice<stdgo.GoUInt8>):_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties {
        @:recv var _f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form = _f;
        if (((_f == (0 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form)) || (_f == (1 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form)) : Bool)) {
            return ({
                var __tmp__ = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__nfcData._nfcData._lookup(_s);
                _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__compInfo._compInfo((__tmp__._0 : stdgo.GoUInt16), (__tmp__._1 : stdgo.GoInt));
            });
        };
        return ({
            var __tmp__ = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__nfkcData._nfkcData._lookup(_s);
            _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__compInfo._compInfo((__tmp__._0 : stdgo.GoUInt16), (__tmp__._1 : stdgo.GoInt));
        });
    }
}
