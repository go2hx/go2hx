# Module stdgo._internal.image has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/image_test/Image.hx:3: characters 26-70

 3 | [2mvar _tests : stdgo.Slice<[0m[1mstdgo._internal.testing.Testing.InternalTest[0m[2m> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>(8, 8, ...[(new stdgo._internal.testing.Testing.InternalTest(("TestRectangle" : stdgo.GoString), stdgo._internal.image.Image.testRectangle) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestImage" : stdgo.GoString), stdgo._internal.image.Image.testImage) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestNewXxxBadRectangle" : stdgo.GoString), stdgo._internal.image.Image.testNewXxxBadRectangle) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("Test16BitsPerColorChannel" : stdgo.GoString), stdgo._internal.image.Image.test16BitsPerColorChannel) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestRGBA64Image" : stdgo.GoString), stdgo._internal.image.Image.testRGBA64Image) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestYCbCr" : stdgo.GoString), stdgo._internal.image.Image.testYCbCr) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestYCbCrSlicesDontOverlap" : stdgo.GoString), stdgo._internal.image.Image.testYCbCrSlicesDontOverlap) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestDecode" : stdgo.GoString), stdgo._internal.image_test.Image_test.testDecode) : stdgo._internal.testing.Testing.InternalTest)].concat([for (i in 8 ... (8 > 8 ? 8 : 8 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalTest)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>);[0m
   |                          [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
   | Module stdgo._internal.testing.Testing does not define type InternalTest


```

