package stdgo._internal.encoding.json;
@:structInit class T_codeResponse {
    @:tag("`json:\"tree\"`")
    public var tree : stdgo.Ref<stdgo._internal.encoding.json.Json_T_codeNode.T_codeNode> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_codeNode.T_codeNode>);
    @:tag("`json:\"username\"`")
    public var username : stdgo.GoString = "";
    public function new(?tree:stdgo.Ref<stdgo._internal.encoding.json.Json_T_codeNode.T_codeNode>, ?username:stdgo.GoString) {
        if (tree != null) this.tree = tree;
        if (username != null) this.username = username;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_codeResponse(tree, username);
    }
}
