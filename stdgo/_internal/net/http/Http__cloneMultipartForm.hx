package stdgo._internal.net.http;
function _cloneMultipartForm(_f:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>):stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form> {
        if ((_f == null || (_f : Dynamic).__nil__)) {
            return null;
        };
        var _f2 = (stdgo.Go.setRef(({ value : (((@:checkr _f ?? throw "null pointer dereference").value : stdgo._internal.net.http.Http_Header.Header).clone() : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) } : stdgo._internal.mime.multipart.Multipart_Form.Form)) : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>);
        if ((@:checkr _f ?? throw "null pointer dereference").file != null) {
            var _m = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>>>);
            for (_k => _vv in (@:checkr _f ?? throw "null pointer dereference").file) {
                var _vv2 = (new stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>>((_vv.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>>);
                for (_i => _v in _vv) {
                    _vv2[(_i : stdgo.GoInt)] = stdgo._internal.net.http.Http__cloneMultipartFileHeader._cloneMultipartFileHeader(_v);
                };
                _m[_k] = _vv2;
            };
            (@:checkr _f2 ?? throw "null pointer dereference").file = _m;
        };
        return _f2;
    }
