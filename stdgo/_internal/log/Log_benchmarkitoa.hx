package stdgo._internal.log;
function benchmarkItoa(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _dst = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (64 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L217"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                _dst = (_dst.__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
//"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L219"
                stdgo._internal.log.Log__itoa._itoa((stdgo.Go.setRef(_dst) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), (2015 : stdgo.GoInt), (4 : stdgo.GoInt));
//"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L220"
                stdgo._internal.log.Log__itoa._itoa((stdgo.Go.setRef(_dst) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), (1 : stdgo.GoInt), (2 : stdgo.GoInt));
//"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L221"
                stdgo._internal.log.Log__itoa._itoa((stdgo.Go.setRef(_dst) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), (30 : stdgo.GoInt), (2 : stdgo.GoInt));
//"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L222"
                stdgo._internal.log.Log__itoa._itoa((stdgo.Go.setRef(_dst) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), (12 : stdgo.GoInt), (2 : stdgo.GoInt));
//"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L223"
                stdgo._internal.log.Log__itoa._itoa((stdgo.Go.setRef(_dst) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), (56 : stdgo.GoInt), (2 : stdgo.GoInt));
//"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L224"
                stdgo._internal.log.Log__itoa._itoa((stdgo.Go.setRef(_dst) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), (0 : stdgo.GoInt), (2 : stdgo.GoInt));
//"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L225"
                stdgo._internal.log.Log__itoa._itoa((stdgo.Go.setRef(_dst) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), (987654 : stdgo.GoInt), (6 : stdgo.GoInt));
                _i++;
            };
        };
    }
