package _internal.vendor.golang_dot_org.x.text.unicode.norm;
function _nextComposed(_i:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Iter.Iter>):stdgo.Slice<stdgo.GoUInt8> {
        stdgo._internal.internal.Macro.controlFlow({
            var __0 = (0 : stdgo.GoInt), __1 = (_i._p : stdgo.GoInt);
var _startp = __1, _outp = __0;
            var _prevCC:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
            while (true) {
                if (!_i._info._isYesC()) {
                    @:goto "doNorm";
                };
                _prevCC = _i._info._tccc;
                var _sz = (_i._info._size : stdgo.GoInt);
                if (_sz == ((0 : stdgo.GoInt))) {
                    _sz = (1 : stdgo.GoInt);
                };
                var _p = (_outp + _sz : stdgo.GoInt);
                if ((_p > (_i._buf.length) : Bool)) {
                    break;
                };
                _outp = _p;
                _i._p = (_i._p + (_sz) : stdgo.GoInt);
                if ((_i._p >= _i._rb._nsrc : Bool)) {
                    _i._setDone();
                    break;
                } else if ((_i._rb._src.__byte(_i._p) < (128 : stdgo.GoUInt8) : Bool)) {
                    _i._rb._ss = (0 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_streamSafe.T_streamSafe);
                    _i._next = _i._asciiF;
                    break;
                };
                _i._info = _i._rb._f._info(_i._rb._src?.__copy__(), _i._p)?.__copy__();
                {
                    var _v = (_i._rb._ss._next(stdgo.Go.pointer(_i._rb._ss), _i._info?.__copy__()) : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState);
                    if (_v == ((1 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState))) {
                        break;
                    } else if (_v == ((2 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_ssState.T_ssState))) {
                        _i._next = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__nextCGJCompose._nextCGJCompose;
                        break;
                    };
                };
                if ((_i._info._ccc < _prevCC : Bool)) {
                    @:goto "doNorm";
                };
            };
            return _i._returnSlice(_startp, _i._p);
            @:label("doNorm") _i._p = _startp;
            _i._info = _i._rb._f._info(_i._rb._src?.__copy__(), _i._p)?.__copy__();
            _i._rb._ss._first(stdgo.Go.pointer(_i._rb._ss), _i._info?.__copy__());
            if (_i._info._multiSegment()) {
                var _d = _i._info.decomposition();
                var _info = (_i._rb._f._info(({ _bytes : _d } : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input), (0 : stdgo.GoInt))?.__copy__() : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties);
                _i._rb._insertUnsafe(({ _bytes : _d } : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_input.T_input), (0 : stdgo.GoInt), _info?.__copy__());
                _i._multiSeg = (_d.__slice__((_info._size : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                _i._next = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__nextMultiNorm._nextMultiNorm;
                return _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__nextMultiNorm._nextMultiNorm(_i);
            };
            _i._rb._ss._first(stdgo.Go.pointer(_i._rb._ss), _i._info?.__copy__());
            _i._rb._insertUnsafe(_i._rb._src?.__copy__(), _i._p, _i._info?.__copy__());
            return _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__doNormComposed._doNormComposed(_i);
        });
    }
