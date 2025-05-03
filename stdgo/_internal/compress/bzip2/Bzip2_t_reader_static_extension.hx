package stdgo._internal.compress.bzip2;
@:keep @:allow(stdgo._internal.compress.bzip2.Bzip2.T_reader_asInterface) class T_reader_static_extension {
    @:keep
    @:tdfield
    static public function _readBlock( _bz2:stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_t_reader.T_reader>):stdgo.Error {
        @:recv var _bz2:stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_t_reader.T_reader> = _bz2;
        var _err = (null : stdgo.Error);
        var _br = (stdgo.Go.setRef((@:checkr _bz2 ?? throw "null pointer dereference")._br) : stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_t_bitreader.T_bitReader>);
        (@:checkr _bz2 ?? throw "null pointer dereference")._wantBlockCRC = (_br.readBits64((32u32 : stdgo.GoUInt)) : stdgo.GoUInt32);
        (@:checkr _bz2 ?? throw "null pointer dereference")._blockCRC = (0u32 : stdgo.GoUInt32);
        (@:checkr _bz2 ?? throw "null pointer dereference")._fileCRC = (((((@:checkr _bz2 ?? throw "null pointer dereference")._fileCRC << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | ((@:checkr _bz2 ?? throw "null pointer dereference")._fileCRC >> (31i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32)) ^ (@:checkr _bz2 ?? throw "null pointer dereference")._wantBlockCRC : stdgo.GoUInt32);
        var _randomized = (_br.readBits((1u32 : stdgo.GoUInt)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L242"
        if (_randomized != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L243"
            return _err = stdgo.Go.asInterface((("deprecated randomized files" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError));
        };
        var _origPtr = (_br.readBits((24u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        var _symbolRangeUsedBitmap = (_br.readBits((16u32 : stdgo.GoUInt)) : stdgo.GoInt);
        var _symbolPresent = (new stdgo.Slice<Bool>((256 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<Bool>);
        var _numSymbols = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L253"
        {
            var _symRange = ((0u32 : stdgo.GoUInt) : stdgo.GoUInt);
            while ((_symRange < (16u32 : stdgo.GoUInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L254"
                if ((_symbolRangeUsedBitmap & (((1 : stdgo.GoInt) << (((15u32 : stdgo.GoUInt) - _symRange : stdgo.GoUInt)) : stdgo.GoInt)) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                    var _bits = (_br.readBits((16u32 : stdgo.GoUInt)) : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L256"
                    {
                        var _symbol = ((0u32 : stdgo.GoUInt) : stdgo.GoUInt);
                        while ((_symbol < (16u32 : stdgo.GoUInt) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L257"
                            if ((_bits & (((1 : stdgo.GoInt) << (((15u32 : stdgo.GoUInt) - _symbol : stdgo.GoUInt)) : stdgo.GoInt)) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                                _symbolPresent[((((16u32 : stdgo.GoUInt) * _symRange : stdgo.GoUInt) + _symbol : stdgo.GoUInt) : stdgo.GoInt)] = true;
                                //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L259"
                                _numSymbols++;
                            };
                            _symbol++;
                        };
                    };
                };
                _symRange++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L265"
        if (_numSymbols == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L267"
            return _err = stdgo.Go.asInterface((("no symbols in input" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError));
        };
        var _numHuffmanTrees = (_br.readBits((3u32 : stdgo.GoUInt)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L272"
        if (((_numHuffmanTrees < (2 : stdgo.GoInt) : Bool) || (_numHuffmanTrees > (6 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L273"
            return _err = stdgo.Go.asInterface((("invalid number of Huffman trees" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError));
        };
        var _numSelectors = (_br.readBits((15u32 : stdgo.GoUInt)) : stdgo.GoInt);
        var _treeIndexes = (new stdgo.Slice<stdgo.GoUInt8>((_numSelectors : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _mtfTreeDecoder = (stdgo._internal.compress.bzip2.Bzip2__newmtfdecoderwithrange._newMTFDecoderWithRange(_numHuffmanTrees) : stdgo._internal.compress.bzip2.Bzip2_t_movetofrontdecoder.T_moveToFrontDecoder);
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L284"
        for (_i => _ in _treeIndexes) {
            var _c = (0 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L286"
            while (true) {
                var _inc = (_br.readBits((1u32 : stdgo.GoUInt)) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L288"
                if (_inc == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L289"
                    break;
                };
                //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L291"
                _c++;
            };
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L293"
            if ((_c >= _numHuffmanTrees : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L294"
                return _err = stdgo.Go.asInterface((("tree index too large" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError));
            };
            _treeIndexes[(_i : stdgo.GoInt)] = _mtfTreeDecoder.decode(_c);
        };
        var _symbols = (new stdgo.Slice<stdgo.GoUInt8>((_numSymbols : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _nextSymbol = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L303"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (256 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L304"
                if (_symbolPresent[(_i : stdgo.GoInt)]) {
                    _symbols[(_nextSymbol : stdgo.GoInt)] = (_i : stdgo.GoUInt8);
                    //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L306"
                    _nextSymbol++;
                };
                _i++;
            };
        };
        var _mtf = (stdgo._internal.compress.bzip2.Bzip2__newmtfdecoder._newMTFDecoder(_symbols) : stdgo._internal.compress.bzip2.Bzip2_t_movetofrontdecoder.T_moveToFrontDecoder);
        _numSymbols = (_numSymbols + ((2 : stdgo.GoInt)) : stdgo.GoInt);
        var _huffmanTrees = (new stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2_t_huffmantree.T_huffmanTree>((_numHuffmanTrees : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_numHuffmanTrees : stdgo.GoInt).toBasic() > 0 ? (_numHuffmanTrees : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.compress.bzip2.Bzip2_t_huffmantree.T_huffmanTree)]) : stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2_t_huffmantree.T_huffmanTree>);
        var _lengths = (new stdgo.Slice<stdgo.GoUInt8>((_numSymbols : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L316"
        for (_i => _ in _huffmanTrees) {
            var _length = (_br.readBits((5u32 : stdgo.GoUInt)) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L319"
            for (_j => _ in _lengths) {
                //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L320"
                while (true) {
                    //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L321"
                    if (((_length < (1 : stdgo.GoInt) : Bool) || (_length > (20 : stdgo.GoInt) : Bool) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L322"
                        return _err = stdgo.Go.asInterface((("Huffman length out of range" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError));
                    };
                    //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L324"
                    if (!_br.readBit()) {
                        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L325"
                        break;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L327"
                    if (_br.readBit()) {
                        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L328"
                        _length--;
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L330"
                        _length++;
                    };
                };
                _lengths[(_j : stdgo.GoInt)] = (_length : stdgo.GoUInt8);
            };
            {
                var __tmp__ = stdgo._internal.compress.bzip2.Bzip2__newhuffmantree._newHuffmanTree(_lengths);
                _huffmanTrees[(_i : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L336"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L337"
                return _err;
            };
        };
        var _selectorIndex = (1 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L342"
        if ((_treeIndexes.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L343"
            return _err = stdgo.Go.asInterface((("no tree selectors given" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError));
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L345"
        if (((_treeIndexes[(0 : stdgo.GoInt)] : stdgo.GoInt) >= (_huffmanTrees.length) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L346"
            return _err = stdgo.Go.asInterface((("tree selector out of range" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError));
        };
        var _currentHuffmanTree = (_huffmanTrees[(_treeIndexes[(0 : stdgo.GoInt)] : stdgo.GoInt)] : stdgo._internal.compress.bzip2.Bzip2_t_huffmantree.T_huffmanTree);
        var _bufIndex = (0 : stdgo.GoInt);
        var _repeat = (0 : stdgo.GoInt);
        var _repeatPower = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L358"
        for (_i => _ in (@:checkr _bz2 ?? throw "null pointer dereference")._c.__copy__()) {
            (@:checkr _bz2 ?? throw "null pointer dereference")._c[(_i : stdgo.GoInt)] = (0u32 : stdgo.GoUInt);
        };
        var _decoded = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L363"
        while (true) {
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L364"
            if (_decoded == ((50 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L365"
                if ((_selectorIndex >= _numSelectors : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L366"
                    return _err = stdgo.Go.asInterface((("insufficient selector indices for number of symbols" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError));
                };
                //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L368"
                if (((_treeIndexes[(_selectorIndex : stdgo.GoInt)] : stdgo.GoInt) >= (_huffmanTrees.length) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L369"
                    return _err = stdgo.Go.asInterface((("tree selector out of range" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError));
                };
                _currentHuffmanTree = _huffmanTrees[(_treeIndexes[(_selectorIndex : stdgo.GoInt)] : stdgo.GoInt)];
                //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L372"
                _selectorIndex++;
                _decoded = (0 : stdgo.GoInt);
            };
            var _v = (_currentHuffmanTree.decode(_br) : stdgo.GoUInt16);
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L377"
            _decoded++;
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L379"
            if ((_v < (2 : stdgo.GoUInt16) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L381"
                if (_repeat == ((0 : stdgo.GoInt))) {
                    _repeatPower = (1 : stdgo.GoInt);
                };
                _repeat = (_repeat + ((_repeatPower << _v : stdgo.GoInt)) : stdgo.GoInt);
                _repeatPower = (_repeatPower << ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L389"
                if ((_repeat > (2097152 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L390"
                    return _err = stdgo.Go.asInterface((("repeat count too large" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError));
                };
                //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L392"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L395"
            if ((_repeat > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L398"
                if ((_repeat > ((@:checkr _bz2 ?? throw "null pointer dereference")._blockSize - _bufIndex : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L399"
                    return _err = stdgo.Go.asInterface((("repeats past end of block" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError));
                };
                //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L401"
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < _repeat : Bool)) {
                        var _b = (_mtf.first() : stdgo.GoUInt8);
(@:checkr _bz2 ?? throw "null pointer dereference")._tt[(_bufIndex : stdgo.GoInt)] = (_b : stdgo.GoUInt32);
//"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L404"
                        (@:checkr _bz2 ?? throw "null pointer dereference")._c[(_b : stdgo.GoInt)]++;
//"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L405"
                        _bufIndex++;
                        _i++;
                    };
                };
                _repeat = (0 : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L410"
            if ((_v : stdgo.GoInt) == ((_numSymbols - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L414"
                break;
            };
            var _b = (_mtf.decode(((_v - (1 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoInt)) : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L424"
            if ((_bufIndex >= (@:checkr _bz2 ?? throw "null pointer dereference")._blockSize : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L425"
                return _err = stdgo.Go.asInterface((("data exceeds block size" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError));
            };
            (@:checkr _bz2 ?? throw "null pointer dereference")._tt[(_bufIndex : stdgo.GoInt)] = (_b : stdgo.GoUInt32);
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L428"
            (@:checkr _bz2 ?? throw "null pointer dereference")._c[(_b : stdgo.GoInt)]++;
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L429"
            _bufIndex++;
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L432"
        if ((_origPtr >= (_bufIndex : stdgo.GoUInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L433"
            return _err = stdgo.Go.asInterface((("origPtr out of bounds" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError));
        };
        (@:checkr _bz2 ?? throw "null pointer dereference")._preRLE = ((@:checkr _bz2 ?? throw "null pointer dereference")._tt.__slice__(0, _bufIndex) : stdgo.Slice<stdgo.GoUInt32>);
        (@:checkr _bz2 ?? throw "null pointer dereference")._preRLEUsed = (0 : stdgo.GoInt);
        (@:checkr _bz2 ?? throw "null pointer dereference")._tPos = stdgo._internal.compress.bzip2.Bzip2__inversebwt._inverseBWT((@:checkr _bz2 ?? throw "null pointer dereference")._preRLE, _origPtr, ((@:checkr _bz2 ?? throw "null pointer dereference")._c.__slice__(0) : stdgo.Slice<stdgo.GoUInt>));
        (@:checkr _bz2 ?? throw "null pointer dereference")._lastByte = (-1 : stdgo.GoInt);
        (@:checkr _bz2 ?? throw "null pointer dereference")._byteRepeats = (0u32 : stdgo.GoUInt);
        (@:checkr _bz2 ?? throw "null pointer dereference")._repeats = (0u32 : stdgo.GoUInt);
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L445"
        return _err = (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _read( _bz2:stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_t_reader.T_reader>, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _bz2:stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_t_reader.T_reader> = _bz2;
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L164"
        while (true) {
            var _n = (_bz2._readFromBlock(_buf) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L166"
            if (((_n > (0 : stdgo.GoInt) : Bool) || (_buf.length == (0 : stdgo.GoInt)) : Bool)) {
                (@:checkr _bz2 ?? throw "null pointer dereference")._blockCRC = stdgo._internal.compress.bzip2.Bzip2__updatecrc._updateCRC((@:checkr _bz2 ?? throw "null pointer dereference")._blockCRC, (_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
                //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L168"
                return { _0 : _n, _1 : (null : stdgo.Error) };
            };
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L172"
            if ((@:checkr _bz2 ?? throw "null pointer dereference")._blockCRC != ((@:checkr _bz2 ?? throw "null pointer dereference")._wantBlockCRC)) {
                (@:checkr _bz2 ?? throw "null pointer dereference")._br._err = stdgo.Go.asInterface((("block checksum mismatch" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError));
                //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L174"
                return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _bz2 ?? throw "null pointer dereference")._br._err };
            };
            var _br = (stdgo.Go.setRef((@:checkr _bz2 ?? throw "null pointer dereference")._br) : stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_t_bitreader.T_bitReader>);
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L179"
            {
                final __value__ = _br.readBits64((48u32 : stdgo.GoUInt));
                if (__value__ == ((54156738319193i64 : stdgo.GoUInt64))) {
                    var _err = (_bz2._readBlock() : stdgo.Error);
                    //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L186"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L187"
                        return { _0 : (0 : stdgo.GoInt), _1 : _err };
                    };
                } else if (__value__ == ((25779555029136i64 : stdgo.GoUInt64))) {
                    var _wantFileCRC = (_br.readBits64((32u32 : stdgo.GoUInt)) : stdgo.GoUInt32);
                    //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L193"
                    if ((@:checkr _br ?? throw "null pointer dereference")._err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L194"
                        return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _br ?? throw "null pointer dereference")._err };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L196"
                    if ((@:checkr _bz2 ?? throw "null pointer dereference")._fileCRC != (_wantFileCRC)) {
                        (@:checkr _br ?? throw "null pointer dereference")._err = stdgo.Go.asInterface((("file checksum mismatch" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError));
                        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L198"
                        return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _br ?? throw "null pointer dereference")._err };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L204"
                    if (((@:checkr _br ?? throw "null pointer dereference")._bits % (8u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L205"
                        _br.readBits(((@:checkr _br ?? throw "null pointer dereference")._bits % (8u32 : stdgo.GoUInt) : stdgo.GoUInt));
                    };
                    var __tmp__ = (@:checkr _br ?? throw "null pointer dereference")._r.readByte(), _b:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L208"
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                        (@:checkr _br ?? throw "null pointer dereference")._err = stdgo._internal.io.Io_eof.eOF;
                        (@:checkr _bz2 ?? throw "null pointer dereference")._eof = true;
                        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L211"
                        return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eOF };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L213"
                    if (_err != null) {
                        (@:checkr _br ?? throw "null pointer dereference")._err = _err;
                        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L215"
                        return { _0 : (0 : stdgo.GoInt), _1 : _err };
                    };
                    var __tmp__ = (@:checkr _br ?? throw "null pointer dereference")._r.readByte(), _z:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L218"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L219"
                        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                            _err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
                        };
                        (@:checkr _br ?? throw "null pointer dereference")._err = _err;
                        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L223"
                        return { _0 : (0 : stdgo.GoInt), _1 : _err };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L225"
                    if (((_b != (66 : stdgo.GoUInt8)) || (_z != (90 : stdgo.GoUInt8)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L226"
                        return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((("bad magic value in continuation file" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError)) };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L228"
                    {
                        var _err = (_bz2._setup(false) : stdgo.Error);
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L229"
                            return { _0 : (0 : stdgo.GoInt), _1 : _err };
                        };
                    };
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L181"
                    return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((("bad magic value found" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError)) };
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _readFromBlock( _bz2:stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_t_reader.T_reader>, _buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        @:recv var _bz2:stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_t_reader.T_reader> = _bz2;
        var _n = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L118"
        while ((((((@:checkr _bz2 ?? throw "null pointer dereference")._repeats > (0u32 : stdgo.GoUInt) : Bool) || ((@:checkr _bz2 ?? throw "null pointer dereference")._preRLEUsed < ((@:checkr _bz2 ?? throw "null pointer dereference")._preRLE.length) : Bool) : Bool)) && (_n < (_buf.length) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L128"
            if (((@:checkr _bz2 ?? throw "null pointer dereference")._repeats > (0u32 : stdgo.GoUInt) : Bool)) {
                _buf[(_n : stdgo.GoInt)] = ((@:checkr _bz2 ?? throw "null pointer dereference")._lastByte : stdgo.GoUInt8);
                //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L130"
                _n++;
                //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L131"
                (@:checkr _bz2 ?? throw "null pointer dereference")._repeats--;
                //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L132"
                if ((@:checkr _bz2 ?? throw "null pointer dereference")._repeats == ((0u32 : stdgo.GoUInt))) {
                    (@:checkr _bz2 ?? throw "null pointer dereference")._lastByte = (-1 : stdgo.GoInt);
                };
                //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L135"
                continue;
            };
            (@:checkr _bz2 ?? throw "null pointer dereference")._tPos = (@:checkr _bz2 ?? throw "null pointer dereference")._preRLE[((@:checkr _bz2 ?? throw "null pointer dereference")._tPos : stdgo.GoInt)];
            var _b = ((@:checkr _bz2 ?? throw "null pointer dereference")._tPos : stdgo.GoUInt8);
            (@:checkr _bz2 ?? throw "null pointer dereference")._tPos = ((@:checkr _bz2 ?? throw "null pointer dereference")._tPos >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L141"
            (@:checkr _bz2 ?? throw "null pointer dereference")._preRLEUsed++;
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L143"
            if ((@:checkr _bz2 ?? throw "null pointer dereference")._byteRepeats == ((3u32 : stdgo.GoUInt))) {
                (@:checkr _bz2 ?? throw "null pointer dereference")._repeats = (_b : stdgo.GoUInt);
                (@:checkr _bz2 ?? throw "null pointer dereference")._byteRepeats = (0u32 : stdgo.GoUInt);
                //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L146"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L149"
            if ((@:checkr _bz2 ?? throw "null pointer dereference")._lastByte == ((_b : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L150"
                (@:checkr _bz2 ?? throw "null pointer dereference")._byteRepeats++;
            } else {
                (@:checkr _bz2 ?? throw "null pointer dereference")._byteRepeats = (0u32 : stdgo.GoUInt);
            };
            (@:checkr _bz2 ?? throw "null pointer dereference")._lastByte = (_b : stdgo.GoInt);
            _buf[(_n : stdgo.GoInt)] = _b;
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L157"
            _n++;
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L160"
        return _n;
    }
    @:keep
    @:tdfield
    static public function read( _bz2:stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_t_reader.T_reader>, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _bz2:stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_t_reader.T_reader> = _bz2;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L86"
        if ((@:checkr _bz2 ?? throw "null pointer dereference")._eof) {
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L87"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eOF };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L90"
        if (!(@:checkr _bz2 ?? throw "null pointer dereference")._setupDone) {
            _err = _bz2._setup(true);
            var _brErr = ((@:checkr _bz2 ?? throw "null pointer dereference")._br.err() : stdgo.Error);
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L93"
            if (_brErr != null) {
                _err = _brErr;
            };
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L96"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L97"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _err };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            (@:checkr _bz2 ?? throw "null pointer dereference")._setupDone = true;
        };
        {
            var __tmp__ = _bz2._read(_buf);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        var _brErr = ((@:checkr _bz2 ?? throw "null pointer dereference")._br.err() : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L104"
        if (_brErr != null) {
            _err = _brErr;
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L107"
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _setup( _bz2:stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_t_reader.T_reader>, _needMagic:Bool):stdgo.Error {
        @:recv var _bz2:stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_t_reader.T_reader> = _bz2;
        var _br = (stdgo.Go.setRef((@:checkr _bz2 ?? throw "null pointer dereference")._br) : stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_t_bitreader.T_bitReader>);
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L60"
        if (_needMagic) {
            var _magic = (_br.readBits((16u32 : stdgo.GoUInt)) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L62"
            if (_magic != ((16986 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L63"
                return stdgo.Go.asInterface((("bad magic value" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError));
            };
        };
        var _t = (_br.readBits((8u32 : stdgo.GoUInt)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L68"
        if (_t != ((104 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L69"
            return stdgo.Go.asInterface((("non-Huffman entropy encoding" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError));
        };
        var _level = (_br.readBits((8u32 : stdgo.GoUInt)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L73"
        if (((_level < (49 : stdgo.GoInt) : Bool) || (_level > (57 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L74"
            return stdgo.Go.asInterface((("invalid compression level" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError));
        };
        (@:checkr _bz2 ?? throw "null pointer dereference")._fileCRC = (0u32 : stdgo.GoUInt32);
        (@:checkr _bz2 ?? throw "null pointer dereference")._blockSize = ((100000 : stdgo.GoInt) * ((_level - (48 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L79"
        if (((@:checkr _bz2 ?? throw "null pointer dereference")._blockSize > ((@:checkr _bz2 ?? throw "null pointer dereference")._tt.length) : Bool)) {
            (@:checkr _bz2 ?? throw "null pointer dereference")._tt = (new stdgo.Slice<stdgo.GoUInt32>(((@:checkr _bz2 ?? throw "null pointer dereference")._blockSize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L82"
        return (null : stdgo.Error);
    }
}
