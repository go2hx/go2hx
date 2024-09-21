package _internal.vendor.golang_dot_org.x.text.transform;
function string(_t:_internal.vendor.golang_dot_org.x.text.transform.Transform_Transformer.Transformer, _s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        var _result = ("" : stdgo.GoString), _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _t.reset();
        if (_s == (stdgo.Go.str())) {
            {
                var __tmp__ = _t.transform((null : stdgo.Slice<stdgo.GoUInt8>), (null : stdgo.Slice<stdgo.GoUInt8>), true), __0:stdgo.GoInt = __tmp__._0, __1:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err == null) {
                    return { _0 : stdgo.Go.str()?.__copy__(), _1 : (0 : stdgo.GoInt), _2 : (null : stdgo.Error) };
                };
            };
        };
        var _buf = (new stdgo.GoArray<stdgo.GoUInt8>(256, 256, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__();
        var _dst = (_buf.__slice__(0, (128 : stdgo.GoInt), (128 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _src = (_buf.__slice__((128 : stdgo.GoInt), (256 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var __0 = (0 : stdgo.GoInt), __1 = (0 : stdgo.GoInt);
var _nSrc = __1, _nDst = __0;
        var __0 = (0 : stdgo.GoInt), __1 = (0 : stdgo.GoInt);
var _pSrc = __1, _pDst = __0;
        var _pPrefix = (0 : stdgo.GoInt);
        while (true) {
            var _n = (stdgo.Go.copySlice(_src, (_s.__slice__(_pSrc) : stdgo.GoString)) : stdgo.GoInt);
            {
                var __tmp__ = _t.transform(_dst, (_src.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>), (_pSrc + _n : stdgo.GoInt) == ((_s.length)));
                _nDst = __tmp__._0;
                _nSrc = __tmp__._1;
                _err = __tmp__._2;
            };
            _pDst = (_pDst + (_nDst) : stdgo.GoInt);
            _pSrc = (_pSrc + (_nSrc) : stdgo.GoInt);
            if (!stdgo._internal.bytes.Bytes_equal.equal((_dst.__slice__(0, _nDst) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__(0, _nSrc) : stdgo.Slice<stdgo.GoUInt8>))) {
                break;
            };
            _pPrefix = _pSrc;
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(_internal.vendor.golang_dot_org.x.text.transform.Transform_errShortDst.errShortDst))) {
                break;
            } else if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(_internal.vendor.golang_dot_org.x.text.transform.Transform_errShortSrc.errShortSrc))) {
                if (_nSrc == ((0 : stdgo.GoInt))) {
                    break;
                };
            } else if (((_err != null) || (_pPrefix == (_s.length)) : Bool)) {
                return { _0 : (_s.__slice__(0, _pPrefix) : stdgo.GoString)?.__copy__(), _1 : _pPrefix, _2 : _err };
            };
        };
        if (_pPrefix != ((0 : stdgo.GoInt))) {
            var _newDst = _dst;
            if ((_pDst > (_newDst.length) : Bool)) {
                _newDst = (new stdgo.Slice<stdgo.GoUInt8>((((_s.length) + _nDst : stdgo.GoInt) - _nSrc : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            };
            stdgo.Go.copySlice((_newDst.__slice__(_pPrefix, _pDst) : stdgo.Slice<stdgo.GoUInt8>), (_dst.__slice__(0, _nDst) : stdgo.Slice<stdgo.GoUInt8>));
            stdgo.Go.copySlice((_newDst.__slice__(0, _pPrefix) : stdgo.Slice<stdgo.GoUInt8>), (_s.__slice__(0, _pPrefix) : stdgo.GoString));
            _dst = _newDst;
        };
        if (((((_err == null) && (_pSrc == (_s.length)) : Bool)) || (((_err != null && stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_internal.vendor.golang_dot_org.x.text.transform.Transform_errShortDst.errShortDst)) : Bool) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(_internal.vendor.golang_dot_org.x.text.transform.Transform_errShortSrc.errShortSrc)) : Bool)) : Bool)) {
            return { _0 : ((_dst.__slice__(0, _pDst) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__(), _1 : _pSrc, _2 : _err };
        };
        while (true) {
            var _n = (stdgo.Go.copySlice(_src, (_s.__slice__(_pSrc) : stdgo.GoString)) : stdgo.GoInt);
            var _atEOF = ((_pSrc + _n : stdgo.GoInt) == ((_s.length)) : Bool);
            var __tmp__ = _t.transform((_dst.__slice__(_pDst) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>), _atEOF), _nDst:stdgo.GoInt = __tmp__._0, _nSrc:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            _pDst = (_pDst + (_nDst) : stdgo.GoInt);
            _pSrc = (_pSrc + (_nSrc) : stdgo.GoInt);
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(_internal.vendor.golang_dot_org.x.text.transform.Transform_errShortDst.errShortDst))) {
                if (_nDst == ((0 : stdgo.GoInt))) {
                    _dst = _internal.vendor.golang_dot_org.x.text.transform.Transform__grow._grow(_dst, _pDst);
                };
            } else if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(_internal.vendor.golang_dot_org.x.text.transform.Transform_errShortSrc.errShortSrc))) {
                if (_atEOF) {
                    return { _0 : ((_dst.__slice__(0, _pDst) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__(), _1 : _pSrc, _2 : _err };
                };
                if (_nSrc == ((0 : stdgo.GoInt))) {
                    _src = _internal.vendor.golang_dot_org.x.text.transform.Transform__grow._grow(_src, (0 : stdgo.GoInt));
                };
            } else if (((_err != null) || (_pSrc == (_s.length)) : Bool)) {
                return { _0 : ((_dst.__slice__(0, _pDst) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__(), _1 : _pSrc, _2 : _err };
            };
        };
    }
