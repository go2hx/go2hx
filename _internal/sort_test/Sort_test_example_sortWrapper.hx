package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function example_sortWrapper():Void {
        var _s = (new stdgo.Slice<stdgo.Ref<_internal.sort_test.Sort_test_Organ.Organ>>(6, 6, ...[(new _internal.sort_test.Sort_test_Organ.Organ(("brain" : stdgo.GoString), (1340 : _internal.sort_test.Sort_test_Grams.Grams)) : _internal.sort_test.Sort_test_Organ.Organ), (new _internal.sort_test.Sort_test_Organ.Organ(("heart" : stdgo.GoString), (290 : _internal.sort_test.Sort_test_Grams.Grams)) : _internal.sort_test.Sort_test_Organ.Organ), (new _internal.sort_test.Sort_test_Organ.Organ(("liver" : stdgo.GoString), (1494 : _internal.sort_test.Sort_test_Grams.Grams)) : _internal.sort_test.Sort_test_Organ.Organ), (new _internal.sort_test.Sort_test_Organ.Organ(("pancreas" : stdgo.GoString), (131 : _internal.sort_test.Sort_test_Grams.Grams)) : _internal.sort_test.Sort_test_Organ.Organ), (new _internal.sort_test.Sort_test_Organ.Organ(("prostate" : stdgo.GoString), (62 : _internal.sort_test.Sort_test_Grams.Grams)) : _internal.sort_test.Sort_test_Organ.Organ), (new _internal.sort_test.Sort_test_Organ.Organ(("spleen" : stdgo.GoString), (162 : _internal.sort_test.Sort_test_Grams.Grams)) : _internal.sort_test.Sort_test_Organ.Organ)]) : stdgo.Slice<stdgo.Ref<_internal.sort_test.Sort_test_Organ.Organ>>);
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface((new _internal.sort_test.Sort_test_ByWeight.ByWeight(_s) : _internal.sort_test.Sort_test_ByWeight.ByWeight)));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("Organs by weight:" : stdgo.GoString)));
        _internal.sort_test.Sort_test__printOrgans._printOrgans(_s);
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface((new _internal.sort_test.Sort_test_ByName.ByName(_s) : _internal.sort_test.Sort_test_ByName.ByName)));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("Organs by name:" : stdgo.GoString)));
        _internal.sort_test.Sort_test__printOrgans._printOrgans(_s);
    }
