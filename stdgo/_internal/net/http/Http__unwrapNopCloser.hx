package stdgo._internal.net.http;
function _unwrapNopCloser(_r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo._internal.io.Io_Reader.Reader; var _1 : Bool; } {
        var _underlyingReader = (null : stdgo._internal.io.Io_Reader.Reader), _isNopCloser = false;
        {
            final __value__ = stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(_r));
            if ((__value__.string() : String) == (stdgo._internal.net.http.Http__nopCloserType._nopCloserType.string() : String) || (__value__.string() : String) == (stdgo._internal.net.http.Http__nopCloserWriterToType._nopCloserWriterToType.string() : String)) {
                return { _0 : _underlyingReader = (stdgo.Go.typeAssert((stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_r)).field((0 : stdgo.GoInt)).interface_() : stdgo._internal.io.Io_Reader.Reader)) : stdgo._internal.io.Io_Reader.Reader), _1 : _isNopCloser = true };
            } else {
                return { _0 : _underlyingReader = (null : stdgo._internal.io.Io_Reader.Reader), _1 : _isNopCloser = false };
            };
        };
    }
