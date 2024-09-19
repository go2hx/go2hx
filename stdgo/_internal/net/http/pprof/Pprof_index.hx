package stdgo._internal.net.http.pprof;
function index(_w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void {
        {
            var __tmp__ = stdgo._internal.strings.Strings_cutPrefix.cutPrefix(_r.url.path?.__copy__(), ("/debug/pprof/" : stdgo.GoString)), _name:stdgo.GoString = __tmp__._0, _found:Bool = __tmp__._1;
            if (_found) {
                if (_name != (stdgo.Go.str())) {
                    (_name : stdgo._internal.net.http.pprof.Pprof_T_handler.T_handler).serveHTTP(_w, _r);
                    return;
                };
            };
        };
        _w.header().set(("X-Content-Type-Options" : stdgo.GoString), ("nosniff" : stdgo.GoString));
        _w.header().set(("Content-Type" : stdgo.GoString), ("text/html; charset=utf-8" : stdgo.GoString));
        var _profiles:stdgo.Slice<stdgo._internal.net.http.pprof.Pprof_T_profileEntry.T_profileEntry> = (null : stdgo.Slice<stdgo._internal.net.http.pprof.Pprof_T_profileEntry.T_profileEntry>);
        for (__0 => _p in stdgo._internal.runtime.pprof.Pprof_profiles.profiles()) {
            _profiles = (_profiles.__append__(({ name : _p.name()?.__copy__(), href : _p.name()?.__copy__(), desc : (stdgo._internal.net.http.pprof.Pprof__profileDescriptions._profileDescriptions[_p.name()] ?? ("" : stdgo.GoString))?.__copy__(), count : _p.count() } : stdgo._internal.net.http.pprof.Pprof_T_profileEntry.T_profileEntry)));
        };
        for (__1 => _p in (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("cmdline" : stdgo.GoString), ("profile" : stdgo.GoString), ("trace" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            _profiles = (_profiles.__append__(({ name : _p?.__copy__(), href : _p?.__copy__(), desc : (stdgo._internal.net.http.pprof.Pprof__profileDescriptions._profileDescriptions[_p] ?? ("" : stdgo.GoString))?.__copy__() } : stdgo._internal.net.http.pprof.Pprof_T_profileEntry.T_profileEntry)));
        };
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_profiles), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (_profiles[(_i : stdgo.GoInt)].name < _profiles[(_j : stdgo.GoInt)].name : Bool);
        });
        {
            var _err = (stdgo._internal.net.http.pprof.Pprof__indexTmplExecute._indexTmplExecute(_w, _profiles) : stdgo.Error);
            if (_err != null) {
                stdgo._internal.log.Log_print.print(stdgo.Go.toInterface(_err));
            };
        };
    }
