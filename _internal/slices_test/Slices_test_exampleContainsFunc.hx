package _internal.slices_test;
function exampleContainsFunc():Void {
        var _numbers = (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(0 : stdgo.GoInt), (42 : stdgo.GoInt), (-10 : stdgo.GoInt), (8 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _hasNegative = (stdgo._internal.slices.Slices_containsFunc.containsFunc(_numbers, function(_n:stdgo.GoInt):Bool {
            return (_n < (0 : stdgo.GoInt) : Bool);
        }) : Bool);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("Has a negative:" : stdgo.GoString)), stdgo.Go.toInterface(_hasNegative));
        var _hasOdd = (stdgo._internal.slices.Slices_containsFunc.containsFunc(_numbers, function(_n:stdgo.GoInt):Bool {
            return (_n % (2 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt));
        }) : Bool);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("Has an odd number:" : stdgo.GoString)), stdgo.Go.toInterface(_hasOdd));
    }
