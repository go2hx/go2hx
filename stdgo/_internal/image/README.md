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

[30;41m ERROR [0m stdgo/_internal/image_test/Image.hx:3: characters 1532-1569

   3 | [2mvar _tests : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>(8, 8, ...[(new stdgo._internal.testing.Testing.InternalTest(("TestRectangle" : stdgo.GoString), stdgo._internal.image.Image.testRectangle) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestImage" : stdgo.GoString), stdgo._internal.image.Image.testImage) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestNewXxxBadRectangle" : stdgo.GoString), stdgo._internal.image.Image.testNewXxxBadRectangle) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("Test16BitsPerColorChannel" : stdgo.GoString), stdgo._internal.image.Image.test16BitsPerColorChannel) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestRGBA64Image" : stdgo.GoString), stdgo._internal.image.Image.testRGBA64Image) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestYCbCr" : stdgo.GoString), stdgo._internal.image.Image.testYCbCr) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestYCbCrSlicesDontOverlap" : stdgo.GoString), stdgo._internal.image.Image.testYCbCrSlicesDontOverlap) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestDecode" : stdgo.GoString), [0m[1mstdgo._internal.image_test.Image_test[0m[2m.testDecode) : stdgo._internal.testing.Testing.InternalTest)].concat([for (i in 8 ... (8 > 8 ? 8 : 8 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalTest)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>);[0m
     |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Module stdgo._internal.image_test.Image_test does not define type Image_test

          | For optional function argument 'f'


```

