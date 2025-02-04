package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_t_http2prioritywriteschedulerconfig_static_extension.T_http2PriorityWriteSchedulerConfig_static_extension) class T_http2PriorityWriteSchedulerConfig {
    public var maxClosedNodesInTree : stdgo.GoInt = 0;
    public var maxIdleNodesInTree : stdgo.GoInt = 0;
    public var throttleOutOfOrderWrites : Bool = false;
    public function new(?maxClosedNodesInTree:stdgo.GoInt, ?maxIdleNodesInTree:stdgo.GoInt, ?throttleOutOfOrderWrites:Bool) {
        if (maxClosedNodesInTree != null) this.maxClosedNodesInTree = maxClosedNodesInTree;
        if (maxIdleNodesInTree != null) this.maxIdleNodesInTree = maxIdleNodesInTree;
        if (throttleOutOfOrderWrites != null) this.throttleOutOfOrderWrites = throttleOutOfOrderWrites;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2PriorityWriteSchedulerConfig(maxClosedNodesInTree, maxIdleNodesInTree, throttleOutOfOrderWrites);
    }
}
