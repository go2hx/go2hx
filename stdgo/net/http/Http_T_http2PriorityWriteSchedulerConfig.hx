package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2PriorityWriteSchedulerConfig_static_extension) abstract T_http2PriorityWriteSchedulerConfig(stdgo._internal.net.http.Http_T_http2PriorityWriteSchedulerConfig.T_http2PriorityWriteSchedulerConfig) from stdgo._internal.net.http.Http_T_http2PriorityWriteSchedulerConfig.T_http2PriorityWriteSchedulerConfig to stdgo._internal.net.http.Http_T_http2PriorityWriteSchedulerConfig.T_http2PriorityWriteSchedulerConfig {
    public var maxClosedNodesInTree(get, set) : StdTypes.Int;
    function get_maxClosedNodesInTree():StdTypes.Int return this.maxClosedNodesInTree;
    function set_maxClosedNodesInTree(v:StdTypes.Int):StdTypes.Int {
        this.maxClosedNodesInTree = (v : stdgo.GoInt);
        return v;
    }
    public var maxIdleNodesInTree(get, set) : StdTypes.Int;
    function get_maxIdleNodesInTree():StdTypes.Int return this.maxIdleNodesInTree;
    function set_maxIdleNodesInTree(v:StdTypes.Int):StdTypes.Int {
        this.maxIdleNodesInTree = (v : stdgo.GoInt);
        return v;
    }
    public var throttleOutOfOrderWrites(get, set) : Bool;
    function get_throttleOutOfOrderWrites():Bool return this.throttleOutOfOrderWrites;
    function set_throttleOutOfOrderWrites(v:Bool):Bool {
        this.throttleOutOfOrderWrites = v;
        return v;
    }
    public function new(?maxClosedNodesInTree:StdTypes.Int, ?maxIdleNodesInTree:StdTypes.Int, ?throttleOutOfOrderWrites:Bool) this = new stdgo._internal.net.http.Http_T_http2PriorityWriteSchedulerConfig.T_http2PriorityWriteSchedulerConfig((maxClosedNodesInTree : stdgo.GoInt), (maxIdleNodesInTree : stdgo.GoInt), throttleOutOfOrderWrites);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
