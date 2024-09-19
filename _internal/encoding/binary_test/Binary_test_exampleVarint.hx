package _internal.encoding.binary_test;
function exampleVarint():Void {
        var _inputs = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(9, 9, ...[(new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(129 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(127 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(3 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(2 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(4 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(126 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(128 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)]) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        for (__0 => _b in _inputs) {
            var __tmp__ = stdgo._internal.encoding.binary.Binary_varint.varint(_b), _x:stdgo.GoInt64 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
            if (_n != ((_b.length))) {
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("Varint did not consume all of in" : stdgo.GoString)));
            };
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_x));
        };
    }
