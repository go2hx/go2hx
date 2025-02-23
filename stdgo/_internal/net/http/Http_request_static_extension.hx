package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.Request_asInterface) class Request_static_extension {
    @:keep
    @:tdfield
    static public function formFile( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _key:stdgo.GoString):{ var _0 : stdgo._internal.mime.multipart.Multipart_file.File; var _1 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_fileheader.FileHeader>; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        if ((@:checkr _r ?? throw "null pointer dereference").multipartForm == (stdgo._internal.net.http.Http__multipartbyreader._multipartByReader)) {
            return { _0 : (null : stdgo._internal.mime.multipart.Multipart_file.File), _1 : null, _2 : stdgo._internal.net.http.Http__errors._errors.new_(("http: multipart handled by MultipartReader" : stdgo.GoString)) };
        };
        if (((@:checkr _r ?? throw "null pointer dereference").multipartForm == null || ((@:checkr _r ?? throw "null pointer dereference").multipartForm : Dynamic).__nil__)) {
            var _err = (@:check2r _r.parseMultipartForm((33554432i64 : stdgo.GoInt64)) : stdgo.Error);
            if (_err != null) {
                return { _0 : (null : stdgo._internal.mime.multipart.Multipart_file.File), _1 : null, _2 : _err };
            };
        };
        if ((((@:checkr _r ?? throw "null pointer dereference").multipartForm != null && (((@:checkr _r ?? throw "null pointer dereference").multipartForm : Dynamic).__nil__ == null || !((@:checkr _r ?? throw "null pointer dereference").multipartForm : Dynamic).__nil__)) && ((@:checkr (@:checkr _r ?? throw "null pointer dereference").multipartForm ?? throw "null pointer dereference").file != null) : Bool)) {
            {
                var _fhs = ((@:checkr (@:checkr _r ?? throw "null pointer dereference").multipartForm ?? throw "null pointer dereference").file[_key] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_fileheader.FileHeader>>));
                if (((_fhs.length) > (0 : stdgo.GoInt) : Bool)) {
                    var __tmp__ = @:check2r _fhs[(0 : stdgo.GoInt)].open(), _f:stdgo._internal.mime.multipart.Multipart_file.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    return { _0 : _f, _1 : _fhs[(0 : stdgo.GoInt)], _2 : _err };
                };
            };
        };
        return { _0 : (null : stdgo._internal.mime.multipart.Multipart_file.File), _1 : null, _2 : stdgo._internal.net.http.Http_errmissingfile.errMissingFile };
    }
    @:keep
    @:tdfield
    static public function postFormValue( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _key:stdgo.GoString):stdgo.GoString {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        if ((@:checkr _r ?? throw "null pointer dereference").postForm == null) {
            @:check2r _r.parseMultipartForm((33554432i64 : stdgo.GoInt64));
        };
        {
            var _vs = ((@:checkr _r ?? throw "null pointer dereference").postForm[_key] ?? (null : stdgo.Slice<stdgo.GoString>));
            if (((_vs.length) > (0 : stdgo.GoInt) : Bool)) {
                return _vs[(0 : stdgo.GoInt)]?.__copy__();
            };
        };
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function formValue( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _key:stdgo.GoString):stdgo.GoString {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        if ((@:checkr _r ?? throw "null pointer dereference").form == null) {
            @:check2r _r.parseMultipartForm((33554432i64 : stdgo.GoInt64));
        };
        {
            var _vs = ((@:checkr _r ?? throw "null pointer dereference").form[_key] ?? (null : stdgo.Slice<stdgo.GoString>));
            if (((_vs.length) > (0 : stdgo.GoInt) : Bool)) {
                return _vs[(0 : stdgo.GoInt)]?.__copy__();
            };
        };
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function parseMultipartForm( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _maxMemory:stdgo.GoInt64):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        if ((@:checkr _r ?? throw "null pointer dereference").multipartForm == (stdgo._internal.net.http.Http__multipartbyreader._multipartByReader)) {
            return stdgo._internal.net.http.Http__errors._errors.new_(("http: multipart handled by MultipartReader" : stdgo.GoString));
        };
        var _parseFormErr:stdgo.Error = (null : stdgo.Error);
        if ((@:checkr _r ?? throw "null pointer dereference").form == null) {
            _parseFormErr = @:check2r _r.parseForm();
        };
        if (((@:checkr _r ?? throw "null pointer dereference").multipartForm != null && (((@:checkr _r ?? throw "null pointer dereference").multipartForm : Dynamic).__nil__ == null || !((@:checkr _r ?? throw "null pointer dereference").multipartForm : Dynamic).__nil__))) {
            return (null : stdgo.Error);
        };
        var __tmp__ = @:check2r _r._multipartReader(false), _mr:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = @:check2r _mr.readForm(_maxMemory), _f:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        if ((@:checkr _r ?? throw "null pointer dereference").postForm == null) {
            (@:checkr _r ?? throw "null pointer dereference").postForm = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.url.Url_values.Values);
        };
        for (_k => _v in (@:checkr _f ?? throw "null pointer dereference").value) {
            (@:checkr _r ?? throw "null pointer dereference").form[_k] = (((@:checkr _r ?? throw "null pointer dereference").form[_k] ?? (null : stdgo.Slice<stdgo.GoString>)).__append__(...(_v : Array<stdgo.GoString>)));
            (@:checkr _r ?? throw "null pointer dereference").postForm[_k] = (((@:checkr _r ?? throw "null pointer dereference").postForm[_k] ?? (null : stdgo.Slice<stdgo.GoString>)).__append__(...(_v : Array<stdgo.GoString>)));
        };
        (@:checkr _r ?? throw "null pointer dereference").multipartForm = _f;
        return _parseFormErr;
    }
    @:keep
    @:tdfield
    static public function parseForm( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        var _err:stdgo.Error = (null : stdgo.Error);
        if ((@:checkr _r ?? throw "null pointer dereference").postForm == null) {
            if ((((@:checkr _r ?? throw "null pointer dereference").method == (("POST" : stdgo.GoString)) || (@:checkr _r ?? throw "null pointer dereference").method == (("PUT" : stdgo.GoString)) : Bool) || ((@:checkr _r ?? throw "null pointer dereference").method == ("PATCH" : stdgo.GoString)) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.net.http.Http__parsepostform._parsePostForm(_r);
                    (@:checkr _r ?? throw "null pointer dereference").postForm = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
            };
            if ((@:checkr _r ?? throw "null pointer dereference").postForm == null) {
                (@:checkr _r ?? throw "null pointer dereference").postForm = (({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.url.Url_values.Values);
            };
        };
        if ((@:checkr _r ?? throw "null pointer dereference").form == null) {
            if ((((@:checkr _r ?? throw "null pointer dereference").postForm.length) > (0 : stdgo.GoInt) : Bool)) {
                (@:checkr _r ?? throw "null pointer dereference").form = (({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.url.Url_values.Values);
                stdgo._internal.net.http.Http__copyvalues._copyValues((@:checkr _r ?? throw "null pointer dereference").form, (@:checkr _r ?? throw "null pointer dereference").postForm);
            };
            var _newValues:stdgo._internal.net.url.Url_values.Values = (null : stdgo._internal.net.url.Url_values.Values);
            if (((@:checkr _r ?? throw "null pointer dereference").uRL != null && (((@:checkr _r ?? throw "null pointer dereference").uRL : Dynamic).__nil__ == null || !((@:checkr _r ?? throw "null pointer dereference").uRL : Dynamic).__nil__))) {
                var _e:stdgo.Error = (null : stdgo.Error);
                {
                    var __tmp__ = stdgo._internal.net.http.Http__url._url.parseQuery((@:checkr (@:checkr _r ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").rawQuery?.__copy__());
                    _newValues = @:tmpset0 __tmp__._0;
                    _e = @:tmpset0 __tmp__._1;
                };
                if (_err == null) {
                    _err = _e;
                };
            };
            if (_newValues == null) {
                _newValues = (({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.url.Url_values.Values);
            };
            if ((@:checkr _r ?? throw "null pointer dereference").form == null) {
                (@:checkr _r ?? throw "null pointer dereference").form = _newValues;
            } else {
                stdgo._internal.net.http.Http__copyvalues._copyValues((@:checkr _r ?? throw "null pointer dereference").form, _newValues);
            };
        };
        return _err;
    }
    @:keep
    @:tdfield
    static public function setBasicAuth( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _username:stdgo.GoString, _password:stdgo.GoString):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        (@:checkr _r ?? throw "null pointer dereference").header.set(("Authorization" : stdgo.GoString), (("Basic " : stdgo.GoString) + stdgo._internal.net.http.Http__basicauth._basicAuth(_username?.__copy__(), _password?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__());
    }
    @:keep
    @:tdfield
    static public function basicAuth( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        var _username = ("" : stdgo.GoString), _password = ("" : stdgo.GoString), _ok = false;
        var _auth = ((@:checkr _r ?? throw "null pointer dereference").header.get(("Authorization" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        if (_auth == ((stdgo.Go.str() : stdgo.GoString))) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : false };
                _username = __tmp__._0;
                _password = __tmp__._1;
                _ok = __tmp__._2;
                __tmp__;
            };
        };
        return {
            final __tmp__ = stdgo._internal.net.http.Http__parsebasicauth._parseBasicAuth(_auth?.__copy__());
            _username = __tmp__._0?.__copy__();
            _password = __tmp__._1?.__copy__();
            _ok = __tmp__._2;
            { _0 : _username, _1 : _password, _2 : _ok };
        };
    }
    @:keep
    @:tdfield
    static public function writeProxy( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        return @:check2r _r._write(_w, true, null, null);
    }
    @:keep
    @:tdfield
    static public function write( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        return @:check2r _r._write(_w, false, null, null);
    }
    @:keep
    @:tdfield
    static public function multipartReader( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        if ((@:checkr _r ?? throw "null pointer dereference").multipartForm == (stdgo._internal.net.http.Http__multipartbyreader._multipartByReader)) {
            return { _0 : null, _1 : stdgo._internal.net.http.Http__errors._errors.new_(("http: MultipartReader called twice" : stdgo.GoString)) };
        };
        if (((@:checkr _r ?? throw "null pointer dereference").multipartForm != null && (((@:checkr _r ?? throw "null pointer dereference").multipartForm : Dynamic).__nil__ == null || !((@:checkr _r ?? throw "null pointer dereference").multipartForm : Dynamic).__nil__))) {
            return { _0 : null, _1 : stdgo._internal.net.http.Http__errors._errors.new_(("http: multipart handled by ParseMultipartForm" : stdgo.GoString)) };
        };
        (@:checkr _r ?? throw "null pointer dereference").multipartForm = stdgo._internal.net.http.Http__multipartbyreader._multipartByReader;
        return @:check2r _r._multipartReader(true);
    }
    @:keep
    @:tdfield
    static public function referer( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):stdgo.GoString {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        return (@:checkr _r ?? throw "null pointer dereference").header.get(("Referer" : stdgo.GoString))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function addCookie( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _c:stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        var _s = (stdgo._internal.net.http.Http__fmt._fmt.sprintf(("%s=%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.net.http.Http__sanitizecookiename._sanitizeCookieName((@:checkr _c ?? throw "null pointer dereference").name?.__copy__())), stdgo.Go.toInterface(stdgo._internal.net.http.Http__sanitizecookievalue._sanitizeCookieValue((@:checkr _c ?? throw "null pointer dereference").value?.__copy__())))?.__copy__() : stdgo.GoString);
        {
            var _c = ((@:checkr _r ?? throw "null pointer dereference").header.get(("Cookie" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_c != ((stdgo.Go.str() : stdgo.GoString))) {
                (@:checkr _r ?? throw "null pointer dereference").header.set(("Cookie" : stdgo.GoString), ((_c + ("; " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__());
            } else {
                (@:checkr _r ?? throw "null pointer dereference").header.set(("Cookie" : stdgo.GoString), _s?.__copy__());
            };
        };
    }
    @:keep
    @:tdfield
    static public function cookie( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        if (_name == ((stdgo.Go.str() : stdgo.GoString))) {
            return { _0 : null, _1 : stdgo._internal.net.http.Http_errnocookie.errNoCookie };
        };
        for (__3189 => _c in stdgo._internal.net.http.Http__readcookies._readCookies((@:checkr _r ?? throw "null pointer dereference").header, _name?.__copy__())) {
            return { _0 : _c, _1 : (null : stdgo.Error) };
        };
        return { _0 : null, _1 : stdgo._internal.net.http.Http_errnocookie.errNoCookie };
    }
    @:keep
    @:tdfield
    static public function cookies( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>> {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        return stdgo._internal.net.http.Http__readcookies._readCookies((@:checkr _r ?? throw "null pointer dereference").header, (stdgo.Go.str() : stdgo.GoString)?.__copy__());
    }
    @:keep
    @:tdfield
    static public function userAgent( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):stdgo.GoString {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        return (@:checkr _r ?? throw "null pointer dereference").header.get(("User-Agent" : stdgo.GoString))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function protoAtLeast( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _major:stdgo.GoInt, _minor:stdgo.GoInt):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        return (((@:checkr _r ?? throw "null pointer dereference").protoMajor > _major : Bool) || ((@:checkr _r ?? throw "null pointer dereference").protoMajor == (_major) && ((@:checkr _r ?? throw "null pointer dereference").protoMinor >= _minor : Bool) : Bool) : Bool);
    }
    @:keep
    @:tdfield
    static public function clone( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Ref<stdgo._internal.net.http.Http_request.Request> {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        if (_ctx == null) {
            throw stdgo.Go.toInterface(("nil context" : stdgo.GoString));
        };
        var _r2 = stdgo._internal.net.http.Http_new_.new_(stdgo._internal.net.http.Http_stdgo._internal.net.http.http_request_static_extension.request_static_extension.stdgo._internal.net.http.Http_request_static_extension.Request_static_extension);
        {
            var __tmp__ = (_r : stdgo._internal.net.http.Http_request.Request)?.__copy__();
            var x = (_r2 : stdgo._internal.net.http.Http_request.Request);
            x.method = __tmp__?.method;
            x.uRL = __tmp__?.uRL;
            x.proto = __tmp__?.proto;
            x.protoMajor = __tmp__?.protoMajor;
            x.protoMinor = __tmp__?.protoMinor;
            x.header = __tmp__?.header;
            x.body = __tmp__?.body;
            x.getBody = __tmp__?.getBody;
            x.contentLength = __tmp__?.contentLength;
            x.transferEncoding = __tmp__?.transferEncoding;
            x.close = __tmp__?.close;
            x.host = __tmp__?.host;
            x.form = __tmp__?.form;
            x.postForm = __tmp__?.postForm;
            x.multipartForm = __tmp__?.multipartForm;
            x.trailer = __tmp__?.trailer;
            x.remoteAddr = __tmp__?.remoteAddr;
            x.requestURI = __tmp__?.requestURI;
            x.tLS = __tmp__?.tLS;
            x.cancel = __tmp__?.cancel;
            x.response = __tmp__?.response;
            x._ctx = __tmp__?._ctx;
        };
        (@:checkr _r2 ?? throw "null pointer dereference")._ctx = _ctx;
        (@:checkr _r2 ?? throw "null pointer dereference").uRL = stdgo._internal.net.http.Http__cloneurl._cloneURL((@:checkr _r ?? throw "null pointer dereference").uRL);
        if ((@:checkr _r ?? throw "null pointer dereference").header != null) {
            (@:checkr _r2 ?? throw "null pointer dereference").header = (@:checkr _r ?? throw "null pointer dereference").header.clone();
        };
        if ((@:checkr _r ?? throw "null pointer dereference").trailer != null) {
            (@:checkr _r2 ?? throw "null pointer dereference").trailer = (@:checkr _r ?? throw "null pointer dereference").trailer.clone();
        };
        {
            var _s = (@:checkr _r ?? throw "null pointer dereference").transferEncoding;
            if (_s != null) {
                var _s2 = (new stdgo.Slice<stdgo.GoString>((_s.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
                _s2.__copyTo__(_s);
                (@:checkr _r2 ?? throw "null pointer dereference").transferEncoding = _s2;
            };
        };
        (@:checkr _r2 ?? throw "null pointer dereference").form = stdgo._internal.net.http.Http__cloneurlvalues._cloneURLValues((@:checkr _r ?? throw "null pointer dereference").form);
        (@:checkr _r2 ?? throw "null pointer dereference").postForm = stdgo._internal.net.http.Http__cloneurlvalues._cloneURLValues((@:checkr _r ?? throw "null pointer dereference").postForm);
        (@:checkr _r2 ?? throw "null pointer dereference").multipartForm = stdgo._internal.net.http.Http__clonemultipartform._cloneMultipartForm((@:checkr _r ?? throw "null pointer dereference").multipartForm);
        return _r2;
    }
    @:keep
    @:tdfield
    static public function withContext( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Ref<stdgo._internal.net.http.Http_request.Request> {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        if (_ctx == null) {
            throw stdgo.Go.toInterface(("nil context" : stdgo.GoString));
        };
        var _r2 = stdgo._internal.net.http.Http_new_.new_(stdgo._internal.net.http.Http_stdgo._internal.net.http.http_request_static_extension.request_static_extension.stdgo._internal.net.http.Http_request_static_extension.Request_static_extension);
        {
            var __tmp__ = (_r : stdgo._internal.net.http.Http_request.Request)?.__copy__();
            var x = (_r2 : stdgo._internal.net.http.Http_request.Request);
            x.method = __tmp__?.method;
            x.uRL = __tmp__?.uRL;
            x.proto = __tmp__?.proto;
            x.protoMajor = __tmp__?.protoMajor;
            x.protoMinor = __tmp__?.protoMinor;
            x.header = __tmp__?.header;
            x.body = __tmp__?.body;
            x.getBody = __tmp__?.getBody;
            x.contentLength = __tmp__?.contentLength;
            x.transferEncoding = __tmp__?.transferEncoding;
            x.close = __tmp__?.close;
            x.host = __tmp__?.host;
            x.form = __tmp__?.form;
            x.postForm = __tmp__?.postForm;
            x.multipartForm = __tmp__?.multipartForm;
            x.trailer = __tmp__?.trailer;
            x.remoteAddr = __tmp__?.remoteAddr;
            x.requestURI = __tmp__?.requestURI;
            x.tLS = __tmp__?.tLS;
            x.cancel = __tmp__?.cancel;
            x.response = __tmp__?.response;
            x._ctx = __tmp__?._ctx;
        };
        (@:checkr _r2 ?? throw "null pointer dereference")._ctx = _ctx;
        return _r2;
    }
    @:keep
    @:tdfield
    static public function context( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):stdgo._internal.context.Context_context.Context {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        if ((@:checkr _r ?? throw "null pointer dereference")._ctx != null) {
            return (@:checkr _r ?? throw "null pointer dereference")._ctx;
        };
        return stdgo._internal.net.http.Http__context._context.background();
    }
}
