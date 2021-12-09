package stdgo.net.http.pprof;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

@:named class T_handler {
	public function _serveDeltaProfile(_w:stdgo.net.http.Http.ResponseWriter, _r:Pointer<stdgo.net.http.Http.Request>,
			_p:Pointer<stdgo.runtime.pprof.Pprof.Profile>, _secStr:GoString):Void {
		var _name = this.__copy__();
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		try {
			var __tmp__ = stdgo.strconv.Strconv.parseInt(_secStr, ((10 : GoInt)), ((64 : GoInt))),
				_sec:GoInt64 = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null || _sec <= ((0 : GoInt64))) {
				_serveError(_w, stdgo.net.http.Http.statusBadRequest, "invalid value for \"seconds\" - must be a positive integer");
				return;
			};
			if (!_profileSupportsDelta[_name]) {
				_serveError(_w, stdgo.net.http.Http.statusBadRequest, "\"seconds\" parameter is not supported for this profile type");
				return;
			};
			if (_durationExceedsWriteTimeout(_r, ((_sec : GoFloat64)))) {
				_serveError(_w, stdgo.net.http.Http.statusBadRequest, "profile duration exceeds server\'s WriteTimeout");
				return;
			};
			var __tmp__ = stdgo.strconv.Strconv.atoi(_r.value.formValue("debug")),
				_debug:GoInt = __tmp__._0,
				_:stdgo.Error = __tmp__._1;
			if (_debug != ((0 : GoInt))) {
				_serveError(_w, stdgo.net.http.Http.statusBadRequest, "seconds and debug params are incompatible");
				return;
			};
			var __tmp__ = _collectProfile(_p),
				_p0:Pointer<internal.profile.Profile.Profile> = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				_serveError(_w, stdgo.net.http.Http.statusInternalServerError, "failed to collect profile");
				return;
			};
			var _t:Pointer<stdgo.time.Time.Timer> = stdgo.time.Time.newTimer(new stdgo.time.Time.Duration(new stdgo.time.Time.Duration(_sec)
				.__t__ * stdgo.time.Time.second.__t__));
			deferstack.unshift(() -> _t.value.stop());
			{
				{
					_r.value.context().done().get();
					var _err:stdgo.Error = _r.value.context().err();
					if (Go.toInterface(_err) == Go.toInterface(stdgo.context.Context.deadlineExceeded)) {
						_serveError(_w, stdgo.net.http.Http.statusRequestTimeout, _err.error());
					} else {
						_serveError(_w, stdgo.net.http.Http.statusInternalServerError, _err.error());
					};
					{
						for (defer in deferstack) {
							defer();
						};
						return;
					};
				};
				_t.value.c.get();
			};
			var __tmp__ = _collectProfile(_p),
				_p1:Pointer<internal.profile.Profile.Profile> = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				_serveError(_w, stdgo.net.http.Http.statusInternalServerError, "failed to collect profile");
				{
					for (defer in deferstack) {
						defer();
					};
					return;
				};
			};
			var _ts:GoInt64 = _p1.value.timeNanos;
			var _dur:GoInt64 = _p1.value.timeNanos - _p0.value.timeNanos;
			_p0.value.scale(-((1 : GoUnTypedInt)));
			{
				var __tmp__ = internal.profile.Profile.merge(new Slice<Pointer<internal.profile.Profile.Profile>>(_p0, _p1));
				_p1 = __tmp__._0;
				_err = __tmp__._1;
			};
			if (_err != null) {
				_serveError(_w, stdgo.net.http.Http.statusInternalServerError, "failed to compute delta");
				{
					for (defer in deferstack) {
						defer();
					};
					return;
				};
			};
			_p1.value.timeNanos = _ts;
			_p1.value.durationNanos = _dur;
			_w.header().set("Content-Type", "application/octet-stream");
			_w.header().set("Content-Disposition", stdgo.fmt.Fmt.sprintf("attachment; filename=\"%s-delta\"", Go.toInterface(_name)));
			_p1.value.write(_w);
			for (defer in deferstack) {
				defer();
			};
		} catch (e) {
			recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
			{
				for (defer in deferstack) {
					defer();
				};
				if (recover_exception != null)
					throw recover_exception;
				return;
			};
		};
	}

	public function serveHTTP(_w:stdgo.net.http.Http.ResponseWriter, _r:Pointer<stdgo.net.http.Http.Request>):Void {
		var _name = this.__copy__();
		_w.header().set("X-Content-Type-Options", "nosniff");
		var _p:Pointer<stdgo.runtime.pprof.Pprof.Profile> = stdgo.runtime.pprof.Pprof.lookup(_name.__t__);
		if (_p == null || _p.isNil()) {
			_serveError(_w, stdgo.net.http.Http.statusNotFound, "Unknown profile");
			return;
		};
		{
			var _sec:GoString = _r.value.formValue("seconds");
			if (_sec != (("" : GoString))) {
				_name._serveDeltaProfile(_w, _r, _p, _sec);
				return;
			};
		};
		var __tmp__ = stdgo.strconv.Strconv.atoi(_r.value.formValue("gc")),
			_gc:GoInt = __tmp__._0,
			_:stdgo.Error = __tmp__._1;
		if (_name.__t__ == (("heap" : GoString)) && _gc > ((0 : GoInt))) {
			stdgo.runtime.Runtime.gc();
		};
		var __tmp__ = stdgo.strconv.Strconv.atoi(_r.value.formValue("debug")),
			_debug:GoInt = __tmp__._0,
			_:stdgo.Error = __tmp__._1;
		if (_debug != ((0 : GoInt))) {
			_w.header().set("Content-Type", "text/plain; charset=utf-8");
		} else {
			_w.header().set("Content-Type", "application/octet-stream");
			_w.header().set("Content-Disposition", stdgo.fmt.Fmt.sprintf("attachment; filename=\"%s\"", Go.toInterface(_name)));
		};
		_p.value.writeTo(_w, _debug);
	}

	public var __t__:GoString;

	public function new(?t:GoString) {
		__t__ = t == null ? "" : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new T_handler(__t__);
}

@:structInit class T_profileEntry {
	public var name:GoString = (("" : GoString));
	public var href:GoString = (("" : GoString));
	public var desc:GoString = (("" : GoString));
	public var count:GoInt = ((0 : GoInt));

	public function new(?name:GoString, ?href:GoString, ?desc:GoString, ?count:GoInt)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(name) + " " + Go.string(href) + " " + Go.string(desc) + " " + Go.string(count) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_profileEntry(name, href, desc, count);
	}

	public function __set__(__tmp__) {
		this.name = __tmp__.name;
		this.href = __tmp__.href;
		this.desc = __tmp__.desc;
		this.count = __tmp__.count;
		return this;
	}
}

var _profileDescriptions:GoMap<GoString, GoString> = new GoMap<GoString,
	GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
		stdgo.reflect.Reflect.GoType.basic(string_kind))),
	{
		key: "allocs",
		value: "A sampling of all past memory allocations"
	},
	{key: "block", value: "Stack traces that led to blocking on synchronization primitives"},
	{key: "cmdline", value: "The command line invocation of the current program"}, {key: "goroutine", value: "Stack traces of all current goroutines"},
	{key: "heap", value: "A sampling of memory allocations of live objects. You can specify the gc GET parameter to run GC before taking the heap sample."},
	{key: "mutex", value: "Stack traces of holders of contended mutexes"},
	{key: "profile",
			value: "CPU profile. You can specify the duration in the seconds GET parameter. After you get the profile file, use the go tool pprof command to investigate the profile."},
	{key: "threadcreate", value: "Stack traces that led to the creation of new OS threads"},
	{key: "trace",
			value: "A trace of execution of the current program. You can specify the duration in the seconds GET parameter. After you get the trace file, use the go tool trace command to investigate the trace."});

var _profileSupportsDelta:GoMap<T_handler, Bool> = new GoMap<T_handler,
	Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("net/http/pprof.handler", [],
		stdgo.reflect.Reflect.GoType.basic(string_kind)),
	stdgo.reflect.Reflect.GoType.basic(bool_kind))),
	{
		key: new T_handler("allocs"),
		value: true
	},
	{key: new T_handler("block"), value: true}, {key: new T_handler("goroutine"), value: true}, {key: new T_handler("heap"), value: true},
	{key: new T_handler("mutex"), value: true}, {key: new T_handler("threadcreate"), value: true});

/**
	// Cmdline responds with the running program's
	// command line, with arguments separated by NUL bytes.
	// The package initialization registers it as /debug/pprof/cmdline.
**/
function cmdline(_w:stdgo.net.http.Http.ResponseWriter, _r:Pointer<stdgo.net.http.Http.Request>):Void {
	_w.header().set("X-Content-Type-Options", "nosniff");
	_w.header().set("Content-Type", "text/plain; charset=utf-8");
	stdgo.fmt.Fmt.fprint(_w, stdgo.strings.Strings.join(stdgo.os.Os.args, "\\x00"));
}

function _sleep(_r:Pointer<stdgo.net.http.Http.Request>, _d:stdgo.time.Time.Duration):Void {
	{
		stdgo.time.Time.after(_d).get();
		_r.value.context().done().get();
	};
}

function _durationExceedsWriteTimeout(_r:Pointer<stdgo.net.http.Http.Request>, _seconds:GoFloat64):Bool {
	var __tmp__ = try {
		{value: ((_r.value.context().value(Go.toInterface(stdgo.net.http.Http.serverContextKey)).value : Pointer<stdgo.net.http.Http.Server>)), ok: true};
	} catch (_) {
		{value: new Pointer<stdgo.net.http.Http.Server>().nil(), ok: false};
	}, _srv = __tmp__.value, _ok = __tmp__.ok;
	return _ok && _srv.value.writeTimeout.__t__ != ((0 : GoInt64)) && _seconds >= _srv.value.writeTimeout.seconds();
}

function _serveError(_w:stdgo.net.http.Http.ResponseWriter, _status:GoInt, _txt:GoString):Void {
	_w.header().set("Content-Type", "text/plain; charset=utf-8");
	_w.header().set("X-Go-Pprof", "1");
	_w.header().del("Content-Disposition");
	_w.writeHeader(_status);
	stdgo.fmt.Fmt.fprintln(_w, _txt);
}

/**
	// Profile responds with the pprof-formatted cpu profile.
	// Profiling lasts for duration specified in seconds GET parameter, or for 30 seconds if not specified.
	// The package initialization registers it as /debug/pprof/profile.
**/
function profile(_w:stdgo.net.http.Http.ResponseWriter, _r:Pointer<stdgo.net.http.Http.Request>):Void {
	_w.header().set("X-Content-Type-Options", "nosniff");
	var __tmp__ = stdgo.strconv.Strconv.parseInt(_r.value.formValue("seconds"), ((10 : GoInt)), ((64 : GoInt))),
		_sec:GoInt64 = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_sec <= ((0 : GoInt64)) || _err != null) {
		_sec = ((30 : GoInt64));
	};
	if (_durationExceedsWriteTimeout(_r, ((_sec : GoFloat64)))) {
		_serveError(_w, stdgo.net.http.Http.statusBadRequest, "profile duration exceeds server\'s WriteTimeout");
		return;
	};
	_w.header().set("Content-Type", "application/octet-stream");
	_w.header().set("Content-Disposition", "attachment; filename=\"profile\"");
	{
		var _err:stdgo.Error = stdgo.runtime.pprof.Pprof.startCPUProfile(_w);
		if (_err != null) {
			_serveError(_w, stdgo.net.http.Http.statusInternalServerError, stdgo.fmt.Fmt.sprintf("Could not enable CPU profiling: %s", Go.toInterface(_err)));
			return;
		};
	};
	_sleep(_r, new stdgo.time.Time.Duration(new stdgo.time.Time.Duration(_sec).__t__ * stdgo.time.Time.second.__t__));
	stdgo.runtime.pprof.Pprof.stopCPUProfile();
}

/**
	// Trace responds with the execution trace in binary form.
	// Tracing lasts for duration specified in seconds GET parameter, or for 1 second if not specified.
	// The package initialization registers it as /debug/pprof/trace.
**/
function trace(_w:stdgo.net.http.Http.ResponseWriter, _r:Pointer<stdgo.net.http.Http.Request>):Void {
	_w.header().set("X-Content-Type-Options", "nosniff");
	var __tmp__ = stdgo.strconv.Strconv.parseFloat(_r.value.formValue("seconds"), ((64 : GoInt))),
		_sec:GoFloat64 = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_sec <= ((0 : GoFloat64)) || _err != null) {
		_sec = ((1 : GoFloat64));
	};
	if (_durationExceedsWriteTimeout(_r, _sec)) {
		_serveError(_w, stdgo.net.http.Http.statusBadRequest, "profile duration exceeds server\'s WriteTimeout");
		return;
	};
	_w.header().set("Content-Type", "application/octet-stream");
	_w.header().set("Content-Disposition", "attachment; filename=\"trace\"");
	{
		var _err:stdgo.Error = stdgo.runtime.trace.Trace.start(_w);
		if (_err != null) {
			_serveError(_w, stdgo.net.http.Http.statusInternalServerError, stdgo.fmt.Fmt.sprintf("Could not enable tracing: %s", Go.toInterface(_err)));
			return;
		};
	};
	_sleep(_r, new stdgo.time.Time.Duration((_sec * stdgo.time.Time.second.__t__)));
	stdgo.runtime.trace.Trace.stop();
}

/**
	// Symbol looks up the program counters listed in the request,
	// responding with a table mapping program counters to function names.
	// The package initialization registers it as /debug/pprof/symbol.
**/
function symbol(_w:stdgo.net.http.Http.ResponseWriter, _r:Pointer<stdgo.net.http.Http.Request>):Void {
	_w.header().set("X-Content-Type-Options", "nosniff");
	_w.header().set("Content-Type", "text/plain; charset=utf-8");
	var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
	stdgo.fmt.Fmt.fprintf(Go.pointer(_buf).value, "num_symbols: 1\n");
	var _b:Pointer<bufio.Bufio.Reader> = new Pointer<bufio.Bufio.Reader>().nil();
	if (_r.value.method == (("POST" : GoString))) {
		_b = bufio.Bufio.newReader(_r.value.body);
	} else {
		_b = bufio.Bufio.newReader(stdgo.strings.Strings.newReader(_r.value.url.value.rawQuery).value);
	};
	while (true) {
		var __tmp__ = _b.value.readSlice((("+".code : GoRune))),
			_word:Slice<GoUInt8> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err == null) {
			_word = _word.__slice__(((0 : GoInt)), _word.length - ((1 : GoInt)));
		};
		var __tmp__ = stdgo.strconv.Strconv.parseUint(((_word : GoString)), ((0 : GoInt)), ((64 : GoInt))),
			_pc:GoUInt64 = __tmp__._0,
			_:stdgo.Error = __tmp__._1;
		if (_pc != ((0 : GoUInt64))) {
			var _f:Pointer<stdgo.runtime.Runtime.Func> = stdgo.runtime.Runtime.funcForPC(((_pc : GoUIntptr)));
			if (_f != null && !_f.isNil()) {
				stdgo.fmt.Fmt.fprintf(Go.pointer(_buf).value, "%#x %s\n", Go.toInterface(_pc), Go.toInterface(_f.value.name()));
			};
		};
		if (_err != null) {
			if (Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof)) {
				stdgo.fmt.Fmt.fprintf(Go.pointer(_buf).value, "reading request: %v\n", Go.toInterface(_err));
			};
			break;
		};
	};
	_w.write(_buf.bytes());
}

/**
	// Handler returns an HTTP handler that serves the named profile.
**/
function handler(_name:GoString):stdgo.net.http.Http.Handler {
	return new T_handler(_name);
}

function _collectProfile(_p:Pointer<stdgo.runtime.pprof.Pprof.Profile>):{var _0:Pointer<internal.profile.Profile.Profile>; var _1:Error;} {
	var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
	{
		var _err:stdgo.Error = _p.value.writeTo(Go.pointer(_buf).value, ((0 : GoInt)));
		if (_err != null) {
			return {_0: new Pointer<internal.profile.Profile.Profile>().nil(), _1: _err};
		};
	};
	var _ts:GoInt64 = stdgo.time.Time.now().unixNano();
	var __tmp__ = internal.profile.Profile.parse(Go.pointer(_buf).value),
		_p0:Pointer<internal.profile.Profile.Profile> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Pointer<internal.profile.Profile.Profile>().nil(), _1: _err};
	};
	_p0.value.timeNanos = _ts;
	return {_0: _p0, _1: ((null : stdgo.Error))};
}

/**
	// Index responds with the pprof-formatted profile named by the request.
	// For example, "/debug/pprof/heap" serves the "heap" profile.
	// Index responds to a request for "/debug/pprof/" with an HTML page
	// listing the available profiles.
**/
function index(_w:stdgo.net.http.Http.ResponseWriter, _r:Pointer<stdgo.net.http.Http.Request>):Void {
	if (stdgo.strings.Strings.hasPrefix(_r.value.url.value.path, "/debug/pprof/")) {
		var _name:GoString = stdgo.strings.Strings.trimPrefix(_r.value.url.value.path, "/debug/pprof/");
		if (_name != (("" : GoString))) {
			new T_handler(_name).serveHTTP(_w, _r);
			return;
		};
	};
	_w.header().set("X-Content-Type-Options", "nosniff");
	_w.header().set("Content-Type", "text/html; charset=utf-8");
	var _profiles:Slice<T_profileEntry> = new Slice<T_profileEntry>().nil();
	for (_p in stdgo.runtime.pprof.Pprof.profiles()) {
		_profiles = _profiles.__append__((({
			name: _p.value.name(),
			href: _p.value.name(),
			desc: _profileDescriptions[_p.value.name()],
			count: _p.value.count()
		} : T_profileEntry)).__copy__());
	};
	for (_p in new Slice<GoString>("cmdline", "profile", "trace")) {
		_profiles = _profiles.__append__((({
			name: _p,
			href: _p,
			desc: _profileDescriptions[_p],
			count: 0
		} : T_profileEntry)).__copy__());
	};
	stdgo.sort.Sort.slice(Go.toInterface(_profiles), function(_i:GoInt, _j:GoInt):Bool {
		return _profiles[_i].name < _profiles[_j].name;
	});
	{
		var _err:stdgo.Error = _indexTmplExecute(_w, _profiles);
		if (_err != null) {
			stdgo.log.Log.print(Go.toInterface(_err));
		};
	};
}

function _indexTmplExecute(_w:stdgo.io.Io.Writer, _profiles:Slice<T_profileEntry>):Error {
	var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
	_b.writeString("<html>\n<head>\n<title>/debug/pprof/</title>\n<style>\n.profile-name{\n\tdisplay:inline-block;\n\twidth:6rem;\n}\n</style>\n</head>\n<body>\n/debug/pprof/<br>\n<br>\nTypes of profiles available:\n<table>\n<thead><td>Count</td><td>Profile</td></thead>\n");
	for (_profile in _profiles) {
		var _link:Pointer<stdgo.net.url.Url.URL> = Go.pointer((({
			path: _profile.href,
			rawQuery: "debug=1",
			scheme: "",
			opaque: "",
			user: new Pointer<stdgo.net.url.Url.Userinfo>().nil(),
			host: "",
			rawPath: "",
			forceQuery: false,
			fragment: "",
			rawFragment: ""
		} : stdgo.net.url.Url.URL)));
		stdgo.fmt.Fmt.fprintf(Go.pointer(_b).value, "<tr><td>%d</td><td><a href=\'%s\'>%s</a></td></tr>\n", Go.toInterface(_profile.count),
			Go.toInterface(_link), Go.toInterface(stdgo.html.Html.escapeString(_profile.name)));
	};
	_b.writeString("</table>\n<a href=\"goroutine?debug=2\">full goroutine stack dump</a>\n<br>\n<p>\nProfile Descriptions:\n<ul>\n");
	for (_profile in _profiles) {
		stdgo.fmt.Fmt.fprintf(Go.pointer(_b).value, "<li><div class=profile-name>%s: </div> %s</li>\n",
			Go.toInterface(stdgo.html.Html.escapeString(_profile.name)), Go.toInterface(stdgo.html.Html.escapeString(_profile.desc)));
	};
	_b.writeString("</ul>\n</p>\n</body>\n</html>");
	var __tmp__ = _w.write(_b.bytes()),
		_:GoInt = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	return _err;
}

@:keep var _ = {
	try {
		stdgo.net.http.Http.handleFunc("/debug/pprof/", index);
		stdgo.net.http.Http.handleFunc("/debug/pprof/cmdline", cmdline);
		stdgo.net.http.Http.handleFunc("/debug/pprof/profile", profile);
		stdgo.net.http.Http.handleFunc("/debug/pprof/symbol", symbol);
		stdgo.net.http.Http.handleFunc("/debug/pprof/trace", trace);
	} catch (e)
		if (e.message != "__return__")
			throw e;
	true;
};

class T_handler_extension_fields {
	public function serveHTTP(__tmp__, _w:stdgo.net.http.Http.ResponseWriter, _r:Pointer<stdgo.net.http.Http.Request>):Void
		__tmp__.serveHTTP(_w, _r);

	public function _serveDeltaProfile(__tmp__, _w:stdgo.net.http.Http.ResponseWriter, _r:Pointer<stdgo.net.http.Http.Request>,
			_p:Pointer<stdgo.runtime.pprof.Pprof.Profile>, _secStr:GoString):Void
		__tmp__._serveDeltaProfile(_w, _r, _p, _secStr);
}
