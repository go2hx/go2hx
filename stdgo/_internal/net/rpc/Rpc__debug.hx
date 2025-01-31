package stdgo._internal.net.rpc;
import stdgo._internal.errors.Errors;
import stdgo._internal.html.template.Template;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.encoding.gob.Gob;
import stdgo._internal.net.Net;
import stdgo._internal.io.Io;
import stdgo._internal.net.http.Http;
import stdgo._internal.go.token.Token;
import stdgo._internal.log.Log;
import stdgo._internal.sort.Sort;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
var _debug : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template> = ({
        var __f__ = stdgo._internal.html.template.Template_must.must;
        var __tmp__ = @:check2r stdgo._internal.html.template.Template_new_.new_(("RPC debug" : stdgo.GoString)).parse(("<html>\n\t<body>\n\t<title>Services</title>\n\t{{range .}}\n\t<hr>\n\tService {{.Name}}\n\t<hr>\n\t\t<table>\n\t\t<th align=center>Method</th><th align=center>Calls</th>\n\t\t{{range .Method}}\n\t\t\t<tr>\n\t\t\t<td align=left font=fixed>{{.Name}}({{.Type.ArgType}}, {{.Type.ReplyType}}) error</td>\n\t\t\t<td align=center>{{.Type.NumCalls}}</td>\n\t\t\t</tr>\n\t\t{{end}}\n\t\t</table>\n\t{{end}}\n\t</body>\n\t</html>" : stdgo.GoString));
        __f__((__tmp__._0 : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>), (__tmp__._1 : stdgo.Error));
    });
