package stdgo._internal.net.http.httptest;
function newRecorder():stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder> {
        return (stdgo.Go.setRef(({ headerMap : (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header), body : (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>), code : (200 : stdgo.GoInt) } : stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder)) : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder>);
    }
