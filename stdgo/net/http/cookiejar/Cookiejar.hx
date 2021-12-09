package stdgo.net.http.cookiejar;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

typedef PublicSuffixList = StructType & {
	public function publicSuffix(_domain:GoString):GoString;
	public function toString():GoString;
};

@:structInit class Options {
	public var publicSuffixList:PublicSuffixList = ((null : PublicSuffixList));

	public function new(?publicSuffixList:PublicSuffixList)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(publicSuffixList) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Options(publicSuffixList);
	}

	public function __set__(__tmp__) {
		this.publicSuffixList = __tmp__.publicSuffixList;
		return this;
	}
}

@:structInit class Jar {
	public function _domainAndType(_host:GoString, _domain:GoString):{var _0:GoString; var _1:Bool; var _2:Error;} {
		var _j = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_domain == (("" : GoString))) {
			return {_0: _host, _1: true, _2: ((null : stdgo.Error))};
		};
		if (_isIP(_host)) {
			return {_0: "", _1: false, _2: _errNoHostname};
		};
		if (_domain[((0 : GoInt))] == ((".".code : GoRune))) {
			_domain = _domain.__slice__(((1 : GoInt)));
		};
		if (_domain.length == ((0 : GoInt)) || _domain[((0 : GoInt))] == ((".".code : GoRune))) {
			return {_0: "", _1: false, _2: _errMalformedDomain};
		};
		var __tmp__ = net.http.internal.ascii.Ascii.toLower(_domain),
			_domain:GoString = __tmp__._0,
			_isASCII:Bool = __tmp__._1;
		if (!_isASCII) {
			return {_0: "", _1: false, _2: _errMalformedDomain};
		};
		if (_domain[_domain.length - ((1 : GoInt))] == ((".".code : GoRune))) {
			return {_0: "", _1: false, _2: _errMalformedDomain};
		};
		if (_j.value._psList != null) {
			{
				var _ps:GoString = _j.value._psList.publicSuffix(_domain);
				if (_ps != (("" : GoString)) && !_hasDotSuffix(_domain, _ps)) {
					if (_host == _domain) {
						return {_0: _host, _1: true, _2: ((null : stdgo.Error))};
					};
					return {_0: "", _1: false, _2: _errIllegalDomain};
				};
			};
		};
		if (_host != _domain && !_hasDotSuffix(_host, _domain)) {
			return {_0: "", _1: false, _2: _errIllegalDomain};
		};
		return {_0: _domain, _1: false, _2: ((null : stdgo.Error))};
	}

	public function _newEntry(_c:Pointer<stdgo.net.http.Http.Cookie>, _now:stdgo.time.Time.Time, _defPath:GoString,
			_host:GoString):{var _0:T_entry; var _1:Bool; var _2:Error;} {
		var _j = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _e:T_entry = new T_entry(),
			_remove:Bool = false,
			_err:Error = ((null : stdgo.Error));
		_e.name = _c.value.name;
		if (_c.value.path == (("" : GoString)) || _c.value.path[((0 : GoInt))] != (("/".code : GoRune))) {
			_e.path = _defPath;
		} else {
			_e.path = _c.value.path;
		};
		{
			var __tmp__ = _j.value._domainAndType(_host, _c.value.domain);
			_e.domain = __tmp__._0;
			_e.hostOnly = __tmp__._1;
			_err = __tmp__._2;
		};
		if (_err != null) {
			return {_0: _e.__copy__(), _1: false, _2: _err};
		};
		if (_c.value.maxAge < ((0 : GoInt))) {
			return {_0: _e.__copy__(), _1: true, _2: ((null : stdgo.Error))};
		} else if (_c.value.maxAge > ((0 : GoInt))) {
			_e.expires = _now.add(new stdgo.time.Time.Duration(new stdgo.time.Time.Duration(_c.value.maxAge).__t__ * stdgo.time.Time.second.__t__)).__copy__();
			_e.persistent = true;
		} else {
			if (_c.value.expires.isZero()) {
				_e.expires = _endOfTime.__copy__();
				_e.persistent = false;
			} else {
				if (!_c.value.expires.after(_now.__copy__())) {
					return {_0: _e.__copy__(), _1: true, _2: ((null : stdgo.Error))};
				};
				_e.expires = _c.value.expires.__copy__();
				_e.persistent = true;
			};
		};
		_e.value = _c.value.value;
		_e.secure = _c.value.secure;
		_e.httpOnly = _c.value.httpOnly;
		if (_c.value.sameSite.__t__ == stdgo.net.http.Http.sameSiteDefaultMode.__t__) {
			_e.sameSite = "SameSite";
		} else if (_c.value.sameSite.__t__ == stdgo.net.http.Http.sameSiteStrictMode.__t__) {
			_e.sameSite = "SameSite=Strict";
		} else if (_c.value.sameSite.__t__ == stdgo.net.http.Http.sameSiteLaxMode.__t__) {
			_e.sameSite = "SameSite=Lax";
		};
		return {_0: _e.__copy__(), _1: false, _2: ((null : stdgo.Error))};
	}

	public function _setCookies(_u:Pointer<stdgo.net.url.Url.URL>, _cookies:Slice<Pointer<stdgo.net.http.Http.Cookie>>, _now:stdgo.time.Time.Time):Void {
		var _j = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		try {
			if (_cookies.length == ((0 : GoInt))) {
				return;
			};
			if (_u.value.scheme != (("http" : GoString)) && _u.value.scheme != (("https" : GoString))) {
				return;
			};
			var __tmp__ = _canonicalHost(_u.value.host),
				_host:GoString = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				return;
			};
			var _key:GoString = _jarKey(_host, _j.value._psList);
			var _defPath:GoString = _defaultPath(_u.value.path);
			_j.value._mu.lock();
			deferstack.unshift(() -> _j.value._mu.unlock());
			var _submap:GoMap<GoString, T_entry> = _j.value._entries[_key];
			var _modified:Bool = false;
			for (_cookie in _cookies) {
				var __tmp__ = _j.value._newEntry(_cookie, _now.__copy__(), _defPath, _host),
					_e:T_entry = __tmp__._0,
					_remove:Bool = __tmp__._1,
					_err:stdgo.Error = __tmp__._2;
				if (_err != null) {
					continue;
				};
				var _id:GoString = _e._id();
				if (_remove) {
					if (_submap != null && !_submap.isNil()) {
						{
							var __tmp__ = _submap.exists(_id) ? {value: _submap[_id], ok: true} : {value: _submap.defaultValue(), ok: false},
								_:T_entry = __tmp__.value,
								_ok:Bool = __tmp__.ok;
							if (_ok) {
								_submap.remove(_id);
								_modified = true;
							};
						};
					};
					continue;
				};
				if (_submap == null || _submap.isNil()) {
					_submap = new GoMap<GoString,
						T_entry>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
						stdgo.reflect.Reflect.GoType.named("net/http/cookiejar.entry", [],
							stdgo.reflect.Reflect.GoType.named("net/http/cookiejar.entry", [], stdgo.reflect.Reflect.GoType.structType([
								{
									name: "name",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.basic(string_kind)
								},
								{
									name: "value",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.basic(string_kind)
								},
								{
									name: "domain",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.basic(string_kind)
								},
								{
									name: "path",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.basic(string_kind)
								},
								{
									name: "sameSite",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.basic(string_kind)
								},
								{
									name: "secure",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
								},
								{
									name: "httpOnly",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
								},
								{
									name: "persistent",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
								},
								{
									name: "hostOnly",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
								},
								{
									name: "expires",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.structType([
										{
											name: "_wall",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(uint64_kind)
										},
										{
											name: "_ext",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
										},
										{
											name: "_loc",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.Location", [],
												stdgo.reflect.Reflect.GoType.structType([
													{
														name: "_name",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(string_kind)
													},
													{
														name: "_zone",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zone", [],
															stdgo.reflect.Reflect.GoType.structType([
																{
																	name: "_name",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(string_kind)
																},
																{
																	name: "_offset",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(int_kind)
																},
																{
																	name: "_isDST",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
																}
															])))
													},
													{
														name: "_tx",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zoneTrans", [],
															stdgo.reflect.Reflect.GoType.structType([
																{
																	name: "_when",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
																},
																{
																	name: "_index",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(uint8_kind)
																},
																{
																	name: "_isstd",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
																},
																{
																	name: "_isutc",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
																}
															])))
													},
													{
														name: "_extend",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(string_kind)
													},
													{
														name: "_cacheStart",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
													},
													{
														name: "_cacheEnd",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
													},
													{
														name: "_cacheZone",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.zone", [],
															stdgo.reflect.Reflect.GoType.invalidType))
													}
												])))
										}
									]))
								},
								{
									name: "creation",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.structType([
										{
											name: "_wall",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(uint64_kind)
										},
										{
											name: "_ext",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
										},
										{
											name: "_loc",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.Location", [],
												stdgo.reflect.Reflect.GoType.structType([
													{
														name: "_name",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(string_kind)
													},
													{
														name: "_zone",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zone", [],
															stdgo.reflect.Reflect.GoType.structType([
																{
																	name: "_name",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(string_kind)
																},
																{
																	name: "_offset",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(int_kind)
																},
																{
																	name: "_isDST",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
																}
															])))
													},
													{
														name: "_tx",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zoneTrans", [],
															stdgo.reflect.Reflect.GoType.structType([
																{
																	name: "_when",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
																},
																{
																	name: "_index",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(uint8_kind)
																},
																{
																	name: "_isstd",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
																},
																{
																	name: "_isutc",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
																}
															])))
													},
													{
														name: "_extend",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(string_kind)
													},
													{
														name: "_cacheStart",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
													},
													{
														name: "_cacheEnd",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
													},
													{
														name: "_cacheZone",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.zone", [],
															stdgo.reflect.Reflect.GoType.invalidType))
													}
												])))
										}
									]))
								},
								{
									name: "lastAccess",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.structType([
										{
											name: "_wall",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(uint64_kind)
										},
										{
											name: "_ext",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
										},
										{
											name: "_loc",
											embedded: false,
											tag: "",
											type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.Location", [],
												stdgo.reflect.Reflect.GoType.structType([
													{
														name: "_name",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(string_kind)
													},
													{
														name: "_zone",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zone", [],
															stdgo.reflect.Reflect.GoType.structType([
																{
																	name: "_name",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(string_kind)
																},
																{
																	name: "_offset",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(int_kind)
																},
																{
																	name: "_isDST",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
																}
															])))
													},
													{
														name: "_tx",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zoneTrans", [],
															stdgo.reflect.Reflect.GoType.structType([
																{
																	name: "_when",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
																},
																{
																	name: "_index",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(uint8_kind)
																},
																{
																	name: "_isstd",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
																},
																{
																	name: "_isutc",
																	embedded: false,
																	tag: "",
																	type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
																}
															])))
													},
													{
														name: "_extend",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(string_kind)
													},
													{
														name: "_cacheStart",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
													},
													{
														name: "_cacheEnd",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
													},
													{
														name: "_cacheZone",
														embedded: false,
														tag: "",
														type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.zone", [],
															stdgo.reflect.Reflect.GoType.invalidType))
													}
												])))
										}
									]))
								},
								{
									name: "_seqNum",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.basic(uint64_kind)
								}
							]))))));
				};
				{
					var __tmp__ = _submap.exists(_id) ? {value: _submap[_id], ok: true} : {value: _submap.defaultValue(), ok: false},
						_old:T_entry = __tmp__.value,
						_ok:Bool = __tmp__.ok;
					if (_ok) {
						_e.creation = _old.creation.__copy__();
						_e._seqNum = _old._seqNum;
					} else {
						_e.creation = _now.__copy__();
						_e._seqNum = _j.value._nextSeqNum;
						_j.value._nextSeqNum++;
					};
				};
				_e.lastAccess = _now.__copy__();
				_submap[_id] = _e.__copy__();
				_modified = true;
			};
			if (_modified) {
				if ((_submap == null ? 0 : _submap.length) == ((0 : GoInt))) {
					_j.value._entries.remove(_key);
				} else {
					_j.value._entries[_key] = _submap;
				};
			};
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

	public function setCookies(_u:Pointer<stdgo.net.url.Url.URL>, _cookies:Slice<Pointer<stdgo.net.http.Http.Cookie>>):Void {
		var _j = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_j.value._setCookies(_u, _cookies, stdgo.time.Time.now().__copy__());
	}

	public function _cookies(_u:Pointer<stdgo.net.url.Url.URL>, _now:stdgo.time.Time.Time):Slice<Pointer<stdgo.net.http.Http.Cookie>> {
		var _j = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		var _cookies:Slice<Pointer<stdgo.net.http.Http.Cookie>> = new Slice<Pointer<stdgo.net.http.Http.Cookie>>().nil();
		try {
			if (_u.value.scheme != (("http" : GoString)) && _u.value.scheme != (("https" : GoString))) {
				return _cookies;
			};
			var __tmp__ = _canonicalHost(_u.value.host),
				_host:GoString = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				return _cookies;
			};
			var _key:GoString = _jarKey(_host, _j.value._psList);
			_j.value._mu.lock();
			deferstack.unshift(() -> _j.value._mu.unlock());
			var _submap:GoMap<GoString, T_entry> = _j.value._entries[_key];
			if (_submap == null || _submap.isNil()) {
				{
					for (defer in deferstack) {
						defer();
					};
					return _cookies;
				};
			};
			var _https:Bool = _u.value.scheme == (("https" : GoString));
			var _path:GoString = _u.value.path;
			if (_path == (("" : GoString))) {
				_path = "/";
			};
			var _modified:Bool = false;
			var _selected:Slice<T_entry> = new Slice<T_entry>().nil();
			{
				var _id;
				var _e;
				for (_obj in _submap.keyValueIterator()) {
					_id = _obj.key;
					_e = _obj.value;
					if (_e.persistent && !_e.expires.after(_now.__copy__())) {
						_submap.remove(_id);
						_modified = true;
						continue;
					};
					if (!_e._shouldSend(_https, _host, _path)) {
						continue;
					};
					_e.lastAccess = _now.__copy__();
					_submap[_id] = _e.__copy__();
					_selected = _selected.__append__(_e.__copy__());
					_modified = true;
				};
			};
			if (_modified) {
				if ((_submap == null ? 0 : _submap.length) == ((0 : GoInt))) {
					_j.value._entries.remove(_key);
				} else {
					_j.value._entries[_key] = _submap;
				};
			};
			stdgo.sort.Sort.slice(Go.toInterface(_selected), function(_i:GoInt, _j:GoInt):Bool {
				var _s:Slice<T_entry> = _selected;
				if (_s[_i].path.length != _s[_j].path.length) {
					return _s[_i].path.length > _s[_j].path.length;
				};
				if (!_s[_i].creation.equal(_s[_j].creation.__copy__())) {
					return _s[_i].creation.before(_s[_j].creation.__copy__());
				};
				return _s[_i]._seqNum < _s[_j]._seqNum;
			});
			for (_e in _selected) {
				_cookies = _cookies.__append__(Go.pointer((({
					name: _e.name,
					value: _e.value,
					path: "",
					domain: "",
					expires: new stdgo.time.Time.Time(),
					rawExpires: "",
					maxAge: 0,
					secure: false,
					httpOnly: false,
					sameSite: new stdgo.net.http.Http.SameSite(),
					raw: "",
					unparsed: new Slice<GoString>().nil()
				} : stdgo.net.http.Http.Cookie))));
			};
			{
				for (defer in deferstack) {
					defer();
				};
				return _cookies;
			};
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
				return _cookies;
			};
		};
	}

	public function cookies(_u:Pointer<stdgo.net.url.Url.URL>):Slice<Pointer<stdgo.net.http.Http.Cookie>> {
		var _j = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _cookies:Slice<Pointer<stdgo.net.http.Http.Cookie>> = new Slice<Pointer<stdgo.net.http.Http.Cookie>>().nil();
		return _j.value._cookies(_u, stdgo.time.Time.now().__copy__());
	}

	public var _psList:PublicSuffixList = ((null : PublicSuffixList));
	public var _mu:stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
	public var _entries:GoMap<GoString, GoMap<GoString, T_entry>> = new GoMap<GoString, GoMap<GoString,
		T_entry>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
		stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
			stdgo.reflect.Reflect.GoType.named("net/http/cookiejar.entry", [], stdgo.reflect.Reflect.GoType.structType([
				{
					name: "name",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(string_kind)
				},
				{
					name: "value",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(string_kind)
				},
				{
					name: "domain",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(string_kind)
				},
				{
					name: "path",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(string_kind)
				},
				{
					name: "sameSite",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(string_kind)
				},
				{
					name: "secure",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
				},
				{
					name: "httpOnly",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
				},
				{
					name: "persistent",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
				},
				{
					name: "hostOnly",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
				},
				{
					name: "expires",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.structType([
						{
							name: "_wall",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(uint64_kind)
						},
						{
							name: "_ext",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
						},
						{
							name: "_loc",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.Location", [],
								stdgo.reflect.Reflect.GoType.structType([
									{
										name: "_name",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(string_kind)
									},
									{
										name: "_zone",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zone", [],
											stdgo.reflect.Reflect.GoType.structType([
												{
													name: "_name",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(string_kind)
												},
												{
													name: "_offset",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(int_kind)
												},
												{
													name: "_isDST",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
												}
											])))
									},
									{
										name: "_tx",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zoneTrans", [],
											stdgo.reflect.Reflect.GoType.structType([
												{
													name: "_when",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
												},
												{
													name: "_index",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(uint8_kind)
												},
												{
													name: "_isstd",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
												},
												{
													name: "_isutc",
													embedded: false,
													tag: "",
													type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
												}
											])))
									},
									{
										name: "_extend",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(string_kind)
									},
									{
										name: "_cacheStart",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
									},
									{
										name: "_cacheEnd",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
									},
									{
										name: "_cacheZone",
										embedded: false,
										tag: "",
										type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.zone", [],
											stdgo.reflect.Reflect.GoType.invalidType))
									}
								])))
						}
					]))
				},
				{
					name: "creation",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.invalidType)
				},
				{
					name: "lastAccess",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.invalidType)
				},
				{
					name: "_seqNum",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(uint64_kind)
				}
			])))))).nil();
	public var _nextSeqNum:GoUInt64 = ((0 : GoUInt64));

	public function new(?_psList:PublicSuffixList, ?_mu:stdgo.sync.Sync.Mutex, ?_entries:GoMap<GoString, GoMap<GoString, T_entry>>, ?_nextSeqNum:GoUInt64)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_psList) + " " + Go.string(_mu) + " " + Go.string(_entries) + " " + Go.string(_nextSeqNum) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Jar(_psList, _mu, _entries, _nextSeqNum);
	}

	public function __set__(__tmp__) {
		this._psList = __tmp__._psList;
		this._mu = __tmp__._mu;
		this._entries = __tmp__._entries;
		this._nextSeqNum = __tmp__._nextSeqNum;
		return this;
	}
}

@:structInit class T_entry {
	public function _pathMatch(_requestPath:GoString):Bool {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_requestPath == _e.value.path) {
			return true;
		};
		if (stdgo.strings.Strings.hasPrefix(_requestPath, _e.value.path)) {
			if (_e.value.path[_e.value.path.length - ((1 : GoInt))] == (("/".code : GoRune))) {
				return true;
			} else if (_requestPath[_e.value.path.length] == (("/".code : GoRune))) {
				return true;
			};
		};
		return false;
	}

	public function _domainMatch(_host:GoString):Bool {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_e.value.domain == _host) {
			return true;
		};
		return !_e.value.hostOnly && _hasDotSuffix(_host, _e.value.domain);
	}

	public function _shouldSend(_https:Bool, _host:GoString, _path:GoString):Bool {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _e.value._domainMatch(_host) && _e.value._pathMatch(_path) && (_https || !_e.value.secure);
	}

	public function _id():GoString {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return stdgo.fmt.Fmt.sprintf("%s;%s;%s", Go.toInterface(_e.value.domain), Go.toInterface(_e.value.path), Go.toInterface(_e.value.name));
	}

	public var name:GoString = (("" : GoString));
	public var value:GoString = (("" : GoString));
	public var domain:GoString = (("" : GoString));
	public var path:GoString = (("" : GoString));
	public var sameSite:GoString = (("" : GoString));
	public var secure:Bool = false;
	public var httpOnly:Bool = false;
	public var persistent:Bool = false;
	public var hostOnly:Bool = false;
	public var expires:stdgo.time.Time.Time = new stdgo.time.Time.Time();
	public var creation:stdgo.time.Time.Time = new stdgo.time.Time.Time();
	public var lastAccess:stdgo.time.Time.Time = new stdgo.time.Time.Time();
	public var _seqNum:GoUInt64 = ((0 : GoUInt64));

	public function new(?name:GoString, ?value:GoString, ?domain:GoString, ?path:GoString, ?sameSite:GoString, ?secure:Bool, ?httpOnly:Bool, ?persistent:Bool,
			?hostOnly:Bool, ?expires:stdgo.time.Time.Time, ?creation:stdgo.time.Time.Time, ?lastAccess:stdgo.time.Time.Time, ?_seqNum:GoUInt64)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(name) + " " + Go.string(value) + " " + Go.string(domain) + " " + Go.string(path) + " " + Go.string(sameSite) + " "
			+ Go.string(secure) + " " + Go.string(httpOnly) + " " + Go.string(persistent) + " " + Go.string(hostOnly) + " " + Go.string(expires) + " "
			+ Go.string(creation) + " " + Go.string(lastAccess) + " " + Go.string(_seqNum) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_entry(name, value, domain, path, sameSite, secure, httpOnly, persistent, hostOnly, expires, creation, lastAccess, _seqNum);
	}

	public function __set__(__tmp__) {
		this.name = __tmp__.name;
		this.value = __tmp__.value;
		this.domain = __tmp__.domain;
		this.path = __tmp__.path;
		this.sameSite = __tmp__.sameSite;
		this.secure = __tmp__.secure;
		this.httpOnly = __tmp__.httpOnly;
		this.persistent = __tmp__.persistent;
		this.hostOnly = __tmp__.hostOnly;
		this.expires = __tmp__.expires;
		this.creation = __tmp__.creation;
		this.lastAccess = __tmp__.lastAccess;
		this._seqNum = __tmp__._seqNum;
		return this;
	}
}

final _skew:GoInt32 = ((38 : GoInt32));
final _initialN:GoInt32 = ((128 : GoInt32));
var _errNoHostname:stdgo.Error = stdgo.errors.Errors.new_("cookiejar: no host name available (IP only)");
final _initialBias:GoInt32 = ((72 : GoInt32));
var _errIllegalDomain:stdgo.Error = stdgo.errors.Errors.new_("cookiejar: illegal cookie domain attribute");
final _tmax:GoInt32 = ((26 : GoInt32));
final _base:GoInt32 = ((36 : GoInt32));

var _endOfTime:stdgo.time.Time.Time = stdgo.time.Time.date(((9999 : GoInt)), new stdgo.time.Time.Month(((12 : GoInt))), ((31 : GoInt)), ((23 : GoInt)),
	((59 : GoInt)), ((59 : GoInt)), ((0 : GoInt)), stdgo.time.Time.utc)
	.__copy__();

final _damp:GoInt32 = ((700 : GoInt32));
var _errMalformedDomain:stdgo.Error = stdgo.errors.Errors.new_("cookiejar: malformed cookie domain attribute");
final _acePrefix:GoString = "xn--";
final _tmin:GoInt32 = ((1 : GoInt32));

/**
	// New returns a new cookie jar. A nil *Options is equivalent to a zero
	// Options.
**/
function new_(_o:Pointer<Options>):{var _0:Pointer<Jar>; var _1:Error;} {
	var _jar:Pointer<Jar> = Go.pointer((({
		_entries: new GoMap<GoString, GoMap<GoString,
			T_entry>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
			stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
				stdgo.reflect.Reflect.GoType.named("net/http/cookiejar.entry", [],
					stdgo.reflect.Reflect.GoType.named("net/http/cookiejar.entry", [], stdgo.reflect.Reflect.GoType.structType([
						{
							name: "name",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(string_kind)
						},
						{
							name: "value",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(string_kind)
						},
						{
							name: "domain",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(string_kind)
						},
						{
							name: "path",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(string_kind)
						},
						{
							name: "sameSite",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(string_kind)
						},
						{
							name: "secure",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
						},
						{
							name: "httpOnly",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
						},
						{
							name: "persistent",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
						},
						{
							name: "hostOnly",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
						},
						{
							name: "expires",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.structType([
								{
									name: "_wall",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.basic(uint64_kind)
								},
								{
									name: "_ext",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
								},
								{
									name: "_loc",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.Location", [],
										stdgo.reflect.Reflect.GoType.structType([
											{
												name: "_name",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(string_kind)
											},
											{
												name: "_zone",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zone", [],
													stdgo.reflect.Reflect.GoType.structType([
														{
															name: "_name",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(string_kind)
														},
														{
															name: "_offset",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(int_kind)
														},
														{
															name: "_isDST",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
														}
													])))
											},
											{
												name: "_tx",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zoneTrans", [],
													stdgo.reflect.Reflect.GoType.structType([
														{
															name: "_when",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
														},
														{
															name: "_index",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(uint8_kind)
														},
														{
															name: "_isstd",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
														},
														{
															name: "_isutc",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
														}
													])))
											},
											{
												name: "_extend",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(string_kind)
											},
											{
												name: "_cacheStart",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
											},
											{
												name: "_cacheEnd",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
											},
											{
												name: "_cacheZone",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.zone", [],
													stdgo.reflect.Reflect.GoType.invalidType))
											}
										])))
								}
							]))
						},
						{
							name: "creation",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.structType([
								{
									name: "_wall",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.basic(uint64_kind)
								},
								{
									name: "_ext",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
								},
								{
									name: "_loc",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.Location", [],
										stdgo.reflect.Reflect.GoType.structType([
											{
												name: "_name",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(string_kind)
											},
											{
												name: "_zone",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zone", [],
													stdgo.reflect.Reflect.GoType.structType([
														{
															name: "_name",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(string_kind)
														},
														{
															name: "_offset",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(int_kind)
														},
														{
															name: "_isDST",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
														}
													])))
											},
											{
												name: "_tx",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zoneTrans", [],
													stdgo.reflect.Reflect.GoType.structType([
														{
															name: "_when",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
														},
														{
															name: "_index",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(uint8_kind)
														},
														{
															name: "_isstd",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
														},
														{
															name: "_isutc",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
														}
													])))
											},
											{
												name: "_extend",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(string_kind)
											},
											{
												name: "_cacheStart",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
											},
											{
												name: "_cacheEnd",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
											},
											{
												name: "_cacheZone",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.zone", [],
													stdgo.reflect.Reflect.GoType.invalidType))
											}
										])))
								}
							]))
						},
						{
							name: "lastAccess",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.named("time.Time", [], stdgo.reflect.Reflect.GoType.structType([
								{
									name: "_wall",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.basic(uint64_kind)
								},
								{
									name: "_ext",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
								},
								{
									name: "_loc",
									embedded: false,
									tag: "",
									type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.Location", [],
										stdgo.reflect.Reflect.GoType.structType([
											{
												name: "_name",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(string_kind)
											},
											{
												name: "_zone",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zone", [],
													stdgo.reflect.Reflect.GoType.structType([
														{
															name: "_name",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(string_kind)
														},
														{
															name: "_offset",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(int_kind)
														},
														{
															name: "_isDST",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
														}
													])))
											},
											{
												name: "_tx",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("time.zoneTrans", [],
													stdgo.reflect.Reflect.GoType.structType([
														{
															name: "_when",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
														},
														{
															name: "_index",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(uint8_kind)
														},
														{
															name: "_isstd",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
														},
														{
															name: "_isutc",
															embedded: false,
															tag: "",
															type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
														}
													])))
											},
											{
												name: "_extend",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(string_kind)
											},
											{
												name: "_cacheStart",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
											},
											{
												name: "_cacheEnd",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
											},
											{
												name: "_cacheZone",
												embedded: false,
												tag: "",
												type: stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("time.zone", [],
													stdgo.reflect.Reflect.GoType.invalidType))
											}
										])))
								}
							]))
						},
						{
							name: "_seqNum",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(uint64_kind)
						}
					]))))))),
		_psList: ((null : PublicSuffixList)),
		_mu: new stdgo.sync.Sync.Mutex(),
		_nextSeqNum: 0
	} : Jar)));
	if (_o != null && !_o.isNil()) {
		_jar.value._psList = _o.value.publicSuffixList;
	};
	return {_0: _jar, _1: ((null : stdgo.Error))};
}

/**
	// hasDotSuffix reports whether s ends in "."+suffix.
**/
function _hasDotSuffix(_s:GoString, _suffix:GoString):Bool {
	return _s.length > _suffix.length
		&& _s[_s.length - _suffix.length - ((1 : GoInt))] == ((".".code : GoRune))
		&& _s.__slice__(_s.length - _suffix.length) == _suffix;
}

/**
	// canonicalHost strips port from host if present and returns the canonicalized
	// host name.
**/
function _canonicalHost(_host:GoString):{var _0:GoString; var _1:Error;} {
	var _err:Error = ((null : stdgo.Error));
	if (_hasPort(_host)) {
		{
			var __tmp__ = stdgo.net.Net.splitHostPort(_host);
			_host = __tmp__._0;
			_err = __tmp__._2;
		};
		if (_err != null) {
			return {_0: "", _1: _err};
		};
	};
	if (stdgo.strings.Strings.hasSuffix(_host, ".")) {
		_host = _host.__slice__(0, _host.length - ((1 : GoInt)));
	};
	var __tmp__ = _toASCII(_host),
		_encoded:GoString = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: "", _1: _err};
	};
	var __tmp__ = net.http.internal.ascii.Ascii.toLower(_encoded),
		_lower:GoString = __tmp__._0,
		_:Bool = __tmp__._1;
	return {_0: _lower, _1: ((null : stdgo.Error))};
}

/**
	// hasPort reports whether host contains a port number. host may be a host
	// name, an IPv4 or an IPv6 address.
**/
function _hasPort(_host:GoString):Bool {
	var _colons:GoInt = stdgo.strings.Strings.count(_host, ":");
	if (_colons == ((0 : GoInt))) {
		return false;
	};
	if (_colons == ((1 : GoInt))) {
		return true;
	};
	return _host[((0 : GoInt))] == (("[".code : GoRune)) && stdgo.strings.Strings.contains(_host, "]:");
}

/**
	// jarKey returns the key to use for a jar.
**/
function _jarKey(_host:GoString, _psl:PublicSuffixList):GoString {
	if (_isIP(_host)) {
		return _host;
	};
	var _i:GoInt = ((0 : GoInt));
	if (_psl == null) {
		_i = stdgo.strings.Strings.lastIndex(_host, ".");
		if (_i <= ((0 : GoInt))) {
			return _host;
		};
	} else {
		var _suffix:GoString = _psl.publicSuffix(_host);
		if (_suffix == _host) {
			return _host;
		};
		_i = _host.length - _suffix.length;
		if (_i <= ((0 : GoInt)) || _host[_i - ((1 : GoInt))] != ((".".code : GoRune))) {
			return _host;
		};
	};
	var _prevDot:GoInt = stdgo.strings.Strings.lastIndex(_host.__slice__(0, _i - ((1 : GoInt))), ".");
	return _host.__slice__(_prevDot + ((1 : GoInt)));
}

/**
	// isIP reports whether host is an IP address.
**/
function _isIP(_host:GoString):Bool {
	return stdgo.net.Net.parseIP(_host).__t__ != null && !stdgo.net.Net.parseIP(_host).__t__.isNil();
}

/**
	// defaultPath returns the directory part of an URL's path according to
	// RFC 6265 section 5.1.4.
**/
function _defaultPath(_path:GoString):GoString {
	if (_path.length == ((0 : GoInt)) || _path[((0 : GoInt))] != (("/".code : GoRune))) {
		return "/";
	};
	var _i:GoInt = stdgo.strings.Strings.lastIndex(_path, "/");
	if (_i == ((0 : GoInt))) {
		return "/";
	};
	return _path.__slice__(0, _i);
}

/**
	// encode encodes a string as specified in section 6.3 and prepends prefix to
	// the result.
	//
	// The "while h < length(input)" line in the specification becomes "for
	// remaining != 0" in the Go code, because len(s) in Go is in bytes, not runes.
**/
function _encode(_prefix:GoString, _s:GoString):{var _0:GoString; var _1:Error;} {
	var _output:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_prefix.length : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((_prefix.length
		+ ((1 : GoInt)) + ((2 : GoInt)) * _s.length:GoInt)).toBasic());
	Go.copy(_output, _prefix);
	var _delta:GoInt32 = ((((0 : GoInt32)) : GoInt32)),
		_n:GoInt32 = _initialN,
		_bias:GoInt32 = _initialBias;
	var _b:GoInt32 = ((((0 : GoInt32)) : GoInt32)),
		_remaining:GoInt32 = ((((0 : GoInt32)) : GoInt32));
	for (_r in _s) {
		if (_r < stdgo.unicode.utf8.Utf8.runeSelf) {
			_b++;
			_output = _output.__append__(((_r : GoByte)));
		} else {
			_remaining++;
		};
	};
	var _h:GoInt32 = _b;
	if (_b > ((0 : GoInt32))) {
		_output = _output.__append__((("-".code : GoRune)));
	};
	while (_remaining != ((0 : GoInt32))) {
		var _m:GoInt32 = ((((2147483647 : GoInt32)) : GoInt32));
		for (_r in _s) {
			if (_m > _r && _r >= _n) {
				_m = _r;
			};
		};
		_delta = _delta + ((_m - _n) * (_h + ((1 : GoInt32))));
		if (_delta < ((0 : GoInt32))) {
			return {_0: "", _1: stdgo.fmt.Fmt.errorf("cookiejar: invalid label %q", Go.toInterface(_s))};
		};
		_n = _m;
		for (_r in _s) {
			if (_r < _n) {
				_delta++;
				if (_delta < ((0 : GoInt32))) {
					return {_0: "", _1: stdgo.fmt.Fmt.errorf("cookiejar: invalid label %q", Go.toInterface(_s))};
				};
				continue;
			};
			if (_r > _n) {
				continue;
			};
			var _q:GoInt32 = _delta;
			{
				var _k:GoInt32 = _base;
				Go.cfor(true, _k = _k + (_base), {
					var _t:GoInt32 = _k - _bias;
					if (_t < _tmin) {
						_t = _tmin;
					} else if (_t > _tmax) {
						_t = _tmax;
					};
					if (_q < _t) {
						break;
					};
					_output = _output.__append__(_encodeDigit(_t + (_q - _t) % (_base - _t)));
					_q = (_q - _t) / (_base - _t);
				});
			};
			_output = _output.__append__(_encodeDigit(_q));
			_bias = _adapt(_delta, _h + ((1 : GoInt32)), _h == _b);
			_delta = ((0 : GoInt32));
			_h++;
			_remaining--;
		};
		_delta++;
		_n++;
	};
	return {_0: ((_output : GoString)), _1: ((null : stdgo.Error))};
}

function _encodeDigit(_digit:GoInt32):GoByte {
	if (((0 : GoInt32)) <= _digit && _digit < ((26 : GoInt32))) {
		return (((_digit + (("a".code : GoRune))) : GoByte));
	} else if (((26 : GoInt32)) <= _digit && _digit < ((36 : GoInt32))) {
		return (((_digit + ((("0".code : GoRune)) - ((26 : GoInt32)))) : GoByte));
	};
	throw "cookiejar: internal error in punycode encoding";
}

/**
	// adapt is the bias adaptation function specified in section 6.1.
**/
function _adapt(_delta:GoInt32, _numPoints:GoInt32, _firstTime:Bool):GoInt32 {
	if (_firstTime) {
		_delta = _delta / (_damp);
	} else {
		_delta = _delta / (((2 : GoInt32)));
	};
	_delta = _delta + (_delta / _numPoints);
	var _k:GoInt32 = ((((0 : GoInt32)) : GoInt32));
	while (_delta > ((_base - _tmin) * _tmax) / ((2 : GoInt32))) {
		_delta = _delta / (_base - _tmin);
		_k = _k + (_base);
	};
	return _k + (_base - _tmin + ((1 : GoInt32))) * _delta / (_delta + _skew);
}

/**
	// toASCII converts a domain or domain label to its ASCII form. For example,
	// toASCII("bücher.example.com") is "xn--bcher-kva.example.com", and
	// toASCII("golang") is "golang".
**/
function _toASCII(_s:GoString):{var _0:GoString; var _1:Error;} {
	if (net.http.internal.ascii.Ascii.is_(_s)) {
		return {_0: _s, _1: ((null : stdgo.Error))};
	};
	var _labels:Slice<GoString> = stdgo.strings.Strings.split(_s, ".");
	{
		var _i;
		var _label;
		for (_obj in _labels.keyValueIterator()) {
			_i = _obj.key;
			_label = _obj.value;
			if (!net.http.internal.ascii.Ascii.is_(_label)) {
				var __tmp__ = _encode(_acePrefix, _label),
					_a:GoString = __tmp__._0,
					_err:stdgo.Error = __tmp__._1;
				if (_err != null) {
					return {_0: "", _1: _err};
				};
				_labels[_i] = _a;
			};
		};
	};
	return {_0: stdgo.strings.Strings.join(_labels, "."), _1: ((null : stdgo.Error))};
}

class Jar_extension_fields {
	public function cookies(__tmp__, _u:Pointer<stdgo.net.url.Url.URL>):Slice<Pointer<stdgo.net.http.Http.Cookie>>
		return __tmp__.cookies(_u);

	public function _cookies(__tmp__, _u:Pointer<stdgo.net.url.Url.URL>, _now:stdgo.time.Time.Time):Slice<Pointer<stdgo.net.http.Http.Cookie>>
		return __tmp__._cookies(_u, _now);

	public function setCookies(__tmp__, _u:Pointer<stdgo.net.url.Url.URL>, _cookies:Slice<Pointer<stdgo.net.http.Http.Cookie>>):Void
		__tmp__.setCookies(_u, _cookies);

	public function _setCookies(__tmp__, _u:Pointer<stdgo.net.url.Url.URL>, _cookies:Slice<Pointer<stdgo.net.http.Http.Cookie>>,
			_now:stdgo.time.Time.Time):Void
		__tmp__._setCookies(_u, _cookies, _now);

	public function _newEntry(__tmp__, _c:Pointer<stdgo.net.http.Http.Cookie>, _now:stdgo.time.Time.Time, _defPath:GoString,
			_host:GoString):{var _0:T_entry; var _1:Bool; var _2:Error;}
		return __tmp__._newEntry(_c, _now, _defPath, _host);

	public function _domainAndType(__tmp__, _host:GoString, _domain:GoString):{var _0:GoString; var _1:Bool; var _2:Error;}
		return __tmp__._domainAndType(_host, _domain);
}

class T_entry_extension_fields {
	public function _id(__tmp__):GoString
		return __tmp__._id();

	public function _shouldSend(__tmp__, _https:Bool, _host:GoString, _path:GoString):Bool
		return __tmp__._shouldSend(_https, _host, _path);

	public function _domainMatch(__tmp__, _host:GoString):Bool
		return __tmp__._domainMatch(_host);

	public function _pathMatch(__tmp__, _requestPath:GoString):Bool
		return __tmp__._pathMatch(_requestPath);
}
