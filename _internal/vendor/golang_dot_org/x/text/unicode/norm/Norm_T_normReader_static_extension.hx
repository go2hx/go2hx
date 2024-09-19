package _internal.vendor.golang_dot_org.x.text.unicode.norm;
@:keep @:allow(_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm.T_normReader_asInterface) class T_normReader_static_extension {
    @:keep
    static public function read( _r:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_normReader.T_normReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_normReader.T_normReader> = _r;
        while (true) {
            if (((_r._lastBoundary - _r._bufStart : stdgo.GoInt) > (0 : stdgo.GoInt) : Bool)) {
                var _n = (stdgo.Go.copySlice(_p, (_r._outbuf.__slice__(_r._bufStart, _r._lastBoundary) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
                _r._bufStart = (_r._bufStart + (_n) : stdgo.GoInt);
                if (((_r._lastBoundary - _r._bufStart : stdgo.GoInt) > (0 : stdgo.GoInt) : Bool)) {
                    return { _0 : _n, _1 : (null : stdgo.Error) };
                };
                return { _0 : _n, _1 : _r._err };
            };
            if (_r._err != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : _r._err };
            };
            var _outn = (stdgo.Go.copySlice(_r._outbuf, (_r._outbuf.__slice__(_r._lastBoundary) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
            _r._outbuf = (_r._outbuf.__slice__((0 : stdgo.GoInt), _outn) : stdgo.Slice<stdgo.GoUInt8>);
            _r._bufStart = (0 : stdgo.GoInt);
            var __tmp__ = _r._r.read(_r._inbuf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            _r._rb._src = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__inputBytes._inputBytes((_r._inbuf.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
            {
                final __tmp__0 = _n;
                final __tmp__1 = _err;
                _r._rb._nsrc = __tmp__0;
                _r._err = __tmp__1;
            };
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                _r._outbuf = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__doAppend._doAppend((stdgo.Go.setRef(_r._rb) : stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer>), _r._outbuf, (0 : stdgo.GoInt));
            };
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                _r._lastBoundary = (_r._outbuf.length);
            } else {
                _r._lastBoundary = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__lastBoundary._lastBoundary((stdgo.Go.setRef(_r._rb._f) : stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_formInfo.T_formInfo>), _r._outbuf);
                if (_r._lastBoundary == ((-1 : stdgo.GoInt))) {
                    _r._lastBoundary = (0 : stdgo.GoInt);
                };
            };
        };
    }
}
