package _internal.vendor.golang_dot_org.x.text.transform;
@:keep @:allow(_internal.vendor.golang_dot_org.x.text.transform.Transform.T_removeF_asInterface) class T_removeF_static_extension {
    @:keep
    static public function transform( _t:_internal.vendor.golang_dot_org.x.text.transform.Transform_T_removeF.T_removeF, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _t:_internal.vendor.golang_dot_org.x.text.transform.Transform_T_removeF.T_removeF = _t;
        var _nDst = (0 : stdgo.GoInt), _nSrc = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        {
            var __0 = ((0 : stdgo.GoInt32) : stdgo.GoInt32), __1 = (0 : stdgo.GoInt);
var _sz = __1, _r = __0;
            stdgo.Go.cfor(((_src.length) > (0 : stdgo.GoInt) : Bool), _src = (_src.__slice__(_sz) : stdgo.Slice<stdgo.GoUInt8>), {
                {
                    _r = (_src[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                    if ((_r < (128 : stdgo.GoInt32) : Bool)) {
                        _sz = (1 : stdgo.GoInt);
                    } else {
                        {
                            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_src);
                            _r = __tmp__._0;
                            _sz = __tmp__._1;
                        };
                        if (_sz == ((1 : stdgo.GoInt))) {
                            if ((!_atEOF && !stdgo._internal.unicode.utf8.Utf8_fullRune.fullRune(_src) : Bool)) {
                                _err = _internal.vendor.golang_dot_org.x.text.transform.Transform_errShortSrc.errShortSrc;
                                break;
                            };
                            if (!_t(_r)) {
                                if (((_nDst + (3 : stdgo.GoInt) : stdgo.GoInt) > (_dst.length) : Bool)) {
                                    _err = _internal.vendor.golang_dot_org.x.text.transform.Transform_errShortDst.errShortDst;
                                    break;
                                };
                                _nDst = (_nDst + (stdgo.Go.copySlice((_dst.__slice__(_nDst) : stdgo.Slice<stdgo.GoUInt8>), ("�" : stdgo.GoString))) : stdgo.GoInt);
                            };
                            _nSrc++;
                            continue;
                        };
                    };
                };
                if (!_t(_r)) {
                    if (((_nDst + _sz : stdgo.GoInt) > (_dst.length) : Bool)) {
                        _err = _internal.vendor.golang_dot_org.x.text.transform.Transform_errShortDst.errShortDst;
                        break;
                    };
                    _nDst = (_nDst + (stdgo.Go.copySlice((_dst.__slice__(_nDst) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__(0, _sz) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
                };
                _nSrc = (_nSrc + (_sz) : stdgo.GoInt);
            });
        };
        return { _0 : _nDst, _1 : _nSrc, _2 : _err };
    }
    @:keep
    static public function reset( _:_internal.vendor.golang_dot_org.x.text.transform.Transform_T_removeF.T_removeF):Void {
        @:recv var _:_internal.vendor.golang_dot_org.x.text.transform.Transform_T_removeF.T_removeF = _;
    }
}
