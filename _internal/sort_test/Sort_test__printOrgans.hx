package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function _printOrgans(_s:stdgo.Slice<stdgo.Ref<_internal.sort_test.Sort_test_Organ.Organ>>):Void {
        for (__0 => _o in _s) {
            stdgo._internal.fmt.Fmt_printf.printf(("%-8s (%v)\n" : stdgo.GoString), stdgo.Go.toInterface(_o.name), stdgo.Go.toInterface(stdgo.Go.asInterface(_o.weight)));
        };
    }
