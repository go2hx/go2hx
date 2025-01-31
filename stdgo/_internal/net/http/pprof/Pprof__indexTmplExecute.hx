package stdgo._internal.net.http.pprof;
import stdgo._internal.net.http.Http;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.os.Os;
import stdgo._internal.time.Time;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.runtime.pprof.Pprof;
import stdgo._internal.runtime.trace_.Trace_;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.io.Io;
import stdgo._internal.internal.profile.Profile;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
import stdgo._internal.html.Html;
import stdgo._internal.context.Context;
function _indexTmplExecute(_w:stdgo._internal.io.Io_Writer.Writer, _profiles:stdgo.Slice<stdgo._internal.net.http.pprof.Pprof_T_profileEntry.T_profileEntry>):stdgo.Error {
        var _b:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        @:check2 _b.writeString(("<html>\n<head>\n<title>/debug/pprof/</title>\n<style>\n.profile-name{\n\tdisplay:inline-block;\n\twidth:6rem;\n}\n</style>\n</head>\n<body>\n/debug/pprof/\n<br>\n<p>Set debug=1 as a query parameter to export in legacy text format</p>\n<br>\nTypes of profiles available:\n<table>\n<thead><td>Count</td><td>Profile</td></thead>\n" : stdgo.GoString));
        for (__0 => _profile in _profiles) {
            var _link = (stdgo.Go.setRef(({ path : _profile.href?.__copy__(), rawQuery : ("debug=1" : stdgo.GoString) } : stdgo._internal.net.url.Url_URL.URL)) : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), ("<tr><td>%d</td><td><a href=\'%s\'>%s</a></td></tr>\n" : stdgo.GoString), stdgo.Go.toInterface(_profile.count), stdgo.Go.toInterface(stdgo.Go.asInterface(_link)), stdgo.Go.toInterface(stdgo._internal.html.Html_escapeString.escapeString(_profile.name?.__copy__())));
        };
        @:check2 _b.writeString(("</table>\n<a href=\"goroutine?debug=2\">full goroutine stack dump</a>\n<br>\n<p>\nProfile Descriptions:\n<ul>\n" : stdgo.GoString));
        for (__1 => _profile in _profiles) {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), ("<li><div class=profile-name>%s: </div> %s</li>\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.html.Html_escapeString.escapeString(_profile.name?.__copy__())), stdgo.Go.toInterface(stdgo._internal.html.Html_escapeString.escapeString(_profile.desc?.__copy__())));
        };
        @:check2 _b.writeString(("</ul>\n</p>\n</body>\n</html>" : stdgo.GoString));
        var __tmp__ = _w.write(@:check2 _b.bytes()), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
