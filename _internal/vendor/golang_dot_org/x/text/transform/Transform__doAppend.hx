package _internal.vendor.golang_dot_org.x.text.transform;
function _doAppend(_t:_internal.vendor.golang_dot_org.x.text.transform.Transform_Transformer.Transformer, _pDst:stdgo.GoInt, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        var _result = (null : stdgo.Slice<stdgo.GoUInt8>), _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _t.reset();
        var _pSrc = (0 : stdgo.GoInt);
        while (true) {
            var __tmp__ = _t.transform((_dst.__slice__(_pDst) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__(_pSrc) : stdgo.Slice<stdgo.GoUInt8>), true), _nDst:stdgo.GoInt = __tmp__._0, _nSrc:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            _pDst = (_pDst + (_nDst) : stdgo.GoInt);
            _pSrc = (_pSrc + (_nSrc) : stdgo.GoInt);
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_internal.vendor.golang_dot_org.x.text.transform.Transform_errShortDst.errShortDst))) {
                return { _0 : (_dst.__slice__(0, _pDst) : stdgo.Slice<stdgo.GoUInt8>), _1 : _pSrc, _2 : _err };
            };
            if (_nDst == ((0 : stdgo.GoInt))) {
                _dst = _internal.vendor.golang_dot_org.x.text.transform.Transform__grow._grow(_dst, _pDst);
            };
        };
    }
