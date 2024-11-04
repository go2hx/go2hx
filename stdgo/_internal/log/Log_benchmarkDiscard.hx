package stdgo._internal.log;
function benchmarkDiscard(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _l = stdgo._internal.log.Log_new_.new_(stdgo._internal.io.Io_discard.discard, stdgo.Go.str()?.__copy__(), (19 : stdgo.GoInt));
        _b.reportAllocs();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _b.n : Bool)) {
                _l.printf(("processing %d objects from bucket %q" : stdgo.GoString), stdgo.Go.toInterface((1234 : stdgo.GoInt)), stdgo.Go.toInterface(("fizzbuzz" : stdgo.GoString)));
                _i++;
            };
        };
    }
