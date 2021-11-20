package stdgo.net.http.cgi;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:structInit class T_response {
    public function _writeCGIHeader(_p:Slice<GoByte>):Void {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_r.value._wroteCGIHeader) {
            return;
        };
        _r.value._wroteCGIHeader = true;
        stdgo.fmt.Fmt.fprintf(_r.value._bufw.value, "Status: %d %s\r\n", Go.toInterface(_r.value._code), Go.toInterface(stdgo.net.http.Http.statusText(_r.value._code)));
        {
            var __tmp__ = _r.value._header.exists("Content-Type") ? { value : _r.value._header["Content-Type"], ok : true } : { value : _r.value._header.defaultValue(), ok : false }, _:Slice<GoString> = __tmp__.value, _hasType:Bool = __tmp__.ok;
            if (!_hasType) {
                _r.value._header.set("Content-Type", stdgo.net.http.Http.detectContentType(_p));
            };
        };
        _r.value._header.write(_r.value._bufw.value);
        _r.value._bufw.value.writeString("\r\n");
        _r.value._bufw.value.flush();
    }
    public function writeHeader(_code:GoInt):Void {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_r.value._wroteHeader) {
            stdgo.fmt.Fmt.fprintf(stdgo.os.Os.stderr.value, "CGI attempted to write header twice on request for %s", Go.toInterface(_r.value._req.value.url));
            return;
        };
        _r.value._wroteHeader = true;
        _r.value._code = _code;
    }
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (!_r.value._wroteHeader) {
            _r.value.writeHeader(stdgo.net.http.Http.statusOK);
        };
        if (!_r.value._wroteCGIHeader) {
            _r.value._writeCGIHeader(_p);
        };
        return _r.value._bufw.value.write(_p);
    }
    public function header():stdgo.net.http.Http.Header {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _r.value._header.__copy__();
    }
    public function flush():Void {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _r.value._bufw.value.flush();
    }
    public var _req : Pointer<stdgo.net.http.Http.Request> = new Pointer<stdgo.net.http.Http.Request>().nil();
    public var _header : stdgo.net.http.Http.Header = ((null : stdgo.net.http.Http.Header));
    public var _code : GoInt = ((0 : GoInt));
    public var _wroteHeader : Bool = false;
    public var _wroteCGIHeader : Bool = false;
    public var _bufw : Pointer<bufio.Bufio.Writer> = new Pointer<bufio.Bufio.Writer>().nil();
    public function new(?_req:Pointer<stdgo.net.http.Http.Request>, ?_header:stdgo.net.http.Http.Header, ?_code:GoInt, ?_wroteHeader:Bool, ?_wroteCGIHeader:Bool, ?_bufw:Pointer<bufio.Bufio.Writer>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_req) + " " + Go.string(_header) + " " + Go.string(_code) + " " + Go.string(_wroteHeader) + " " + Go.string(_wroteCGIHeader) + " " + Go.string(_bufw) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_response(_req, _header, _code, _wroteHeader, _wroteCGIHeader, _bufw);
    }
    public function __set__(__tmp__) {
        this._req = __tmp__._req;
        this._header = __tmp__._header;
        this._code = __tmp__._code;
        this._wroteHeader = __tmp__._wroteHeader;
        this._wroteCGIHeader = __tmp__._wroteCGIHeader;
        this._bufw = __tmp__._bufw;
        return this;
    }
}
@:structInit class Handler {
    public function _handleInternalRedirect(_rw:stdgo.net.http.Http.ResponseWriter, _req:Pointer<stdgo.net.http.Http.Request>, _path:GoString):Void {
        var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _req.value.url.value.parse(_path), _url:Pointer<stdgo.net.url.Url.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _rw.writeHeader(stdgo.net.http.Http.statusInternalServerError);
            _h.value._printf("cgi: error resolving local URI path %q: %v", Go.toInterface(_path), Go.toInterface(_err));
            return;
        };
        var _newReq:Pointer<stdgo.net.http.Http.Request> = Go.pointer((({ method : "GET", url : _url, proto : "HTTP/1.1", protoMajor : ((1 : GoInt)), protoMinor : ((1 : GoInt)), header : new stdgo.net.http.Http.Header(new GoMap<GoString, Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)))))).__copy__(), host : _url.value.host, remoteAddr : _req.value.remoteAddr, tls : _req.value.tls, body : ((null : stdgo.io.Io.ReadCloser)), getBody : null, contentLength : 0, transferEncoding : new Slice<GoString>().nil(), close : false, form : ((null : stdgo.net.url.Url.Values)), postForm : ((null : stdgo.net.url.Url.Values)), multipartForm : new Pointer<stdgo.mime.multipart.Multipart.Form>().nil(), trailer : ((null : stdgo.net.http.Http.Header)), requestURI : "", cancel : new Chan<{ }>(0, () -> null, true), response : new Pointer<stdgo.net.http.Http.Response>().nil(), _ctx : ((null : stdgo.context.Context.Context)) } : stdgo.net.http.Http.Request)));
        _h.value.pathLocationHandler.serveHTTP(_rw, _newReq);
    }
    public function _printf(_format:GoString, _v:haxe.Rest<AnyInterface>):Void {
        var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _v = new Slice<AnyInterface>(..._v);
        if (_h.value.logger != null && !_h.value.logger.isNil()) {
            _h.value.logger.value.printf(_format, ..._v.toArray());
        } else {
            stdgo.log.Log.printf(_format, ..._v.toArray());
        };
    }
    public function serveHTTP(_rw:stdgo.net.http.Http.ResponseWriter, _req:Pointer<stdgo.net.http.Http.Request>):Void {
        var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        try {
            var _root:GoString = _h.value.root;
            if (_root == (("" : GoString))) {
                _root = "/";
            };
            if (_req.value.transferEncoding.length > ((0 : GoInt)) && _req.value.transferEncoding[((0 : GoInt))] == (("chunked" : GoString))) {
                _rw.writeHeader(stdgo.net.http.Http.statusBadRequest);
                _rw.write((("Chunked request bodies are not supported by CGI." : Slice<GoByte>)));
                return;
            };
            var _pathInfo:GoString = _req.value.url.value.path;
            if (_root != (("/" : GoString)) && stdgo.strings.Strings.hasPrefix(_pathInfo, _root)) {
                _pathInfo = _pathInfo.__slice__(_root.length);
            };
            var _port:GoString = "80";
            {
                var _matches:Slice<GoString> = _trailingPort.value.findStringSubmatch(_req.value.host);
                if (_matches.length != ((0 : GoInt))) {
                    _port = _matches[((1 : GoInt))];
                };
            };
            var _env:Slice<GoString> = new Slice<GoString>(
"SERVER_SOFTWARE=go",
(("SERVER_NAME=" : GoString)) + _req.value.host,
"SERVER_PROTOCOL=HTTP/1.1",
(("HTTP_HOST=" : GoString)) + _req.value.host,
"GATEWAY_INTERFACE=CGI/1.1",
(("REQUEST_METHOD=" : GoString)) + _req.value.method,
(("QUERY_STRING=" : GoString)) + _req.value.url.value.rawQuery,
(("REQUEST_URI=" : GoString)) + _req.value.url.value.requestURI(),
(("PATH_INFO=" : GoString)) + _pathInfo,
(("SCRIPT_NAME=" : GoString)) + _root,
(("SCRIPT_FILENAME=" : GoString)) + _h.value.path,
(("SERVER_PORT=" : GoString)) + _port);
            {
                var __tmp__ = stdgo.net.Net.splitHostPort(_req.value.remoteAddr), _remoteIP:GoString = __tmp__._0, _remotePort:GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err == null) {
                    _env = _env.__append__((("REMOTE_ADDR=" : GoString)) + _remoteIP, (("REMOTE_HOST=" : GoString)) + _remoteIP, (("REMOTE_PORT=" : GoString)) + _remotePort);
                } else {
                    _env = _env.__append__((("REMOTE_ADDR=" : GoString)) + _req.value.remoteAddr, (("REMOTE_HOST=" : GoString)) + _req.value.remoteAddr);
                };
            };
            if (_req.value.tls != null && !_req.value.tls.isNil()) {
                _env = _env.__append__("HTTPS=on");
            };
            {
                var _k;
                var _v;
                for (_obj in _req.value.header.__t__.keyValueIterator()) {
                    _k = _obj.key;
                    _v = _obj.value;
                    _k = stdgo.strings.Strings.map(_upperCaseAndUnderscore, _k);
                    if (_k == (("PROXY" : GoString))) {
                        continue;
                    };
                    var _joinStr:GoString = ", ";
                    if (_k == (("COOKIE" : GoString))) {
                        _joinStr = "; ";
                    };
                    _env = _env.__append__((("HTTP_" : GoString)) + _k + (("=" : GoString)) + stdgo.strings.Strings.join(_v, _joinStr));
                };
            };
            if (_req.value.contentLength > ((0 : GoInt64))) {
                _env = _env.__append__(stdgo.fmt.Fmt.sprintf("CONTENT_LENGTH=%d", Go.toInterface(_req.value.contentLength)));
            };
            {
                var _ctype:GoString = _req.value.header.get("Content-Type");
                if (_ctype != (("" : GoString))) {
                    _env = _env.__append__((("CONTENT_TYPE=" : GoString)) + _ctype);
                };
            };
            var _envPath:GoString = stdgo.os.Os.getenv("PATH");
            if (_envPath == (("" : GoString))) {
                _envPath = "/bin:/usr/bin:/usr/ucb:/usr/bsd:/usr/local/bin";
            };
            _env = _env.__append__((("PATH=" : GoString)) + _envPath);
            for (_e in _h.value.inheritEnv) {
                {
                    var _v:GoString = stdgo.os.Os.getenv(_e);
                    if (_v != (("" : GoString))) {
                        _env = _env.__append__(_e + (("=" : GoString)) + _v);
                    };
                };
            };
            for (_e in _osDefaultInheritEnv) {
                {
                    var _v:GoString = stdgo.os.Os.getenv(_e);
                    if (_v != (("" : GoString))) {
                        _env = _env.__append__(_e + (("=" : GoString)) + _v);
                    };
                };
            };
            if (_h.value.env != null && !_h.value.env.isNil()) {
                _env = _env.__append__(..._h.value.env.toArray());
            };
            _env = _removeLeadingDuplicates(_env);
            var _cwd:GoString = (("" : GoString)), _path:GoString = (("" : GoString));
            if (_h.value.dir != (("" : GoString))) {
                _path = _h.value.path;
                _cwd = _h.value.dir;
            } else {
                {
                    var __tmp__ = stdgo.path.filepath.Filepath.split(_h.value.path);
                    _cwd = __tmp__._0;
                    _path = __tmp__._1;
                };
            };
            if (_cwd == (("" : GoString))) {
                _cwd = ".";
            };
            var _internalError:stdgo.Error -> Void = function(_err:Error):Void {
                _rw.writeHeader(stdgo.net.http.Http.statusInternalServerError);
                _h.value._printf("CGI error: %v", Go.toInterface(_err));
            };
            var _cmd:Pointer<stdgo.os.exec.Exec.Cmd> = Go.pointer((({ path : _path, args : new Slice<GoString>(_h.value.path).__append__(..._h.value.args.toArray()), dir : _cwd, env : _env, stderr : new stdgo.io.Io.Writer(_h.value._stderr()), stdin : ((null : stdgo.io.Io.Reader)), stdout : ((null : stdgo.io.Io.Writer)), extraFiles : new Slice<Pointer<stdgo.os.Os.File>>().nil(), sysProcAttr : new Pointer<stdgo.syscall.Syscall.SysProcAttr>().nil(), process : new Pointer<stdgo.os.Os.Process>().nil(), processState : new Pointer<stdgo.os.Os.ProcessState>().nil(), _ctx : ((null : stdgo.context.Context.Context)), _lookPathErr : ((null : stdgo.Error)), _finished : false, _childFiles : new Slice<Pointer<stdgo.os.Os.File>>().nil(), _closeAfterStart : new Slice<stdgo.io.Io.Closer>().nil(), _closeAfterWait : new Slice<stdgo.io.Io.Closer>().nil(), _goroutine : new Slice<() -> stdgo.Error>().nil(), _errch : new Chan<stdgo.Error>(0, () -> ((null : stdgo.Error)), true), _waitDone : new Chan<{ }>(0, () -> null, true) } : stdgo.os.exec.Exec.Cmd)));
            if (_req.value.contentLength != ((0 : GoInt64))) {
                _cmd.value.stdin = _req.value.body;
            };
            var __tmp__ = _cmd.value.stdoutPipe(), _stdoutRead:stdgo.io.Io.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _internalError(_err);
                return;
            };
            _err = _cmd.value.start();
            if (_err != null) {
                _internalError(_err);
                return;
            };
            {
                var _hook:Pointer<stdgo.os.Os.Process> -> Void = _testHookStartProcess;
                if (_hook != null) {
                    _hook(_cmd.value.process);
                };
            };
            deferstack.unshift(() -> _cmd.value.wait());
            deferstack.unshift(() -> _stdoutRead.close());
            var _linebody:Pointer<bufio.Bufio.Reader> = bufio.Bufio.newReaderSize(_stdoutRead, ((1024 : GoInt)));
            var _headers:stdgo.net.http.Http.Header = new stdgo.net.http.Http.Header(new GoMap<GoString, Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)))))).__copy__();
            var _statusCode:GoInt = ((0 : GoInt));
            var _headerLines:GoInt = ((0 : GoInt));
            var _sawBlankLine:Bool = false;
            while (true) {
                var __tmp__ = _linebody.value.readLine(), _line:Slice<GoUInt8> = __tmp__._0, _isPrefix:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_isPrefix) {
                    _rw.writeHeader(stdgo.net.http.Http.statusInternalServerError);
                    _h.value._printf("cgi: long header line from subprocess.");
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return;
                    };
                };
                if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
                    break;
                };
                if (_err != null) {
                    _rw.writeHeader(stdgo.net.http.Http.statusInternalServerError);
                    _h.value._printf("cgi: error reading headers: %v", Go.toInterface(_err));
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return;
                    };
                };
                if (_line.length == ((0 : GoInt))) {
                    _sawBlankLine = true;
                    break;
                };
                _headerLines++;
                var _parts:Slice<GoString> = stdgo.strings.Strings.splitN(((_line : GoString)), ":", ((2 : GoInt)));
                if (_parts.length < ((2 : GoInt))) {
                    _h.value._printf("cgi: bogus header line: %s", Go.toInterface(((_line : GoString))));
                    continue;
                };
                var _header:GoString = _parts[((0 : GoInt))], _val:GoString = _parts[((1 : GoInt))];
                if (!golang_org.x.net.http.httpguts.Httpguts.validHeaderFieldName(_header)) {
                    _h.value._printf("cgi: invalid header name: %q", Go.toInterface(_header));
                    continue;
                };
                _val = stdgo.net.textproto.Textproto.trimString(_val);
                if (_header == (("Status" : GoString))) {
                    if (_val.length < ((3 : GoInt))) {
                        _h.value._printf("cgi: bogus status (short): %q", Go.toInterface(_val));
                        {
                            for (defer in deferstack) {
                                defer();
                            };
                            return;
                        };
                    };
                    var __tmp__ = stdgo.strconv.Strconv.atoi(_val.__slice__(((0 : GoInt)), ((3 : GoInt)))), _code:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _h.value._printf("cgi: bogus status: %q", Go.toInterface(_val));
                        _h.value._printf("cgi: line was %q", Go.toInterface(_line));
                        {
                            for (defer in deferstack) {
                                defer();
                            };
                            return;
                        };
                    };
                    _statusCode = _code;
                } else {
                    _headers.add(_header, _val);
                };
            };
            if (_headerLines == ((0 : GoInt)) || !_sawBlankLine) {
                _rw.writeHeader(stdgo.net.http.Http.statusInternalServerError);
                _h.value._printf("cgi: no headers");
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return;
                };
            };
            {
                var _loc:GoString = _headers.get("Location");
                if (_loc != (("" : GoString))) {
                    if (stdgo.strings.Strings.hasPrefix(_loc, "/") && _h.value.pathLocationHandler != null) {
                        _h.value._handleInternalRedirect(_rw, _req, _loc);
                        {
                            for (defer in deferstack) {
                                defer();
                            };
                            return;
                        };
                    };
                    if (_statusCode == ((0 : GoInt))) {
                        _statusCode = stdgo.net.http.Http.statusFound;
                    };
                };
            };
            if (_statusCode == ((0 : GoInt)) && _headers.get("Content-Type") == (("" : GoString))) {
                _rw.writeHeader(stdgo.net.http.Http.statusInternalServerError);
                _h.value._printf("cgi: missing required Content-Type in headers");
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return;
                };
            };
            if (_statusCode == ((0 : GoInt))) {
                _statusCode = stdgo.net.http.Http.statusOK;
            };
            {
                var _k;
                var _vv;
                for (_obj in _headers.__t__.keyValueIterator()) {
                    _k = _obj.key;
                    _vv = _obj.value;
                    for (_v in _vv) {
                        _rw.header().add(_k, _v);
                    };
                };
            };
            _rw.writeHeader(_statusCode);
            {
                var __tmp__ = stdgo.io.Io.copy(_rw, _linebody.value);
                _err = __tmp__._1;
            };
            if (_err != null) {
                _h.value._printf("cgi: copy error: %v", Go.toInterface(_err));
                _cmd.value.process.value.kill();
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return;
            };
        };
    }
    public function _stderr():stdgo.io.Io.Writer {
        var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_h.value.stderr != null) {
            return _h.value.stderr;
        };
        return stdgo.os.Os.stderr.value;
    }
    public var path : GoString = (("" : GoString));
    public var root : GoString = (("" : GoString));
    public var dir : GoString = (("" : GoString));
    public var env : Slice<GoString> = new Slice<GoString>().nil();
    public var inheritEnv : Slice<GoString> = new Slice<GoString>().nil();
    public var logger : Pointer<stdgo.log.Log.Logger> = new Pointer<stdgo.log.Log.Logger>().nil();
    public var args : Slice<GoString> = new Slice<GoString>().nil();
    public var stderr : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public var pathLocationHandler : stdgo.net.http.Http.Handler = ((null : stdgo.net.http.Http.Handler));
    public function new(?path:GoString, ?root:GoString, ?dir:GoString, ?env:Slice<GoString>, ?inheritEnv:Slice<GoString>, ?logger:Pointer<stdgo.log.Log.Logger>, ?args:Slice<GoString>, ?stderr:stdgo.io.Io.Writer, ?pathLocationHandler:stdgo.net.http.Http.Handler) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(path) + " " + Go.string(root) + " " + Go.string(dir) + " " + Go.string(env) + " " + Go.string(inheritEnv) + " " + Go.string(logger) + " " + Go.string(args) + " " + Go.string(stderr) + " " + Go.string(pathLocationHandler) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Handler(path, root, dir, env, inheritEnv, logger, args, stderr, pathLocationHandler);
    }
    public function __set__(__tmp__) {
        this.path = __tmp__.path;
        this.root = __tmp__.root;
        this.dir = __tmp__.dir;
        this.env = __tmp__.env;
        this.inheritEnv = __tmp__.inheritEnv;
        this.logger = __tmp__.logger;
        this.args = __tmp__.args;
        this.stderr = __tmp__.stderr;
        this.pathLocationHandler = __tmp__.pathLocationHandler;
        return this;
    }
}
var _testHookStartProcess : Pointer<stdgo.os.Os.Process> -> Void = null;
var _trailingPort : Pointer<stdgo.regexp.Regexp.Regexp> = stdgo.regexp.Regexp.mustCompile(":([0-9]+)$");
var _osDefaultInheritEnv : Slice<GoString> = {
        var a = function():Slice<GoString> {
            if (stdgo.runtime.Runtime.goos == (("darwin" : GoString)) || stdgo.runtime.Runtime.goos == (("ios" : GoString))) {
                return new Slice<GoString>("DYLD_LIBRARY_PATH");
            } else if (stdgo.runtime.Runtime.goos == (("linux" : GoString)) || stdgo.runtime.Runtime.goos == (("freebsd" : GoString)) || stdgo.runtime.Runtime.goos == (("netbsd" : GoString)) || stdgo.runtime.Runtime.goos == (("openbsd" : GoString))) {
                return new Slice<GoString>("LD_LIBRARY_PATH");
            } else if (stdgo.runtime.Runtime.goos == (("hpux" : GoString))) {
                return new Slice<GoString>("LD_LIBRARY_PATH", "SHLIB_PATH");
            } else if (stdgo.runtime.Runtime.goos == (("irix" : GoString))) {
                return new Slice<GoString>("LD_LIBRARY_PATH", "LD_LIBRARYN32_PATH", "LD_LIBRARY64_PATH");
            } else if (stdgo.runtime.Runtime.goos == (("illumos" : GoString)) || stdgo.runtime.Runtime.goos == (("solaris" : GoString))) {
                return new Slice<GoString>("LD_LIBRARY_PATH", "LD_LIBRARY_PATH_32", "LD_LIBRARY_PATH_64");
            } else if (stdgo.runtime.Runtime.goos == (("windows" : GoString))) {
                return new Slice<GoString>("SystemRoot", "COMSPEC", "PATHEXT", "WINDIR");
            };
            return new Slice<GoString>().nil();
        };
        a();
    };
/**
    // Request returns the HTTP request as represented in the current
    // environment. This assumes the current program is being run
    // by a web server in a CGI environment.
    // The returned Request's Body is populated, if applicable.
**/
function request():{ var _0 : Pointer<stdgo.net.http.Http.Request>; var _1 : Error; } {
        var __tmp__ = requestFromMap(_envMap(stdgo.os.Os.environ())), _r:Pointer<stdgo.net.http.Http.Request> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Pointer<stdgo.net.http.Http.Request>().nil(), _1 : _err };
        };
        if (_r.value.contentLength > ((0 : GoInt64))) {
            _r.value.body = stdgo.io.Io.nopCloser(stdgo.io.Io.limitReader(stdgo.os.Os.stdin.value, _r.value.contentLength));
        };
        return { _0 : _r, _1 : ((null : stdgo.Error)) };
    }
function _envMap(_env:Slice<GoString>):GoMap<GoString, GoString> {
        var _m:GoMap<GoString, GoString> = new GoMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind))));
        for (_kv in _env) {
            {
                var _idx:GoInt = stdgo.strings.Strings.index(_kv, "=");
                if (_idx != -((1 : GoUnTypedInt))) {
                    _m[_kv.__slice__(0, _idx)] = _kv.__slice__(_idx + ((1 : GoInt)));
                };
            };
        };
        return _m;
    }
/**
    // RequestFromMap creates an http.Request from CGI variables.
    // The returned Request's Body field is not populated.
**/
function requestFromMap(_params:GoMap<GoString, GoString>):{ var _0 : Pointer<stdgo.net.http.Http.Request>; var _1 : Error; } {
        var _r:Pointer<stdgo.net.http.Http.Request> = Go.pointer(new stdgo.net.http.Http.Request());
        _r.value.method = _params["REQUEST_METHOD"];
        if (_r.value.method == (("" : GoString))) {
            return { _0 : new Pointer<stdgo.net.http.Http.Request>().nil(), _1 : stdgo.errors.Errors.new_("cgi: no REQUEST_METHOD in environment") };
        };
        _r.value.proto = _params["SERVER_PROTOCOL"];
        var _ok:Bool = false;
        {
            var __tmp__ = stdgo.net.http.Http.parseHTTPVersion(_r.value.proto);
            _r.value.protoMajor = __tmp__._0;
            _r.value.protoMinor = __tmp__._1;
            _ok = __tmp__._2;
        };
        if (!_ok) {
            return { _0 : new Pointer<stdgo.net.http.Http.Request>().nil(), _1 : stdgo.errors.Errors.new_("cgi: invalid SERVER_PROTOCOL version") };
        };
        _r.value.close = true;
        _r.value.trailer = new stdgo.net.http.Http.Header(new GoMap<GoString, Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)))))).__copy__();
        _r.value.header = new stdgo.net.http.Http.Header(new GoMap<GoString, Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)))))).__copy__();
        _r.value.host = _params["HTTP_HOST"];
        {
            var _lenstr:GoString = _params["CONTENT_LENGTH"];
            if (_lenstr != (("" : GoString))) {
                var __tmp__ = stdgo.strconv.Strconv.parseInt(_lenstr, ((10 : GoInt)), ((64 : GoInt))), _clen:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : new Pointer<stdgo.net.http.Http.Request>().nil(), _1 : stdgo.errors.Errors.new_((("cgi: bad CONTENT_LENGTH in environment: " : GoString)) + _lenstr) };
                };
                _r.value.contentLength = _clen;
            };
        };
        {
            var _ct:GoString = _params["CONTENT_TYPE"];
            if (_ct != (("" : GoString))) {
                _r.value.header.set("Content-Type", _ct);
            };
        };
        {
            var _k;
            var _v;
            for (_obj in _params.keyValueIterator()) {
                _k = _obj.key;
                _v = _obj.value;
                if (!stdgo.strings.Strings.hasPrefix(_k, "HTTP_") || _k == (("HTTP_HOST" : GoString))) {
                    continue;
                };
                _r.value.header.add(stdgo.strings.Strings.replaceAll(_k.__slice__(((5 : GoInt))), "_", "-"), _v);
            };
        };
        var _uriStr:GoString = _params["REQUEST_URI"];
        if (_uriStr == (("" : GoString))) {
            _uriStr = _params["SCRIPT_NAME"] + _params["PATH_INFO"];
            var _s:GoString = _params["QUERY_STRING"];
            if (_s != (("" : GoString))) {
                _uriStr = _uriStr + ((("?" : GoString)) + _s);
            };
        };
        {
            var _s:GoString = _params["HTTPS"];
            if (_s == (("on" : GoString)) || _s == (("ON" : GoString)) || _s == (("1" : GoString))) {
                _r.value.tls = Go.pointer((({ handshakeComplete : true, version : 0, didResume : false, cipherSuite : 0, negotiatedProtocol : "", negotiatedProtocolIsMutual : false, serverName : "", peerCertificates : new Slice<Pointer<stdgo.crypto.x509.X509.Certificate>>().nil(), verifiedChains : new Slice<Slice<Pointer<stdgo.crypto.x509.X509.Certificate>>>().nil(), signedCertificateTimestamps : new Slice<Slice<GoUInt8>>().nil(), ocspresponse : new Slice<GoUInt8>().nil(), tlsunique : new Slice<GoUInt8>().nil(), _ekm : null } : stdgo.crypto.tls.Tls.ConnectionState)));
            };
        };
        if (_r.value.host != (("" : GoString))) {
            var _rawurl:GoString = _r.value.host + _uriStr;
            if (_r.value.tls == null || _r.value.tls.isNil()) {
                _rawurl = (("http://" : GoString)) + _rawurl;
            } else {
                _rawurl = (("https://" : GoString)) + _rawurl;
            };
            var __tmp__ = stdgo.net.url.Url.parse(_rawurl), _url:Pointer<stdgo.net.url.Url.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : new Pointer<stdgo.net.http.Http.Request>().nil(), _1 : stdgo.errors.Errors.new_((("cgi: failed to parse host and REQUEST_URI into a URL: " : GoString)) + _rawurl) };
            };
            _r.value.url = _url;
        };
        if (_r.value.url == null || _r.value.url.isNil()) {
            var __tmp__ = _url.parse(_uriStr), _url:Pointer<stdgo.net.url.Url.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : new Pointer<stdgo.net.http.Http.Request>().nil(), _1 : stdgo.errors.Errors.new_((("cgi: failed to parse REQUEST_URI into a URL: " : GoString)) + _uriStr) };
            };
            _r.value.url = _url;
        };
        var __tmp__ = stdgo.strconv.Strconv.atoi(_params["REMOTE_PORT"]), _remotePort:GoInt = __tmp__._0, _:stdgo.Error = __tmp__._1;
        _r.value.remoteAddr = stdgo.net.Net.joinHostPort(_params["REMOTE_ADDR"], stdgo.strconv.Strconv.itoa(_remotePort));
        return { _0 : _r, _1 : ((null : stdgo.Error)) };
    }
/**
    // Serve executes the provided Handler on the currently active CGI
    // request, if any. If there's no current CGI environment
    // an error is returned. The provided handler may be nil to use
    // http.DefaultServeMux.
**/
function serve(_handler:stdgo.net.http.Http.Handler):Error {
        var __tmp__ = request(), _req:Pointer<stdgo.net.http.Http.Request> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        if (_req.value.body == null) {
            _req.value.body = stdgo.net.http.Http.noBody.__copy__();
        };
        if (_handler == null) {
            _handler = stdgo.net.http.Http.defaultServeMux.value;
        };
        var _rw:Pointer<T_response> = Go.pointer((({ _req : _req, _header : new stdgo.net.http.Http.Header(new GoMap<GoString, Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)))))).__copy__(), _bufw : bufio.Bufio.newWriter(stdgo.os.Os.stdout.value), _code : 0, _wroteHeader : false, _wroteCGIHeader : false } : T_response)));
        _handler.serveHTTP(_rw.value, _req);
        _rw.value.write(new Slice<GoUInt8>().nil());
        {
            _err = _rw.value._bufw.value.flush();
            if (_err != null) {
                return _err;
            };
        };
        return ((null : stdgo.Error));
    }
/**
    // removeLeadingDuplicates remove leading duplicate in environments.
    // It's possible to override environment like following.
    //    cgi.Handler{
    //      ...
    //      Env: []string{"SCRIPT_FILENAME=foo.php"},
    //    }
**/
function _removeLeadingDuplicates(_env:Slice<GoString>):Slice<GoString> {
        var _ret:Slice<GoString> = new Slice<GoString>().nil();
        {
            var _i;
            var _e;
            for (_obj in _env.keyValueIterator()) {
                _i = _obj.key;
                _e = _obj.value;
                var _found:Bool = false;
                {
                    var _eq:GoInt = stdgo.strings.Strings.indexByte(_e, (("=".code : GoRune)));
                    if (_eq != -((1 : GoUnTypedInt))) {
                        var _keq:GoString = _e.__slice__(0, _eq + ((1 : GoInt)));
                        for (_e2 in _env.__slice__(_i + ((1 : GoInt)))) {
                            if (stdgo.strings.Strings.hasPrefix(_e2, _keq)) {
                                _found = true;
                                break;
                            };
                        };
                    };
                };
                if (!_found) {
                    _ret = _ret.__append__(_e);
                };
            };
        };
        return _ret;
    }
function _upperCaseAndUnderscore(_r:GoRune):GoRune {
        if (_r >= (("a".code : GoRune)) && _r <= (("z".code : GoRune))) {
            return _r - ((("a".code : GoRune)) - (("A".code : GoRune)));
        } else if (_r == (("-".code : GoRune))) {
            return (("_".code : GoRune));
        } else if (_r == (("=".code : GoRune))) {
            return (("_".code : GoRune));
        };
        return _r;
    }
class T_response_extension_fields {
    public function flush(__tmp__):Void __tmp__.flush();
    public function header(__tmp__):stdgo.net.http.Http.Header return __tmp__.header();
    public function write(__tmp__, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.write(_p);
    public function writeHeader(__tmp__, _code:GoInt):Void __tmp__.writeHeader(_code);
    public function _writeCGIHeader(__tmp__, _p:Slice<GoByte>):Void __tmp__._writeCGIHeader(_p);
}
class Handler_extension_fields {
    public function _stderr(__tmp__):stdgo.io.Io.Writer return __tmp__._stderr();
    public function serveHTTP(__tmp__, _rw:stdgo.net.http.Http.ResponseWriter, _req:Pointer<stdgo.net.http.Http.Request>):Void __tmp__.serveHTTP(_rw, _req);
    public function _printf(__tmp__, _format:GoString, _v:haxe.Rest<AnyInterface>):Void __tmp__._printf(_format, _v);
    public function _handleInternalRedirect(__tmp__, _rw:stdgo.net.http.Http.ResponseWriter, _req:Pointer<stdgo.net.http.Http.Request>, _path:GoString):Void __tmp__._handleInternalRedirect(_rw, _req, _path);
}
