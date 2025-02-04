package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2StreamError_asInterface) class T_http2StreamError_static_extension {
    @:keep
    @:tdfield
    static public function as( _e:stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError, _target:stdgo.AnyInterface):Bool {
        @:recv var _e:stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError = _e?.__copy__();
        var _dst = (stdgo._internal.net.http.Http__reflect._reflect.valueOf(_target).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _dstType = (_dst.type() : stdgo._internal.reflect.Reflect_type_.Type_);
        if (_dstType.kind() != ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            return false;
        };
        var _src = (stdgo._internal.net.http.Http__reflect._reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_e)))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _srcType = (_src.type() : stdgo._internal.reflect.Reflect_type_.Type_);
        var _numField = (_srcType.numField() : stdgo.GoInt);
        if (_dstType.numField() != (_numField)) {
            return false;
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _numField : Bool)) {
                var _sf = (_srcType.field(_i).__copy__() : stdgo._internal.reflect.Reflect_structfield.StructField);
var _df = (_dstType.field(_i).__copy__() : stdgo._internal.reflect.Reflect_structfield.StructField);
if (((_sf.name != _df.name) || !_sf.type.convertibleTo(_df.type) : Bool)) {
                    return false;
                };
                _i++;
            };
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _numField : Bool)) {
                var _df = (_dst.field(_i).__copy__() : stdgo._internal.reflect.Reflect_value.Value);
_df.set(_src.field(_i).convert(_df.type()).__copy__());
                _i++;
            };
        };
        return true;
    }
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError):stdgo.GoString {
        @:recv var _e:stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError = _e?.__copy__();
        if (_e.cause != null) {
            return stdgo._internal.net.http.Http__fmt._fmt.sprintf(("stream error: stream ID %d; %v; %v" : stdgo.GoString), stdgo.Go.toInterface(_e.streamID), stdgo.Go.toInterface(stdgo.Go.asInterface(_e.code)), stdgo.Go.toInterface(_e.cause))?.__copy__();
        };
        return stdgo._internal.net.http.Http__fmt._fmt.sprintf(("stream error: stream ID %d; %v" : stdgo.GoString), stdgo.Go.toInterface(_e.streamID), stdgo.Go.toInterface(stdgo.Go.asInterface(_e.code)))?.__copy__();
    }
}
