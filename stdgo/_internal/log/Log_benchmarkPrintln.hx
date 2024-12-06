package stdgo._internal.log;
function benchmarkPrintln(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {};
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _l = stdgo._internal.log.Log_new_.new_(stdgo.Go.asInterface(_buf__pointer__), stdgo.Go.str()?.__copy__(), (3 : stdgo.GoInt));
        _b.reportAllocs();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _b.n : Bool)) {
                _buf.reset();
_l.println(stdgo.Go.toInterface(("test" : stdgo.GoString)));
                _i++;
            };
        };
    }
