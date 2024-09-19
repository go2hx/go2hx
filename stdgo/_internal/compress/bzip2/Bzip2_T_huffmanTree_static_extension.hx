package stdgo._internal.compress.bzip2;
@:keep @:allow(stdgo._internal.compress.bzip2.Bzip2.T_huffmanTree_asInterface) class T_huffmanTree_static_extension {
    @:keep
    static public function decode( _t:stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_T_huffmanTree.T_huffmanTree>, _br:stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_T_bitReader.T_bitReader>):stdgo.GoUInt16 {
        @:recv var _t:stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_T_huffmanTree.T_huffmanTree> = _t;
        var _v = (0 : stdgo.GoUInt16);
        var _nodeIndex = ((0 : stdgo.GoUInt16) : stdgo.GoUInt16);
        while (true) {
            var _node = (stdgo.Go.setRef(_t._nodes[(_nodeIndex : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_T_huffmanNode.T_huffmanNode>);
            var _bit:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
            if ((_br._bits > (0u32 : stdgo.GoUInt) : Bool)) {
                _br._bits--;
                _bit = (((_br._n >> ((_br._bits & (63u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64) : stdgo.GoUInt16) & (1 : stdgo.GoUInt16) : stdgo.GoUInt16);
            } else {
                _bit = (_br.readBits((1u32 : stdgo.GoUInt)) : stdgo.GoUInt16);
            };
            var __0 = (_node._left : stdgo.GoUInt16), __1 = (_node._right : stdgo.GoUInt16);
var _r = __1, _l = __0;
            if (_bit == ((1 : stdgo.GoUInt16))) {
                _nodeIndex = _l;
            } else {
                _nodeIndex = _r;
            };
            if (_nodeIndex == ((65535 : stdgo.GoUInt16))) {
                var __0 = (_node._leftValue : stdgo.GoUInt16), __1 = (_node._rightValue : stdgo.GoUInt16);
var _r = __1, _l = __0;
                if (_bit == ((1 : stdgo.GoUInt16))) {
                    _v = _l;
                } else {
                    _v = _r;
                };
                return _v;
            };
        };
    }
}