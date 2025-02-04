package stdgo._internal.compress.bzip2;
@:structInit @:using(stdgo._internal.compress.bzip2.Bzip2_t_huffmantree_static_extension.T_huffmanTree_static_extension) class T_huffmanTree {
    public var _nodes : stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2_t_huffmannode.T_huffmanNode> = (null : stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2_t_huffmannode.T_huffmanNode>);
    public var _nextNode : stdgo.GoInt = 0;
    public function new(?_nodes:stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2_t_huffmannode.T_huffmanNode>, ?_nextNode:stdgo.GoInt) {
        if (_nodes != null) this._nodes = _nodes;
        if (_nextNode != null) this._nextNode = _nextNode;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_huffmanTree(_nodes, _nextNode);
    }
}
