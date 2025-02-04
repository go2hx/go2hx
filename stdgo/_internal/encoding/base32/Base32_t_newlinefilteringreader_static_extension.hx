package stdgo._internal.encoding.base32;
@:keep @:allow(stdgo._internal.encoding.base32.Base32.T_newlineFilteringReader_asInterface) class T_newlineFilteringReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<stdgo._internal.encoding.base32.Base32_t_newlinefilteringreader.T_newlineFilteringReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.encoding.base32.Base32_t_newlinefilteringreader.T_newlineFilteringReader> = _r;
        var __tmp__ = (@:checkr _r ?? throw "null pointer dereference")._wrapped.read(_p), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        while ((_n > (0 : stdgo.GoInt) : Bool)) {
            var _s = (_p.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
            var _offset = (stdgo._internal.encoding.base32.Base32__stripnewlines._stripNewlines(_s, _s) : stdgo.GoInt);
            if (((_err != null) || (_offset > (0 : stdgo.GoInt) : Bool) : Bool)) {
                return { _0 : _offset, _1 : _err };
            };
            {
                var __tmp__ = (@:checkr _r ?? throw "null pointer dereference")._wrapped.read(_p);
                _n = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        };
        return { _0 : _n, _1 : _err };
    }
}
