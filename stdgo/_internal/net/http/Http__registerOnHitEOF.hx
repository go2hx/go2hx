package stdgo._internal.net.http;
function _registerOnHitEOF(_rc:stdgo._internal.io.Io_ReadCloser.ReadCloser, _fn:() -> Void):Void {
        {
            final __type__ = _rc;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_expectContinueReader.T_expectContinueReader>))) {
                var _v:stdgo.Ref<stdgo._internal.net.http.Http_T_expectContinueReader.T_expectContinueReader> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_expectContinueReader.T_expectContinueReader>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_expectContinueReader.T_expectContinueReader>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_expectContinueReader.T_expectContinueReader>) : __type__.__underlying__().value;
                stdgo._internal.net.http.Http__registerOnHitEOF._registerOnHitEOF(_v._readCloser, _fn);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>))) {
                var _v:stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>) : __type__.__underlying__().value;
                _v._registerOnHitEOF(_fn);
            } else {
                var _v:stdgo._internal.io.Io_ReadCloser.ReadCloser = __type__ == null ? (null : stdgo._internal.io.Io_ReadCloser.ReadCloser) : cast __type__;
                throw stdgo.Go.toInterface((("unexpected type " : stdgo.GoString) + stdgo._internal.fmt.Fmt_sprintf.sprintf(("%T" : stdgo.GoString), stdgo.Go.toInterface(_rc))?.__copy__() : stdgo.GoString));
            };
        };
    }
