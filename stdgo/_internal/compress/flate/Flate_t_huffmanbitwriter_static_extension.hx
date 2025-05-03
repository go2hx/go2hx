package stdgo._internal.compress.flate;
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_huffmanBitWriter_asInterface) class T_huffmanBitWriter_static_extension {
    @:keep
    @:tdfield
    static public function _writeBlockHuff( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter>, _eof:Bool, _input:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter> = _w;
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L619"
        if ((@:checkr _w ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L620"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L624"
        for (_i => _ in (@:checkr _w ?? throw "null pointer dereference")._literalFreq) {
            (@:checkr _w ?? throw "null pointer dereference")._literalFreq[(_i : stdgo.GoInt)] = (0 : stdgo.GoInt32);
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L629"
        stdgo._internal.compress.flate.Flate__histogram._histogram(_input, (@:checkr _w ?? throw "null pointer dereference")._literalFreq);
        (@:checkr _w ?? throw "null pointer dereference")._literalFreq[(256 : stdgo.GoInt)] = (1 : stdgo.GoInt32);
        {};
        (@:checkr _w ?? throw "null pointer dereference")._offsetFreq[(0 : stdgo.GoInt)] = (1 : stdgo.GoInt32);
        {};
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L637"
        (@:checkr _w ?? throw "null pointer dereference")._literalEncoding._generate((@:checkr _w ?? throw "null pointer dereference")._literalFreq, (15 : stdgo.GoInt32));
        var _numCodegens:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L645"
        _w._generateCodegen((257 : stdgo.GoInt), (1 : stdgo.GoInt), (@:checkr _w ?? throw "null pointer dereference")._literalEncoding, stdgo._internal.compress.flate.Flate__huffoffset._huffOffset);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L646"
        (@:checkr _w ?? throw "null pointer dereference")._codegenEncoding._generate(((@:checkr _w ?? throw "null pointer dereference")._codegenFreq.__slice__(0) : stdgo.Slice<stdgo.GoInt32>), (7 : stdgo.GoInt32));
        var __tmp__ = _w._dynamicSize((@:checkr _w ?? throw "null pointer dereference")._literalEncoding, stdgo._internal.compress.flate.Flate__huffoffset._huffOffset, (0 : stdgo.GoInt)), _size:stdgo.GoInt = __tmp__._0, _numCodegens:stdgo.GoInt = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L650"
        {
            var __tmp__ = _w._storedSize(_input), _ssize:stdgo.GoInt = __tmp__._0, _storable:Bool = __tmp__._1;
            if ((_storable && (_ssize < ((_size + (_size >> (4i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt)) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L651"
                _w._writeStoredHeader((_input.length), _eof);
                //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L652"
                _w._writeBytes(_input);
                //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L653"
                return;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L657"
        _w._writeDynamicHeader((257 : stdgo.GoInt), (1 : stdgo.GoInt), _numCodegens, _eof);
        var _encoding = ((@:checkr (@:checkr _w ?? throw "null pointer dereference")._literalEncoding ?? throw "null pointer dereference")._codes.__slice__(0, (257 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_hcode.T_hcode>);
        var _n = ((@:checkr _w ?? throw "null pointer dereference")._nbytes : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L660"
        for (__0 => _t in _input) {
            var _c = (_encoding[(_t : stdgo.GoInt)] : stdgo._internal.compress.flate.Flate_t_hcode.T_hcode);
            (@:checkr _w ?? throw "null pointer dereference")._bits = ((@:checkr _w ?? throw "null pointer dereference")._bits | (((_c._code : stdgo.GoUInt64) << (@:checkr _w ?? throw "null pointer dereference")._nbits : stdgo.GoUInt64)) : stdgo.GoUInt64);
            (@:checkr _w ?? throw "null pointer dereference")._nbits = ((@:checkr _w ?? throw "null pointer dereference")._nbits + ((_c._len : stdgo.GoUInt)) : stdgo.GoUInt);
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L665"
            if (((@:checkr _w ?? throw "null pointer dereference")._nbits < (48u32 : stdgo.GoUInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L666"
                continue;
            };
            var _bits = ((@:checkr _w ?? throw "null pointer dereference")._bits : stdgo.GoUInt64);
            (@:checkr _w ?? throw "null pointer dereference")._bits = ((@:checkr _w ?? throw "null pointer dereference")._bits >> ((48i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            (@:checkr _w ?? throw "null pointer dereference")._nbits = ((@:checkr _w ?? throw "null pointer dereference")._nbits - ((48u32 : stdgo.GoUInt)) : stdgo.GoUInt);
            var _bytes = ((@:checkr _w ?? throw "null pointer dereference")._bytes.__slice__(_n, (_n + (6 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _bytes[(0 : stdgo.GoInt)] = (_bits : stdgo.GoUInt8);
            _bytes[(1 : stdgo.GoInt)] = ((_bits >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
            _bytes[(2 : stdgo.GoInt)] = ((_bits >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
            _bytes[(3 : stdgo.GoInt)] = ((_bits >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
            _bytes[(4 : stdgo.GoInt)] = ((_bits >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
            _bytes[(5 : stdgo.GoInt)] = ((_bits >> (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
            _n = (_n + ((6 : stdgo.GoInt)) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L680"
            if ((_n < (240 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L681"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L683"
            _w._write(((@:checkr _w ?? throw "null pointer dereference")._bytes.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L684"
            if ((@:checkr _w ?? throw "null pointer dereference")._err != null) {
                //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L685"
                return;
            };
            _n = (0 : stdgo.GoInt);
        };
        (@:checkr _w ?? throw "null pointer dereference")._nbytes = _n;
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L690"
        _w._writeCode(_encoding[(256 : stdgo.GoInt)]);
    }
    @:keep
    @:tdfield
    static public function _writeTokens( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter>, _tokens:stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>, _leCodes:stdgo.Slice<stdgo._internal.compress.flate.Flate_t_hcode.T_hcode>, _oeCodes:stdgo.Slice<stdgo._internal.compress.flate.Flate_t_hcode.T_hcode>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter> = _w;
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L575"
        if ((@:checkr _w ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L576"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L578"
        for (__0 => _t in _tokens) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L579"
            if ((_t < (1073741824u32 : stdgo._internal.compress.flate.Flate_t_token.T_token) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L580"
                _w._writeCode(_leCodes[(_t._literal() : stdgo.GoInt)]);
                //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L581"
                continue;
            };
            var _length = (_t._length() : stdgo.GoUInt32);
            var _lengthCode = (stdgo._internal.compress.flate.Flate__lengthcode._lengthCode(_length) : stdgo.GoUInt32);
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L586"
            _w._writeCode(_leCodes[((_lengthCode + (257u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)]);
            var _extraLengthBits = (stdgo._internal.compress.flate.Flate__lengthextrabits._lengthExtraBits[(_lengthCode : stdgo.GoInt)] : stdgo.GoUInt);
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L588"
            if ((_extraLengthBits > (0u32 : stdgo.GoUInt) : Bool)) {
                var _extraLength = ((_length - stdgo._internal.compress.flate.Flate__lengthbase._lengthBase[(_lengthCode : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoInt32);
                //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L590"
                _w._writeBits(_extraLength, _extraLengthBits);
            };
            var _offset = (_t._offset() : stdgo.GoUInt32);
            var _offsetCode = (stdgo._internal.compress.flate.Flate__offsetcode._offsetCode(_offset) : stdgo.GoUInt32);
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L595"
            _w._writeCode(_oeCodes[(_offsetCode : stdgo.GoInt)]);
            var _extraOffsetBits = (stdgo._internal.compress.flate.Flate__offsetextrabits._offsetExtraBits[(_offsetCode : stdgo.GoInt)] : stdgo.GoUInt);
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L597"
            if ((_extraOffsetBits > (0u32 : stdgo.GoUInt) : Bool)) {
                var _extraOffset = ((_offset - stdgo._internal.compress.flate.Flate__offsetbase._offsetBase[(_offsetCode : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoInt32);
                //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L599"
                _w._writeBits(_extraOffset, _extraOffsetBits);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _indexTokens( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter>, _tokens:stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter> = _w;
        var _numLiterals = (0 : stdgo.GoInt), _numOffsets = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L533"
        for (_i => _ in (@:checkr _w ?? throw "null pointer dereference")._literalFreq) {
            (@:checkr _w ?? throw "null pointer dereference")._literalFreq[(_i : stdgo.GoInt)] = (0 : stdgo.GoInt32);
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L536"
        for (_i => _ in (@:checkr _w ?? throw "null pointer dereference")._offsetFreq) {
            (@:checkr _w ?? throw "null pointer dereference")._offsetFreq[(_i : stdgo.GoInt)] = (0 : stdgo.GoInt32);
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L540"
        for (__0 => _t in _tokens) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L541"
            if ((_t < (1073741824u32 : stdgo._internal.compress.flate.Flate_t_token.T_token) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L542"
                (@:checkr _w ?? throw "null pointer dereference")._literalFreq[(_t._literal() : stdgo.GoInt)]++;
                //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L543"
                continue;
            };
            var _length = (_t._length() : stdgo.GoUInt32);
            var _offset = (_t._offset() : stdgo.GoUInt32);
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L547"
            (@:checkr _w ?? throw "null pointer dereference")._literalFreq[(((257u32 : stdgo.GoUInt32) + stdgo._internal.compress.flate.Flate__lengthcode._lengthCode(_length) : stdgo.GoUInt32) : stdgo.GoInt)]++;
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L548"
            (@:checkr _w ?? throw "null pointer dereference")._offsetFreq[(stdgo._internal.compress.flate.Flate__offsetcode._offsetCode(_offset) : stdgo.GoInt)]++;
        };
        _numLiterals = ((@:checkr _w ?? throw "null pointer dereference")._literalFreq.length);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L553"
        while ((@:checkr _w ?? throw "null pointer dereference")._literalFreq[(_numLiterals - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((0 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L554"
            _numLiterals--;
        };
        _numOffsets = ((@:checkr _w ?? throw "null pointer dereference")._offsetFreq.length);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L558"
        while (((_numOffsets > (0 : stdgo.GoInt) : Bool) && ((@:checkr _w ?? throw "null pointer dereference")._offsetFreq[(_numOffsets - (1 : stdgo.GoInt) : stdgo.GoInt)] == (0 : stdgo.GoInt32)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L559"
            _numOffsets--;
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L561"
        if (_numOffsets == ((0 : stdgo.GoInt))) {
            (@:checkr _w ?? throw "null pointer dereference")._offsetFreq[(0 : stdgo.GoInt)] = (1 : stdgo.GoInt32);
            _numOffsets = (1 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L567"
        (@:checkr _w ?? throw "null pointer dereference")._literalEncoding._generate((@:checkr _w ?? throw "null pointer dereference")._literalFreq, (15 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L568"
        (@:checkr _w ?? throw "null pointer dereference")._offsetEncoding._generate((@:checkr _w ?? throw "null pointer dereference")._offsetFreq, (15 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L569"
        return { _0 : _numLiterals, _1 : _numOffsets };
    }
    @:keep
    @:tdfield
    static public function _writeBlockDynamic( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter>, _tokens:stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>, _eof:Bool, _input:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter> = _w;
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L501"
        if ((@:checkr _w ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L502"
            return;
        };
        _tokens = (_tokens.__append__((256u32 : stdgo._internal.compress.flate.Flate_t_token.T_token)) : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>);
        var __tmp__ = _w._indexTokens(_tokens), _numLiterals:stdgo.GoInt = __tmp__._0, _numOffsets:stdgo.GoInt = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L510"
        _w._generateCodegen(_numLiterals, _numOffsets, (@:checkr _w ?? throw "null pointer dereference")._literalEncoding, (@:checkr _w ?? throw "null pointer dereference")._offsetEncoding);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L511"
        (@:checkr _w ?? throw "null pointer dereference")._codegenEncoding._generate(((@:checkr _w ?? throw "null pointer dereference")._codegenFreq.__slice__(0) : stdgo.Slice<stdgo.GoInt32>), (7 : stdgo.GoInt32));
        var __tmp__ = _w._dynamicSize((@:checkr _w ?? throw "null pointer dereference")._literalEncoding, (@:checkr _w ?? throw "null pointer dereference")._offsetEncoding, (0 : stdgo.GoInt)), _size:stdgo.GoInt = __tmp__._0, _numCodegens:stdgo.GoInt = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L515"
        {
            var __tmp__ = _w._storedSize(_input), _ssize:stdgo.GoInt = __tmp__._0, _storable:Bool = __tmp__._1;
            if ((_storable && (_ssize < ((_size + (_size >> (4i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt)) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L516"
                _w._writeStoredHeader((_input.length), _eof);
                //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L517"
                _w._writeBytes(_input);
                //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L518"
                return;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L522"
        _w._writeDynamicHeader(_numLiterals, _numOffsets, _numCodegens, _eof);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L525"
        _w._writeTokens(_tokens, (@:checkr (@:checkr _w ?? throw "null pointer dereference")._literalEncoding ?? throw "null pointer dereference")._codes, (@:checkr (@:checkr _w ?? throw "null pointer dereference")._offsetEncoding ?? throw "null pointer dereference")._codes);
    }
    @:keep
    @:tdfield
    static public function _writeBlock( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter>, _tokens:stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>, _eof:Bool, _input:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter> = _w;
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L432"
        if ((@:checkr _w ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L433"
            return;
        };
        _tokens = (_tokens.__append__((256u32 : stdgo._internal.compress.flate.Flate_t_token.T_token)) : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>);
        var __tmp__ = _w._indexTokens(_tokens), _numLiterals:stdgo.GoInt = __tmp__._0, _numOffsets:stdgo.GoInt = __tmp__._1;
        var _extraBits:stdgo.GoInt = (0 : stdgo.GoInt);
        var __tmp__ = _w._storedSize(_input), _storedSize:stdgo.GoInt = __tmp__._0, _storable:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L441"
        if (_storable) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L446"
            {
                var _lengthCode = (265 : stdgo.GoInt);
                while ((_lengthCode < _numLiterals : Bool)) {
                    _extraBits = (_extraBits + ((((@:checkr _w ?? throw "null pointer dereference")._literalFreq[(_lengthCode : stdgo.GoInt)] : stdgo.GoInt) * (stdgo._internal.compress.flate.Flate__lengthextrabits._lengthExtraBits[(_lengthCode - (257 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                    _lengthCode++;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L450"
            {
                var _offsetCode = (4 : stdgo.GoInt);
                while ((_offsetCode < _numOffsets : Bool)) {
                    _extraBits = (_extraBits + ((((@:checkr _w ?? throw "null pointer dereference")._offsetFreq[(_offsetCode : stdgo.GoInt)] : stdgo.GoInt) * (stdgo._internal.compress.flate.Flate__offsetextrabits._offsetExtraBits[(_offsetCode : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                    _offsetCode++;
                };
            };
        };
        var _literalEncoding = stdgo._internal.compress.flate.Flate__fixedliteralencoding._fixedLiteralEncoding;
        var _offsetEncoding = stdgo._internal.compress.flate.Flate__fixedoffsetencoding._fixedOffsetEncoding;
        var _size = _w._fixedSize(_extraBits);
        var _numCodegens:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L467"
        _w._generateCodegen(_numLiterals, _numOffsets, (@:checkr _w ?? throw "null pointer dereference")._literalEncoding, (@:checkr _w ?? throw "null pointer dereference")._offsetEncoding);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L468"
        (@:checkr _w ?? throw "null pointer dereference")._codegenEncoding._generate(((@:checkr _w ?? throw "null pointer dereference")._codegenFreq.__slice__(0) : stdgo.Slice<stdgo.GoInt32>), (7 : stdgo.GoInt32));
        var __tmp__ = _w._dynamicSize((@:checkr _w ?? throw "null pointer dereference")._literalEncoding, (@:checkr _w ?? throw "null pointer dereference")._offsetEncoding, _extraBits), _dynamicSize:stdgo.GoInt = __tmp__._0, _numCodegens:stdgo.GoInt = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L471"
        if ((_dynamicSize < _size : Bool)) {
            _size = _dynamicSize;
            _literalEncoding = (@:checkr _w ?? throw "null pointer dereference")._literalEncoding;
            _offsetEncoding = (@:checkr _w ?? throw "null pointer dereference")._offsetEncoding;
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L478"
        if ((_storable && (_storedSize < _size : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L479"
            _w._writeStoredHeader((_input.length), _eof);
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L480"
            _w._writeBytes(_input);
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L481"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L485"
        if (_literalEncoding == (stdgo._internal.compress.flate.Flate__fixedliteralencoding._fixedLiteralEncoding)) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L486"
            _w._writeFixedHeader(_eof);
        } else {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L488"
            _w._writeDynamicHeader(_numLiterals, _numOffsets, _numCodegens, _eof);
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L492"
        _w._writeTokens(_tokens, (@:checkr _literalEncoding ?? throw "null pointer dereference")._codes, (@:checkr _offsetEncoding ?? throw "null pointer dereference")._codes);
    }
    @:keep
    @:tdfield
    static public function _writeFixedHeader( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter>, _isEof:Bool):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter> = _w;
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L415"
        if ((@:checkr _w ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L416"
            return;
        };
        var _value:stdgo.GoInt32 = (2 : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L420"
        if (_isEof) {
            _value = (3 : stdgo.GoInt32);
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L423"
        _w._writeBits(_value, (3u32 : stdgo.GoUInt));
    }
    @:keep
    @:tdfield
    static public function _writeStoredHeader( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter>, _length:stdgo.GoInt, _isEof:Bool):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter> = _w;
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L401"
        if ((@:checkr _w ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L402"
            return;
        };
        var _flag:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L405"
        if (_isEof) {
            _flag = (1 : stdgo.GoInt32);
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L408"
        _w._writeBits(_flag, (3u32 : stdgo.GoUInt));
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L409"
        _w._flush();
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L410"
        _w._writeBits((_length : stdgo.GoInt32), (16u32 : stdgo.GoUInt));
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L411"
        _w._writeBits((-1 ^ (_length : stdgo.GoUInt16) : stdgo.GoInt32), (16u32 : stdgo.GoUInt));
    }
    @:keep
    @:tdfield
    static public function _writeDynamicHeader( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter>, _numLiterals:stdgo.GoInt, _numOffsets:stdgo.GoInt, _numCodegens:stdgo.GoInt, _isEof:Bool):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter> = _w;
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L360"
        if ((@:checkr _w ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L361"
            return;
        };
        var _firstBits:stdgo.GoInt32 = (4 : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L364"
        if (_isEof) {
            _firstBits = (5 : stdgo.GoInt32);
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L367"
        _w._writeBits(_firstBits, (3u32 : stdgo.GoUInt));
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L368"
        _w._writeBits(((_numLiterals - (257 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt32), (5u32 : stdgo.GoUInt));
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L369"
        _w._writeBits(((_numOffsets - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt32), (5u32 : stdgo.GoUInt));
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L370"
        _w._writeBits(((_numCodegens - (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt32), (4u32 : stdgo.GoUInt));
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L372"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _numCodegens : Bool)) {
                var _value = ((@:checkr (@:checkr _w ?? throw "null pointer dereference")._codegenEncoding ?? throw "null pointer dereference")._codes[(stdgo._internal.compress.flate.Flate__codegenorder._codegenOrder[(_i : stdgo.GoInt)] : stdgo.GoInt)]._len : stdgo.GoUInt);
//"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L374"
                _w._writeBits((_value : stdgo.GoInt32), (3u32 : stdgo.GoUInt));
                _i++;
            };
        };
        var _i = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L378"
        while (true) {
            var _codeWord:stdgo.GoInt = ((@:checkr _w ?? throw "null pointer dereference")._codegen[(_i : stdgo.GoInt)] : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L380"
            _i++;
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L381"
            if (_codeWord == ((255 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L382"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L384"
            _w._writeCode((@:checkr (@:checkr _w ?? throw "null pointer dereference")._codegenEncoding ?? throw "null pointer dereference")._codes[((_codeWord : stdgo.GoUInt32) : stdgo.GoInt)]);
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L386"
            {
                final __value__ = _codeWord;
                if (__value__ == ((16 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L388"
                    _w._writeBits(((@:checkr _w ?? throw "null pointer dereference")._codegen[(_i : stdgo.GoInt)] : stdgo.GoInt32), (2u32 : stdgo.GoUInt));
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L389"
                    _i++;
                } else if (__value__ == ((17 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L391"
                    _w._writeBits(((@:checkr _w ?? throw "null pointer dereference")._codegen[(_i : stdgo.GoInt)] : stdgo.GoInt32), (3u32 : stdgo.GoUInt));
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L392"
                    _i++;
                } else if (__value__ == ((18 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L394"
                    _w._writeBits(((@:checkr _w ?? throw "null pointer dereference")._codegen[(_i : stdgo.GoInt)] : stdgo.GoInt32), (7u32 : stdgo.GoUInt));
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L395"
                    _i++;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _writeCode( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter>, _c:stdgo._internal.compress.flate.Flate_t_hcode.T_hcode):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter> = _w;
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L328"
        if ((@:checkr _w ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L329"
            return;
        };
        (@:checkr _w ?? throw "null pointer dereference")._bits = ((@:checkr _w ?? throw "null pointer dereference")._bits | (((_c._code : stdgo.GoUInt64) << (@:checkr _w ?? throw "null pointer dereference")._nbits : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _w ?? throw "null pointer dereference")._nbits = ((@:checkr _w ?? throw "null pointer dereference")._nbits + ((_c._len : stdgo.GoUInt)) : stdgo.GoUInt);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L333"
        if (((@:checkr _w ?? throw "null pointer dereference")._nbits >= (48u32 : stdgo.GoUInt) : Bool)) {
            var _bits = ((@:checkr _w ?? throw "null pointer dereference")._bits : stdgo.GoUInt64);
            (@:checkr _w ?? throw "null pointer dereference")._bits = ((@:checkr _w ?? throw "null pointer dereference")._bits >> ((48i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            (@:checkr _w ?? throw "null pointer dereference")._nbits = ((@:checkr _w ?? throw "null pointer dereference")._nbits - ((48u32 : stdgo.GoUInt)) : stdgo.GoUInt);
            var _n = ((@:checkr _w ?? throw "null pointer dereference")._nbytes : stdgo.GoInt);
            var _bytes = ((@:checkr _w ?? throw "null pointer dereference")._bytes.__slice__(_n, (_n + (6 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _bytes[(0 : stdgo.GoInt)] = (_bits : stdgo.GoUInt8);
            _bytes[(1 : stdgo.GoInt)] = ((_bits >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
            _bytes[(2 : stdgo.GoInt)] = ((_bits >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
            _bytes[(3 : stdgo.GoInt)] = ((_bits >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
            _bytes[(4 : stdgo.GoInt)] = ((_bits >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
            _bytes[(5 : stdgo.GoInt)] = ((_bits >> (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
            _n = (_n + ((6 : stdgo.GoInt)) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L346"
            if ((_n >= (240 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L347"
                _w._write(((@:checkr _w ?? throw "null pointer dereference")._bytes.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
                _n = (0 : stdgo.GoInt);
            };
            (@:checkr _w ?? throw "null pointer dereference")._nbytes = _n;
        };
    }
    @:keep
    @:tdfield
    static public function _storedSize( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter>, _in:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter> = _w;
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L318"
        if (_in == null) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L319"
            return { _0 : (0 : stdgo.GoInt), _1 : false };
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L321"
        if (((_in.length) <= (65535 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L322"
            return { _0 : ((((_in.length) + (5 : stdgo.GoInt) : stdgo.GoInt)) * (8 : stdgo.GoInt) : stdgo.GoInt), _1 : true };
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L324"
        return { _0 : (0 : stdgo.GoInt), _1 : false };
    }
    @:keep
    @:tdfield
    static public function _fixedSize( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter>, _extraBits:stdgo.GoInt):stdgo.GoInt {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter> = _w;
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L308"
        return ((((3 : stdgo.GoInt) + stdgo._internal.compress.flate.Flate__fixedliteralencoding._fixedLiteralEncoding._bitLength((@:checkr _w ?? throw "null pointer dereference")._literalFreq) : stdgo.GoInt) + stdgo._internal.compress.flate.Flate__fixedoffsetencoding._fixedOffsetEncoding._bitLength((@:checkr _w ?? throw "null pointer dereference")._offsetFreq) : stdgo.GoInt) + _extraBits : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _dynamicSize( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter>, _litEnc:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder>, _offEnc:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder>, _extraBits:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter> = _w;
        var _size = (0 : stdgo.GoInt), _numCodegens = (0 : stdgo.GoInt);
        _numCodegens = ((@:checkr _w ?? throw "null pointer dereference")._codegenFreq.length);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L290"
        while (((_numCodegens > (4 : stdgo.GoInt) : Bool) && ((@:checkr _w ?? throw "null pointer dereference")._codegenFreq[(stdgo._internal.compress.flate.Flate__codegenorder._codegenOrder[(_numCodegens - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt)] == (0 : stdgo.GoInt32)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L291"
            _numCodegens--;
        };
        var _header = ((((((17 : stdgo.GoInt) + (((3 : stdgo.GoInt) * _numCodegens : stdgo.GoInt)) : stdgo.GoInt) + (@:checkr _w ?? throw "null pointer dereference")._codegenEncoding._bitLength(((@:checkr _w ?? throw "null pointer dereference")._codegenFreq.__slice__(0) : stdgo.Slice<stdgo.GoInt32>)) : stdgo.GoInt) + (((@:checkr _w ?? throw "null pointer dereference")._codegenFreq[(16 : stdgo.GoInt)] : stdgo.GoInt) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) + (((@:checkr _w ?? throw "null pointer dereference")._codegenFreq[(17 : stdgo.GoInt)] : stdgo.GoInt) * (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) + (((@:checkr _w ?? throw "null pointer dereference")._codegenFreq[(18 : stdgo.GoInt)] : stdgo.GoInt) * (7 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
        _size = (((_header + _litEnc._bitLength((@:checkr _w ?? throw "null pointer dereference")._literalFreq) : stdgo.GoInt) + _offEnc._bitLength((@:checkr _w ?? throw "null pointer dereference")._offsetFreq) : stdgo.GoInt) + _extraBits : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L303"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } = { _0 : _size, _1 : _numCodegens };
            _size = __tmp__._0;
            _numCodegens = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _generateCodegen( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter>, _numLiterals:stdgo.GoInt, _numOffsets:stdgo.GoInt, _litEnc:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder>, _offEnc:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter> = _w;
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L201"
        for (_i => _ in (@:checkr _w ?? throw "null pointer dereference")._codegenFreq.__copy__()) {
            (@:checkr _w ?? throw "null pointer dereference")._codegenFreq[(_i : stdgo.GoInt)] = (0 : stdgo.GoInt32);
        };
        var _codegen = (@:checkr _w ?? throw "null pointer dereference")._codegen;
        var _cgnl = (_codegen.__slice__(0, _numLiterals) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L211"
        for (_i => _ in _cgnl) {
            _cgnl[(_i : stdgo.GoInt)] = ((@:checkr _litEnc ?? throw "null pointer dereference")._codes[(_i : stdgo.GoInt)]._len : stdgo.GoUInt8);
        };
        _cgnl = (_codegen.__slice__(_numLiterals, (_numLiterals + _numOffsets : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L216"
        for (_i => _ in _cgnl) {
            _cgnl[(_i : stdgo.GoInt)] = ((@:checkr _offEnc ?? throw "null pointer dereference")._codes[(_i : stdgo.GoInt)]._len : stdgo.GoUInt8);
        };
        _codegen[(_numLiterals + _numOffsets : stdgo.GoInt)] = (255 : stdgo.GoUInt8);
        var _size = (_codegen[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        var _count = (1 : stdgo.GoInt);
        var _outIndex = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L224"
        {
            var _inIndex = (1 : stdgo.GoInt);
            while (_size != ((255 : stdgo.GoUInt8))) {
                var _nextSize = (_codegen[(_inIndex : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L228"
                if (_nextSize == (_size)) {
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L229"
                    _count++;
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L230"
                    {
                        _inIndex++;
                        continue;
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L233"
                if (_size != ((0 : stdgo.GoUInt8))) {
                    _codegen[(_outIndex : stdgo.GoInt)] = _size;
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L235"
                    _outIndex++;
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L236"
                    (@:checkr _w ?? throw "null pointer dereference")._codegenFreq[(_size : stdgo.GoInt)]++;
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L237"
                    _count--;
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L238"
                    while ((_count >= (3 : stdgo.GoInt) : Bool)) {
                        var _n = (6 : stdgo.GoInt);
                        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L240"
                        if ((_n > _count : Bool)) {
                            _n = _count;
                        };
                        _codegen[(_outIndex : stdgo.GoInt)] = (16 : stdgo.GoUInt8);
                        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L244"
                        _outIndex++;
                        _codegen[(_outIndex : stdgo.GoInt)] = ((_n - (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
                        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L246"
                        _outIndex++;
                        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L247"
                        (@:checkr _w ?? throw "null pointer dereference")._codegenFreq[(16 : stdgo.GoInt)]++;
                        _count = (_count - (_n) : stdgo.GoInt);
                    };
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L251"
                    while ((_count >= (11 : stdgo.GoInt) : Bool)) {
                        var _n = (138 : stdgo.GoInt);
                        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L253"
                        if ((_n > _count : Bool)) {
                            _n = _count;
                        };
                        _codegen[(_outIndex : stdgo.GoInt)] = (18 : stdgo.GoUInt8);
                        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L257"
                        _outIndex++;
                        _codegen[(_outIndex : stdgo.GoInt)] = ((_n - (11 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
                        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L259"
                        _outIndex++;
                        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L260"
                        (@:checkr _w ?? throw "null pointer dereference")._codegenFreq[(18 : stdgo.GoInt)]++;
                        _count = (_count - (_n) : stdgo.GoInt);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L263"
                    if ((_count >= (3 : stdgo.GoInt) : Bool)) {
                        _codegen[(_outIndex : stdgo.GoInt)] = (17 : stdgo.GoUInt8);
                        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L266"
                        _outIndex++;
                        _codegen[(_outIndex : stdgo.GoInt)] = ((_count - (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
                        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L268"
                        _outIndex++;
                        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L269"
                        (@:checkr _w ?? throw "null pointer dereference")._codegenFreq[(17 : stdgo.GoInt)]++;
                        _count = (0 : stdgo.GoInt);
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L273"
                _count--;
//"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L274"
                while ((_count >= (0 : stdgo.GoInt) : Bool)) {
                    _codegen[(_outIndex : stdgo.GoInt)] = _size;
//"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L276"
                    _outIndex++;
//"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L277"
                    (@:checkr _w ?? throw "null pointer dereference")._codegenFreq[(_size : stdgo.GoInt)]++;
                    _count--;
                };
_size = _nextSize;
_count = (1 : stdgo.GoInt);
                _inIndex++;
            };
        };
        _codegen[(_outIndex : stdgo.GoInt)] = (255 : stdgo.GoUInt8);
    }
    @:keep
    @:tdfield
    static public function _writeBytes( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter>, _bytes:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter> = _w;
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L167"
        if ((@:checkr _w ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L168"
            return;
        };
        var _n = ((@:checkr _w ?? throw "null pointer dereference")._nbytes : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L171"
        if (((@:checkr _w ?? throw "null pointer dereference")._nbits & (7u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
            (@:checkr _w ?? throw "null pointer dereference")._err = stdgo.Go.asInterface((("writeBytes with unfinished bits" : stdgo.GoString) : stdgo._internal.compress.flate.Flate_internalerror.InternalError));
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L173"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L175"
        while ((@:checkr _w ?? throw "null pointer dereference")._nbits != ((0u32 : stdgo.GoUInt))) {
            (@:checkr _w ?? throw "null pointer dereference")._bytes[(_n : stdgo.GoInt)] = ((@:checkr _w ?? throw "null pointer dereference")._bits : stdgo.GoUInt8);
            (@:checkr _w ?? throw "null pointer dereference")._bits = ((@:checkr _w ?? throw "null pointer dereference")._bits >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            (@:checkr _w ?? throw "null pointer dereference")._nbits = ((@:checkr _w ?? throw "null pointer dereference")._nbits - ((8u32 : stdgo.GoUInt)) : stdgo.GoUInt);
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L179"
            _n++;
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L181"
        if (_n != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L182"
            _w._write(((@:checkr _w ?? throw "null pointer dereference")._bytes.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
        };
        (@:checkr _w ?? throw "null pointer dereference")._nbytes = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L185"
        _w._write(_bytes);
    }
    @:keep
    @:tdfield
    static public function _writeBits( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter>, _b:stdgo.GoInt32, _nb:stdgo.GoUInt):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter> = _w;
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L140"
        if ((@:checkr _w ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L141"
            return;
        };
        (@:checkr _w ?? throw "null pointer dereference")._bits = ((@:checkr _w ?? throw "null pointer dereference")._bits | (((_b : stdgo.GoUInt64) << (@:checkr _w ?? throw "null pointer dereference")._nbits : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _w ?? throw "null pointer dereference")._nbits = ((@:checkr _w ?? throw "null pointer dereference")._nbits + (_nb) : stdgo.GoUInt);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L145"
        if (((@:checkr _w ?? throw "null pointer dereference")._nbits >= (48u32 : stdgo.GoUInt) : Bool)) {
            var _bits = ((@:checkr _w ?? throw "null pointer dereference")._bits : stdgo.GoUInt64);
            (@:checkr _w ?? throw "null pointer dereference")._bits = ((@:checkr _w ?? throw "null pointer dereference")._bits >> ((48i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            (@:checkr _w ?? throw "null pointer dereference")._nbits = ((@:checkr _w ?? throw "null pointer dereference")._nbits - ((48u32 : stdgo.GoUInt)) : stdgo.GoUInt);
            var _n = ((@:checkr _w ?? throw "null pointer dereference")._nbytes : stdgo.GoInt);
            var _bytes = ((@:checkr _w ?? throw "null pointer dereference")._bytes.__slice__(_n, (_n + (6 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _bytes[(0 : stdgo.GoInt)] = (_bits : stdgo.GoUInt8);
            _bytes[(1 : stdgo.GoInt)] = ((_bits >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
            _bytes[(2 : stdgo.GoInt)] = ((_bits >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
            _bytes[(3 : stdgo.GoInt)] = ((_bits >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
            _bytes[(4 : stdgo.GoInt)] = ((_bits >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
            _bytes[(5 : stdgo.GoInt)] = ((_bits >> (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
            _n = (_n + ((6 : stdgo.GoInt)) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L158"
            if ((_n >= (240 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L159"
                _w._write(((@:checkr _w ?? throw "null pointer dereference")._bytes.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
                _n = (0 : stdgo.GoInt);
            };
            (@:checkr _w ?? throw "null pointer dereference")._nbytes = _n;
        };
    }
    @:keep
    @:tdfield
    static public function _write( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter>, _b:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter> = _w;
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L133"
        if ((@:checkr _w ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L134"
            return;
        };
        {
            var __tmp__ = (@:checkr _w ?? throw "null pointer dereference")._writer.write(_b);
            (@:checkr _w ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
        };
    }
    @:keep
    @:tdfield
    static public function _flush( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter> = _w;
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L112"
        if ((@:checkr _w ?? throw "null pointer dereference")._err != null) {
            (@:checkr _w ?? throw "null pointer dereference")._nbits = (0u32 : stdgo.GoUInt);
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L114"
            return;
        };
        var _n = ((@:checkr _w ?? throw "null pointer dereference")._nbytes : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L117"
        while ((@:checkr _w ?? throw "null pointer dereference")._nbits != ((0u32 : stdgo.GoUInt))) {
            (@:checkr _w ?? throw "null pointer dereference")._bytes[(_n : stdgo.GoInt)] = ((@:checkr _w ?? throw "null pointer dereference")._bits : stdgo.GoUInt8);
            (@:checkr _w ?? throw "null pointer dereference")._bits = ((@:checkr _w ?? throw "null pointer dereference")._bits >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L120"
            if (((@:checkr _w ?? throw "null pointer dereference")._nbits > (8u32 : stdgo.GoUInt) : Bool)) {
                (@:checkr _w ?? throw "null pointer dereference")._nbits = ((@:checkr _w ?? throw "null pointer dereference")._nbits - ((8u32 : stdgo.GoUInt)) : stdgo.GoUInt);
            } else {
                (@:checkr _w ?? throw "null pointer dereference")._nbits = (0u32 : stdgo.GoUInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L125"
            _n++;
        };
        (@:checkr _w ?? throw "null pointer dereference")._bits = (0i64 : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L128"
        _w._write(((@:checkr _w ?? throw "null pointer dereference")._bytes.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
        (@:checkr _w ?? throw "null pointer dereference")._nbytes = (0 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _reset( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter>, _writer:stdgo._internal.io.Io_writer.Writer):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanbitwriter.T_huffmanBitWriter> = _w;
        (@:checkr _w ?? throw "null pointer dereference")._writer = _writer;
        {
            final __tmp__0 = (0i64 : stdgo.GoUInt64);
            final __tmp__1 = (0u32 : stdgo.GoUInt);
            final __tmp__2 = (0 : stdgo.GoInt);
            final __tmp__3 = (null : stdgo.Error);
            (@:checkr _w ?? throw "null pointer dereference")._bits = @:binopAssign __tmp__0;
            (@:checkr _w ?? throw "null pointer dereference")._nbits = @:binopAssign __tmp__1;
            (@:checkr _w ?? throw "null pointer dereference")._nbytes = @:binopAssign __tmp__2;
            (@:checkr _w ?? throw "null pointer dereference")._err = @:binopAssign __tmp__3;
        };
    }
}
