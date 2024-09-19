package _internal.slices_test;
function exampleIndexFunc():Void {
        var _numbers = (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(0 : stdgo.GoInt), (42 : stdgo.GoInt), (-10 : stdgo.GoInt), (8 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i = (stdgo._internal.slices.Slices_indexFunc.indexFunc(_numbers, function(_n:stdgo.GoInt):Bool {
            return (_n < (0 : stdgo.GoInt) : Bool);
        }) : stdgo.GoInt);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("First negative at index" : stdgo.GoString)), stdgo.Go.toInterface(_i));
    }
