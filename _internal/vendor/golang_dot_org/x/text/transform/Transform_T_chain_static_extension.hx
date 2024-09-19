package _internal.vendor.golang_dot_org.x.text.transform;
@:keep @:allow(_internal.vendor.golang_dot_org.x.text.transform.Transform.T_chain_asInterface) class T_chain_static_extension {
    @:keep
    static public function transform( _c:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.transform.Transform_T_chain.T_chain>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.transform.Transform_T_chain.T_chain> = _c;
        var _nDst = (0 : stdgo.GoInt), _nSrc = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _srcL = (stdgo.Go.setRef(_c._link[(0 : stdgo.GoInt)]) : stdgo.Ref<_internal.vendor.golang_dot_org.x.text.transform.Transform_T_link.T_link>);
        var _dstL = (stdgo.Go.setRef(_c._link[((_c._link.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Ref<_internal.vendor.golang_dot_org.x.text.transform.Transform_T_link.T_link>);
        {
            final __tmp__0 = _src;
            final __tmp__1 = (0 : stdgo.GoInt);
            final __tmp__2 = (_src.length);
            _srcL._b = __tmp__0;
            _srcL._p = __tmp__1;
            _srcL._n = __tmp__2;
        };
        {
            final __tmp__0 = _dst;
            final __tmp__1 = (0 : stdgo.GoInt);
            _dstL._b = __tmp__0;
            _dstL._n = __tmp__1;
        };
        var __0:Bool = false, __1:Bool = false;
var _needProgress = __1, _lastFull = __0;
        {
            var __0 = (_c._errStart : stdgo.GoInt), __1 = (_c._errStart : stdgo.GoInt), __2 = ((_c._link.length) - (2 : stdgo.GoInt) : stdgo.GoInt);
var _high = __2, _i = __1, _low = __0;
            while (((_low <= _i : Bool) && (_i <= _high : Bool) : Bool)) {
                var __0 = (stdgo.Go.setRef(_c._link[(_i : stdgo.GoInt)]) : stdgo.Ref<_internal.vendor.golang_dot_org.x.text.transform.Transform_T_link.T_link>), __1 = (stdgo.Go.setRef(_c._link[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Ref<_internal.vendor.golang_dot_org.x.text.transform.Transform_T_link.T_link>);
var _out = __1, _in = __0;
                var __tmp__ = _in._t.transform(_out._dst(), _in._src(), (_atEOF && (_low == _i) : Bool)), _nDst:stdgo.GoInt = __tmp__._0, _nSrc:stdgo.GoInt = __tmp__._1, _err0:stdgo.Error = __tmp__._2;
                _out._n = (_out._n + (_nDst) : stdgo.GoInt);
                _in._p = (_in._p + (_nSrc) : stdgo.GoInt);
                if (((_i > (0 : stdgo.GoInt) : Bool) && (_in._p == _in._n) : Bool)) {
                    {
                        final __tmp__0 = (0 : stdgo.GoInt);
                        final __tmp__1 = (0 : stdgo.GoInt);
                        _in._p = __tmp__0;
                        _in._n = __tmp__1;
                    };
                };
                {
                    final __tmp__0 = _lastFull;
                    final __tmp__1 = false;
                    _needProgress = __tmp__0;
                    _lastFull = __tmp__1;
                };
                {
                    var __continue__ = false;
                    var __switchIndex__ = -1;
                    var __run__ = true;
                    while (__run__) {
                        __run__ = false;
                        {
                            final __value__ = _err0;
                            if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (stdgo.Go.toInterface(__value__) == stdgo.Go.toInterface(_internal.vendor.golang_dot_org.x.text.transform.Transform_errShortDst.errShortDst)))) {
                                if (_i == (_high)) {
                                    return { _0 : _dstL._n, _1 : _srcL._p, _2 : _internal.vendor.golang_dot_org.x.text.transform.Transform_errShortDst.errShortDst };
                                };
                                if (_out._n != ((0 : stdgo.GoInt))) {
                                    _i++;
                                    _lastFull = true;
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                };
                                _c._fatalError(_i, _internal.vendor.golang_dot_org.x.text.transform.Transform__errShortInternal._errShortInternal);
                                break;
                                break;
                            } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (stdgo.Go.toInterface(__value__) == stdgo.Go.toInterface(_internal.vendor.golang_dot_org.x.text.transform.Transform_errShortSrc.errShortSrc)))) {
                                if (_i == ((0 : stdgo.GoInt))) {
                                    _err = _internal.vendor.golang_dot_org.x.text.transform.Transform_errShortSrc.errShortSrc;
                                    break;
                                };
                                if (((_needProgress && _nSrc == ((0 : stdgo.GoInt)) : Bool) || ((_in._n - _in._p : stdgo.GoInt) == (_in._b.length)) : Bool)) {
                                    _c._fatalError(_i, _internal.vendor.golang_dot_org.x.text.transform.Transform__errShortInternal._errShortInternal);
                                    break;
                                };
                                {
                                    final __tmp__0 = (0 : stdgo.GoInt);
                                    final __tmp__1 = stdgo.Go.copySlice(_in._b, _in._src());
                                    _in._p = __tmp__0;
                                    _in._n = __tmp__1;
                                };
                                @:fallthrough {
                                    __switchIndex__ = 2;
                                    __run__ = true;
                                    continue;
                                };
                                break;
                            } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == null))) {
                                if ((_i > _low : Bool)) {
                                    _i--;
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                };
                                break;
                                break;
                            } else {
                                _c._fatalError(_i, _err0);
                                break;
                            };
                        };
                        break;
                    };
                    if (__continue__) continue;
                };
                _i++;
                _low = _i;
            };
        };
        if ((_c._errStart > (0 : stdgo.GoInt) : Bool)) {
            {
                var _i = (1 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _c._errStart : Bool), _i++, {
                    {
                        final __tmp__0 = (0 : stdgo.GoInt);
                        final __tmp__1 = (0 : stdgo.GoInt);
                        _c._link[(_i : stdgo.GoInt)]._p = __tmp__0;
                        _c._link[(_i : stdgo.GoInt)]._n = __tmp__1;
                    };
                });
            };
            {
                final __tmp__0 = _c._err;
                final __tmp__1 = (0 : stdgo.GoInt);
                final __tmp__2 = (null : stdgo.Error);
                _err = __tmp__0;
                _c._errStart = __tmp__1;
                _c._err = __tmp__2;
            };
        };
        return { _0 : _dstL._n, _1 : _srcL._p, _2 : _err };
    }
    @:keep
    static public function reset( _c:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.transform.Transform_T_chain.T_chain>):Void {
        @:recv var _c:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.transform.Transform_T_chain.T_chain> = _c;
        for (_i => _l in _c._link) {
            if (_l._t != null) {
                _l._t.reset();
            };
            {
                final __tmp__0 = (0 : stdgo.GoInt);
                final __tmp__1 = (0 : stdgo.GoInt);
                _c._link[(_i : stdgo.GoInt)]._p = __tmp__0;
                _c._link[(_i : stdgo.GoInt)]._n = __tmp__1;
            };
        };
    }
    @:keep
    static public function _fatalError( _c:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.transform.Transform_T_chain.T_chain>, _errIndex:stdgo.GoInt, _err:stdgo.Error):Void {
        @:recv var _c:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.transform.Transform_T_chain.T_chain> = _c;
        {
            var _i = (_errIndex + (1 : stdgo.GoInt) : stdgo.GoInt);
            if ((_i > _c._errStart : Bool)) {
                _c._errStart = _i;
                _c._err = _err;
            };
        };
    }
}
