package stdgo._internal.net.http.pprof;
function _indexTmplExecute(_w:stdgo._internal.io.Io_writer.Writer, _profiles:stdgo.Slice<stdgo._internal.net.http.pprof.Pprof_t_profileentry.T_profileEntry>):stdgo.Error {
        var _b:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L422"
        _b.writeString(("<html>\n<head>\n<title>/debug/pprof/</title>\n<style>\n.profile-name{\n\tdisplay:inline-block;\n\twidth:6rem;\n}\n</style>\n</head>\n<body>\n/debug/pprof/\n<br>\n<p>Set debug=1 as a query parameter to export in legacy text format</p>\n<br>\nTypes of profiles available:\n<table>\n<thead><td>Count</td><td>Profile</td></thead>\n" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L442"
        for (__0 => _profile in _profiles) {
            var _link = (stdgo.Go.setRef(({ path : _profile.href?.__copy__(), rawQuery : ("debug=1" : stdgo.GoString) } : stdgo._internal.net.url.Url_url.URL)) : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
            //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L444"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), ("<tr><td>%d</td><td><a href=\'%s\'>%s</a></td></tr>\n" : stdgo.GoString), stdgo.Go.toInterface(_profile.count), stdgo.Go.toInterface(stdgo.Go.asInterface(_link)), stdgo.Go.toInterface(stdgo._internal.html.Html_escapestring.escapeString(_profile.name?.__copy__())));
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L447"
        _b.writeString(("</table>\n<a href=\"goroutine?debug=2\">full goroutine stack dump</a>\n<br>\n<p>\nProfile Descriptions:\n<ul>\n" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L454"
        for (__1 => _profile in _profiles) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L455"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), ("<li><div class=profile-name>%s: </div> %s</li>\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.html.Html_escapestring.escapeString(_profile.name?.__copy__())), stdgo.Go.toInterface(stdgo._internal.html.Html_escapestring.escapeString(_profile.desc?.__copy__())));
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L457"
        _b.writeString(("</ul>\n</p>\n</body>\n</html>" : stdgo.GoString));
        var __tmp__ = _w.write(_b.bytes()), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L463"
        return _err;
    }
