package stdgo._internal.encoding.binary;
import stdgo._internal.math.Math;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unsafe.Unsafe;
function benchmarkReadSlice1000Int32s(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _bsr = (stdgo.Go.setRef((new stdgo._internal.encoding.binary.Binary_T_byteSliceReader.T_byteSliceReader() : stdgo._internal.encoding.binary.Binary_T_byteSliceReader.T_byteSliceReader)) : stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_byteSliceReader.T_byteSliceReader>);
        var _slice = (new stdgo.Slice<stdgo.GoInt32>((1000 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>(((_slice.length) * (4 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        @:check2r _b.setBytes((_buf.length : stdgo.GoInt64));
        @:check2r _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                (@:checkr _bsr ?? throw "null pointer dereference")._remain = _buf;
stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_bsr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_slice));
                _i++;
            };
        };
    }
