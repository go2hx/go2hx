package _internal.vendor.golang_dot_org.x.text.unicode.norm;
function _nextDecomposed(_i:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Iter.Iter>):stdgo.Slice<stdgo.GoUInt8> {
        stdgo._internal.internal.Macro.controlFlow({
            var _next = (null : stdgo.Slice<stdgo.GoUInt8>);
            var _outp = (0 : stdgo.GoInt);
            var __0 = (_i._p : stdgo.GoInt), __1 = (0 : stdgo.GoInt);
var _outCopyStart = __1, _inCopyStart = __0;
            while (true) {
                {
                    var _sz = (_i._info._size : stdgo.GoInt);
                    if ((_sz <= (1 : stdgo.GoInt) : Bool)) {
                        _i._rb._ss = (0 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe);
                        var _p = (_i._p : stdgo.GoInt);
                        _i._p++;
                        if ((_i._p >= _i._rb._nsrc : Bool)) {
                            _i._setDone();
                            return _i._returnSlice(_p, _i._p);
                        } else if ((_i._rb._src.__byte(_i._p) < (128 : stdgo.GoUInt8) : Bool)) {
                            _i._next = _i._asciiF;
                            return _i._returnSlice(_p, _i._p);
                        };
                        _outp++;
                    } else {
                        var _d = _i._info.decomposition();
                        if (_d != null) {
                            var _p = (_outp + (_d.length) : stdgo.GoInt);
                            if ((_outp > (0 : stdgo.GoInt) : Bool)) {
                                _i._rb._src._copySlice((_i._buf.__slice__(_outCopyStart) : stdgo.Slice<stdgo.GoUInt8>), _inCopyStart, _i._p);
                                if ((_p > (_i._buf.length) : Bool)) {
                                    return (_i._buf.__slice__(0, _outp) : stdgo.Slice<stdgo.GoUInt8>);
                                };
                            } else if (_i._info._multiSegment()) {
                                if (_i._multiSeg == null) {
                                    _i._multiSeg = _d;
                                    _i._next = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__nextMulti._nextMulti;
                                    return _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__nextMulti._nextMulti(_i);
                                };
                                _d = _i._multiSeg;
                                _i._multiSeg = (null : stdgo.Slice<stdgo.GoUInt8>);
                                _p = (_d.length);
                            };
                            var _prevCC = (_i._info._tccc : stdgo.GoUInt8);
                            {
                                _i._p = (_i._p + (_sz) : stdgo.GoInt);
                                if ((_i._p >= _i._rb._nsrc : Bool)) {
                                    _i._setDone();
                                    _i._info = (new _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties() : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties);
                                } else {
                                    _i._info = _i._rb._f._info(_i._rb._src?.__copy__(), _i._p)?.__copy__();
                                };
                            };
                            {
                                var __switchIndex__ = -1;
                                var __run__ = true;
                                while (__run__) {
                                    __run__ = false;
                                    {
                                        final __value__ = _i._rb._ss._next(stdgo.Go.pointer(_i._rb._ss), _i._info?.__copy__());
                                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (2 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState)))) {
                                            _i._next = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__nextCGJDecompose._nextCGJDecompose;
                                            @:fallthrough {
                                                __switchIndex__ = 1;
                                                __run__ = true;
                                                continue;
                                            };
                                            break;
                                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (1 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState)))) {
                                            if ((_outp > (0 : stdgo.GoInt) : Bool)) {
                                                stdgo.Go.copySlice((_i._buf.__slice__(_outp) : stdgo.Slice<stdgo.GoUInt8>), _d);
                                                return (_i._buf.__slice__(0, _p) : stdgo.Slice<stdgo.GoUInt8>);
                                            };
                                            return _d;
                                            break;
                                            break;
                                        };
                                    };
                                    break;
                                };
                            };
                            stdgo.Go.copySlice((_i._buf.__slice__(_outp) : stdgo.Slice<stdgo.GoUInt8>), _d);
                            _outp = _p;
                            {
                                final __tmp__0 = _i._p;
                                final __tmp__1 = _outp;
                                _inCopyStart = __tmp__0;
                                _outCopyStart = __tmp__1;
                            };
                            if ((_i._info._ccc < _prevCC : Bool)) {
                                @:goto "doNorm";
                            };
                            continue;
                        } else {
                            var _r = (_i._rb._src._hangul(_i._p) : stdgo.GoInt32);
                            if (_r != ((0 : stdgo.GoInt32))) {
                                _outp = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__decomposeHangul._decomposeHangul((_i._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _r);
                                _i._p = (_i._p + ((3 : stdgo.GoInt)) : stdgo.GoInt);
                                {
                                    final __tmp__0 = _i._p;
                                    final __tmp__1 = _outp;
                                    _inCopyStart = __tmp__0;
                                    _outCopyStart = __tmp__1;
                                };
                                if ((_i._p >= _i._rb._nsrc : Bool)) {
                                    _i._setDone();
                                    break;
                                } else if (_i._rb._src._hangul(_i._p) != ((0 : stdgo.GoInt32))) {
                                    _i._next = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__nextHangul._nextHangul;
                                    return (_i._buf.__slice__(0, _outp) : stdgo.Slice<stdgo.GoUInt8>);
                                };
                            } else {
                                var _p = (_outp + _sz : stdgo.GoInt);
                                if ((_p > (_i._buf.length) : Bool)) {
                                    break;
                                };
                                _outp = _p;
                                _i._p = (_i._p + (_sz) : stdgo.GoInt);
                            };
                        };
                    };
                };
                if ((_i._p >= _i._rb._nsrc : Bool)) {
                    _i._setDone();
                    break;
                };
                var _prevCC = (_i._info._tccc : stdgo.GoUInt8);
                _i._info = _i._rb._f._info(_i._rb._src?.__copy__(), _i._p)?.__copy__();
                {
                    var _v = (_i._rb._ss._next(stdgo.Go.pointer(_i._rb._ss), _i._info?.__copy__()) : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState);
                    if (_v == ((1 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState))) {
                        break;
                    } else if (_v == ((2 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState))) {
                        _i._next = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__nextCGJDecompose._nextCGJDecompose;
                        break;
                    };
                };
                if ((_i._info._ccc < _prevCC : Bool)) {
                    @:goto "doNorm";
                };
            };
            if (_outCopyStart == ((0 : stdgo.GoInt))) {
                return _i._returnSlice(_inCopyStart, _i._p);
            } else if ((_inCopyStart < _i._p : Bool)) {
                _i._rb._src._copySlice((_i._buf.__slice__(_outCopyStart) : stdgo.Slice<stdgo.GoUInt8>), _inCopyStart, _i._p);
            };
            return (_i._buf.__slice__(0, _outp) : stdgo.Slice<stdgo.GoUInt8>);
            @:label("doNorm") _i._rb._src._copySlice((_i._buf.__slice__(_outCopyStart) : stdgo.Slice<stdgo.GoUInt8>), _inCopyStart, _i._p);
            _i._rb._insertDecomposed((_i._buf.__slice__((0 : stdgo.GoInt), _outp) : stdgo.Slice<stdgo.GoUInt8>));
            return _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__doNormDecomposed._doNormDecomposed(_i);
        });
    }
