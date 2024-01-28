package stdgo.compress.flate;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var _levels : Dynamic;
@:invalid var _errWriterClosed : Dynamic;
@:invalid var _lengthExtraBits : Dynamic;
@:invalid var _lengthBase : Dynamic;
@:invalid var _offsetExtraBits : Dynamic;
@:invalid var _offsetBase : Dynamic;
@:invalid var _codegenOrder : Dynamic;
@:invalid var _fixedOffsetEncoding : Dynamic;
@:invalid var _fixedLiteralEncoding : Dynamic;
@:invalid var _codeOrder : Dynamic;
@:invalid var _lengthCodes : Dynamic;
@:invalid var _offsetCodes : Dynamic;
@:invalid var _deflateTests : Dynamic;
@:invalid var _deflateInflateTests : Dynamic;
@:invalid var _reverseBitsTests : Dynamic;
@:invalid var _deflateInflateStringTests : Dynamic;
@:invalid var _errIO : Dynamic;
@:invalid var _update : Dynamic;
@:invalid var _writeBlockTests : Dynamic;
@:invalid var _suites : Dynamic;
@:invalid var _levelTests : Dynamic;
@:invalid var _sizes : Dynamic;
@:invalid var noCompression : Dynamic;
@:invalid var bestSpeed : Dynamic;
@:invalid var bestCompression : Dynamic;
@:invalid var defaultCompression : Dynamic;
@:invalid var huffmanOnly : Dynamic;
@:invalid var _logWindowSize : Dynamic;
@:invalid var _windowSize : Dynamic;
@:invalid var _windowMask : Dynamic;
@:invalid var _baseMatchLength : Dynamic;
@:invalid var _minMatchLength : Dynamic;
@:invalid var _maxMatchLength : Dynamic;
@:invalid var _baseMatchOffset : Dynamic;
@:invalid var _maxMatchOffset : Dynamic;
@:invalid var _maxFlateBlockTokens : Dynamic;
@:invalid var _maxStoreBlockSize : Dynamic;
@:invalid var _hashBits : Dynamic;
@:invalid var _hashSize : Dynamic;
@:invalid var _hashMask : Dynamic;
@:invalid var _maxHashOffset : Dynamic;
@:invalid var _skipNever : Dynamic;
@:invalid var _hashmul : Dynamic;
@:invalid var _tableBits : Dynamic;
@:invalid var _tableSize : Dynamic;
@:invalid var _tableMask : Dynamic;
@:invalid var _tableShift : Dynamic;
@:invalid var _bufferReset : Dynamic;
@:invalid var _inputMargin : Dynamic;
@:invalid var _minNonLiteralBlockSize : Dynamic;
@:invalid var _offsetCodeCount : Dynamic;
@:invalid var _endBlockMarker : Dynamic;
@:invalid var _lengthCodesStart : Dynamic;
@:invalid var _codegenCodeCount : Dynamic;
@:invalid var _badCode : Dynamic;
@:invalid var _bufferFlushSize : Dynamic;
@:invalid var _bufferSize : Dynamic;
@:invalid var _huffOffset : Dynamic;
@:invalid var _ml : Dynamic;
@:invalid var _maxBitsLimit : Dynamic;
@:invalid var _maxCodeLen : Dynamic;
@:invalid var _maxNumLit : Dynamic;
@:invalid var _maxNumDist : Dynamic;
@:invalid var _numCodes : Dynamic;
@:invalid var _fixedOnce : Dynamic;
@:invalid var _fixedHuffmanDecoder : Dynamic;
@:invalid var _huffmanChunkBits : Dynamic;
@:invalid var _huffmanNumChunks : Dynamic;
@:invalid var _huffmanCountMask : Dynamic;
@:invalid var _huffmanValueShift : Dynamic;
@:invalid var _lengthShift : Dynamic;
@:invalid var _offsetMask : Dynamic;
@:invalid var _typeMask : Dynamic;
@:invalid var _literalType : Dynamic;
@:invalid var _matchType : Dynamic;
typedef Resetter = stdgo._internal.compress.flate.Flate.Resetter;
typedef Reader = stdgo._internal.compress.flate.Flate.Reader;
@:invalid typedef T_compressionLevel = Dynamic;
@:invalid typedef T_compressor = Dynamic;
@:invalid typedef T_dictWriter = Dynamic;
@:invalid typedef Writer = Dynamic;
@:invalid typedef T_deflateTest = Dynamic;
@:invalid typedef T_deflateInflateTest = Dynamic;
@:invalid typedef T_reverseBitsTest = Dynamic;
@:invalid typedef T_sparseReader = Dynamic;
@:invalid typedef T_syncBuffer = Dynamic;
@:invalid typedef T_deflateInflateStringTest = Dynamic;
@:invalid typedef T_failWriter = Dynamic;
@:invalid typedef T_tableEntry = Dynamic;
@:invalid typedef T_deflateFast = Dynamic;
@:invalid typedef T_dictDecoder = Dynamic;
@:invalid typedef T_huffmanBitWriter = Dynamic;
@:invalid typedef T_huffTest = Dynamic;
@:invalid typedef T_hcode = Dynamic;
@:invalid typedef T_huffmanEncoder = Dynamic;
@:invalid typedef T_literalNode = Dynamic;
@:invalid typedef T_levelInfo = Dynamic;
@:invalid typedef ReadError = Dynamic;
@:invalid typedef WriteError = Dynamic;
@:invalid typedef T_huffmanDecoder = Dynamic;
@:invalid typedef T_decompressor = Dynamic;
@:invalid typedef T_errorWriter = Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.compress.flate.Flate.T__struct_0;
@:invalid typedef T__struct_1_asInterface = Dynamic;
@:invalid typedef T__struct_1_static_extension = Dynamic;
typedef T__struct_1 = stdgo._internal.compress.flate.Flate.T__struct_1;
@:invalid typedef T__struct_2_asInterface = Dynamic;
@:invalid typedef T__struct_2_static_extension = Dynamic;
typedef T__struct_2 = stdgo._internal.compress.flate.Flate.T__struct_2;
@:invalid typedef T__struct_3_asInterface = Dynamic;
@:invalid typedef T__struct_3_static_extension = Dynamic;
typedef T__struct_3 = stdgo._internal.compress.flate.Flate.T__struct_3;
@:invalid typedef T__struct_4_asInterface = Dynamic;
@:invalid typedef T__struct_4_static_extension = Dynamic;
typedef T__struct_4 = stdgo._internal.compress.flate.Flate.T__struct_4;
@:invalid typedef T__struct_5_asInterface = Dynamic;
@:invalid typedef T__struct_5_static_extension = Dynamic;
typedef T__struct_5 = stdgo._internal.compress.flate.Flate.T__struct_5;
@:invalid typedef T__struct_6_asInterface = Dynamic;
@:invalid typedef T__struct_6_static_extension = Dynamic;
typedef T__struct_6 = stdgo._internal.compress.flate.Flate.T__struct_6;
@:invalid typedef T__struct_7_asInterface = Dynamic;
@:invalid typedef T__struct_7_static_extension = Dynamic;
typedef T__struct_7 = stdgo._internal.compress.flate.Flate.T__struct_7;
typedef T_byLiteral = stdgo._internal.compress.flate.Flate.T_byLiteral;
typedef T_byFreq = stdgo._internal.compress.flate.Flate.T_byFreq;
typedef CorruptInputError = stdgo._internal.compress.flate.Flate.CorruptInputError;
typedef InternalError = stdgo._internal.compress.flate.Flate.InternalError;
typedef T_token = stdgo._internal.compress.flate.Flate.T_token;
function _hash4(_b:stdgo.Slice<stdgo.GoByte>):Void {}
function _bulkHash4(_b:stdgo.Slice<stdgo.GoByte>, _dst:stdgo.Slice<stdgo.GoUInt32>):Void {}
function _matchLen(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>, _max:stdgo.GoInt):Void {}
function newWriter(_w:stdgo._internal.io.Io.Writer, _level:stdgo.GoInt):Void {}
function newWriterDict(_w:stdgo._internal.io.Io.Writer, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoByte>):Void {}
function _largeDataChunk():Void {}
function testBulkHash4(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testDeflate(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testWriterClose(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testVeryLongSparseChunk(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _newSyncBuffer():Void {}
function _testSync(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _level:stdgo.GoInt, _input:stdgo.Slice<stdgo.GoByte>, _name:stdgo.GoString):Void {}
function _testToFromWithLevelAndLimit(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _level:stdgo.GoInt, _input:stdgo.Slice<stdgo.GoByte>, _name:stdgo.GoString, _limit:stdgo.GoInt):Void {}
function _testToFromWithLimit(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _input:stdgo.Slice<stdgo.GoByte>, _name:stdgo.GoString, _limit:stdgo.GoArray<stdgo.GoInt>):Void {}
function testDeflateInflate(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testReverseBits(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testDeflateInflateString(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testReaderDict(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testWriterDict(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testRegression2508(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testWriterReset(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _testResetOutput(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoByte>):Void {}
function testBestSpeed(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testWriterPersistentWriteError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testWriterPersistentFlushError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testWriterPersistentCloseError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _checkErrors(_got:stdgo.Slice<stdgo.Error>, _want:stdgo.Error, _t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testBestSpeedMatch(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testBestSpeedMaxMatchOffset(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testBestSpeedShiftOffsets(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testMaxStackSize(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _load32(_b:stdgo.Slice<stdgo.GoByte>, _i:stdgo.GoInt32):Void {}
function _load64(_b:stdgo.Slice<stdgo.GoByte>, _i:stdgo.GoInt32):Void {}
function _hash(_u:stdgo.GoUInt32):Void {}
function _newDeflateFast():Void {}
function _emitLiteral(_dst:stdgo.Slice<T_token>, _lit:stdgo.Slice<stdgo.GoByte>):Void {}
function testDictDecoder(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testIssue5915(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testIssue5962(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testIssue6255(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testInvalidEncoding(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testInvalidBits(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testStreams(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testTruncatedStreams(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testReaderEarlyEOF(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _newHuffmanBitWriter(_w:stdgo._internal.io.Io.Writer):Void {}
function _histogram(_b:stdgo.Slice<stdgo.GoByte>, _h:stdgo.Slice<stdgo.GoInt32>):Void {}
function testBlockHuff(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _testBlockHuff(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _in:stdgo.GoString, _out:stdgo.GoString):Void {}
function testWriteBlock(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testWriteBlockDynamic(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _testBlock(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _test:T_huffTest, _ttype:stdgo.GoString):Void {}
function _writeToType(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _ttype:stdgo.GoString, _bw:stdgo.Ref<T_huffmanBitWriter>, _tok:stdgo.Slice<T_token>, _input:stdgo.Slice<stdgo.GoByte>):Void {}
function _testWriterEOF(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _ttype:stdgo.GoString, _test:T_huffTest, _useInput:Bool):Void {}
function _maxNode():Void {}
function _newHuffmanEncoder(_size:stdgo.GoInt):Void {}
function _generateFixedLiteralEncoding():Void {}
function _generateFixedOffsetEncoding():Void {}
function _reverseBits(_number:stdgo.GoUInt16, _bitLength:stdgo.GoByte):Void {}
function _noEOF(_e:stdgo.Error):Void {}
function _fixedHuffmanDecoderInit():Void {}
function newReader(_r:stdgo._internal.io.Io.Reader):Void {}
function newReaderDict(_r:stdgo._internal.io.Io.Reader, _dict:stdgo.Slice<stdgo.GoByte>):Void {}
function testReset(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testReaderTruncated(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testResetDict(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testReaderReusesReaderBuffer(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testNlitOutOfRange(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function benchmarkDecode(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function _doBench(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _f:(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _buf:stdgo.Slice<stdgo.GoByte>, _level:stdgo.GoInt, _n:stdgo.GoInt) -> Void):Void {}
function _literalToken(_literal:stdgo.GoUInt32):Void {}
function _matchToken(_xlength:stdgo.GoUInt32, _xoffset:stdgo.GoUInt32):Void {}
function _lengthCode(_len:stdgo.GoUInt32):Void {}
function _offsetCode(_off:stdgo.GoUInt32):Void {}
function benchmarkEncode(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function testWriteError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testDeterministic(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _testDeterministic(_i:stdgo.GoInt, _t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testDeflateFast_Reset(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
@:invalid var _ : Dynamic;
@:invalid typedef T_compressor_asInterface = Dynamic;
@:invalid typedef T_compressor_static_extension = Dynamic;
@:invalid typedef T_dictWriter_asInterface = Dynamic;
@:invalid typedef T_dictWriter_static_extension = Dynamic;
@:invalid typedef Writer_asInterface = Dynamic;
@:invalid typedef Writer_static_extension = Dynamic;
@:invalid typedef T_sparseReader_asInterface = Dynamic;
@:invalid typedef T_sparseReader_static_extension = Dynamic;
@:invalid typedef T_syncBuffer_asInterface = Dynamic;
@:invalid typedef T_syncBuffer_static_extension = Dynamic;
@:invalid typedef T_failWriter_asInterface = Dynamic;
@:invalid typedef T_failWriter_static_extension = Dynamic;
@:invalid typedef T_deflateFast_asInterface = Dynamic;
@:invalid typedef T_deflateFast_static_extension = Dynamic;
@:invalid typedef T_dictDecoder_asInterface = Dynamic;
@:invalid typedef T_dictDecoder_static_extension = Dynamic;
@:invalid typedef T_huffmanBitWriter_asInterface = Dynamic;
@:invalid typedef T_huffmanBitWriter_static_extension = Dynamic;
@:invalid typedef T_hcode_asInterface = Dynamic;
@:invalid typedef T_hcode_static_extension = Dynamic;
@:invalid typedef T_huffmanEncoder_asInterface = Dynamic;
@:invalid typedef T_huffmanEncoder_static_extension = Dynamic;
@:invalid typedef ReadError_asInterface = Dynamic;
@:invalid typedef ReadError_static_extension = Dynamic;
@:invalid typedef WriteError_asInterface = Dynamic;
@:invalid typedef WriteError_static_extension = Dynamic;
@:invalid typedef T_huffmanDecoder_asInterface = Dynamic;
@:invalid typedef T_huffmanDecoder_static_extension = Dynamic;
@:invalid typedef T_decompressor_asInterface = Dynamic;
@:invalid typedef T_decompressor_static_extension = Dynamic;
@:invalid typedef T_errorWriter_asInterface = Dynamic;
@:invalid typedef T_errorWriter_static_extension = Dynamic;
@:invalid typedef T_byLiteral_asInterface = Dynamic;
@:invalid typedef T_byLiteral_static_extension = Dynamic;
@:invalid typedef T_byFreq_asInterface = Dynamic;
@:invalid typedef T_byFreq_static_extension = Dynamic;
@:invalid typedef CorruptInputError_asInterface = Dynamic;
@:invalid typedef CorruptInputError_static_extension = Dynamic;
@:invalid typedef InternalError_asInterface = Dynamic;
@:invalid typedef InternalError_static_extension = Dynamic;
@:invalid typedef T_token_asInterface = Dynamic;
@:invalid typedef T_token_static_extension = Dynamic;
