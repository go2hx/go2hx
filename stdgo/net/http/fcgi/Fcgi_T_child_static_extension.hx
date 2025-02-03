package stdgo.net.http.fcgi;
class T_child_static_extension {
    static public function _cleanUp(_c:T_child):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_child.T_child>);
        stdgo._internal.net.http.fcgi.Fcgi_T_child_static_extension.T_child_static_extension._cleanUp(_c);
    }
    static public function _serveRequest(_c:T_child, _req:T_request, _body:stdgo._internal.io.Io_ReadCloser.ReadCloser):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_child.T_child>);
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_request.T_request>);
        stdgo._internal.net.http.fcgi.Fcgi_T_child_static_extension.T_child_static_extension._serveRequest(_c, _req, _body);
    }
    static public function _handleRecord(_c:T_child, _rec:T_record):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_child.T_child>);
        final _rec = (_rec : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_record.T_record>);
        return stdgo._internal.net.http.fcgi.Fcgi_T_child_static_extension.T_child_static_extension._handleRecord(_c, _rec);
    }
    static public function _serve(_c:T_child):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_child.T_child>);
        stdgo._internal.net.http.fcgi.Fcgi_T_child_static_extension.T_child_static_extension._serve(_c);
    }
}
