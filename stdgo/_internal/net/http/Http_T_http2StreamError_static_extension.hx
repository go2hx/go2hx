package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2StreamError_asInterface) class T_http2StreamError_static_extension {
    @:keep
    static public function as( _e:stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError, _target:stdgo.AnyInterface):Bool {
        @:recv var _e:stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError = _e?.__copy__();
        var _dst = (stdgo._internal.reflect.Reflect_valueOf.valueOf(_target).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _dstType = (_dst.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
        if (_dstType.kind() != ((25u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
            return false;
        };
        var _src = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_e)))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _srcType = (_src.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _numField = (_srcType.numField() : stdgo.GoInt);
        if (_dstType.numField() != (_numField)) {
            return false;
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _numField : Bool), _i++, {
                var _sf = (_srcType.field(_i)?.__copy__() : stdgo._internal.reflect.Reflect_StructField.StructField);
                var _df = (_dstType.field(_i)?.__copy__() : stdgo._internal.reflect.Reflect_StructField.StructField);
                if (((_sf.name != _df.name) || !_sf.type.convertibleTo(_df.type) : Bool)) {
                    return false;
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _numField : Bool), _i++, {
                var _df = (_dst.field(_i)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                _df.set(_src.field(_i).convert(_df.type())?.__copy__());
            });
        };
        return true;
    }
    @:keep
    static public function _staysWithinBuffer( _se:stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError, _max:stdgo.GoInt):Bool {
        @:recv var _se:stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError = _se?.__copy__();
        return ((13 : stdgo.GoInt) <= _max : Bool);
    }
    @:keep
    static public function _writeFrame( _se:stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError, _ctx:stdgo._internal.net.http.Http_T_http2writeContext.T_http2writeContext):stdgo.Error {
        @:recv var _se:stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError = _se?.__copy__();
        return _ctx.framer().writeRSTStream(_se.streamID, _se.code);
    }
    @:keep
    static public function error( _e:stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError):stdgo.GoString {
        @:recv var _e:stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError = _e?.__copy__();
        if (_e.cause != null) {
            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("stream error: stream ID %d; %v; %v" : stdgo.GoString), stdgo.Go.toInterface(_e.streamID), stdgo.Go.toInterface(stdgo.Go.asInterface(_e.code)), stdgo.Go.toInterface(_e.cause))?.__copy__();
        };
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("stream error: stream ID %d; %v" : stdgo.GoString), stdgo.Go.toInterface(_e.streamID), stdgo.Go.toInterface(stdgo.Go.asInterface(_e.code)))?.__copy__();
    }
}
