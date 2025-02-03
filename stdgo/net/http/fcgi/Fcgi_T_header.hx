package stdgo.net.http.fcgi;
@:structInit @:using(stdgo.net.http.fcgi.Fcgi.T_header_static_extension) abstract T_header(stdgo._internal.net.http.fcgi.Fcgi_T_header.T_header) from stdgo._internal.net.http.fcgi.Fcgi_T_header.T_header to stdgo._internal.net.http.fcgi.Fcgi_T_header.T_header {
    public var version(get, set) : std.UInt;
    function get_version():std.UInt return this.version;
    function set_version(v:std.UInt):std.UInt {
        this.version = (v : stdgo.GoUInt8);
        return v;
    }
    public var type(get, set) : T_recType;
    function get_type():T_recType return this.type;
    function set_type(v:T_recType):T_recType {
        this.type = v;
        return v;
    }
    public var id(get, set) : std.UInt;
    function get_id():std.UInt return this.id;
    function set_id(v:std.UInt):std.UInt {
        this.id = (v : stdgo.GoUInt16);
        return v;
    }
    public var contentLength(get, set) : std.UInt;
    function get_contentLength():std.UInt return this.contentLength;
    function set_contentLength(v:std.UInt):std.UInt {
        this.contentLength = (v : stdgo.GoUInt16);
        return v;
    }
    public var paddingLength(get, set) : std.UInt;
    function get_paddingLength():std.UInt return this.paddingLength;
    function set_paddingLength(v:std.UInt):std.UInt {
        this.paddingLength = (v : stdgo.GoUInt8);
        return v;
    }
    public var reserved(get, set) : std.UInt;
    function get_reserved():std.UInt return this.reserved;
    function set_reserved(v:std.UInt):std.UInt {
        this.reserved = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?version:std.UInt, ?type:T_recType, ?id:std.UInt, ?contentLength:std.UInt, ?paddingLength:std.UInt, ?reserved:std.UInt) this = new stdgo._internal.net.http.fcgi.Fcgi_T_header.T_header((version : stdgo.GoUInt8), type, (id : stdgo.GoUInt16), (contentLength : stdgo.GoUInt16), (paddingLength : stdgo.GoUInt8), (reserved : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
