package stdgo._internal.log;
function benchmarkPrintlnNoFlags(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {};
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        var _l = stdgo._internal.log.Log_new_.new_(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt));
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
