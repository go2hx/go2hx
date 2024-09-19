package _internal.slices_test;
function exampleCompareFunc():Void {
        var _numbers = (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(0 : stdgo.GoInt), (43 : stdgo.GoInt), (8 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _strings = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("0" : stdgo.GoString), ("0" : stdgo.GoString), ("8" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _result = (stdgo._internal.slices.Slices_compareFunc.compareFunc(_numbers, _strings, function(_n:stdgo.GoInt, _s:stdgo.GoString):stdgo.GoInt {
            var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(_s?.__copy__()), _sn:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return (1 : stdgo.GoInt);
            };
            return stdgo._internal.cmp.Cmp_compare.compare(_n, _sn);
        }) : stdgo.GoInt);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_result));
    }
