package stdgo._internal.compress.bzip2;
function testReader(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _vectors = (new stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2_t__struct_0.T__struct_0>(12, 12, ...[
({ _desc : ("hello world" : stdgo.GoString), _input : stdgo._internal.compress.bzip2.Bzip2__mustdecodehex._mustDecodeHex(("425a68393141592653594eece83600000251800010400006449080200031064c4101a7a9a580bb9431f8bb9229c28482776741b0" : stdgo.GoString)), _output : ((("hello world\n" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _fail : false } : stdgo._internal.compress.bzip2.Bzip2_t__struct_0.T__struct_0),
({ _desc : ("concatenated files" : stdgo.GoString), _input : stdgo._internal.compress.bzip2.Bzip2__mustdecodehex._mustDecodeHex(("425a68393141592653594eece83600000251800010400006449080200031064c4101a7a9a580bb9431f8bb9229c28482776741b0425a68393141592653594eece83600000251800010400006449080200031064c4101a7a9a580bb9431f8bb9229c28482776741b0" : stdgo.GoString)), _output : ((("hello world\nhello world\n" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _fail : false } : stdgo._internal.compress.bzip2.Bzip2_t__struct_0.T__struct_0),
({ _desc : ("32B zeros" : stdgo.GoString), _input : stdgo._internal.compress.bzip2.Bzip2__mustdecodehex._mustDecodeHex(("425a6839314159265359b5aa5098000000600040000004200021008283177245385090b5aa5098" : stdgo.GoString)), _output : (new stdgo.Slice<stdgo.GoUInt8>((32 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _fail : false } : stdgo._internal.compress.bzip2.Bzip2_t__struct_0.T__struct_0),
({ _desc : ("1MiB zeros" : stdgo.GoString), _input : stdgo._internal.compress.bzip2.Bzip2__mustdecodehex._mustDecodeHex(("425a683931415926535938571ce50008084000c0040008200030cc0529a60806c4201e2ee48a70a12070ae39ca" : stdgo.GoString)), _output : (new stdgo.Slice<stdgo.GoUInt8>((1048576 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _fail : false } : stdgo._internal.compress.bzip2.Bzip2_t__struct_0.T__struct_0),
({ _desc : ("random data" : stdgo.GoString), _input : stdgo._internal.compress.bzip2.Bzip2__mustloadfile._mustLoadFile(("testdata/pass-random1.bz2" : stdgo.GoString)), _output : stdgo._internal.compress.bzip2.Bzip2__mustloadfile._mustLoadFile(("testdata/pass-random1.bin" : stdgo.GoString)), _fail : false } : stdgo._internal.compress.bzip2.Bzip2_t__struct_0.T__struct_0),
({ _desc : ("random data - full symbol range" : stdgo.GoString), _input : stdgo._internal.compress.bzip2.Bzip2__mustloadfile._mustLoadFile(("testdata/pass-random2.bz2" : stdgo.GoString)), _output : stdgo._internal.compress.bzip2.Bzip2__mustloadfile._mustLoadFile(("testdata/pass-random2.bin" : stdgo.GoString)), _fail : false } : stdgo._internal.compress.bzip2.Bzip2_t__struct_0.T__struct_0),
({ _desc : ("random data - uses RLE1 stage" : stdgo.GoString), _input : stdgo._internal.compress.bzip2.Bzip2__mustdecodehex._mustDecodeHex(("425a6839314159265359d992d0f60000137dfe84020310091c1e280e100e042801099210094806c0110002e70806402000546034000034000000f2830000032000d3403264049270eb7a9280d308ca06ad28f6981bee1bf8160727c7364510d73a1e123083421b63f031f63993a0f40051fbf177245385090d992d0f60" : stdgo.GoString)), _output : stdgo._internal.compress.bzip2.Bzip2__mustdecodehex._mustDecodeHex(("92d5652616ac444a4a04af1a8a3964aca0450d43d6cf233bd03233f4ba92f8719e6c2a2bd4f5f88db07ecd0da3a33b263483db9b2c158786ad6363be35d17335ba" : stdgo.GoString)), _fail : false } : stdgo._internal.compress.bzip2.Bzip2_t__struct_0.T__struct_0),
({ _desc : ("1MiB sawtooth" : stdgo.GoString), _input : stdgo._internal.compress.bzip2.Bzip2__mustloadfile._mustLoadFile(("testdata/pass-sawtooth.bz2" : stdgo.GoString)), _output : ({
            var a = function():stdgo.Slice<stdgo.GoUInt8> {
                var _b = (new stdgo.Slice<stdgo.GoUInt8>((1048576 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                for (_i => _ in _b) {
                    _b[(_i : stdgo.GoInt)] = (_i : stdgo.GoUInt8);
                };
                return _b;
            };
            a();
        }), _fail : false } : stdgo._internal.compress.bzip2.Bzip2_t__struct_0.T__struct_0),
({ _desc : ("RLE2 buffer overrun - issue 5747" : stdgo.GoString), _input : stdgo._internal.compress.bzip2.Bzip2__mustloadfile._mustLoadFile(("testdata/fail-issue5747.bz2" : stdgo.GoString)), _fail : true, _output : (null : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.compress.bzip2.Bzip2_t__struct_0.T__struct_0),
({ _desc : ("out-of-range selector - issue 8363" : stdgo.GoString), _input : stdgo._internal.compress.bzip2.Bzip2__mustdecodehex._mustDecodeHex(("425a68393141592653594eece83600000251800010400006449080200031064c4101a7a9a580bb943117724538509000000000" : stdgo.GoString)), _fail : true, _output : (null : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.compress.bzip2.Bzip2_t__struct_0.T__struct_0),
({ _desc : ("bad block size - issue 13941" : stdgo.GoString), _input : stdgo._internal.compress.bzip2.Bzip2__mustdecodehex._mustDecodeHex(("425a683131415926535936dc55330063ffc0006000200020a40830008b0008b8bb9229c28481b6e2a998" : stdgo.GoString)), _fail : true, _output : (null : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.compress.bzip2.Bzip2_t__struct_0.T__struct_0),
({ _desc : ("bad huffman delta" : stdgo.GoString), _input : stdgo._internal.compress.bzip2.Bzip2__mustdecodehex._mustDecodeHex(("425a6836314159265359b1f7404b000000400040002000217d184682ee48a70a12163ee80960" : stdgo.GoString)), _fail : true, _output : (null : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.compress.bzip2.Bzip2_t__struct_0.T__struct_0)].concat([for (i in 12 ... (12 > 12 ? 12 : 12 : stdgo.GoInt).toBasic()) ({ _desc : ("" : stdgo.GoString), _input : (null : stdgo.Slice<stdgo.GoUInt8>), _output : (null : stdgo.Slice<stdgo.GoUInt8>), _fail : false } : stdgo._internal.compress.bzip2.Bzip2_t__struct_0.T__struct_0)])) : stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2_t__struct_0.T__struct_0>);
        for (_i => _v in _vectors) {
            var _rd = (stdgo._internal.compress.bzip2.Bzip2_newreader.newReader(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_v._input))) : stdgo._internal.io.Io_reader.Reader);
            var __tmp__ = stdgo._internal.io.Io_readall.readAll(_rd), _buf:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            {
                var _fail = (_err != null : Bool);
                if (_fail != (_v._fail)) {
                    if (_fail) {
                        @:check2r _t.errorf(("test %d (%s), unexpected failure: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_v._desc), stdgo.Go.toInterface(_err));
                    } else {
                        @:check2r _t.errorf(("test %d (%s), unexpected success" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_v._desc));
                    };
                };
            };
            if ((!_v._fail && !stdgo._internal.bytes.Bytes_equal.equal(_buf, _v._output) : Bool)) {
                @:check2r _t.errorf(("test %d (%s), output mismatch:\ngot  %s\nwant %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_v._desc), stdgo.Go.toInterface(stdgo._internal.compress.bzip2.Bzip2__trim._trim(_buf)), stdgo.Go.toInterface(stdgo._internal.compress.bzip2.Bzip2__trim._trim(_v._output)));
            };
        };
    }
