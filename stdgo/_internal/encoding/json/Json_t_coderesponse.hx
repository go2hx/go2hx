package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_coderesponse_static_extension.T_codeResponse_static_extension) class T_codeResponse {
    @:tag("`json:\"tree\"`")
    public var tree : stdgo.Ref<stdgo._internal.encoding.json.Json_t_codenode.T_codeNode> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_codenode.T_codeNode>);
    @:tag("`json:\"username\"`")
    public var username : stdgo.GoString = "";
    public function new(?tree:stdgo.Ref<stdgo._internal.encoding.json.Json_t_codenode.T_codeNode>, ?username:stdgo.GoString) {
        if (tree != null) this.tree = tree;
        if (username != null) this.username = username;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_codeResponse(tree, username);
    }
}
