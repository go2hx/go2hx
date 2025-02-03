package stdgo.compress.bzip2;
@:structInit @:using(stdgo.compress.bzip2.Bzip2.T_huffmanTree_static_extension) abstract T_huffmanTree(stdgo._internal.compress.bzip2.Bzip2_T_huffmanTree.T_huffmanTree) from stdgo._internal.compress.bzip2.Bzip2_T_huffmanTree.T_huffmanTree to stdgo._internal.compress.bzip2.Bzip2_T_huffmanTree.T_huffmanTree {
    public var _nodes(get, set) : Array<T_huffmanNode>;
    function get__nodes():Array<T_huffmanNode> return [for (i in this._nodes) i];
    function set__nodes(v:Array<T_huffmanNode>):Array<T_huffmanNode> {
        this._nodes = ([for (i in v) i] : stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2_T_huffmanNode.T_huffmanNode>);
        return v;
    }
    public var _nextNode(get, set) : StdTypes.Int;
    function get__nextNode():StdTypes.Int return this._nextNode;
    function set__nextNode(v:StdTypes.Int):StdTypes.Int {
        this._nextNode = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_nodes:Array<T_huffmanNode>, ?_nextNode:StdTypes.Int) this = new stdgo._internal.compress.bzip2.Bzip2_T_huffmanTree.T_huffmanTree(([for (i in _nodes) i] : stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2_T_huffmanNode.T_huffmanNode>), (_nextNode : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
