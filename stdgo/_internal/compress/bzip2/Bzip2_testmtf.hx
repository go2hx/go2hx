package stdgo._internal.compress.bzip2;
function testMTF(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _vectors = (new stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2_t__struct_2.T__struct_2>(5, 5, ...[({ _idx : (1 : stdgo.GoInt), _sym : (1 : stdgo.GoUInt8) } : stdgo._internal.compress.bzip2.Bzip2_t__struct_2.T__struct_2), ({ _idx : (0 : stdgo.GoInt), _sym : (1 : stdgo.GoUInt8) } : stdgo._internal.compress.bzip2.Bzip2_t__struct_2.T__struct_2), ({ _idx : (1 : stdgo.GoInt), _sym : (0 : stdgo.GoUInt8) } : stdgo._internal.compress.bzip2.Bzip2_t__struct_2.T__struct_2), ({ _idx : (4 : stdgo.GoInt), _sym : (4 : stdgo.GoUInt8) } : stdgo._internal.compress.bzip2.Bzip2_t__struct_2.T__struct_2), ({ _idx : (1 : stdgo.GoInt), _sym : (0 : stdgo.GoUInt8) } : stdgo._internal.compress.bzip2.Bzip2_t__struct_2.T__struct_2)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({ _idx : (0 : stdgo.GoInt), _sym : (0 : stdgo.GoUInt8) } : stdgo._internal.compress.bzip2.Bzip2_t__struct_2.T__struct_2)])) : stdgo.Slice<stdgo._internal.compress.bzip2.Bzip2_t__struct_2.T__struct_2>);
        var _mtf = (stdgo._internal.compress.bzip2.Bzip2__newmtfdecoderwithrange._newMTFDecoderWithRange((5 : stdgo.GoInt)) : stdgo._internal.compress.bzip2.Bzip2_t_movetofrontdecoder.T_moveToFrontDecoder);
        for (_i => _v in _vectors) {
            var _sym = (_mtf.decode(_v._idx) : stdgo.GoUInt8);
            @:check2r _t.log(stdgo.Go.toInterface(stdgo.Go.asInterface(_mtf)));
            if (_sym != (_v._sym)) {
                @:check2r _t.errorf(("test %d, symbol mismatch: Decode(%d) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_v._idx), stdgo.Go.toInterface(_sym), stdgo.Go.toInterface(_v._sym));
            };
        };
    }
