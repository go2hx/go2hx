package stdgo._internal.encoding.binary;
import stdgo._internal.math.Math;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unsafe.Unsafe;
function benchmarkWriteStruct(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        @:check2r _b.setBytes((stdgo._internal.encoding.binary.Binary_size.size(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(stdgo._internal.encoding.binary.Binary__s._s) : stdgo.Ref<stdgo._internal.encoding.binary.Binary_Struct.Struct>)))) : stdgo.GoInt64));
        @:check2r _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                stdgo._internal.encoding.binary.Binary_write.write(stdgo._internal.io.Io_discard.discard, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(stdgo._internal.encoding.binary.Binary__s._s) : stdgo.Ref<stdgo._internal.encoding.binary.Binary_Struct.Struct>))));
                _i++;
            };
        };
    }
