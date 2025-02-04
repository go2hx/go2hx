package stdgo._internal.net.http.pprof;
@:keep @:allow(stdgo._internal.net.http.pprof.Pprof.T_handler_asInterface) class T_handler_static_extension {
    @:keep
    @:tdfield
    static public function _serveDeltaProfile( _name:stdgo._internal.net.http.pprof.Pprof_t_handler.T_handler, _w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>, _secStr:stdgo.GoString):Void {
        @:recv var _name:stdgo._internal.net.http.pprof.Pprof_t_handler.T_handler = _name;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_secStr?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _sec:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) || (_sec <= (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                stdgo._internal.net.http.pprof.Pprof__serveerror._serveError(_w, (400 : stdgo.GoInt), ("invalid value for \"seconds\" - must be a positive integer" : stdgo.GoString));
                return;
            };
            if (!(stdgo._internal.net.http.pprof.Pprof__profilesupportsdelta._profileSupportsDelta[_name] ?? false)) {
                stdgo._internal.net.http.pprof.Pprof__serveerror._serveError(_w, (400 : stdgo.GoInt), ("\"seconds\" parameter is not supported for this profile type" : stdgo.GoString));
                return;
            };
            if (stdgo._internal.net.http.pprof.Pprof__durationexceedswritetimeout._durationExceedsWriteTimeout(_r, (_sec : stdgo.GoFloat64))) {
                stdgo._internal.net.http.pprof.Pprof__serveerror._serveError(_w, (400 : stdgo.GoInt), ("profile duration exceeds server\'s WriteTimeout" : stdgo.GoString));
                return;
            };
            var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(@:check2r _r.formValue(("debug" : stdgo.GoString))?.__copy__()), _debug:stdgo.GoInt = __tmp__._0, __0:stdgo.Error = __tmp__._1;
            if (_debug != ((0 : stdgo.GoInt))) {
                stdgo._internal.net.http.pprof.Pprof__serveerror._serveError(_w, (400 : stdgo.GoInt), ("seconds and debug params are incompatible" : stdgo.GoString));
                return;
            };
            var __tmp__ = stdgo._internal.net.http.pprof.Pprof__collectprofile._collectProfile(_p), _p0:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.net.http.pprof.Pprof__serveerror._serveError(_w, (500 : stdgo.GoInt), ("failed to collect profile" : stdgo.GoString));
                return;
            };
            var _t = stdgo._internal.time.Time_newtimer.newTimer(((_sec : stdgo._internal.time.Time_duration.Duration) * (1000000000i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration));
            {
                final __f__ = @:check2r _t.stop;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                var __select__ = true;
                while (__select__) {
                    if (@:check2r _r.context().done() != null && @:check2r _r.context().done().__isGet__()) {
                        __select__ = false;
                        {
                            @:check2r _r.context().done().__get__();
                            {
                                var _err = (@:check2r _r.context().err() : stdgo.Error);
                                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.context.Context_deadlineexceeded.deadlineExceeded))) {
                                    stdgo._internal.net.http.pprof.Pprof__serveerror._serveError(_w, (408 : stdgo.GoInt), _err.error()?.__copy__());
                                } else {
                                    stdgo._internal.net.http.pprof.Pprof__serveerror._serveError(_w, (500 : stdgo.GoInt), _err.error()?.__copy__());
                                };
                                {
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return;
                                };
                            };
                        };
                    } else if ((@:checkr _t ?? throw "null pointer dereference").c != null && (@:checkr _t ?? throw "null pointer dereference").c.__isGet__()) {
                        __select__ = false;
                        {
                            (@:checkr _t ?? throw "null pointer dereference").c.__get__();
                            {};
                        };
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
            };
            var __tmp__ = stdgo._internal.net.http.pprof.Pprof__collectprofile._collectProfile(_p), _p1:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.net.http.pprof.Pprof__serveerror._serveError(_w, (500 : stdgo.GoInt), ("failed to collect profile" : stdgo.GoString));
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            var _ts = ((@:checkr _p1 ?? throw "null pointer dereference").timeNanos : stdgo.GoInt64);
            var _dur = ((@:checkr _p1 ?? throw "null pointer dereference").timeNanos - (@:checkr _p0 ?? throw "null pointer dereference").timeNanos : stdgo.GoInt64);
            @:check2r _p0.scale((-1 : stdgo.GoFloat64));
            {
                var __tmp__ = stdgo._internal.internal.profile.Profile_merge.merge((new stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>>(2, 2, ...[_p0, _p1]) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>>));
                _p1 = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                stdgo._internal.net.http.pprof.Pprof__serveerror._serveError(_w, (500 : stdgo.GoInt), ("failed to compute delta" : stdgo.GoString));
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            (@:checkr _p1 ?? throw "null pointer dereference").timeNanos = _ts;
            (@:checkr _p1 ?? throw "null pointer dereference").durationNanos = _dur;
            _w.header().set(("Content-Type" : stdgo.GoString), ("application/octet-stream" : stdgo.GoString));
            _w.header().set(("Content-Disposition" : stdgo.GoString), stdgo._internal.fmt.Fmt_sprintf.sprintf(("attachment; filename=\"%s-delta\"" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_name)))?.__copy__());
            @:check2r _p1.write(_w);
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function serveHTTP( _name:stdgo._internal.net.http.pprof.Pprof_t_handler.T_handler, _w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Void {
        @:recv var _name:stdgo._internal.net.http.pprof.Pprof_t_handler.T_handler = _name;
        _w.header().set(("X-Content-Type-Options" : stdgo.GoString), ("nosniff" : stdgo.GoString));
        var _p = stdgo._internal.runtime.pprof.Pprof_lookup.lookup((_name : stdgo.GoString)?.__copy__());
        if ((_p == null || (_p : Dynamic).__nil__)) {
            stdgo._internal.net.http.pprof.Pprof__serveerror._serveError(_w, (404 : stdgo.GoInt), ("Unknown profile" : stdgo.GoString));
            return;
        };
        {
            var _sec = (@:check2r _r.formValue(("seconds" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_sec != ((stdgo.Go.str() : stdgo.GoString))) {
                _name._serveDeltaProfile(_w, _r, _p, _sec?.__copy__());
                return;
            };
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(@:check2r _r.formValue(("gc" : stdgo.GoString))?.__copy__()), _gc:stdgo.GoInt = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        if (((_name == (("heap" : stdgo.GoString) : stdgo._internal.net.http.pprof.Pprof_t_handler.T_handler)) && (_gc > (0 : stdgo.GoInt) : Bool) : Bool)) {
            stdgo._internal.runtime.Runtime_gc.gC();
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(@:check2r _r.formValue(("debug" : stdgo.GoString))?.__copy__()), _debug:stdgo.GoInt = __tmp__._0, __1:stdgo.Error = __tmp__._1;
        if (_debug != ((0 : stdgo.GoInt))) {
            _w.header().set(("Content-Type" : stdgo.GoString), ("text/plain; charset=utf-8" : stdgo.GoString));
        } else {
            _w.header().set(("Content-Type" : stdgo.GoString), ("application/octet-stream" : stdgo.GoString));
            _w.header().set(("Content-Disposition" : stdgo.GoString), stdgo._internal.fmt.Fmt_sprintf.sprintf(("attachment; filename=\"%s\"" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_name)))?.__copy__());
        };
        @:check2r _p.writeTo(_w, _debug);
    }
}
