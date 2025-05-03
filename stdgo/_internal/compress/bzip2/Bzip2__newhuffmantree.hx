package stdgo._internal.compress.bzip2;
function _newHuffmanTree(_lengths:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.compress.bzip2.Bzip2_t_huffmantree.T_huffmanTree; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/huffman.go#L89"
        if (((_lengths.length) < (2 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/huffman.go#L90"
            throw stdgo.Go.toInterface(("newHuffmanTree: too few symbols" : stdgo.GoString));
        };
        var _t:stdgo._internal.compress.bzip2.Bzip2_t_huffmantree.T_huffmanTree = ({} : stdgo._internal.compress.bzip2.Bzip2_t_huffmantree.T_huffmanTree);
        var _pairs = (new stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2_t_huffmansymbollengthpair.T_huffmanSymbolLengthPair>((_lengths.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_lengths.length : stdgo.GoInt).toBasic() > 0 ? (_lengths.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.compress.bzip2.Bzip2_t_huffmansymbollengthpair.T_huffmanSymbolLengthPair)]) : stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2_t_huffmansymbollengthpair.T_huffmanSymbolLengthPair>);
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/huffman.go#L98"
        for (_i => _length in _lengths) {
            _pairs[(_i : stdgo.GoInt)]._value = (_i : stdgo.GoUInt16);
            _pairs[(_i : stdgo.GoInt)]._length = _length;
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/huffman.go#L103"
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_pairs), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/huffman.go#L104"
            if ((_pairs[(_i : stdgo.GoInt)]._length < _pairs[(_j : stdgo.GoInt)]._length : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/huffman.go#L105"
                return true;
            };
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/huffman.go#L107"
            if ((_pairs[(_i : stdgo.GoInt)]._length > _pairs[(_j : stdgo.GoInt)]._length : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/huffman.go#L108"
                return false;
            };
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/huffman.go#L110"
            if ((_pairs[(_i : stdgo.GoInt)]._value < _pairs[(_j : stdgo.GoInt)]._value : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/huffman.go#L111"
                return true;
            };
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/huffman.go#L113"
            return false;
        });
        var _code = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        var _length = ((32 : stdgo.GoUInt8) : stdgo.GoUInt8);
        var _codes = (new stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2_t_huffmancode.T_huffmanCode>((_lengths.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_lengths.length : stdgo.GoInt).toBasic() > 0 ? (_lengths.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.compress.bzip2.Bzip2_t_huffmancode.T_huffmanCode)]) : stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2_t_huffmancode.T_huffmanCode>);
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/huffman.go#L124"
        {
            var _i = ((_pairs.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/huffman.go#L125"
                if ((_length > _pairs[(_i : stdgo.GoInt)]._length : Bool)) {
                    _length = _pairs[(_i : stdgo.GoInt)]._length;
                };
_codes[(_i : stdgo.GoInt)]._code = _code;
_codes[(_i : stdgo.GoInt)]._codeLen = _length;
_codes[(_i : stdgo.GoInt)]._value = _pairs[(_i : stdgo.GoInt)]._value;
_code = (_code + (((1u32 : stdgo.GoUInt32) << (((32 : stdgo.GoUInt8) - _length : stdgo.GoUInt8)) : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _i--;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/huffman.go#L138"
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_codes), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/huffman.go#L139"
            return (_codes[(_i : stdgo.GoInt)]._code < _codes[(_j : stdgo.GoInt)]._code : Bool);
        });
        _t._nodes = (new stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2_t_huffmannode.T_huffmanNode>((_codes.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_codes.length : stdgo.GoInt).toBasic() > 0 ? (_codes.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.compress.bzip2.Bzip2_t_huffmannode.T_huffmanNode)]) : stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2_t_huffmannode.T_huffmanNode>);
        var __tmp__ = stdgo._internal.compress.bzip2.Bzip2__buildhuffmannode._buildHuffmanNode((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_t_huffmantree.T_huffmanTree>), _codes, (0u32 : stdgo.GoUInt32)), __0:stdgo.GoUInt16 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/huffman.go#L144"
        return { _0 : _t?.__copy__(), _1 : _err };
    }
