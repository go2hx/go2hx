package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function benchmarkManyArgs(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
            while (_pb.next()) {
                _buf.reset();
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), ("%2d/%2d/%2d %d:%d:%d %s %s\n" : stdgo.GoString), stdgo.Go.toInterface((3 : stdgo.GoInt)), stdgo.Go.toInterface((4 : stdgo.GoInt)), stdgo.Go.toInterface((5 : stdgo.GoInt)), stdgo.Go.toInterface((11 : stdgo.GoInt)), stdgo.Go.toInterface((12 : stdgo.GoInt)), stdgo.Go.toInterface((13 : stdgo.GoInt)), stdgo.Go.toInterface(("hello" : stdgo.GoString)), stdgo.Go.toInterface(("world" : stdgo.GoString)));
            };
        });
    }
