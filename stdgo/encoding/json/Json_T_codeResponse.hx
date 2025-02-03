package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_codeResponse_static_extension) abstract T_codeResponse(stdgo._internal.encoding.json.Json_T_codeResponse.T_codeResponse) from stdgo._internal.encoding.json.Json_T_codeResponse.T_codeResponse to stdgo._internal.encoding.json.Json_T_codeResponse.T_codeResponse {
    public var tree(get, set) : T_codeNode;
    function get_tree():T_codeNode return this.tree;
    function set_tree(v:T_codeNode):T_codeNode {
        this.tree = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_T_codeNode.T_codeNode>);
        return v;
    }
    public var username(get, set) : String;
    function get_username():String return this.username;
    function set_username(v:String):String {
        this.username = (v : stdgo.GoString);
        return v;
    }
    public function new(?tree:T_codeNode, ?username:String) this = new stdgo._internal.encoding.json.Json_T_codeResponse.T_codeResponse((tree : stdgo.Ref<stdgo._internal.encoding.json.Json_T_codeNode.T_codeNode>), (username : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
