package stdgo._internal.compress.bzip2;
function _buildHuffmanNode(_t:stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_T_huffmanTree.T_huffmanTree>, _codes:stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2_T_huffmanCode.T_huffmanCode>, _level:stdgo.GoUInt32):{ var _0 : stdgo.GoUInt16; var _1 : stdgo.Error; } {
        var _nodeIndex = (0 : stdgo.GoUInt16), _err = (null : stdgo.Error);
        var _test = ((1u32 : stdgo.GoUInt32) << (((31u32 : stdgo.GoUInt32) - _level : stdgo.GoUInt32)) : stdgo.GoUInt32);
        var _firstRightIndex = (_codes.length : stdgo.GoInt);
        for (_i => _code in _codes) {
            if ((_code._code & _test : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32))) {
                _firstRightIndex = _i;
                break;
            };
        };
        var _left = (_codes.__slice__(0, _firstRightIndex) : stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2_T_huffmanCode.T_huffmanCode>);
        var _right = (_codes.__slice__(_firstRightIndex) : stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2_T_huffmanCode.T_huffmanCode>);
        if (((_left.length == (0 : stdgo.GoInt)) || (_right.length == (0 : stdgo.GoInt)) : Bool)) {
            if (((_codes.length) < (2 : stdgo.GoInt) : Bool)) {
                return { _0 : _nodeIndex = (0 : stdgo.GoUInt16), _1 : _err = stdgo.Go.asInterface((("empty Huffman tree" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_StructuralError.StructuralError)) };
            };
            if (_level == ((31u32 : stdgo.GoUInt32))) {
                return { _0 : _nodeIndex = (0 : stdgo.GoUInt16), _1 : _err = stdgo.Go.asInterface((("equal symbols in Huffman tree" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_StructuralError.StructuralError)) };
            };
            if ((_left.length) == ((0 : stdgo.GoInt))) {
                return {
                    var __tmp__ = stdgo._internal.compress.bzip2.Bzip2__buildHuffmanNode._buildHuffmanNode(_t, _right, (_level + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32));
                    _nodeIndex = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            return {
                var __tmp__ = stdgo._internal.compress.bzip2.Bzip2__buildHuffmanNode._buildHuffmanNode(_t, _left, (_level + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32));
                _nodeIndex = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        _nodeIndex = (_t._nextNode : stdgo.GoUInt16);
        var _node = (stdgo.Go.setRef(_t._nodes[(_t._nextNode : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_T_huffmanNode.T_huffmanNode>);
        _t._nextNode++;
        if ((_left.length) == ((1 : stdgo.GoInt))) {
            _node._left = (65535 : stdgo.GoUInt16);
            _node._leftValue = _left[(0 : stdgo.GoInt)]._value;
        } else {
            {
                var __tmp__ = stdgo._internal.compress.bzip2.Bzip2__buildHuffmanNode._buildHuffmanNode(_t, _left, (_level + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32));
                _node._left = __tmp__._0;
                _err = __tmp__._1;
            };
        };
        if (_err != null) {
            return { _0 : _nodeIndex, _1 : _err };
        };
        if ((_right.length) == ((1 : stdgo.GoInt))) {
            _node._right = (65535 : stdgo.GoUInt16);
            _node._rightValue = _right[(0 : stdgo.GoInt)]._value;
        } else {
            {
                var __tmp__ = stdgo._internal.compress.bzip2.Bzip2__buildHuffmanNode._buildHuffmanNode(_t, _right, (_level + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32));
                _node._right = __tmp__._0;
                _err = __tmp__._1;
            };
        };
        return { _0 : _nodeIndex, _1 : _err };
    }
