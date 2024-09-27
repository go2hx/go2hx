# Module stdgo.slices has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/slices/Slices_testEqualFunc.hx:5: characters 221-223

  5 | [2m                var _got = (stdgo._internal.slices.Slices_equalFunc.equalFunc(_test._s1, _test._s2, function(_0:stdgo.GoInt, _1:stdgo.GoInt):Bool return stdgo._internal.slices.Slices__equal._equal((0 : stdgo.GoInt), _0, [0m[1m_1[0m[2m)) : Bool);[0m
    |                                                                                                                                                                                                                             [31m^^[0m
    | Too many arguments

         | For function argument '_eq'

[30;41m ERROR [0m stdgo/_internal/slices/Slices_testEqualFunc.hx:13: characters 233-235

 13 | [2m                var _got = (stdgo._internal.slices.Slices_equalFunc.equalFunc(_test._s1, _test._s2, function(_0:stdgo.GoFloat64, _1:stdgo.GoFloat64):Bool return stdgo._internal.slices.Slices__equal._equal((0 : stdgo.GoFloat64), _0, [0m[1m_1[0m[2m)) : Bool);[0m
    |                                                                                                                                                                                                                                         [31m^^[0m
    | Too many arguments

         | For function argument '_eq'

[30;41m ERROR [0m stdgo/_internal/slices/Slices_testEqualFunc.hx:19: characters 239-241

 19 | [2m                var _got = (stdgo._internal.slices.Slices_equalFunc.equalFunc(_test._s1, _test._s2, function(_0:stdgo.GoFloat64, _1:stdgo.GoFloat64):Bool return stdgo._internal.slices.Slices__equalNaN._equalNaN((0 : stdgo.GoFloat64), _0, [0m[1m_1[0m[2m)) : Bool);[0m
    |                                                                                                                                                                                                                                               [31m^^[0m
    | Too many arguments

         | For function argument '_eq'

[30;41m ERROR [0m stdgo/_internal/slices/Slices_testCompareFunc.hx:11: characters 279-281

 11 | [2m                var _got = (stdgo._internal.slices.Slices_compareFunc.compareFunc(_test._s1, _test._s2, stdgo._internal.slices.Slices__equalToCmp._equalToCmp(function(_0:stdgo.GoInt, _1:stdgo.GoInt):Bool return stdgo._internal.slices.Slices__equal._equal((0 : stdgo.GoInt), _0, [0m[1m_1[0m[2m))) : stdgo.GoInt);[0m
    |                                                                                                                                                                                                                                                                                       [31m^^[0m
    | Too many arguments

         | For function argument '_eq'

[30;41m ERROR [0m stdgo/_internal/slices/Slices_testCompareFunc.hx:19: characters 291-293

 19 | [2m                var _got = (stdgo._internal.slices.Slices_compareFunc.compareFunc(_test._s1, _test._s2, stdgo._internal.slices.Slices__equalToCmp._equalToCmp(function(_0:stdgo.GoFloat64, _1:stdgo.GoFloat64):Bool return stdgo._internal.slices.Slices__equal._equal((0 : stdgo.GoFloat64), _0, [0m[1m_1[0m[2m))) : stdgo.GoInt);[0m
    |                                                                                                                                                                                                                                                                                                   [31m^^[0m
    | Too many arguments

         | For function argument '_eq'

[30;41m ERROR [0m stdgo/_internal/slices/Slices_testIndexFunc.hx:5: characters 267-269

  5 | [2m                var _got = (stdgo._internal.slices.Slices_indexFunc.indexFunc(_test._s, stdgo._internal.slices.Slices__equalToIndex._equalToIndex(function(_0:stdgo.GoInt, _1:stdgo.GoInt):Bool return stdgo._internal.slices.Slices__equal._equal((0 : stdgo.GoInt), _0, [0m[1m_1[0m[2m), _test._v)) : stdgo.GoInt);[0m
    |                                                                                                                                                                                                                                                                           [31m^^[0m
    | Too many arguments

         | For function argument '_f'

[30;41m ERROR [0m stdgo/_internal/slices/Slices_testIndexFunc.hx:13: characters 273-278

 13 | [2m            var _got = (stdgo._internal.slices.Slices_indexFunc.indexFunc(_s1, stdgo._internal.slices.Slices__equalToIndex._equalToIndex(function(key:stdgo.GoString, value:stdgo.GoString):Bool return stdgo._internal.slices.Slices__equal._equal(("" : stdgo.GoString), key, [0m[1mvalue[0m[2m), ("HI" : stdgo.GoString))) : stdgo.GoInt);[0m
    |                                                                                                                                                                                                                                                                                 [31m^^^^^[0m
    | Too many arguments

         | For function argument '_f'

[30;41m ERROR [0m stdgo/_internal/slices/Slices_testContainsFunc.hx:5: characters 273-275

  5 | [2m                var _got = (stdgo._internal.slices.Slices_containsFunc.containsFunc(_test._s, stdgo._internal.slices.Slices__equalToIndex._equalToIndex(function(_0:stdgo.GoInt, _1:stdgo.GoInt):Bool return stdgo._internal.slices.Slices__equal._equal((0 : stdgo.GoInt), _0, [0m[1m_1[0m[2m), _test._v)) : Bool);[0m
    |                                                                                                                                                                                                                                                                                 [31m^^[0m
    | Too many arguments

         | For function argument '_f'

[30;41m ERROR [0m stdgo/_internal/slices/Slices_testContainsFunc.hx:13: characters 279-284

 13 | [2m            var _got = (stdgo._internal.slices.Slices_containsFunc.containsFunc(_s1, stdgo._internal.slices.Slices__equalToIndex._equalToIndex(function(key:stdgo.GoString, value:stdgo.GoString):Bool return stdgo._internal.slices.Slices__equal._equal(("" : stdgo.GoString), key, [0m[1mvalue[0m[2m), ("HI" : stdgo.GoString))) : Bool);[0m
    |                                                                                                                                                                                                                                                                                       [31m^^^^^[0m
    | Too many arguments

         | For function argument '_f'

[30;41m ERROR [0m stdgo/_internal/slices/Slices_testContainsFunc.hx:19: characters 279-284

 19 | [2m            var _got = (stdgo._internal.slices.Slices_containsFunc.containsFunc(_s1, stdgo._internal.slices.Slices__equalToIndex._equalToIndex(function(key:stdgo.GoString, value:stdgo.GoString):Bool return stdgo._internal.slices.Slices__equal._equal(("" : stdgo.GoString), key, [0m[1mvalue[0m[2m), ("hI" : stdgo.GoString))) : Bool);[0m
    |                                                                                                                                                                                                                                                                                       [31m^^^^^[0m
    | Too many arguments

         | For function argument '_f'

[30;41m ERROR [0m stdgo/_internal/slices/Slices_testClone.hx:22: characters 184-188

 22 | [2m                _t.errorf(("Clone(%v) = %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface((_s1.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)), stdgo.Go.toInterface([0m[1m_got[0m[2m), stdgo.Go.toInterface((_s1.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)));[0m
    |                                                                                                                                                                                        [31m^^^^[0m
    | Null<Unknown<0> : { length : stdgo.GoInt }> should be Any
    | For function argument 'value'

[30;41m ERROR [0m stdgo/_internal/slices/Slices_testCompactFunc.hx:6: characters 209-211

  6 | [2m                var _got = stdgo._internal.slices.Slices_compactFunc.compactFunc(_copy, function(_0:stdgo.GoInt, _1:stdgo.GoInt):Bool return stdgo._internal.slices.Slices__equal._equal((0 : stdgo.GoInt), _0, [0m[1m_1[0m[2m));[0m
    |                                                                                                                                                                                                                 [31m^^[0m
    | Too many arguments

         | For function argument '_eq'

[30;41m ERROR [0m stdgo/_internal/slices/Slices_testGrow.hx:11: characters 22-30

 11 | [2m            if ((_s2.[0m[1mcapacity[0m[2m < ((1000 : stdgo.GoInt) + (_s1.length) : stdgo.GoInt) : Bool)) {[0m
    |                      [31m^^^^^^^^[0m
    | Any has no field capacity

[30;41m ERROR [0m stdgo/_internal/slices/Slices_testGrow.hx:12: characters 137-145

 12 | [2m                _t.errorf(("after Grow(%v) cap = %d, want >= %d" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_s2.[0m[1mcapacity[0m[2m), stdgo.Go.toInterface(((1000 : stdgo.GoInt) + (_s1.length) : stdgo.GoInt)));[0m
    |                                                                                                                                         [31m^^^^^^^^[0m
    | Any has no field capacity

    [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Context.hx:504: characters 10-30

     504 | [2m  return [0m[1mload("typeof", 1)(e)[0m[2m;[0m
         |          [31m^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

    [30;41m -> [0m stdgo/Go.macro.hx:646: characters 11-31

     646 | [2m  var t = [0m[1mContext.typeof(expr)[0m[2m;[0m
         |           [31m^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

    [30;41m -> [0m stdgo/_internal/slices/Slices_testGrow.hx:12: characters 112-146

      12 | [2m                _t.errorf(("after Grow(%v) cap = %d, want >= %d" : stdgo.GoString), stdgo.Go.toInterface(_s1), [0m[1mstdgo.Go.toInterface(_s2.capacity)[0m[2m, stdgo.Go.toInterface(((1000 : stdgo.GoInt) + (_s1.length) : stdgo.GoInt)));[0m
         |                                                                                                                [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

         | For function argument '_args'

[30;41m ERROR [0m stdgo/_internal/slices/Slices_testGrow.hx:25: characters 71-79

 25 | [2m                    stdgo._internal.slices.Slices_grow.grow(_s2, (_s2.[0m[1mcapacity[0m[2m - (_s2.length) : stdgo.GoInt));[0m
    |                                                                       [31m^^^^^^^^[0m
    | Any has no field capacity

[30;41m ERROR [0m stdgo/_internal/slices/Slices_testGrow.hx:25: characters 87-93

 25 | [2m                    stdgo._internal.slices.Slices_grow.grow(_s2, (_s2.capacity - (_s2.[0m[1mlength[0m[2m) : stdgo.GoInt));[0m
    |                                                                                       [31m^^^^^^[0m
    | Any has no field length

[30;41m ERROR [0m stdgo/_internal/slices/Slices_testGrow.hx:33: characters 72-80

 33 | [2m                    stdgo._internal.slices.Slices_grow.grow(_s2, ((_s2.[0m[1mcapacity[0m[2m - (_s2.length) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt));[0m
    |                                                                        [31m^^^^^^^^[0m
    | Any has no field capacity

[30;41m ERROR [0m stdgo/_internal/slices/Slices_testGrow.hx:33: characters 88-94

 33 | [2m                    stdgo._internal.slices.Slices_grow.grow(_s2, ((_s2.capacity - (_s2.[0m[1mlength[0m[2m) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt));[0m
    |                                                                                        [31m^^^^^^[0m
    | Any has no field length

[30;41m ERROR [0m stdgo/_internal/slices/Slices_testClip.hx:15: characters 17-25

 15 | [2m        if (_s2.[0m[1mcapacity[0m[2m != ((3 : stdgo.GoInt))) {[0m
    |                 [31m^^^^^^^^[0m
    | Any has no field capacity

[30;41m ERROR [0m stdgo/_internal/slices/Slices_testClip.hx:16: characters 126-134

 16 | [2m            _t.errorf(("cap(Clip(%v)) = %d, want 3" : stdgo.GoString), stdgo.Go.toInterface(_orig), stdgo.Go.toInterface(_s2.[0m[1mcapacity[0m[2m));[0m
    |                                                                                                                              [31m^^^^^^^^[0m
    | Any has no field capacity

    [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Context.hx:504: characters 10-30

     504 | [2m  return [0m[1mload("typeof", 1)(e)[0m[2m;[0m
         |          [31m^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

    [30;41m -> [0m stdgo/Go.macro.hx:646: characters 11-31

     646 | [2m  var t = [0m[1mContext.typeof(expr)[0m[2m;[0m
         |           [31m^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

    [30;41m -> [0m stdgo/_internal/slices/Slices_testClip.hx:16: characters 101-135

      16 | [2m            _t.errorf(("cap(Clip(%v)) = %d, want 3" : stdgo.GoString), stdgo.Go.toInterface(_orig), [0m[1mstdgo.Go.toInterface(_s2.capacity)[0m[2m);[0m
         |                                                                                                     [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

         | For function argument '_args'


```

