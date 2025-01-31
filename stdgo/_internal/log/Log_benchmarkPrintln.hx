package stdgo._internal.log;
import stdgo._internal.os.Os;
import stdgo._internal.log.internal.Internal;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.time.Time;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.testing.Testing;
import stdgo._internal.runtime.Runtime;
function benchmarkPrintln(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {};
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        var _l = stdgo._internal.log.Log_new_.new_(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), stdgo.Go.str()?.__copy__(), (3 : stdgo.GoInt));
        @:check2r _b.reportAllocs();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                @:check2 _buf.reset();
@:check2r _l.println(stdgo.Go.toInterface(("test" : stdgo.GoString)));
                _i++;
            };
        };
    }
