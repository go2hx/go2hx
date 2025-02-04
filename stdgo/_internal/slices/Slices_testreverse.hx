package stdgo._internal.slices;
function testReverse(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _even = (new stdgo.Slice<stdgo.GoInt>(6, 6, ...[(3 : stdgo.GoInt), (1 : stdgo.GoInt), (4 : stdgo.GoInt), (1 : stdgo.GoInt), (5 : stdgo.GoInt), (9 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        stdgo._internal.slices.Slices_reverse.reverse(_even);
        {
            var _want = (new stdgo.Slice<stdgo.GoInt>(6, 6, ...[(9 : stdgo.GoInt), (5 : stdgo.GoInt), (1 : stdgo.GoInt), (4 : stdgo.GoInt), (1 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            if (!stdgo._internal.slices.Slices_equal.equal(_even, _want)) {
                @:check2r _t.errorf(("Reverse(even) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_even), stdgo.Go.toInterface(_want));
            };
        };
        var _odd = (new stdgo.Slice<stdgo.GoInt>(7, 7, ...[(3 : stdgo.GoInt), (1 : stdgo.GoInt), (4 : stdgo.GoInt), (1 : stdgo.GoInt), (5 : stdgo.GoInt), (9 : stdgo.GoInt), (2 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        stdgo._internal.slices.Slices_reverse.reverse(_odd);
        {
            var _want = (new stdgo.Slice<stdgo.GoInt>(7, 7, ...[(2 : stdgo.GoInt), (9 : stdgo.GoInt), (5 : stdgo.GoInt), (1 : stdgo.GoInt), (4 : stdgo.GoInt), (1 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            if (!stdgo._internal.slices.Slices_equal.equal(_odd, _want)) {
                @:check2r _t.errorf(("Reverse(odd) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_odd), stdgo.Go.toInterface(_want));
            };
        };
        var _words = stdgo._internal.strings.Strings_fields.fields(("one two three" : stdgo.GoString));
        stdgo._internal.slices.Slices_reverse.reverse(_words);
        {
            var _want = stdgo._internal.strings.Strings_fields.fields(("three two one" : stdgo.GoString));
            if (!stdgo._internal.slices.Slices_equal.equal(_words, _want)) {
                @:check2r _t.errorf(("Reverse(words) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_words), stdgo.Go.toInterface(_want));
            };
        };
        var _singleton = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("one" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        stdgo._internal.slices.Slices_reverse.reverse(_singleton);
        {
            var _want = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("one" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
            if (!stdgo._internal.slices.Slices_equal.equal(_singleton, _want)) {
                @:check2r _t.errorf(("Reverse(singeleton) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_singleton), stdgo.Go.toInterface(_want));
            };
        };
        stdgo._internal.slices.Slices_reverse.reverse((null : stdgo.Slice<stdgo.GoString>));
    }
