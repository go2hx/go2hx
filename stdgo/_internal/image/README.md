# Module stdgo._internal.image has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/image_test/Image_test.hx:2: characters 8-39

   2 | [2mimport [0m[1mstdgo._internal.image.jpeg.Jpeg[0m[2m;[0m
     |        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.image.jpeg.Jpeg

     [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Compiler.hx:229: characters 7-36

      229 | [2m      [0m[1mload("include_module", 1)(cl)[0m[2m;[0m
          |       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
          | Called from here

      239 | [2m  Context.onAfterInitMacros(() -> [0m[1minclude(pack, rec, ignore, classPaths, strict)[0m[2m);[0m
          |                                   [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
          | Called from here

[30;41m ERROR [0m stdgo/_internal/image/Image.hx:887: characters 50-93

 887 | [2mstdgo.Go.asInterface(newPaletted(_r?.__copy__(), [0m[1mstdgo._internal.image.color.palette.Palette[0m[2m.plan9)),[0m
     |                                                  [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.image.color.palette.Palette

     [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Context.hx:504: characters 10-30

      504 | [2m  return [0m[1mload("typeof", 1)(e)[0m[2m;[0m
          |          [31m^^^^^^^^^^^^^^^^^^^^[0m
          | Called from here

     [30;41m -> [0m stdgo/Go.macro.hx:305: lines 305-310

      305 | [2m  final selfType = [0m[1mContext.typeof(switch expr.expr {[0m
        - | [2m    [...][0m
      310 | [1m  })[0m[2m;[0m
          |
          | Called from here

     [30;41m -> [0m stdgo/_internal/image/Image.hx:887: characters 1-101

      887 | [0m[1mstdgo.Go.asInterface(newPaletted(_r?.__copy__(), stdgo._internal.image.color.palette.Palette.plan9))[0m[2m,[0m
          | [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
          | Called from here

          | For function argument 'args'

[30;41m ERROR [0m stdgo/_internal/image/Image.hx:893: characters 28-38

 893 | [2m        for (__0 => _tc in [0m[1m_testCases[0m[2m) {[0m
     |                            [31m^^^^^^^^^^[0m
     | You can't iterate on a Dynamic value, please specify KeyValueIterator or KeyValueIterable

[30;41m ERROR [0m stdgo/_internal/image/Image.hx:900: characters 164-178

 900 | [2m                    var _tc:stdgo.Ref<stdgo._internal.image.Image.NYCbCrA> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image.NYCbCrA>) : __type__.[0m[1m__underlying__[0m[2m() == null ? (null : stdgo.Ref<stdgo._internal.image.Image.NYCbCrA>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image.NYCbCrA>) : __type__.__underlying__().value;[0m
     |                                                                                                                                                                    [31m^^^^^^^^^^^^^^[0m
     | Any has no field __underlying__

[30;41m ERROR [0m stdgo/_internal/image/Image.hx:900: characters 335-349

 900 | [2m                    var _tc:stdgo.Ref<stdgo._internal.image.Image.NYCbCrA> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image.NYCbCrA>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image.NYCbCrA>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image.NYCbCrA>) : __type__.[0m[1m__underlying__[0m[2m().value;[0m
     |                                                                                                                                                                                                                                                                                                                                               [31m^^^^^^^^^^^^^^[0m
     | Any has no field __underlying__

[30;41m ERROR [0m stdgo/_internal/image/Image.hx:906: characters 164-178

 906 | [2m                    var _tc:stdgo.Ref<stdgo._internal.image.Image.Uniform> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image.Uniform>) : __type__.[0m[1m__underlying__[0m[2m() == null ? (null : stdgo.Ref<stdgo._internal.image.Image.Uniform>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image.Uniform>) : __type__.__underlying__().value;[0m
     |                                                                                                                                                                    [31m^^^^^^^^^^^^^^[0m
     | Any has no field __underlying__

[30;41m ERROR [0m stdgo/_internal/image/Image.hx:906: characters 335-349

 906 | [2m                    var _tc:stdgo.Ref<stdgo._internal.image.Image.Uniform> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image.Uniform>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image.Uniform>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image.Uniform>) : __type__.[0m[1m__underlying__[0m[2m().value;[0m
     |                                                                                                                                                                                                                                                                                                                                               [31m^^^^^^^^^^^^^^[0m
     | Any has no field __underlying__

[30;41m ERROR [0m stdgo/_internal/image/Image.hx:909: characters 160-174

 909 | [2m                    var _tc:stdgo.Ref<stdgo._internal.image.Image.YCbCr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image.YCbCr>) : __type__.[0m[1m__underlying__[0m[2m() == null ? (null : stdgo.Ref<stdgo._internal.image.Image.YCbCr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image.YCbCr>) : __type__.__underlying__().value;[0m
     |                                                                                                                                                                [31m^^^^^^^^^^^^^^[0m
     | Any has no field __underlying__

[30;41m ERROR [0m stdgo/_internal/image/Image.hx:909: characters 327-341

 909 | [2m                    var _tc:stdgo.Ref<stdgo._internal.image.Image.YCbCr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image.YCbCr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.image.Image.YCbCr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.image.Image.YCbCr>) : __type__.[0m[1m__underlying__[0m[2m().value;[0m
     |                                                                                                                                                                                                                                                                                                                                       [31m^^^^^^^^^^^^^^[0m
     | Any has no field __underlying__

[30;41m ERROR [0m stdgo/_internal/image/Image.hx:914: characters 144-158

 914 | [2m                    var _tc:stdgo._internal.image.Image.Rectangle = __type__ == null ? ({} : stdgo._internal.image.Image.Rectangle) : __type__.[0m[1m__underlying__[0m[2m() == null ? ({} : stdgo._internal.image.Image.Rectangle) : __type__ == null ? ({} : stdgo._internal.image.Image.Rectangle) : __type__.__underlying__().value;[0m
     |                                                                                                                                                [31m^^^^^^^^^^^^^^[0m
     | Any has no field __underlying__

[30;41m ERROR [0m stdgo/_internal/image/Image.hx:914: characters 293-307

 914 | [2m                    var _tc:stdgo._internal.image.Image.Rectangle = __type__ == null ? ({} : stdgo._internal.image.Image.Rectangle) : __type__.__underlying__() == null ? ({} : stdgo._internal.image.Image.Rectangle) : __type__ == null ? ({} : stdgo._internal.image.Image.Rectangle) : __type__.[0m[1m__underlying__[0m[2m().value;[0m
     |                                                                                                                                                                                                                                                                                                     [31m^^^^^^^^^^^^^^[0m
     | Any has no field __underlying__

[30;41m ERROR [0m stdgo/_internal/image/Image.hx:931: characters 31-33

 931 | [2m            var __tmp__ = _tc.[0m[1mat[0m[2m((1 : stdgo.GoInt), (1 : stdgo.GoInt)).rgba(), _wantR:stdgo.GoUInt32 = __tmp__._0, _wantG:stdgo.GoUInt32 = __tmp__._1, _wantB:stdgo.GoUInt32 = __tmp__._2, _wantA:stdgo.GoUInt32 = __tmp__._3;[0m
     |                               [31m^^[0m
     | Any has no field at

[30;41m ERROR [0m stdgo/_internal/image_test/Image.hx:3: characters 1532-1569

   3 | [2mvar _tests : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>(8, 8, ...[(new stdgo._internal.testing.Testing.InternalTest(("TestRectangle" : stdgo.GoString), stdgo._internal.image.Image.testRectangle) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestImage" : stdgo.GoString), stdgo._internal.image.Image.testImage) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestNewXxxBadRectangle" : stdgo.GoString), stdgo._internal.image.Image.testNewXxxBadRectangle) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("Test16BitsPerColorChannel" : stdgo.GoString), stdgo._internal.image.Image.test16BitsPerColorChannel) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestRGBA64Image" : stdgo.GoString), stdgo._internal.image.Image.testRGBA64Image) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestYCbCr" : stdgo.GoString), stdgo._internal.image.Image.testYCbCr) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestYCbCrSlicesDontOverlap" : stdgo.GoString), stdgo._internal.image.Image.testYCbCrSlicesDontOverlap) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestDecode" : stdgo.GoString), [0m[1mstdgo._internal.image_test.Image_test[0m[2m.testDecode) : stdgo._internal.testing.Testing.InternalTest)].concat([for (i in 8 ... (8 > 8 ? 8 : 8 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalTest)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>);[0m
     |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Module stdgo._internal.image_test.Image_test does not define type Image_test

          | For optional function argument 'f'


```

