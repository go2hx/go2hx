package stdgo._internal.compress.bzip2;
function _buildHuffmanNode(_t:stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_t_huffmantree.T_huffmanTree>, _codes:stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2_t_huffmancode.T_huffmanCode>, _level:stdgo.GoUInt32):{ var _0 : stdgo.GoUInt16; var _1 : stdgo.Error; } {
        var _nodeIndex = (0 : stdgo.GoUInt16), _err = (null : stdgo.Error);
        var _test = ((1u32 : stdgo.GoUInt32) << (((31u32 : stdgo.GoUInt32) - _level : stdgo.GoUInt32)) : stdgo.GoUInt32);
        var _firstRightIndex = (_codes.length : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/huffman.go#L168"
        for (_i => _code in _codes) {
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/huffman.go#L169"
            if ((_code._code & _test : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32))) {
                _firstRightIndex = _i;
                //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/huffman.go#L171"
                break;
            };
        };
        var _left = (_codes.__slice__(0, _firstRightIndex) : stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2_t_huffmancode.T_huffmanCode>);
        var _right = (_codes.__slice__(_firstRightIndex) : stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2_t_huffmancode.T_huffmanCode>);
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/huffman.go#L178"
        if (((_left.length == (0 : stdgo.GoInt)) || (_right.length == (0 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/huffman.go#L191"
            if (((_codes.length) < (2 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/huffman.go#L192"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoUInt16), _1 : stdgo.Go.asInterface((("empty Huffman tree" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError)) };
                    _nodeIndex = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/huffman.go#L198"
            if (_level == ((31u32 : stdgo.GoUInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/huffman.go#L203"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt16; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoUInt16), _1 : stdgo.Go.asInterface((("equal symbols in Huffman tree" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError)) };
                    _nodeIndex = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/huffman.go#L206"
            if ((_left.length) == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/huffman.go#L207"
                return stdgo._internal.compress.bzip2.Bzip2__buildhuffmannode._buildHuffmanNode(_t, _right, (_level + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32));
            };
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/huffman.go#L209"
            return stdgo._internal.compress.bzip2.Bzip2__buildhuffmannode._buildHuffmanNode(_t, _left, (_level + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32));
        };
        _nodeIndex = ((@:checkr _t ?? throw "null pointer dereference")._nextNode : stdgo.GoUInt16);
        var _node = (stdgo.Go.setRef((@:checkr _t ?? throw "null pointer dereference")._nodes[((@:checkr _t ?? throw "null pointer dereference")._nextNode : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_t_huffmannode.T_huffmanNode>);
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/huffman.go#L214"
        (@:checkr _t ?? throw "null pointer dereference")._nextNode++;
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/huffman.go#L216"
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
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/huffman.go#L224"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/huffman.go#L225"
            return { _0 : _nodeIndex, _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/huffman.go#L228"
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
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/huffman.go#L236"
        return { _0 : _nodeIndex, _1 : _err };
    }
