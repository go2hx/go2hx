package stdgo._internal.net.http;
function _http2NewPriorityWriteScheduler(_cfg:stdgo.Ref<stdgo._internal.net.http.Http_T_http2PriorityWriteSchedulerConfig.T_http2PriorityWriteSchedulerConfig>):stdgo._internal.net.http.Http_T_http2WriteScheduler.T_http2WriteScheduler {
        if ((_cfg == null || (_cfg : Dynamic).__nil__)) {
            _cfg = (stdgo.Go.setRef(({ maxClosedNodesInTree : (10 : stdgo.GoInt), maxIdleNodesInTree : (10 : stdgo.GoInt), throttleOutOfOrderWrites : false } : stdgo._internal.net.http.Http_T_http2PriorityWriteSchedulerConfig.T_http2PriorityWriteSchedulerConfig)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2PriorityWriteSchedulerConfig.T_http2PriorityWriteSchedulerConfig>);
        };
        var _ws = (stdgo.Go.setRef(({ _nodes : (({
            final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>) : stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>), _maxClosedNodesInTree : (@:checkr _cfg ?? throw "null pointer dereference").maxClosedNodesInTree, _maxIdleNodesInTree : (@:checkr _cfg ?? throw "null pointer dereference").maxIdleNodesInTree, _enableWriteThrottle : (@:checkr _cfg ?? throw "null pointer dereference").throttleOutOfOrderWrites } : stdgo._internal.net.http.Http_T_http2priorityWriteScheduler.T_http2priorityWriteScheduler)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityWriteScheduler.T_http2priorityWriteScheduler>);
        (@:checkr _ws ?? throw "null pointer dereference")._nodes[(0u32 : stdgo.GoUInt32)] = (stdgo.Go.setRef((@:checkr _ws ?? throw "null pointer dereference")._root) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>);
        if ((@:checkr _cfg ?? throw "null pointer dereference").throttleOutOfOrderWrites) {
            (@:checkr _ws ?? throw "null pointer dereference")._writeThrottleLimit = (1024 : stdgo.GoInt32);
        } else {
            (@:checkr _ws ?? throw "null pointer dereference")._writeThrottleLimit = (2147483647 : stdgo.GoInt32);
        };
        return stdgo.Go.asInterface(_ws);
    }
