package stdgo._internal.encoding.base64;
@:keep @:allow(stdgo._internal.encoding.base64.Base64.T_faultInjectReader_asInterface) class T_faultInjectReader_static_extension {
    @:keep
    static public function read( _r:stdgo.Ref<stdgo._internal.encoding.base64.Base64_T_faultInjectReader.T_faultInjectReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.encoding.base64.Base64_T_faultInjectReader.T_faultInjectReader> = _r;
        var _nr = (_r._nextc.__get__()?.__copy__() : stdgo._internal.encoding.base64.Base64_T_nextRead.T_nextRead);
        if (((_p.length) > _nr._n : Bool)) {
            _p = (_p.__slice__(0, _nr._n) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _n = (_p.__copyTo__(_r._source) : stdgo.GoInt);
        _r._source = (_r._source.__slice__(_n) : stdgo.GoString)?.__copy__();
        return { _0 : _n, _1 : _nr._err };
    }
}
