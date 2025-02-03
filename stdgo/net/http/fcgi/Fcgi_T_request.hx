package stdgo.net.http.fcgi;
@:structInit @:using(stdgo.net.http.fcgi.Fcgi.T_request_static_extension) abstract T_request(stdgo._internal.net.http.fcgi.Fcgi_T_request.T_request) from stdgo._internal.net.http.fcgi.Fcgi_T_request.T_request to stdgo._internal.net.http.fcgi.Fcgi_T_request.T_request {
    public var _pw(get, set) : stdgo._internal.io.Io_PipeWriter.PipeWriter;
    function get__pw():stdgo._internal.io.Io_PipeWriter.PipeWriter return this._pw;
    function set__pw(v:stdgo._internal.io.Io_PipeWriter.PipeWriter):stdgo._internal.io.Io_PipeWriter.PipeWriter {
        this._pw = (v : stdgo.Ref<stdgo._internal.io.Io_PipeWriter.PipeWriter>);
        return v;
    }
    public var _reqId(get, set) : std.UInt;
    function get__reqId():std.UInt return this._reqId;
    function set__reqId(v:std.UInt):std.UInt {
        this._reqId = (v : stdgo.GoUInt16);
        return v;
    }
    public var _params(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>;
    function get__params():stdgo.GoMap<stdgo.GoString, stdgo.GoString> return this._params;
    function set__params(v:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        this._params = (v : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _rawParams(get, set) : Array<std.UInt>;
    function get__rawParams():Array<std.UInt> return [for (i in this._rawParams) i];
    function set__rawParams(v:Array<std.UInt>):Array<std.UInt> {
        this._rawParams = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _keepConn(get, set) : Bool;
    function get__keepConn():Bool return this._keepConn;
    function set__keepConn(v:Bool):Bool {
        this._keepConn = v;
        return v;
    }
    public function new(?_pw:stdgo._internal.io.Io_PipeWriter.PipeWriter, ?_reqId:std.UInt, ?_params:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?_buf:haxe.ds.Vector<std.UInt>, ?_rawParams:Array<std.UInt>, ?_keepConn:Bool) this = new stdgo._internal.net.http.fcgi.Fcgi_T_request.T_request((_pw : stdgo.Ref<stdgo._internal.io.Io_PipeWriter.PipeWriter>), (_reqId : stdgo.GoUInt16), (_params : stdgo.GoMap<stdgo.GoString, stdgo.GoString>), ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), ([for (i in _rawParams) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), _keepConn);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
