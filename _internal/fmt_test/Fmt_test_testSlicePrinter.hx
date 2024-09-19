package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testSlicePrinter(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _slice = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _s = (stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_slice))?.__copy__() : stdgo.GoString);
        if (_s != (("[]" : stdgo.GoString))) {
            _t.errorf(("empty slice printed as %q not %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(("[]" : stdgo.GoString)));
        };
        _slice = (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        _s = stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_slice))?.__copy__();
        if (_s != (("[1 2 3]" : stdgo.GoString))) {
            _t.errorf(("slice: got %q expected %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(("[1 2 3]" : stdgo.GoString)));
        };
        _s = stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface((stdgo.Go.setRef(_slice) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>)))?.__copy__();
        if (_s != (("&[1 2 3]" : stdgo.GoString))) {
            _t.errorf(("&slice: got %q expected %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(("&[1 2 3]" : stdgo.GoString)));
        };
    }
