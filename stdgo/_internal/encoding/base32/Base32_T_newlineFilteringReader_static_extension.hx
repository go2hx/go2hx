package stdgo._internal.encoding.base32;
@:keep @:allow(stdgo._internal.encoding.base32.Base32.T_newlineFilteringReader_asInterface) class T_newlineFilteringReader_static_extension {
    @:keep
    static public function read( _r:stdgo.Ref<stdgo._internal.encoding.base32.Base32_T_newlineFilteringReader.T_newlineFilteringReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.encoding.base32.Base32_T_newlineFilteringReader.T_newlineFilteringReader> = _r;
        var __tmp__ = _r._wrapped.read(_p), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        while ((_n > (0 : stdgo.GoInt) : Bool)) {
            var _s = (_p.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
            var _offset = (stdgo._internal.encoding.base32.Base32__stripNewlines._stripNewlines(_s, _s) : stdgo.GoInt);
            if (((_err != null) || (_offset > (0 : stdgo.GoInt) : Bool) : Bool)) {
                return { _0 : _offset, _1 : _err };
            };
            {
                var __tmp__ = _r._wrapped.read(_p);
                _n = __tmp__._0;
                _err = __tmp__._1;
            };
        };
        return { _0 : _n, _1 : _err };
    }
}