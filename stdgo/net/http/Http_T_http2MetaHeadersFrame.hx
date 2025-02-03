package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2MetaHeadersFrame_static_extension) abstract T_http2MetaHeadersFrame(stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame) from stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame to stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame {
    public var fields(get, set) : Array<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField>;
    function get_fields():Array<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField> return [for (i in this.fields) i];
    function set_fields(v:Array<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField>):Array<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField> {
        this.fields = ([for (i in v) i] : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField>);
        return v;
    }
    public var truncated(get, set) : Bool;
    function get_truncated():Bool return this.truncated;
    function set_truncated(v:Bool):Bool {
        this.truncated = v;
        return v;
    }
    public function new(?fields:Array<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField>, ?truncated:Bool) this = new stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame(([for (i in fields) i] : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField>), truncated);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
