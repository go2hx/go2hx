package stdgo._internal.net.http.pprof;
@:keep @:allow(stdgo._internal.net.http.pprof.Pprof.T_handler_asInterface) class T_handler_static_extension {
    @:keep
    @:tdfield
    static public function _serveDeltaProfile( _name:stdgo._internal.net.http.pprof.Pprof_t_handler.T_handler, _w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>, _secStr:stdgo.GoString):Void {
        @:recv var _name:stdgo._internal.net.http.pprof.Pprof_t_handler.T_handler = _name;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_secStr?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _sec:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L272"
            if (((_err != null) || (_sec <= (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L273"
                stdgo._internal.net.http.pprof.Pprof__serveerror._serveError(_w, (400 : stdgo.GoInt), ("invalid value for \"seconds\" - must be a positive integer" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L274"
                return;
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L276"
            if (!(stdgo._internal.net.http.pprof.Pprof__profilesupportsdelta._profileSupportsDelta[_name] ?? false)) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L277"
                stdgo._internal.net.http.pprof.Pprof__serveerror._serveError(_w, (400 : stdgo.GoInt), ("\"seconds\" parameter is not supported for this profile type" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L278"
                return;
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L281"
            if (stdgo._internal.net.http.pprof.Pprof__durationexceedswritetimeout._durationExceedsWriteTimeout(_r, (_sec : stdgo.GoFloat64))) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L282"
                stdgo._internal.net.http.pprof.Pprof__serveerror._serveError(_w, (400 : stdgo.GoInt), ("profile duration exceeds server\'s WriteTimeout" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L283"
                return;
            };
            var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(_r.formValue(("debug" : stdgo.GoString))?.__copy__()), _debug:stdgo.GoInt = __tmp__._0, __0:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L286"
            if (_debug != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L287"
                stdgo._internal.net.http.pprof.Pprof__serveerror._serveError(_w, (400 : stdgo.GoInt), ("seconds and debug params are incompatible" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L288"
                return;
            };
            var __tmp__ = stdgo._internal.net.http.pprof.Pprof__collectprofile._collectProfile(_p), _p0:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L291"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L292"
                stdgo._internal.net.http.pprof.Pprof__serveerror._serveError(_w, (500 : stdgo.GoInt), ("failed to collect profile" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L293"
                return;
            };
            var _t = stdgo._internal.time.Time_newtimer.newTimer(((_sec : stdgo._internal.time.Time_duration.Duration) * (1000000000i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration));
            {
                final __f__ = _t.stop;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L299"
            {
                var __select__ = true;
                var __c__0 = null;
var __c__1 = null;
                while (__select__) {
                    if ({
                        if (__c__0 == null) {
                            __c__0 = _r.context().done();
                        };
                        __c__0 != null && __c__0.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__0.__get__();
                            {
                                var _err = (_r.context().err() : stdgo.Error);
                                //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L302"
                                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.context.Context_deadlineexceeded.deadlineExceeded))) {
                                    //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L303"
                                    stdgo._internal.net.http.pprof.Pprof__serveerror._serveError(_w, (408 : stdgo.GoInt), _err.error()?.__copy__());
                                } else {
                                    //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L305"
                                    stdgo._internal.net.http.pprof.Pprof__serveerror._serveError(_w, (500 : stdgo.GoInt), _err.error()?.__copy__());
                                };
                                //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L307"
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
                    } else if ({
                        if (__c__1 == null) {
                            __c__1 = (@:checkr _t ?? throw "null pointer dereference").c;
                        };
                        __c__1 != null && __c__1.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__1.__get__();
                            {};
                        };
                    };
                    #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
                __c__0.__reset__();
__c__1.__reset__();
            };
            var __tmp__ = stdgo._internal.net.http.pprof.Pprof__collectprofile._collectProfile(_p), _p1:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L312"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L313"
                stdgo._internal.net.http.pprof.Pprof__serveerror._serveError(_w, (500 : stdgo.GoInt), ("failed to collect profile" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L314"
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
            //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L319"
            _p0.scale((-1 : stdgo.GoFloat64));
            {
                var __tmp__ = stdgo._internal.internal.profile.Profile_merge.merge((new stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>>(2, 2, ...[_p0, _p1]) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>>));
                _p1 = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L322"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L323"
                stdgo._internal.net.http.pprof.Pprof__serveerror._serveError(_w, (500 : stdgo.GoInt), ("failed to compute delta" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L324"
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
            //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L330"
            _w.header().set(("Content-Type" : stdgo.GoString), ("application/octet-stream" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L331"
            _w.header().set(("Content-Disposition" : stdgo.GoString), stdgo._internal.fmt.Fmt_sprintf.sprintf(("attachment; filename=\"%s-delta\"" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_name)))?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L332"
            _p1.write(_w);
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
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L246"
        _w.header().set(("X-Content-Type-Options" : stdgo.GoString), ("nosniff" : stdgo.GoString));
        var _p = stdgo._internal.runtime.pprof.Pprof_lookup.lookup((_name : stdgo.GoString)?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L248"
        if (({
            final value = _p;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L249"
            stdgo._internal.net.http.pprof.Pprof__serveerror._serveError(_w, (404 : stdgo.GoInt), ("Unknown profile" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L250"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L252"
        {
            var _sec = (_r.formValue(("seconds" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_sec != ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L253"
                _name._serveDeltaProfile(_w, _r, _p, _sec?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L254"
                return;
            };
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(_r.formValue(("gc" : stdgo.GoString))?.__copy__()), _gc:stdgo.GoInt = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L257"
        if (((_name == (("heap" : stdgo.GoString) : stdgo._internal.net.http.pprof.Pprof_t_handler.T_handler)) && (_gc > (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L258"
            stdgo._internal.runtime.Runtime_gc.gC();
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(_r.formValue(("debug" : stdgo.GoString))?.__copy__()), _debug:stdgo.GoInt = __tmp__._0, __1:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L261"
        if (_debug != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L262"
            _w.header().set(("Content-Type" : stdgo.GoString), ("text/plain; charset=utf-8" : stdgo.GoString));
        } else {
            //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L264"
            _w.header().set(("Content-Type" : stdgo.GoString), ("application/octet-stream" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L265"
            _w.header().set(("Content-Disposition" : stdgo.GoString), stdgo._internal.fmt.Fmt_sprintf.sprintf(("attachment; filename=\"%s\"" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_name)))?.__copy__());
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L267"
        _p.writeTo(_w, _debug);
    }
}
