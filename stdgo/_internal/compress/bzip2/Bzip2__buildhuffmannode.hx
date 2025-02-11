package stdgo._internal.compress.bzip2;
function _buildHuffmanNode(_t:stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_t_huffmantree.T_huffmanTree>, _codes:stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2_t_huffmancode.T_huffmanCode>, _level:stdgo.GoUInt32):{ var _0 : stdgo.GoUInt16; var _1 : stdgo.Error; } {
        var _nodeIndex = (0 : stdgo.GoUInt16), _err = (null : stdgo.Error);
        var _test = ((1u32 : stdgo.GoUInt32) << (((31u32 : stdgo.GoUInt32) - _level : stdgo.GoUInt32)) : stdgo.GoUInt32);
        var _firstRightIndex = (_codes.length : stdgo.GoInt);
        for (_i => _code in _codes) {
            if ((_code._code & _test : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32))) {
                _firstRightIndex = _i;
                break;
            };
        };
        var _left = (_codes.__slice__(0, _firstRightIndex) : stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2_t_huffmancode.T_huffmanCode>);
        var _right = (_codes.__slice__(_firstRightIndex) : stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2_t_huffmancode.T_huffmanCode>);
        if (((_left.length == (0 : stdgo.GoInt)) || (_right.length == (0 : stdgo.GoInt)) : Bool)) {
            if (((_codes.length) < (2 : stdgo.GoInt) : Bool)) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoUInt16), _1 : stdgo.Go.asInterface((("empty Huffman tree" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError)) };
                    _nodeIndex = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            if (_level == ((31u32 : stdgo.GoUInt32))) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoUInt16), _1 : stdgo.Go.asInterface((("equal symbols in Huffman tree" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError)) };
                    _nodeIndex = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            if ((_left.length) == ((0 : stdgo.GoInt))) {
                return {
                    final __tmp__ = stdgo._internal.compress.bzip2.Bzip2__buildhuffmannode._buildHuffmanNode(_t, _right, (_level + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32));
                    _nodeIndex = __tmp__._0;
                    _err = __tmp__._1;
                    { _0 : _nodeIndex, _1 : _err };
                };
            };
            return {
                final __tmp__ = stdgo._internal.compress.bzip2.Bzip2__buildhuffmannode._buildHuffmanNode(_t, _left, (_level + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32));
                _nodeIndex = __tmp__._0;
                _err = __tmp__._1;
                { _0 : _nodeIndex, _1 : _err };
            };
        };
        _nodeIndex = ((@:checkr _t ?? throw "null pointer dereference")._nextNode : stdgo.GoUInt16);
        var _node = (stdgo.Go.setRef((@:checkr _t ?? throw "null pointer dereference")._nodes[((@:checkr _t ?? throw "null pointer dereference")._nextNode : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_t_huffmannode.T_huffmanNode>);
        (@:checkr _t ?? throw "null pointer dereference")._nextNode++;
        if ((_left.length) == ((1 : stdgo.GoInt))) {
            (@:checkr _node ?? throw "null pointer dereference")._left = (65535 : stdgo.GoUInt16);
            (@:checkr _node ?? throw "null pointer dereference")._leftValue = _left[(0 : stdgo.GoInt)]._value;
        } else {
            {
                var __tmp__ = stdgo._internal.compress.bzip2.Bzip2__buildhuffmannode._buildHuffmanNode(_t, _left, (_level + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32));
                (@:checkr _node ?? throw "null pointer dereference")._left = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        };
        if (_err != null) {
            return { _0 : _nodeIndex, _1 : _err };
        };
        if ((_right.length) == ((1 : stdgo.GoInt))) {
            (@:checkr _node ?? throw "null pointer dereference")._right = (65535 : stdgo.GoUInt16);
            (@:checkr _node ?? throw "null pointer dereference")._rightValue = _right[(0 : stdgo.GoInt)]._value;
        } else {
            {
                var __tmp__ = stdgo._internal.compress.bzip2.Bzip2__buildhuffmannode._buildHuffmanNode(_t, _right, (_level + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32));
                (@:checkr _node ?? throw "null pointer dereference")._right = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        };
        return { _0 : _nodeIndex, _1 : _err };
    }
