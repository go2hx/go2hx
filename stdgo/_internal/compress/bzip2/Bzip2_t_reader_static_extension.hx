package stdgo._internal.compress.bzip2;
@:keep @:allow(stdgo._internal.compress.bzip2.Bzip2.T_reader_asInterface) class T_reader_static_extension {
    @:keep
    @:tdfield
    static public function _readBlock( _bz2:stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_t_reader.T_reader>):stdgo.Error {
        @:recv var _bz2:stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_t_reader.T_reader> = _bz2;
        var _err = (null : stdgo.Error);
        var _br = (stdgo.Go.setRef((@:checkr _bz2 ?? throw "null pointer dereference")._br) : stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_t_bitreader.T_bitReader>);
        (@:checkr _bz2 ?? throw "null pointer dereference")._wantBlockCRC = (@:check2r _br.readBits64((32u32 : stdgo.GoUInt)) : stdgo.GoUInt32);
        (@:checkr _bz2 ?? throw "null pointer dereference")._blockCRC = (0u32 : stdgo.GoUInt32);
        (@:checkr _bz2 ?? throw "null pointer dereference")._fileCRC = (((((@:checkr _bz2 ?? throw "null pointer dereference")._fileCRC << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | ((@:checkr _bz2 ?? throw "null pointer dereference")._fileCRC >> (31i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32)) ^ (@:checkr _bz2 ?? throw "null pointer dereference")._wantBlockCRC : stdgo.GoUInt32);
        var _randomized = (@:check2r _br.readBits((1u32 : stdgo.GoUInt)) : stdgo.GoInt);
        if (_randomized != ((0 : stdgo.GoInt))) {
            return _err = stdgo.Go.asInterface((("deprecated randomized files" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError));
        };
        var _origPtr = (@:check2r _br.readBits((24u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        var _symbolRangeUsedBitmap = (@:check2r _br.readBits((16u32 : stdgo.GoUInt)) : stdgo.GoInt);
        var _symbolPresent = (new stdgo.Slice<Bool>((256 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<Bool>);
        var _numSymbols = (0 : stdgo.GoInt);
        {
            var _symRange = ((0u32 : stdgo.GoUInt) : stdgo.GoUInt);
            while ((_symRange < (16u32 : stdgo.GoUInt) : Bool)) {
                if ((_symbolRangeUsedBitmap & (((1 : stdgo.GoInt) << (((15u32 : stdgo.GoUInt) - _symRange : stdgo.GoUInt)) : stdgo.GoInt)) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                    var _bits = (@:check2r _br.readBits((16u32 : stdgo.GoUInt)) : stdgo.GoInt);
                    {
                        var _symbol = ((0u32 : stdgo.GoUInt) : stdgo.GoUInt);
                        while ((_symbol < (16u32 : stdgo.GoUInt) : Bool)) {
                            if ((_bits & (((1 : stdgo.GoInt) << (((15u32 : stdgo.GoUInt) - _symbol : stdgo.GoUInt)) : stdgo.GoInt)) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                                _symbolPresent[((((16u32 : stdgo.GoUInt) * _symRange : stdgo.GoUInt) + _symbol : stdgo.GoUInt) : stdgo.GoInt)] = true;
                                _numSymbols++;
                            };
                            _symbol++;
                        };
                    };
                };
                _symRange++;
            };
        };
        if (_numSymbols == ((0 : stdgo.GoInt))) {
            return _err = stdgo.Go.asInterface((("no symbols in input" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError));
        };
        var _numHuffmanTrees = (@:check2r _br.readBits((3u32 : stdgo.GoUInt)) : stdgo.GoInt);
        if (((_numHuffmanTrees < (2 : stdgo.GoInt) : Bool) || (_numHuffmanTrees > (6 : stdgo.GoInt) : Bool) : Bool)) {
            return _err = stdgo.Go.asInterface((("invalid number of Huffman trees" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError));
        };
        var _numSelectors = (@:check2r _br.readBits((15u32 : stdgo.GoUInt)) : stdgo.GoInt);
        var _treeIndexes = (new stdgo.Slice<stdgo.GoUInt8>((_numSelectors : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _mtfTreeDecoder = (stdgo._internal.compress.bzip2.Bzip2__newmtfdecoderwithrange._newMTFDecoderWithRange(_numHuffmanTrees) : stdgo._internal.compress.bzip2.Bzip2_t_movetofrontdecoder.T_moveToFrontDecoder);
        for (_i => _ in _treeIndexes) {
            var _c = (0 : stdgo.GoInt);
            while (true) {
                var _inc = (@:check2r _br.readBits((1u32 : stdgo.GoUInt)) : stdgo.GoInt);
                if (_inc == ((0 : stdgo.GoInt))) {
                    break;
                };
                _c++;
            };
            if ((_c >= _numHuffmanTrees : Bool)) {
                return _err = stdgo.Go.asInterface((("tree index too large" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError));
            };
            _treeIndexes[(_i : stdgo.GoInt)] = _mtfTreeDecoder.decode(_c);
        };
        var _symbols = (new stdgo.Slice<stdgo.GoUInt8>((_numSymbols : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _nextSymbol = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (256 : stdgo.GoInt) : Bool)) {
                if (_symbolPresent[(_i : stdgo.GoInt)]) {
                    _symbols[(_nextSymbol : stdgo.GoInt)] = (_i : stdgo.GoUInt8);
                    _nextSymbol++;
                };
                _i++;
            };
        };
        var _mtf = (stdgo._internal.compress.bzip2.Bzip2__newmtfdecoder._newMTFDecoder(_symbols) : stdgo._internal.compress.bzip2.Bzip2_t_movetofrontdecoder.T_moveToFrontDecoder);
        _numSymbols = (_numSymbols + ((2 : stdgo.GoInt)) : stdgo.GoInt);
        var _huffmanTrees = (new stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2_t_huffmantree.T_huffmanTree>((_numHuffmanTrees : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_numHuffmanTrees : stdgo.GoInt).toBasic() > 0 ? (_numHuffmanTrees : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.compress.bzip2.Bzip2_t_huffmantree.T_huffmanTree)]) : stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2_t_huffmantree.T_huffmanTree>);
        var _lengths = (new stdgo.Slice<stdgo.GoUInt8>((_numSymbols : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _ in _huffmanTrees) {
            var _length = (@:check2r _br.readBits((5u32 : stdgo.GoUInt)) : stdgo.GoInt);
            for (_j => _ in _lengths) {
                while (true) {
                    if (((_length < (1 : stdgo.GoInt) : Bool) || (_length > (20 : stdgo.GoInt) : Bool) : Bool)) {
                        return _err = stdgo.Go.asInterface((("Huffman length out of range" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError));
                    };
                    if (!@:check2r _br.readBit()) {
                        break;
                    };
                    if (@:check2r _br.readBit()) {
                        _length--;
                    } else {
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
            if (_err != null) {
                return _err;
            };
        };
        var _selectorIndex = (1 : stdgo.GoInt);
        if ((_treeIndexes.length) == ((0 : stdgo.GoInt))) {
            return _err = stdgo.Go.asInterface((("no tree selectors given" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError));
        };
        if (((_treeIndexes[(0 : stdgo.GoInt)] : stdgo.GoInt) >= (_huffmanTrees.length) : Bool)) {
            return _err = stdgo.Go.asInterface((("tree selector out of range" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError));
        };
        var _currentHuffmanTree = (_huffmanTrees[(_treeIndexes[(0 : stdgo.GoInt)] : stdgo.GoInt)] : stdgo._internal.compress.bzip2.Bzip2_t_huffmantree.T_huffmanTree);
        var _bufIndex = (0 : stdgo.GoInt);
        var _repeat = (0 : stdgo.GoInt);
        var _repeatPower = (0 : stdgo.GoInt);
        for (_i => _ in (@:checkr _bz2 ?? throw "null pointer dereference")._c) {
            (@:checkr _bz2 ?? throw "null pointer dereference")._c[(_i : stdgo.GoInt)] = (0u32 : stdgo.GoUInt);
        };
        var _decoded = (0 : stdgo.GoInt);
        while (true) {
            if (_decoded == ((50 : stdgo.GoInt))) {
                if ((_selectorIndex >= _numSelectors : Bool)) {
                    return _err = stdgo.Go.asInterface((("insufficient selector indices for number of symbols" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError));
                };
                if (((_treeIndexes[(_selectorIndex : stdgo.GoInt)] : stdgo.GoInt) >= (_huffmanTrees.length) : Bool)) {
                    return _err = stdgo.Go.asInterface((("tree selector out of range" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError));
                };
                _currentHuffmanTree = _huffmanTrees[(_treeIndexes[(_selectorIndex : stdgo.GoInt)] : stdgo.GoInt)];
                _selectorIndex++;
                _decoded = (0 : stdgo.GoInt);
            };
            var _v = (@:check2 _currentHuffmanTree.decode(_br) : stdgo.GoUInt16);
            _decoded++;
            if ((_v < (2 : stdgo.GoUInt16) : Bool)) {
                if (_repeat == ((0 : stdgo.GoInt))) {
                    _repeatPower = (1 : stdgo.GoInt);
                };
                _repeat = (_repeat + ((_repeatPower << _v : stdgo.GoInt)) : stdgo.GoInt);
                _repeatPower = (_repeatPower << ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt);
                if ((_repeat > (2097152 : stdgo.GoInt) : Bool)) {
                    return _err = stdgo.Go.asInterface((("repeat count too large" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError));
                };
                continue;
            };
            if ((_repeat > (0 : stdgo.GoInt) : Bool)) {
                if ((_repeat > ((@:checkr _bz2 ?? throw "null pointer dereference")._blockSize - _bufIndex : stdgo.GoInt) : Bool)) {
                    return _err = stdgo.Go.asInterface((("repeats past end of block" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError));
                };
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < _repeat : Bool)) {
                        var _b = (_mtf.first() : stdgo.GoUInt8);
(@:checkr _bz2 ?? throw "null pointer dereference")._tt[(_bufIndex : stdgo.GoInt)] = (_b : stdgo.GoUInt32);
(@:checkr _bz2 ?? throw "null pointer dereference")._c[(_b : stdgo.GoInt)]++;
_bufIndex++;
                        _i++;
                    };
                };
                _repeat = (0 : stdgo.GoInt);
            };
            if ((_v : stdgo.GoInt) == ((_numSymbols - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                break;
            };
            var _b = (_mtf.decode(((_v - (1 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoInt)) : stdgo.GoUInt8);
            if ((_bufIndex >= (@:checkr _bz2 ?? throw "null pointer dereference")._blockSize : Bool)) {
                return _err = stdgo.Go.asInterface((("data exceeds block size" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError));
            };
            (@:checkr _bz2 ?? throw "null pointer dereference")._tt[(_bufIndex : stdgo.GoInt)] = (_b : stdgo.GoUInt32);
            (@:checkr _bz2 ?? throw "null pointer dereference")._c[(_b : stdgo.GoInt)]++;
            _bufIndex++;
        };
        if ((_origPtr >= (_bufIndex : stdgo.GoUInt) : Bool)) {
            return _err = stdgo.Go.asInterface((("origPtr out of bounds" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError));
        };
        (@:checkr _bz2 ?? throw "null pointer dereference")._preRLE = ((@:checkr _bz2 ?? throw "null pointer dereference")._tt.__slice__(0, _bufIndex) : stdgo.Slice<stdgo.GoUInt32>);
        (@:checkr _bz2 ?? throw "null pointer dereference")._preRLEUsed = (0 : stdgo.GoInt);
        (@:checkr _bz2 ?? throw "null pointer dereference")._tPos = stdgo._internal.compress.bzip2.Bzip2__inversebwt._inverseBWT((@:checkr _bz2 ?? throw "null pointer dereference")._preRLE, _origPtr, ((@:checkr _bz2 ?? throw "null pointer dereference")._c.__slice__(0) : stdgo.Slice<stdgo.GoUInt>));
        (@:checkr _bz2 ?? throw "null pointer dereference")._lastByte = (-1 : stdgo.GoInt);
        (@:checkr _bz2 ?? throw "null pointer dereference")._byteRepeats = (0u32 : stdgo.GoUInt);
        (@:checkr _bz2 ?? throw "null pointer dereference")._repeats = (0u32 : stdgo.GoUInt);
        return _err = (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _read( _bz2:stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_t_reader.T_reader>, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _bz2:stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_t_reader.T_reader> = _bz2;
        while (true) {
            var _n = (@:check2r _bz2._readFromBlock(_buf) : stdgo.GoInt);
            if (((_n > (0 : stdgo.GoInt) : Bool) || (_buf.length == (0 : stdgo.GoInt)) : Bool)) {
                (@:checkr _bz2 ?? throw "null pointer dereference")._blockCRC = stdgo._internal.compress.bzip2.Bzip2__updatecrc._updateCRC((@:checkr _bz2 ?? throw "null pointer dereference")._blockCRC, (_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
                return { _0 : _n, _1 : (null : stdgo.Error) };
            };
            if ((@:checkr _bz2 ?? throw "null pointer dereference")._blockCRC != ((@:checkr _bz2 ?? throw "null pointer dereference")._wantBlockCRC)) {
                (@:checkr _bz2 ?? throw "null pointer dereference")._br._err = stdgo.Go.asInterface((("block checksum mismatch" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError));
                return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _bz2 ?? throw "null pointer dereference")._br._err };
            };
            var _br = (stdgo.Go.setRef((@:checkr _bz2 ?? throw "null pointer dereference")._br) : stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_t_bitreader.T_bitReader>);
            {
                final __value__ = @:check2r _br.readBits64((48u32 : stdgo.GoUInt));
                if (__value__ == ((54156738319193i64 : stdgo.GoUInt64))) {
                    var _err = (@:check2r _bz2._readBlock() : stdgo.Error);
                    if (_err != null) {
                        return { _0 : (0 : stdgo.GoInt), _1 : _err };
                    };
                } else if (__value__ == ((25779555029136i64 : stdgo.GoUInt64))) {
                    var _wantFileCRC = (@:check2r _br.readBits64((32u32 : stdgo.GoUInt)) : stdgo.GoUInt32);
                    if ((@:checkr _br ?? throw "null pointer dereference")._err != null) {
                        return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _br ?? throw "null pointer dereference")._err };
                    };
                    if ((@:checkr _bz2 ?? throw "null pointer dereference")._fileCRC != (_wantFileCRC)) {
                        (@:checkr _br ?? throw "null pointer dereference")._err = stdgo.Go.asInterface((("file checksum mismatch" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError));
                        return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _br ?? throw "null pointer dereference")._err };
                    };
                    if (((@:checkr _br ?? throw "null pointer dereference")._bits % (8u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
                        @:check2r _br.readBits(((@:checkr _br ?? throw "null pointer dereference")._bits % (8u32 : stdgo.GoUInt) : stdgo.GoUInt));
                    };
                    var __tmp__ = (@:checkr _br ?? throw "null pointer dereference")._r.readByte(), _b:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                        (@:checkr _br ?? throw "null pointer dereference")._err = stdgo._internal.io.Io_eof.eOF;
                        (@:checkr _bz2 ?? throw "null pointer dereference")._eof = true;
                        return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eOF };
                    };
                    if (_err != null) {
                        (@:checkr _br ?? throw "null pointer dereference")._err = _err;
                        return { _0 : (0 : stdgo.GoInt), _1 : _err };
                    };
                    var __tmp__ = (@:checkr _br ?? throw "null pointer dereference")._r.readByte(), _z:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                            _err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
                        };
                        (@:checkr _br ?? throw "null pointer dereference")._err = _err;
                        return { _0 : (0 : stdgo.GoInt), _1 : _err };
                    };
                    if (((_b != (66 : stdgo.GoUInt8)) || (_z != (90 : stdgo.GoUInt8)) : Bool)) {
                        return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((("bad magic value in continuation file" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError)) };
                    };
                    {
                        var _err = (@:check2r _bz2._setup(false) : stdgo.Error);
                        if (_err != null) {
                            return { _0 : (0 : stdgo.GoInt), _1 : _err };
                        };
                    };
                } else {
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
        while ((((((@:checkr _bz2 ?? throw "null pointer dereference")._repeats > (0u32 : stdgo.GoUInt) : Bool) || ((@:checkr _bz2 ?? throw "null pointer dereference")._preRLEUsed < ((@:checkr _bz2 ?? throw "null pointer dereference")._preRLE.length) : Bool) : Bool)) && (_n < (_buf.length) : Bool) : Bool)) {
            if (((@:checkr _bz2 ?? throw "null pointer dereference")._repeats > (0u32 : stdgo.GoUInt) : Bool)) {
                _buf[(_n : stdgo.GoInt)] = ((@:checkr _bz2 ?? throw "null pointer dereference")._lastByte : stdgo.GoUInt8);
                _n++;
                (@:checkr _bz2 ?? throw "null pointer dereference")._repeats--;
                if ((@:checkr _bz2 ?? throw "null pointer dereference")._repeats == ((0u32 : stdgo.GoUInt))) {
                    (@:checkr _bz2 ?? throw "null pointer dereference")._lastByte = (-1 : stdgo.GoInt);
                };
                continue;
            };
            (@:checkr _bz2 ?? throw "null pointer dereference")._tPos = (@:checkr _bz2 ?? throw "null pointer dereference")._preRLE[((@:checkr _bz2 ?? throw "null pointer dereference")._tPos : stdgo.GoInt)];
            var _b = ((@:checkr _bz2 ?? throw "null pointer dereference")._tPos : stdgo.GoUInt8);
            (@:checkr _bz2 ?? throw "null pointer dereference")._tPos = ((@:checkr _bz2 ?? throw "null pointer dereference")._tPos >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
            (@:checkr _bz2 ?? throw "null pointer dereference")._preRLEUsed++;
            if ((@:checkr _bz2 ?? throw "null pointer dereference")._byteRepeats == ((3u32 : stdgo.GoUInt))) {
                (@:checkr _bz2 ?? throw "null pointer dereference")._repeats = (_b : stdgo.GoUInt);
                (@:checkr _bz2 ?? throw "null pointer dereference")._byteRepeats = (0u32 : stdgo.GoUInt);
                continue;
            };
            if ((@:checkr _bz2 ?? throw "null pointer dereference")._lastByte == ((_b : stdgo.GoInt))) {
                (@:checkr _bz2 ?? throw "null pointer dereference")._byteRepeats++;
            } else {
                (@:checkr _bz2 ?? throw "null pointer dereference")._byteRepeats = (0u32 : stdgo.GoUInt);
            };
            (@:checkr _bz2 ?? throw "null pointer dereference")._lastByte = (_b : stdgo.GoInt);
            _buf[(_n : stdgo.GoInt)] = _b;
            _n++;
        };
        return _n;
    }
    @:keep
    @:tdfield
    static public function read( _bz2:stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_t_reader.T_reader>, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _bz2:stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_t_reader.T_reader> = _bz2;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((@:checkr _bz2 ?? throw "null pointer dereference")._eof) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eOF };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        if (!(@:checkr _bz2 ?? throw "null pointer dereference")._setupDone) {
            _err = @:check2r _bz2._setup(true);
            var _brErr = (@:check2 (@:checkr _bz2 ?? throw "null pointer dereference")._br.err() : stdgo.Error);
            if (_brErr != null) {
                _err = _brErr;
            };
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _err };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            (@:checkr _bz2 ?? throw "null pointer dereference")._setupDone = true;
        };
        {
            var __tmp__ = @:check2r _bz2._read(_buf);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        var _brErr = (@:check2 (@:checkr _bz2 ?? throw "null pointer dereference")._br.err() : stdgo.Error);
        if (_brErr != null) {
            _err = _brErr;
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _setup( _bz2:stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_t_reader.T_reader>, _needMagic:Bool):stdgo.Error {
        @:recv var _bz2:stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_t_reader.T_reader> = _bz2;
        var _br = (stdgo.Go.setRef((@:checkr _bz2 ?? throw "null pointer dereference")._br) : stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_t_bitreader.T_bitReader>);
        if (_needMagic) {
            var _magic = (@:check2r _br.readBits((16u32 : stdgo.GoUInt)) : stdgo.GoInt);
            if (_magic != ((16986 : stdgo.GoInt))) {
                return stdgo.Go.asInterface((("bad magic value" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError));
            };
        };
        var _t = (@:check2r _br.readBits((8u32 : stdgo.GoUInt)) : stdgo.GoInt);
        if (_t != ((104 : stdgo.GoInt))) {
            return stdgo.Go.asInterface((("non-Huffman entropy encoding" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError));
        };
        var _level = (@:check2r _br.readBits((8u32 : stdgo.GoUInt)) : stdgo.GoInt);
        if (((_level < (49 : stdgo.GoInt) : Bool) || (_level > (57 : stdgo.GoInt) : Bool) : Bool)) {
            return stdgo.Go.asInterface((("invalid compression level" : stdgo.GoString) : stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError));
        };
        (@:checkr _bz2 ?? throw "null pointer dereference")._fileCRC = (0u32 : stdgo.GoUInt32);
        (@:checkr _bz2 ?? throw "null pointer dereference")._blockSize = ((100000 : stdgo.GoInt) * ((_level - (48 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        if (((@:checkr _bz2 ?? throw "null pointer dereference")._blockSize > ((@:checkr _bz2 ?? throw "null pointer dereference")._tt.length) : Bool)) {
            (@:checkr _bz2 ?? throw "null pointer dereference")._tt = (new stdgo.Slice<stdgo.GoUInt32>(((@:checkr _bz2 ?? throw "null pointer dereference")._blockSize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        };
        return (null : stdgo.Error);
    }
}
