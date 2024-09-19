package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
@:structInit @:using(_internal.runtime_test.Runtime_test_MyNode_static_extension.MyNode_static_extension) class MyNode {
    @:embedded
    public var lfnode : stdgo._internal.runtime.Runtime_LFNode.LFNode = ({} : stdgo._internal.runtime.Runtime_LFNode.LFNode);
    public var _data : stdgo.GoInt = 0;
    public function new(?lfnode:stdgo._internal.runtime.Runtime_LFNode.LFNode, ?_data:stdgo.GoInt) {
        if (lfnode != null) this.lfnode = lfnode;
        if (_data != null) this._data = _data;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new MyNode(lfnode, _data);
    }
}
