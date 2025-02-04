package stdgo._internal.compress.bzip2;
function testBitReader(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _vectors = (new stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2_t__struct_1.T__struct_1>(9, 9, ...[({ _nbits : (1u32 : stdgo.GoUInt), _value : (1 : stdgo.GoInt), _fail : false } : stdgo._internal.compress.bzip2.Bzip2_t__struct_1.T__struct_1), ({ _nbits : (1u32 : stdgo.GoUInt), _value : (0 : stdgo.GoInt), _fail : false } : stdgo._internal.compress.bzip2.Bzip2_t__struct_1.T__struct_1), ({ _nbits : (1u32 : stdgo.GoUInt), _value : (1 : stdgo.GoInt), _fail : false } : stdgo._internal.compress.bzip2.Bzip2_t__struct_1.T__struct_1), ({ _nbits : (5u32 : stdgo.GoUInt), _value : (11 : stdgo.GoInt), _fail : false } : stdgo._internal.compress.bzip2.Bzip2_t__struct_1.T__struct_1), ({ _nbits : (32u32 : stdgo.GoUInt), _value : (305419896 : stdgo.GoInt), _fail : false } : stdgo._internal.compress.bzip2.Bzip2_t__struct_1.T__struct_1), ({ _nbits : (15u32 : stdgo.GoUInt), _value : (14495 : stdgo.GoInt), _fail : false } : stdgo._internal.compress.bzip2.Bzip2_t__struct_1.T__struct_1), ({ _nbits : (3u32 : stdgo.GoUInt), _value : (6 : stdgo.GoInt), _fail : false } : stdgo._internal.compress.bzip2.Bzip2_t__struct_1.T__struct_1), ({ _nbits : (6u32 : stdgo.GoUInt), _value : (13 : stdgo.GoInt), _fail : false } : stdgo._internal.compress.bzip2.Bzip2_t__struct_1.T__struct_1), ({ _nbits : (1u32 : stdgo.GoUInt), _fail : true, _value : (0 : stdgo.GoInt) } : stdgo._internal.compress.bzip2.Bzip2_t__struct_1.T__struct_1)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({ _nbits : (0 : stdgo.GoUInt), _value : (0 : stdgo.GoInt), _fail : false } : stdgo._internal.compress.bzip2.Bzip2_t__struct_1.T__struct_1)])) : stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2_t__struct_1.T__struct_1>);
        var _rd = stdgo._internal.bytes.Bytes_newreader.newReader((new stdgo.Slice<stdgo.GoUInt8>(8, 8, ...[(171 : stdgo.GoUInt8), (18 : stdgo.GoUInt8), (52 : stdgo.GoUInt8), (86 : stdgo.GoUInt8), (120 : stdgo.GoUInt8), (113 : stdgo.GoUInt8), (63 : stdgo.GoUInt8), (141 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        var _br = (stdgo._internal.compress.bzip2.Bzip2__newbitreader._newBitReader(stdgo.Go.asInterface(_rd))?.__copy__() : stdgo._internal.compress.bzip2.Bzip2_t_bitreader.T_bitReader);
        for (_i => _v in _vectors) {
            var _val = (@:check2 _br.readBits(_v._nbits) : stdgo.GoInt);
            {
                var _fail = (_br._err != null : Bool);
                if (_fail != (_v._fail)) {
                    if (_fail) {
                        @:check2r _t.errorf(("test %d, unexpected failure: ReadBits(%d) = %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_v._nbits), stdgo.Go.toInterface(_br._err));
                    } else {
                        @:check2r _t.errorf(("test %d, unexpected success: ReadBits(%d) = nil" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_v._nbits));
                    };
                };
            };
            if ((!_v._fail && (_val != _v._value) : Bool)) {
                @:check2r _t.errorf(("test %d, mismatching value: ReadBits(%d) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_v._nbits), stdgo.Go.toInterface(_val), stdgo.Go.toInterface(_v._value));
            };
        };
    }
