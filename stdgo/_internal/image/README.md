# Module stdgo._internal.image has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/image_test/Image_test.hx:2: characters 8-39

   2 | [2mimport [0m[1mstdgo._internal.image.jpeg.Jpeg[0m[2m;[0m
     |        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.image.jpeg.Jpeg

[30;41m ERROR [0m stdgo/_internal/image/Image.hx:886: characters 50-93

 886 | [2mstdgo.Go.asInterface(newPaletted(_r?.__copy__(), [0m[1mstdgo._internal.image.color.palette.Palette[0m[2m.plan9)),[0m
     |                                                  [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.image.color.palette.Palette

          | For function argument 'args'

[30;41m ERROR [0m stdgo/_internal/image/Image.hx:892: characters 28-38

 892 | [2m        for (__0 => _tc in [0m[1m_testCases[0m[2m) {[0m
     |                            [31m^^^^^^^^^^[0m
     | You can't iterate on a Dynamic value, please specify KeyValueIterator or KeyValueIterable

[30;41m ERROR [0m stdgo/_internal/image/Image.hx:899: characters 164-178

 899 | [2m                    var _tc:stdgo.Ref<stdgo._internal.image.Image.NYCbCrA> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image.NYCbCrA>) : __type__.[0m[1m__underlying__[0m[2m() == null ? (null : stdgo.Ref<stdgo._internal.image.Image.NYCbCrA>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image.NYCbCrA>) : __type__.__underlying__().value;[0m
     |                                                                                                                                                                    [31m^^^^^^^^^^^^^^[0m
     | Any has no field __underlying__

[30;41m ERROR [0m stdgo/_internal/image/Image.hx:899: characters 335-349

 899 | [2m                    var _tc:stdgo.Ref<stdgo._internal.image.Image.NYCbCrA> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image.NYCbCrA>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image.NYCbCrA>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image.NYCbCrA>) : __type__.[0m[1m__underlying__[0m[2m().value;[0m
     |                                                                                                                                                                                                                                                                                                                                               [31m^^^^^^^^^^^^^^[0m
     | Any has no field __underlying__

[30;41m ERROR [0m stdgo/_internal/image/Image.hx:905: characters 164-178

 905 | [2m                    var _tc:stdgo.Ref<stdgo._internal.image.Image.Uniform> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image.Uniform>) : __type__.[0m[1m__underlying__[0m[2m() == null ? (null : stdgo.Ref<stdgo._internal.image.Image.Uniform>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image.Uniform>) : __type__.__underlying__().value;[0m
     |                                                                                                                                                                    [31m^^^^^^^^^^^^^^[0m
     | Any has no field __underlying__

[30;41m ERROR [0m stdgo/_internal/image/Image.hx:905: characters 335-349

 905 | [2m                    var _tc:stdgo.Ref<stdgo._internal.image.Image.Uniform> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image.Uniform>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image.Uniform>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image.Uniform>) : __type__.[0m[1m__underlying__[0m[2m().value;[0m
     |                                                                                                                                                                                                                                                                                                                                               [31m^^^^^^^^^^^^^^[0m
     | Any has no field __underlying__

[30;41m ERROR [0m stdgo/_internal/image/Image.hx:908: characters 160-174

 908 | [2m                    var _tc:stdgo.Ref<stdgo._internal.image.Image.YCbCr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image.YCbCr>) : __type__.[0m[1m__underlying__[0m[2m() == null ? (null : stdgo.Ref<stdgo._internal.image.Image.YCbCr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image.YCbCr>) : __type__.__underlying__().value;[0m
     |                                                                                                                                                                [31m^^^^^^^^^^^^^^[0m
     | Any has no field __underlying__

[30;41m ERROR [0m stdgo/_internal/image/Image.hx:908: characters 327-341

 908 | [2m                    var _tc:stdgo.Ref<stdgo._internal.image.Image.YCbCr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image.YCbCr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image.YCbCr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image.YCbCr>) : __type__.[0m[1m__underlying__[0m[2m().value;[0m
     |                                                                                                                                                                                                                                                                                                                                       [31m^^^^^^^^^^^^^^[0m
     | Any has no field __underlying__

[30;41m ERROR [0m stdgo/_internal/image/Image.hx:913: characters 144-158

 913 | [2m                    var _tc:stdgo._internal.image.Image.Rectangle = __type__ == null ? ({} : stdgo._internal.image.Image.Rectangle) : __type__.[0m[1m__underlying__[0m[2m() == null ? ({} : stdgo._internal.image.Image.Rectangle) : __type__ == null ? ({} : stdgo._internal.image.Image.Rectangle) : __type__.__underlying__().value;[0m
     |                                                                                                                                                [31m^^^^^^^^^^^^^^[0m
     | Any has no field __underlying__

[30;41m ERROR [0m stdgo/_internal/image/Image.hx:913: characters 293-307

 913 | [2m                    var _tc:stdgo._internal.image.Image.Rectangle = __type__ == null ? ({} : stdgo._internal.image.Image.Rectangle) : __type__.__underlying__() == null ? ({} : stdgo._internal.image.Image.Rectangle) : __type__ == null ? ({} : stdgo._internal.image.Image.Rectangle) : __type__.[0m[1m__underlying__[0m[2m().value;[0m
     |                                                                                                                                                                                                                                                                                                     [31m^^^^^^^^^^^^^^[0m
     | Any has no field __underlying__

[30;41m ERROR [0m stdgo/_internal/image/Image.hx:930: characters 31-33

 930 | [2m            var __tmp__ = _tc.[0m[1mat[0m[2m((1 : stdgo.GoInt), (1 : stdgo.GoInt)).rgba(), _wantR:stdgo.GoUInt32 = __tmp__._0, _wantG:stdgo.GoUInt32 = __tmp__._1, _wantB:stdgo.GoUInt32 = __tmp__._2, _wantA:stdgo.GoUInt32 = __tmp__._3;[0m
     |                               [31m^^[0m
     | Any has no field at

[30;41m ERROR [0m stdgo/_internal/image_test/Image.hx:3: characters 1539-1576

   3 | [2mvar _tests : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest> = (() -> (new stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>(8, 8, ...[(new stdgo._internal.testing.Testing.InternalTest(("TestRectangle" : stdgo.GoString), stdgo._internal.image.Image.testRectangle) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestImage" : stdgo.GoString), stdgo._internal.image.Image.testImage) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestNewXxxBadRectangle" : stdgo.GoString), stdgo._internal.image.Image.testNewXxxBadRectangle) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("Test16BitsPerColorChannel" : stdgo.GoString), stdgo._internal.image.Image.test16BitsPerColorChannel) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestRGBA64Image" : stdgo.GoString), stdgo._internal.image.Image.testRGBA64Image) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestYCbCr" : stdgo.GoString), stdgo._internal.image.Image.testYCbCr) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestYCbCrSlicesDontOverlap" : stdgo.GoString), stdgo._internal.image.Image.testYCbCrSlicesDontOverlap) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestDecode" : stdgo.GoString), [0m[1mstdgo._internal.image_test.Image_test[0m[2m.testDecode) : stdgo._internal.testing.Testing.InternalTest)].concat([for (i in 8 ... (8 > 8 ? 8 : 8 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalTest)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>))();[0m
     |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Module stdgo._internal.image_test.Image_test does not define type Image_test

          | For optional function argument 'f'

[30;41m ERROR [0m stdgo/_internal/image_test/Image.hx:24: characters 246-283

  24 | [2mvar _examples : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample> = (() -> (new stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>(1, 1, ...[(new stdgo._internal.testing.Testing.InternalExample(("Example" : stdgo.GoString), [0m[1mstdgo._internal.image_test.Image_test[0m[2m.example, ("bin               red  green   blue  alpha\n0x0000-0x0fff:    364    790   7242      0\n0x1000-0x1fff:    645   2967   1039      0\n0x2000-0x2fff:   1072   2299    979      0\n0x3000-0x3fff:    820   2266    980      0\n0x4000-0x4fff:    537   1305    541      0\n0x5000-0x5fff:    319    962    261      0\n0x6000-0x6fff:    322    375    177      0\n0x7000-0x7fff:    601    279    214      0\n0x8000-0x8fff:   3478    227    273      0\n0x9000-0x9fff:   2260    234    329      0\n0xa000-0xafff:    921    282    373      0\n0xb000-0xbfff:    321    335    397      0\n0xc000-0xcfff:    229    388    298      0\n0xd000-0xdfff:    260    414    277      0\n0xe000-0xefff:    516    428    298      0\n0xf000-0xffff:   2785   1899   1772  15450\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalExample)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>))();[0m
     |                                                                                                                                                                                                                                                      [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Module stdgo._internal.image_test.Image_test does not define type Image_test

          | For optional function argument 'f'

stdgo/_internal/internal/Macro.macro.hx:54: non hxb types:,438

```

