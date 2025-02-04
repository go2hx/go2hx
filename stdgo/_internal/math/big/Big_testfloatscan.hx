package stdgo._internal.math.big;
function testFloatScan(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _floatScanTests = {
            var s = new stdgo.Slice<stdgo._internal.math.big.Big_t__struct_32.T__struct_32>(13, 0, ...[for (i in 0 ... (13 > 0 ? 13 : 0 : stdgo.GoInt).toBasic()) ({ _input : ("" : stdgo.GoString), _format : ("" : stdgo.GoString), _output : ("" : stdgo.GoString), _remaining : (0 : stdgo.GoInt), _wantErr : false } : stdgo._internal.math.big.Big_t__struct_32.T__struct_32)]);
            s[0] = ({ _input : ("10.0" : stdgo.GoString), _format : ("%f" : stdgo.GoString), _output : ("10" : stdgo.GoString), _remaining : (0 : stdgo.GoInt), _wantErr : false } : stdgo._internal.math.big.Big_t__struct_32.T__struct_32);
            s[1] = ({ _input : ("23.98+2.0" : stdgo.GoString), _format : ("%v" : stdgo.GoString), _output : ("23.98" : stdgo.GoString), _remaining : (4 : stdgo.GoInt), _wantErr : false } : stdgo._internal.math.big.Big_t__struct_32.T__struct_32);
            s[2] = ({ _input : ("-1+1" : stdgo.GoString), _format : ("%v" : stdgo.GoString), _output : ("-1" : stdgo.GoString), _remaining : (2 : stdgo.GoInt), _wantErr : false } : stdgo._internal.math.big.Big_t__struct_32.T__struct_32);
            s[3] = ({ _input : (" 00000" : stdgo.GoString), _format : ("%v" : stdgo.GoString), _output : ("0" : stdgo.GoString), _remaining : (0 : stdgo.GoInt), _wantErr : false } : stdgo._internal.math.big.Big_t__struct_32.T__struct_32);
            s[4] = ({ _input : ("-123456p-78" : stdgo.GoString), _format : ("%b" : stdgo.GoString), _output : ("-4.084816388e-19" : stdgo.GoString), _remaining : (0 : stdgo.GoInt), _wantErr : false } : stdgo._internal.math.big.Big_t__struct_32.T__struct_32);
            s[5] = ({ _input : ("+123" : stdgo.GoString), _format : ("%b" : stdgo.GoString), _output : ("123" : stdgo.GoString), _remaining : (0 : stdgo.GoInt), _wantErr : false } : stdgo._internal.math.big.Big_t__struct_32.T__struct_32);
            s[6] = ({ _input : ("-1.234e+56" : stdgo.GoString), _format : ("%e" : stdgo.GoString), _output : ("-1.234e+56" : stdgo.GoString), _remaining : (0 : stdgo.GoInt), _wantErr : false } : stdgo._internal.math.big.Big_t__struct_32.T__struct_32);
            s[7] = ({ _input : ("-1.234E-56" : stdgo.GoString), _format : ("%E" : stdgo.GoString), _output : ("-1.234e-56" : stdgo.GoString), _remaining : (0 : stdgo.GoInt), _wantErr : false } : stdgo._internal.math.big.Big_t__struct_32.T__struct_32);
            s[8] = ({ _input : ("-1.234e+567" : stdgo.GoString), _format : ("%g" : stdgo.GoString), _output : ("-1.234e+567" : stdgo.GoString), _remaining : (0 : stdgo.GoInt), _wantErr : false } : stdgo._internal.math.big.Big_t__struct_32.T__struct_32);
            s[9] = ({ _input : ("+1234567891011.234" : stdgo.GoString), _format : ("%G" : stdgo.GoString), _output : ("1.234567891e+12" : stdgo.GoString), _remaining : (0 : stdgo.GoInt), _wantErr : false } : stdgo._internal.math.big.Big_t__struct_32.T__struct_32);
            s[10] = ({ _input : ("Inf" : stdgo.GoString), _format : ("%v" : stdgo.GoString), _output : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _remaining : (3 : stdgo.GoInt), _wantErr : true } : stdgo._internal.math.big.Big_t__struct_32.T__struct_32);
            s[11] = ({ _input : ("-Inf" : stdgo.GoString), _format : ("%v" : stdgo.GoString), _output : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _remaining : (3 : stdgo.GoInt), _wantErr : true } : stdgo._internal.math.big.Big_t__struct_32.T__struct_32);
            s[12] = ({ _input : ("-Inf" : stdgo.GoString), _format : ("%v" : stdgo.GoString), _output : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _remaining : (3 : stdgo.GoInt), _wantErr : true } : stdgo._internal.math.big.Big_t__struct_32.T__struct_32);
            s;
        };
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        for (_i => _test in _floatScanTests) {
            var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
            @:check2 _buf.reset();
            @:check2 _buf.writeString(_test._input?.__copy__());
            var __tmp__ = stdgo._internal.fmt.Fmt_fscanf.fscanf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), _test._format?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_x))), __8:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_test._wantErr) {
                if (_err == null) {
                    @:check2r _t.errorf(("#%d want non-nil err" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
                continue;
            };
            if (_err != null) {
                @:check2r _t.errorf(("#%d error: %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
            };
            if ((@:check2r _x.string() : stdgo.GoString) != (_test._output)) {
                @:check2r _t.errorf(("#%d got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface((@:check2r _x.string() : stdgo.GoString)), stdgo.Go.toInterface(_test._output));
            };
            if (@:check2 _buf.len() != (_test._remaining)) {
                @:check2r _t.errorf(("#%d got %d bytes remaining; want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(@:check2 _buf.len()), stdgo.Go.toInterface(_test._remaining));
            };
        };
    }
