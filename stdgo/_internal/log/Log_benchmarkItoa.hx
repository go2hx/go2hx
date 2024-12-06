package stdgo._internal.log;
function benchmarkItoa(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _dst = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (64 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _dst__pointer__ = (stdgo.Go.setRef(_dst) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>);
        var _dst__pointer__ = (stdgo.Go.setRef(_dst) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>);
        var _dst__pointer__ = (stdgo.Go.setRef(_dst) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>);
        var _dst__pointer__ = (stdgo.Go.setRef(_dst) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _b.n : Bool)) {
                _dst = (_dst.__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
stdgo._internal.log.Log__itoa._itoa(_dst__pointer__, (2015 : stdgo.GoInt), (4 : stdgo.GoInt));
stdgo._internal.log.Log__itoa._itoa(_dst__pointer__, (1 : stdgo.GoInt), (2 : stdgo.GoInt));
stdgo._internal.log.Log__itoa._itoa(_dst__pointer__, (30 : stdgo.GoInt), (2 : stdgo.GoInt));
stdgo._internal.log.Log__itoa._itoa(_dst__pointer__, (12 : stdgo.GoInt), (2 : stdgo.GoInt));
stdgo._internal.log.Log__itoa._itoa(_dst__pointer__, (56 : stdgo.GoInt), (2 : stdgo.GoInt));
stdgo._internal.log.Log__itoa._itoa(_dst__pointer__, (0 : stdgo.GoInt), (2 : stdgo.GoInt));
stdgo._internal.log.Log__itoa._itoa(_dst__pointer__, (987654 : stdgo.GoInt), (6 : stdgo.GoInt));
                _i++;
            };
        };
    }
