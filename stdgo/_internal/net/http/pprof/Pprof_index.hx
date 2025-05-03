package stdgo._internal.net.http.pprof;
function index(_w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Void {
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L382"
        {
            var __tmp__ = stdgo._internal.strings.Strings_cutprefix.cutPrefix((@:checkr (@:checkr _r ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").path?.__copy__(), ("/debug/pprof/" : stdgo.GoString)), _name:stdgo.GoString = __tmp__._0, _found:Bool = __tmp__._1;
            if (_found) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L383"
                if (_name != ((stdgo.Go.str() : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L384"
                    (_name : stdgo._internal.net.http.pprof.Pprof_t_handler.T_handler).serveHTTP(_w, _r);
                    //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L385"
                    return;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L389"
        _w.header().set(("X-Content-Type-Options" : stdgo.GoString), ("nosniff" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L390"
        _w.header().set(("Content-Type" : stdgo.GoString), ("text/html; charset=utf-8" : stdgo.GoString));
        var _profiles:stdgo.Slice<stdgo._internal.net.http.pprof.Pprof_t_profileentry.T_profileEntry> = (null : stdgo.Slice<stdgo._internal.net.http.pprof.Pprof_t_profileentry.T_profileEntry>);
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L393"
        for (__0 => _p in stdgo._internal.runtime.pprof.Pprof_profiles.profiles()) {
            _profiles = (_profiles.__append__(({ name : _p.name()?.__copy__(), href : _p.name()?.__copy__(), desc : (stdgo._internal.net.http.pprof.Pprof__profiledescriptions._profileDescriptions[_p.name()] ?? ("" : stdgo.GoString))?.__copy__(), count : _p.count() } : stdgo._internal.net.http.pprof.Pprof_t_profileentry.T_profileEntry)) : stdgo.Slice<stdgo._internal.net.http.pprof.Pprof_t_profileentry.T_profileEntry>);
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L403"
        for (__1 => _p in (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("cmdline" : stdgo.GoString), ("profile" : stdgo.GoString), ("trace" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            _profiles = (_profiles.__append__(({ name : _p?.__copy__(), href : _p?.__copy__(), desc : (stdgo._internal.net.http.pprof.Pprof__profiledescriptions._profileDescriptions[_p] ?? ("" : stdgo.GoString))?.__copy__() } : stdgo._internal.net.http.pprof.Pprof_t_profileentry.T_profileEntry)) : stdgo.Slice<stdgo._internal.net.http.pprof.Pprof_t_profileentry.T_profileEntry>);
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L411"
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_profiles), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L412"
            return (_profiles[(_i : stdgo.GoInt)].name < _profiles[(_j : stdgo.GoInt)].name : Bool);
        });
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L415"
        {
            var _err = (stdgo._internal.net.http.pprof.Pprof__indextmplexecute._indexTmplExecute(_w, _profiles) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L416"
                stdgo._internal.log.Log_print.print(stdgo.Go.toInterface(_err));
            };
        };
    }
