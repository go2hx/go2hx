package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_transportRequest_static_extension) abstract T_transportRequest(stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest) from stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest to stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest {
    public var request(get, set) : Request;
    function get_request():Request return this.request;
    function set_request(v:Request):Request {
        this.request = (v : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        return v;
    }
    public function new(?request:Request) this = new stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest((request : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
