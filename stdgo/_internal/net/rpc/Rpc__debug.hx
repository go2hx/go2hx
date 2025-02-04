package stdgo._internal.net.rpc;
var _debug : stdgo.Ref<stdgo._internal.html.template.Template_template.Template> = ({
        var __f__ = stdgo._internal.html.template.Template_must.must;
        var __tmp__ = @:check2r stdgo._internal.html.template.Template_new_.new_(("RPC debug" : stdgo.GoString)).parse(("<html>\n\t<body>\n\t<title>Services</title>\n\t{{range .}}\n\t<hr>\n\tService {{.Name}}\n\t<hr>\n\t\t<table>\n\t\t<th align=center>Method</th><th align=center>Calls</th>\n\t\t{{range .Method}}\n\t\t\t<tr>\n\t\t\t<td align=left font=fixed>{{.Name}}({{.Type.ArgType}}, {{.Type.ReplyType}}) error</td>\n\t\t\t<td align=center>{{.Type.NumCalls}}</td>\n\t\t\t</tr>\n\t\t{{end}}\n\t\t</table>\n\t{{end}}\n\t</body>\n\t</html>" : stdgo.GoString));
        __f__((__tmp__._0 : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>), (__tmp__._1 : stdgo.Error));
    });
