package _internal.slices_test;
function exampleEqualFunc():Void {
        var _numbers = (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(0 : stdgo.GoInt), (42 : stdgo.GoInt), (8 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _strings = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("000" : stdgo.GoString), ("42" : stdgo.GoString), ("0o10" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _equal = (stdgo._internal.slices.Slices_equalFunc.equalFunc(_numbers, _strings, function(_n:stdgo.GoInt, _s:stdgo.GoString):Bool {
            var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(_s?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt)), _sn:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return false;
            };
            return _n == ((_sn : stdgo.GoInt));
        }) : Bool);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_equal));
    }
