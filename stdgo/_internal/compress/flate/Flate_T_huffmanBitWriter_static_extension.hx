package stdgo._internal.compress.flate;
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_huffmanBitWriter_asInterface) class T_huffmanBitWriter_static_extension {
    @:keep
    static public function _writeBlockHuff( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter>, _eof:Bool, _input:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter> = _w;
        if (_w._err != null) {
            return;
        };
        for (_i => _ in _w._literalFreq) {
            _w._literalFreq[(_i : stdgo.GoInt)] = (0 : stdgo.GoInt32);
        };
        stdgo._internal.compress.flate.Flate__histogram._histogram(_input, _w._literalFreq);
        _w._literalFreq[(256 : stdgo.GoInt)] = (1 : stdgo.GoInt32);
        {};
        _w._offsetFreq[(0 : stdgo.GoInt)] = (1 : stdgo.GoInt32);
        {};
        _w._literalEncoding._generate(_w._literalFreq, (15 : stdgo.GoInt32));
        var _numCodegens:stdgo.GoInt = (0 : stdgo.GoInt);
        _w._generateCodegen((257 : stdgo.GoInt), (1 : stdgo.GoInt), _w._literalEncoding, stdgo._internal.compress.flate.Flate__huffOffset._huffOffset);
        _w._codegenEncoding._generate((_w._codegenFreq.__slice__(0) : stdgo.Slice<stdgo.GoInt32>), (7 : stdgo.GoInt32));
        var __tmp__ = _w._dynamicSize(_w._literalEncoding, stdgo._internal.compress.flate.Flate__huffOffset._huffOffset, (0 : stdgo.GoInt)), _size:stdgo.GoInt = __tmp__._0, _numCodegens:stdgo.GoInt = __tmp__._1;
        {
            var __tmp__ = _w._storedSize(_input), _ssize:stdgo.GoInt = __tmp__._0, _storable:Bool = __tmp__._1;
            if ((_storable && (_ssize < ((_size + (_size >> (4i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt)) : Bool) : Bool)) {
                _w._writeStoredHeader((_input.length), _eof);
                _w._writeBytes(_input);
                return;
            };
        };
        _w._writeDynamicHeader((257 : stdgo.GoInt), (1 : stdgo.GoInt), _numCodegens, _eof);
        var _encoding = (_w._literalEncoding._codes.__slice__(0, (257 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_hcode.T_hcode>);
        var _n = (_w._nbytes : stdgo.GoInt);
        for (__0 => _t in _input) {
            var _c = (_encoding[(_t : stdgo.GoInt)] : stdgo._internal.compress.flate.Flate_T_hcode.T_hcode);
            _w._bits = (_w._bits | (((_c._code : stdgo.GoUInt64) << _w._nbits : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _w._nbits = (_w._nbits + ((_c._len : stdgo.GoUInt)) : stdgo.GoUInt);
            if ((_w._nbits < (48u32 : stdgo.GoUInt) : Bool)) {
                continue;
            };
            var _bits = (_w._bits : stdgo.GoUInt64);
            _w._bits = (_w._bits >> ((48i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _w._nbits = (_w._nbits - ((48u32 : stdgo.GoUInt)) : stdgo.GoUInt);
            var _bytes = (_w._bytes.__slice__(_n, (_n + (6 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _bytes[(0 : stdgo.GoInt)] = (_bits : stdgo.GoUInt8);
            _bytes[(1 : stdgo.GoInt)] = ((_bits >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
            _bytes[(2 : stdgo.GoInt)] = ((_bits >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
            _bytes[(3 : stdgo.GoInt)] = ((_bits >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
            _bytes[(4 : stdgo.GoInt)] = ((_bits >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
            _bytes[(5 : stdgo.GoInt)] = ((_bits >> (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
            _n = (_n + ((6 : stdgo.GoInt)) : stdgo.GoInt);
            if ((_n < (240 : stdgo.GoInt) : Bool)) {
                continue;
            };
            _w._write((_w._bytes.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
            if (_w._err != null) {
                return;
            };
            _n = (0 : stdgo.GoInt);
        };
        _w._nbytes = _n;
        _w._writeCode(_encoding[(256 : stdgo.GoInt)]);
    }
    @:keep
    static public function _writeTokens( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter>, _tokens:stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>, _leCodes:stdgo.Slice<stdgo._internal.compress.flate.Flate_T_hcode.T_hcode>, _oeCodes:stdgo.Slice<stdgo._internal.compress.flate.Flate_T_hcode.T_hcode>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter> = _w;
        if (_w._err != null) {
            return;
        };
        for (__0 => _t in _tokens) {
            if ((_t < (1073741824u32 : stdgo._internal.compress.flate.Flate_T_token.T_token) : Bool)) {
                _w._writeCode(_leCodes[(_t._literal() : stdgo.GoInt)]);
                continue;
            };
            var _length = (_t._length() : stdgo.GoUInt32);
            var _lengthCode = (stdgo._internal.compress.flate.Flate__lengthCode._lengthCode(_length) : stdgo.GoUInt32);
            _w._writeCode(_leCodes[((_lengthCode + (257u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)]);
            var _extraLengthBits = (stdgo._internal.compress.flate.Flate__lengthExtraBits._lengthExtraBits[(_lengthCode : stdgo.GoInt)] : stdgo.GoUInt);
            if ((_extraLengthBits > (0u32 : stdgo.GoUInt) : Bool)) {
                var _extraLength = ((_length - stdgo._internal.compress.flate.Flate__lengthBase._lengthBase[(_lengthCode : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoInt32);
                _w._writeBits(_extraLength, _extraLengthBits);
            };
            var _offset = (_t._offset() : stdgo.GoUInt32);
            var _offsetCode = (stdgo._internal.compress.flate.Flate__offsetCode._offsetCode(_offset) : stdgo.GoUInt32);
            _w._writeCode(_oeCodes[(_offsetCode : stdgo.GoInt)]);
            var _extraOffsetBits = (stdgo._internal.compress.flate.Flate__offsetExtraBits._offsetExtraBits[(_offsetCode : stdgo.GoInt)] : stdgo.GoUInt);
            if ((_extraOffsetBits > (0u32 : stdgo.GoUInt) : Bool)) {
                var _extraOffset = ((_offset - stdgo._internal.compress.flate.Flate__offsetBase._offsetBase[(_offsetCode : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoInt32);
                _w._writeBits(_extraOffset, _extraOffsetBits);
            };
        };
    }
    @:keep
    static public function _indexTokens( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter>, _tokens:stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter> = _w;
        var _numLiterals = (0 : stdgo.GoInt), _numOffsets = (0 : stdgo.GoInt);
        for (_i => _ in _w._literalFreq) {
            _w._literalFreq[(_i : stdgo.GoInt)] = (0 : stdgo.GoInt32);
        };
        for (_i => _ in _w._offsetFreq) {
            _w._offsetFreq[(_i : stdgo.GoInt)] = (0 : stdgo.GoInt32);
        };
        for (__0 => _t in _tokens) {
            if ((_t < (1073741824u32 : stdgo._internal.compress.flate.Flate_T_token.T_token) : Bool)) {
                _w._literalFreq[(_t._literal() : stdgo.GoInt)]++;
                continue;
            };
            var _length = (_t._length() : stdgo.GoUInt32);
            var _offset = (_t._offset() : stdgo.GoUInt32);
            _w._literalFreq[(((257u32 : stdgo.GoUInt32) + stdgo._internal.compress.flate.Flate__lengthCode._lengthCode(_length) : stdgo.GoUInt32) : stdgo.GoInt)]++;
            _w._offsetFreq[(stdgo._internal.compress.flate.Flate__offsetCode._offsetCode(_offset) : stdgo.GoInt)]++;
        };
        _numLiterals = (_w._literalFreq.length);
        while (_w._literalFreq[(_numLiterals - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((0 : stdgo.GoInt32))) {
            _numLiterals--;
        };
        _numOffsets = (_w._offsetFreq.length);
        while (((_numOffsets > (0 : stdgo.GoInt) : Bool) && (_w._offsetFreq[(_numOffsets - (1 : stdgo.GoInt) : stdgo.GoInt)] == (0 : stdgo.GoInt32)) : Bool)) {
            _numOffsets--;
        };
        if (_numOffsets == ((0 : stdgo.GoInt))) {
            _w._offsetFreq[(0 : stdgo.GoInt)] = (1 : stdgo.GoInt32);
            _numOffsets = (1 : stdgo.GoInt);
        };
        _w._literalEncoding._generate(_w._literalFreq, (15 : stdgo.GoInt32));
        _w._offsetEncoding._generate(_w._offsetFreq, (15 : stdgo.GoInt32));
        return { _0 : _numLiterals, _1 : _numOffsets };
    }
    @:keep
    static public function _writeBlockDynamic( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter>, _tokens:stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>, _eof:Bool, _input:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter> = _w;
        if (_w._err != null) {
            return;
        };
        _tokens = (_tokens.__append__((256u32 : stdgo._internal.compress.flate.Flate_T_token.T_token)));
        var __tmp__ = _w._indexTokens(_tokens), _numLiterals:stdgo.GoInt = __tmp__._0, _numOffsets:stdgo.GoInt = __tmp__._1;
        _w._generateCodegen(_numLiterals, _numOffsets, _w._literalEncoding, _w._offsetEncoding);
        _w._codegenEncoding._generate((_w._codegenFreq.__slice__(0) : stdgo.Slice<stdgo.GoInt32>), (7 : stdgo.GoInt32));
        var __tmp__ = _w._dynamicSize(_w._literalEncoding, _w._offsetEncoding, (0 : stdgo.GoInt)), _size:stdgo.GoInt = __tmp__._0, _numCodegens:stdgo.GoInt = __tmp__._1;
        {
            var __tmp__ = _w._storedSize(_input), _ssize:stdgo.GoInt = __tmp__._0, _storable:Bool = __tmp__._1;
            if ((_storable && (_ssize < ((_size + (_size >> (4i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt)) : Bool) : Bool)) {
                _w._writeStoredHeader((_input.length), _eof);
                _w._writeBytes(_input);
                return;
            };
        };
        _w._writeDynamicHeader(_numLiterals, _numOffsets, _numCodegens, _eof);
        _w._writeTokens(_tokens, _w._literalEncoding._codes, _w._offsetEncoding._codes);
    }
    @:keep
    static public function _writeBlock( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter>, _tokens:stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>, _eof:Bool, _input:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter> = _w;
        if (_w._err != null) {
            return;
        };
        _tokens = (_tokens.__append__((256u32 : stdgo._internal.compress.flate.Flate_T_token.T_token)));
        var __tmp__ = _w._indexTokens(_tokens), _numLiterals:stdgo.GoInt = __tmp__._0, _numOffsets:stdgo.GoInt = __tmp__._1;
        var _extraBits:stdgo.GoInt = (0 : stdgo.GoInt);
        var __tmp__ = _w._storedSize(_input), _storedSize:stdgo.GoInt = __tmp__._0, _storable:Bool = __tmp__._1;
        if (_storable) {
            {
                var _lengthCode = (265 : stdgo.GoInt);
                stdgo.Go.cfor((_lengthCode < _numLiterals : Bool), _lengthCode++, {
                    _extraBits = (_extraBits + (((_w._literalFreq[(_lengthCode : stdgo.GoInt)] : stdgo.GoInt) * (stdgo._internal.compress.flate.Flate__lengthExtraBits._lengthExtraBits[(_lengthCode - (257 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                });
            };
            {
                var _offsetCode = (4 : stdgo.GoInt);
                stdgo.Go.cfor((_offsetCode < _numOffsets : Bool), _offsetCode++, {
                    _extraBits = (_extraBits + (((_w._offsetFreq[(_offsetCode : stdgo.GoInt)] : stdgo.GoInt) * (stdgo._internal.compress.flate.Flate__offsetExtraBits._offsetExtraBits[(_offsetCode : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                });
            };
        };
        var _literalEncoding:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanEncoder.T_huffmanEncoder> = stdgo._internal.compress.flate.Flate__fixedLiteralEncoding._fixedLiteralEncoding;
        var _offsetEncoding:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanEncoder.T_huffmanEncoder> = stdgo._internal.compress.flate.Flate__fixedOffsetEncoding._fixedOffsetEncoding;
        var _size:stdgo.GoInt = _w._fixedSize(_extraBits);
        var _numCodegens:stdgo.GoInt = (0 : stdgo.GoInt);
        _w._generateCodegen(_numLiterals, _numOffsets, _w._literalEncoding, _w._offsetEncoding);
        _w._codegenEncoding._generate((_w._codegenFreq.__slice__(0) : stdgo.Slice<stdgo.GoInt32>), (7 : stdgo.GoInt32));
        var __tmp__ = _w._dynamicSize(_w._literalEncoding, _w._offsetEncoding, _extraBits), _dynamicSize:stdgo.GoInt = __tmp__._0, _numCodegens:stdgo.GoInt = __tmp__._1;
        if ((_dynamicSize < _size : Bool)) {
            _size = _dynamicSize;
            _literalEncoding = _w._literalEncoding;
            _offsetEncoding = _w._offsetEncoding;
        };
        if ((_storable && (_storedSize < _size : Bool) : Bool)) {
            _w._writeStoredHeader((_input.length), _eof);
            _w._writeBytes(_input);
            return;
        };
        if (_literalEncoding == (stdgo._internal.compress.flate.Flate__fixedLiteralEncoding._fixedLiteralEncoding)) {
            _w._writeFixedHeader(_eof);
        } else {
            _w._writeDynamicHeader(_numLiterals, _numOffsets, _numCodegens, _eof);
        };
        _w._writeTokens(_tokens, _literalEncoding._codes, _offsetEncoding._codes);
    }
    @:keep
    static public function _writeFixedHeader( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter>, _isEof:Bool):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter> = _w;
        if (_w._err != null) {
            return;
        };
        var _value:stdgo.GoInt32 = (2 : stdgo.GoInt32);
        if (_isEof) {
            _value = (3 : stdgo.GoInt32);
        };
        _w._writeBits(_value, (3u32 : stdgo.GoUInt));
    }
    @:keep
    static public function _writeStoredHeader( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter>, _length:stdgo.GoInt, _isEof:Bool):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter> = _w;
        if (_w._err != null) {
            return;
        };
        var _flag:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        if (_isEof) {
            _flag = (1 : stdgo.GoInt32);
        };
        _w._writeBits(_flag, (3u32 : stdgo.GoUInt));
        _w._flush();
        _w._writeBits((_length : stdgo.GoInt32), (16u32 : stdgo.GoUInt));
        _w._writeBits((-1 ^ (_length : stdgo.GoUInt16) : stdgo.GoInt32), (16u32 : stdgo.GoUInt));
    }
    @:keep
    static public function _writeDynamicHeader( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter>, _numLiterals:stdgo.GoInt, _numOffsets:stdgo.GoInt, _numCodegens:stdgo.GoInt, _isEof:Bool):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter> = _w;
        if (_w._err != null) {
            return;
        };
        var _firstBits:stdgo.GoInt32 = (4 : stdgo.GoInt32);
        if (_isEof) {
            _firstBits = (5 : stdgo.GoInt32);
        };
        _w._writeBits(_firstBits, (3u32 : stdgo.GoUInt));
        _w._writeBits(((_numLiterals - (257 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt32), (5u32 : stdgo.GoUInt));
        _w._writeBits(((_numOffsets - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt32), (5u32 : stdgo.GoUInt));
        _w._writeBits(((_numCodegens - (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt32), (4u32 : stdgo.GoUInt));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _numCodegens : Bool), _i++, {
                var _value = (_w._codegenEncoding._codes[(stdgo._internal.compress.flate.Flate__codegenOrder._codegenOrder[(_i : stdgo.GoInt)] : stdgo.GoInt)]._len : stdgo.GoUInt);
                _w._writeBits((_value : stdgo.GoInt32), (3u32 : stdgo.GoUInt));
            });
        };
        var _i = (0 : stdgo.GoInt);
        while (true) {
            var _codeWord:stdgo.GoInt = (_w._codegen[(_i : stdgo.GoInt)] : stdgo.GoInt);
            _i++;
            if (_codeWord == ((255 : stdgo.GoInt))) {
                break;
            };
            _w._writeCode(_w._codegenEncoding._codes[((_codeWord : stdgo.GoUInt32) : stdgo.GoInt)]);
            {
                final __value__ = _codeWord;
                if (__value__ == ((16 : stdgo.GoInt))) {
                    _w._writeBits((_w._codegen[(_i : stdgo.GoInt)] : stdgo.GoInt32), (2u32 : stdgo.GoUInt));
                    _i++;
                } else if (__value__ == ((17 : stdgo.GoInt))) {
                    _w._writeBits((_w._codegen[(_i : stdgo.GoInt)] : stdgo.GoInt32), (3u32 : stdgo.GoUInt));
                    _i++;
                } else if (__value__ == ((18 : stdgo.GoInt))) {
                    _w._writeBits((_w._codegen[(_i : stdgo.GoInt)] : stdgo.GoInt32), (7u32 : stdgo.GoUInt));
                    _i++;
                };
            };
        };
    }
    @:keep
    static public function _writeCode( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter>, _c:stdgo._internal.compress.flate.Flate_T_hcode.T_hcode):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter> = _w;
        if (_w._err != null) {
            return;
        };
        _w._bits = (_w._bits | (((_c._code : stdgo.GoUInt64) << _w._nbits : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _w._nbits = (_w._nbits + ((_c._len : stdgo.GoUInt)) : stdgo.GoUInt);
        if ((_w._nbits >= (48u32 : stdgo.GoUInt) : Bool)) {
            var _bits = (_w._bits : stdgo.GoUInt64);
            _w._bits = (_w._bits >> ((48i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _w._nbits = (_w._nbits - ((48u32 : stdgo.GoUInt)) : stdgo.GoUInt);
            var _n = (_w._nbytes : stdgo.GoInt);
            var _bytes = (_w._bytes.__slice__(_n, (_n + (6 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _bytes[(0 : stdgo.GoInt)] = (_bits : stdgo.GoUInt8);
            _bytes[(1 : stdgo.GoInt)] = ((_bits >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
            _bytes[(2 : stdgo.GoInt)] = ((_bits >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
            _bytes[(3 : stdgo.GoInt)] = ((_bits >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
            _bytes[(4 : stdgo.GoInt)] = ((_bits >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
            _bytes[(5 : stdgo.GoInt)] = ((_bits >> (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
            _n = (_n + ((6 : stdgo.GoInt)) : stdgo.GoInt);
            if ((_n >= (240 : stdgo.GoInt) : Bool)) {
                _w._write((_w._bytes.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
                _n = (0 : stdgo.GoInt);
            };
            _w._nbytes = _n;
        };
    }
    @:keep
    static public function _storedSize( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter>, _in:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter> = _w;
        if (_in == null) {
            return { _0 : (0 : stdgo.GoInt), _1 : false };
        };
        if (((_in.length) <= (65535 : stdgo.GoInt) : Bool)) {
            return { _0 : ((((_in.length) + (5 : stdgo.GoInt) : stdgo.GoInt)) * (8 : stdgo.GoInt) : stdgo.GoInt), _1 : true };
        };
        return { _0 : (0 : stdgo.GoInt), _1 : false };
    }
    @:keep
    static public function _fixedSize( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter>, _extraBits:stdgo.GoInt):stdgo.GoInt {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter> = _w;
        return ((((3 : stdgo.GoInt) + stdgo._internal.compress.flate.Flate__fixedLiteralEncoding._fixedLiteralEncoding._bitLength(_w._literalFreq) : stdgo.GoInt) + stdgo._internal.compress.flate.Flate__fixedOffsetEncoding._fixedOffsetEncoding._bitLength(_w._offsetFreq) : stdgo.GoInt) + _extraBits : stdgo.GoInt);
    }
    @:keep
    static public function _dynamicSize( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter>, _litEnc:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanEncoder.T_huffmanEncoder>, _offEnc:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanEncoder.T_huffmanEncoder>, _extraBits:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter> = _w;
        var _size = (0 : stdgo.GoInt), _numCodegens = (0 : stdgo.GoInt);
        _numCodegens = (_w._codegenFreq.length);
        while (((_numCodegens > (4 : stdgo.GoInt) : Bool) && (_w._codegenFreq[(stdgo._internal.compress.flate.Flate__codegenOrder._codegenOrder[(_numCodegens - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt)] == (0 : stdgo.GoInt32)) : Bool)) {
            _numCodegens--;
        };
        var _header = ((((((17 : stdgo.GoInt) + (((3 : stdgo.GoInt) * _numCodegens : stdgo.GoInt)) : stdgo.GoInt) + _w._codegenEncoding._bitLength((_w._codegenFreq.__slice__(0) : stdgo.Slice<stdgo.GoInt32>)) : stdgo.GoInt) + ((_w._codegenFreq[(16 : stdgo.GoInt)] : stdgo.GoInt) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) + ((_w._codegenFreq[(17 : stdgo.GoInt)] : stdgo.GoInt) * (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) + ((_w._codegenFreq[(18 : stdgo.GoInt)] : stdgo.GoInt) * (7 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
        _size = (((_header + _litEnc._bitLength(_w._literalFreq) : stdgo.GoInt) + _offEnc._bitLength(_w._offsetFreq) : stdgo.GoInt) + _extraBits : stdgo.GoInt);
        return { _0 : _size, _1 : _numCodegens };
    }
    @:keep
    static public function _generateCodegen( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter>, _numLiterals:stdgo.GoInt, _numOffsets:stdgo.GoInt, _litEnc:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanEncoder.T_huffmanEncoder>, _offEnc:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanEncoder.T_huffmanEncoder>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter> = _w;
        for (_i => _ in _w._codegenFreq) {
            _w._codegenFreq[(_i : stdgo.GoInt)] = (0 : stdgo.GoInt32);
        };
        var _codegen = _w._codegen;
        var _cgnl = (_codegen.__slice__(0, _numLiterals) : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _ in _cgnl) {
            _cgnl[(_i : stdgo.GoInt)] = (_litEnc._codes[(_i : stdgo.GoInt)]._len : stdgo.GoUInt8);
        };
        _cgnl = (_codegen.__slice__(_numLiterals, (_numLiterals + _numOffsets : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _ in _cgnl) {
            _cgnl[(_i : stdgo.GoInt)] = (_offEnc._codes[(_i : stdgo.GoInt)]._len : stdgo.GoUInt8);
        };
        _codegen[(_numLiterals + _numOffsets : stdgo.GoInt)] = (255 : stdgo.GoUInt8);
        var _size = (_codegen[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        var _count = (1 : stdgo.GoInt);
        var _outIndex = (0 : stdgo.GoInt);
        {
            var _inIndex = (1 : stdgo.GoInt);
            stdgo.Go.cfor(_size != ((255 : stdgo.GoUInt8)), _inIndex++, {
                var _nextSize = (_codegen[(_inIndex : stdgo.GoInt)] : stdgo.GoUInt8);
                if (_nextSize == (_size)) {
                    _count++;
                    continue;
                };
                if (_size != ((0 : stdgo.GoUInt8))) {
                    _codegen[(_outIndex : stdgo.GoInt)] = _size;
                    _outIndex++;
                    _w._codegenFreq[(_size : stdgo.GoInt)]++;
                    _count--;
                    while ((_count >= (3 : stdgo.GoInt) : Bool)) {
                        var _n = (6 : stdgo.GoInt);
                        if ((_n > _count : Bool)) {
                            _n = _count;
                        };
                        _codegen[(_outIndex : stdgo.GoInt)] = (16 : stdgo.GoUInt8);
                        _outIndex++;
                        _codegen[(_outIndex : stdgo.GoInt)] = ((_n - (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
                        _outIndex++;
                        _w._codegenFreq[(16 : stdgo.GoInt)]++;
                        _count = (_count - (_n) : stdgo.GoInt);
                    };
                } else {
                    while ((_count >= (11 : stdgo.GoInt) : Bool)) {
                        var _n = (138 : stdgo.GoInt);
                        if ((_n > _count : Bool)) {
                            _n = _count;
                        };
                        _codegen[(_outIndex : stdgo.GoInt)] = (18 : stdgo.GoUInt8);
                        _outIndex++;
                        _codegen[(_outIndex : stdgo.GoInt)] = ((_n - (11 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
                        _outIndex++;
                        _w._codegenFreq[(18 : stdgo.GoInt)]++;
                        _count = (_count - (_n) : stdgo.GoInt);
                    };
                    if ((_count >= (3 : stdgo.GoInt) : Bool)) {
                        _codegen[(_outIndex : stdgo.GoInt)] = (17 : stdgo.GoUInt8);
                        _outIndex++;
                        _codegen[(_outIndex : stdgo.GoInt)] = ((_count - (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
                        _outIndex++;
                        _w._codegenFreq[(17 : stdgo.GoInt)]++;
                        _count = (0 : stdgo.GoInt);
                    };
                };
                _count--;
                stdgo.Go.cfor((_count >= (0 : stdgo.GoInt) : Bool), _count--, {
                    _codegen[(_outIndex : stdgo.GoInt)] = _size;
                    _outIndex++;
                    _w._codegenFreq[(_size : stdgo.GoInt)]++;
                });
                _size = _nextSize;
                _count = (1 : stdgo.GoInt);
            });
        };
        _codegen[(_outIndex : stdgo.GoInt)] = (255 : stdgo.GoUInt8);
    }
    @:keep
    static public function _writeBytes( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter>, _bytes:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter> = _w;
        if (_w._err != null) {
            return;
        };
        var _n = (_w._nbytes : stdgo.GoInt);
        if ((_w._nbits & (7u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
            _w._err = stdgo.Go.asInterface((("writeBytes with unfinished bits" : stdgo.GoString) : stdgo._internal.compress.flate.Flate_InternalError.InternalError));
            return;
        };
        while (_w._nbits != ((0u32 : stdgo.GoUInt))) {
            _w._bytes[(_n : stdgo.GoInt)] = (_w._bits : stdgo.GoUInt8);
            _w._bits = (_w._bits >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _w._nbits = (_w._nbits - ((8u32 : stdgo.GoUInt)) : stdgo.GoUInt);
            _n++;
        };
        if (_n != ((0 : stdgo.GoInt))) {
            _w._write((_w._bytes.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
        };
        _w._nbytes = (0 : stdgo.GoInt);
        _w._write(_bytes);
    }
    @:keep
    static public function _writeBits( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter>, _b:stdgo.GoInt32, _nb:stdgo.GoUInt):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter> = _w;
        if (_w._err != null) {
            return;
        };
        _w._bits = (_w._bits | (((_b : stdgo.GoUInt64) << _w._nbits : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _w._nbits = (_w._nbits + (_nb) : stdgo.GoUInt);
        if ((_w._nbits >= (48u32 : stdgo.GoUInt) : Bool)) {
            var _bits = (_w._bits : stdgo.GoUInt64);
            _w._bits = (_w._bits >> ((48i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _w._nbits = (_w._nbits - ((48u32 : stdgo.GoUInt)) : stdgo.GoUInt);
            var _n = (_w._nbytes : stdgo.GoInt);
            var _bytes = (_w._bytes.__slice__(_n, (_n + (6 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _bytes[(0 : stdgo.GoInt)] = (_bits : stdgo.GoUInt8);
            _bytes[(1 : stdgo.GoInt)] = ((_bits >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
            _bytes[(2 : stdgo.GoInt)] = ((_bits >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
            _bytes[(3 : stdgo.GoInt)] = ((_bits >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
            _bytes[(4 : stdgo.GoInt)] = ((_bits >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
            _bytes[(5 : stdgo.GoInt)] = ((_bits >> (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
            _n = (_n + ((6 : stdgo.GoInt)) : stdgo.GoInt);
            if ((_n >= (240 : stdgo.GoInt) : Bool)) {
                _w._write((_w._bytes.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
                _n = (0 : stdgo.GoInt);
            };
            _w._nbytes = _n;
        };
    }
    @:keep
    static public function _write( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter>, _b:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter> = _w;
        if (_w._err != null) {
            return;
        };
        {
            var __tmp__ = _w._writer.write(_b);
            _w._err = __tmp__._1;
        };
    }
    @:keep
    static public function _flush( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter> = _w;
        if (_w._err != null) {
            _w._nbits = (0u32 : stdgo.GoUInt);
            return;
        };
        var _n = (_w._nbytes : stdgo.GoInt);
        while (_w._nbits != ((0u32 : stdgo.GoUInt))) {
            _w._bytes[(_n : stdgo.GoInt)] = (_w._bits : stdgo.GoUInt8);
            _w._bits = (_w._bits >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            if ((_w._nbits > (8u32 : stdgo.GoUInt) : Bool)) {
                _w._nbits = (_w._nbits - ((8u32 : stdgo.GoUInt)) : stdgo.GoUInt);
            } else {
                _w._nbits = (0u32 : stdgo.GoUInt);
            };
            _n++;
        };
        _w._bits = (0i64 : stdgo.GoUInt64);
        _w._write((_w._bytes.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
        _w._nbytes = (0 : stdgo.GoInt);
    }
    @:keep
    static public function _reset( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter>, _writer:stdgo._internal.io.Io_Writer.Writer):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter> = _w;
        _w._writer = _writer;
        {
            final __tmp__0 = (0i64 : stdgo.GoUInt64);
            final __tmp__1 = (0u32 : stdgo.GoUInt);
            final __tmp__2 = (0 : stdgo.GoInt);
            final __tmp__3 = (null : stdgo.Error);
            _w._bits = __tmp__0;
            _w._nbits = __tmp__1;
            _w._nbytes = __tmp__2;
            _w._err = __tmp__3;
        };
    }
}
