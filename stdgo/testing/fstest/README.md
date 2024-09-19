# Module stdgo.testing.fstest has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/internal/reflect/Reflect.hx:7: characters 33-76

    7 | [2m@:follow private typedef Type = [0m[1mstdgo._internal.reflect.Reflect_Type_.Type_[0m[2m;[0m
      |                                 [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.reflect.Reflect_Type_

      [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Compiler.hx:229: characters 7-36

       229 | [2m      [0m[1mload("include_module", 1)(cl)[0m[2m;[0m
           |       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
           | Called from here

       239 | [2m  Context.onAfterInitMacros(() -> [0m[1minclude(pack, rec, ignore, classPaths, strict)[0m[2m);[0m
           |                                   [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
           | Called from here

[30;41m ERROR [0m stdgo/GoString.hx:22: characters 8-53

   22 | [2m  if (![0m[1mstdgo._internal.unicode.utf8.Utf8_validString[0m[2m.validString((this : GoString)))[0m
      |        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.unicode.utf8.Utf8_validString

[30;41m ERROR [0m stdgo/GoString.hx:157: characters 16-60

  157 | [2m   final tmp = [0m[1mstdgo._internal.unicode.utf8.Utf8_decodeRune[0m[2m.decodeRune(bytes);[0m
      |                [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.unicode.utf8.Utf8_decodeRune

[30;41m ERROR [0m stdgo/AnyInterface.hx:45: characters 16-27

   45 | [2m  if (gt.match([0m[1minvalidType[0m[2m) || gt2.match(invalidType))[0m
      |                [31m^^^^^^^^^^^[0m
      | Pattern variables are not allowed in .match patterns

[30;41m ERROR [0m stdgo/AnyInterface.hx:47: characters 16-21

   47 | [2m  if (gt.match([0m[1mbasic[0m[2m(untyped_nil_kind)) || gt2.match(basic(untyped_nil_kind)))[0m
      |                [31m^^^^^[0m
      | Identifier 'basic' is not part of stdgo._internal.internal.reflect.GoType

[30;41m ERROR [0m stdgo/AnyInterface.hx:47: characters 16-39

   47 | [2m  if (gt.match([0m[1mbasic(untyped_nil_kind)[0m[2m) || gt2.match(basic(untyped_nil_kind)))[0m
      |                [31m^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Unrecognized pattern: basic(untyped_nil_kind)

[30;41m ERROR [0m stdgo/AnyInterface.hx:50: characters 15-27

   50 | [2m  if (!a.type.[0m[1massignableTo[0m[2m(cast new stdgo._internal.internal.reflect.Reflect._Type_asInterface(new Pointer(() -> b.type, value -> b.type = value), b.type))) {[0m
      |               [31m^^^^^^^^^^^^[0m
      | stdgo._internal.internal.reflect._Type has no field assignableTo

[30;41m ERROR [0m stdgo/_internal/internal/reflect/Reflect.hx:1399: lines 1399-1507

 1399 | [2m[0m[1mclass _Type_asInterface {[0m
    - | [2m  [...][0m
 1507 | [1m}[0m[2m[0m
      |
      | stdgo._internal.internal.reflect._Type_asInterface is not ready to be accessed, separate your type declarations in several files

[30;41m ERROR [0m stdgo/AnyInterface.hx:56: characters 9-14

   56 | [2m   case [0m[1mnamed[0m[2m(path, _, _, _):[0m
      |         [31m^^^^^[0m
      | Identifier 'named' is not part of stdgo._internal.internal.reflect.GoType

[30;41m ERROR [0m stdgo/AnyInterface.hx:56: characters 9-29

   56 | [2m   case [0m[1mnamed(path, _, _, _)[0m[2m:[0m
      |         [31m^^^^^^^^^^^^^^^^^^^^[0m
      | Unrecognized pattern: named(path, _, _, _)

[30;41m ERROR [0m stdgo/AnyInterface.hx:70: characters 9-14

   70 | [2m   case [0m[1mnamed[0m[2m(path, _, _, _):[0m
      |         [31m^^^^^[0m
      | Identifier 'named' is not part of stdgo._internal.internal.reflect.GoType

[30;41m ERROR [0m stdgo/AnyInterface.hx:70: characters 9-29

   70 | [2m   case [0m[1mnamed(path, _, _, _)[0m[2m:[0m
      |         [31m^^^^^^^^^^^^^^^^^^^^[0m
      | Unrecognized pattern: named(path, _, _, _)

[30;41m ERROR [0m stdgo/AnyInterface.hx:83: characters 8-48

   83 | [2m  gt = [0m[1mstdgo._internal.internal.reflect.Reflect[0m[2m.getUnderlying(gt);[0m
      |        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Module stdgo._internal.internal.reflect.Reflect does not define type Reflect

[30;41m ERROR [0m stdgo/AnyInterface.hx:84: characters 9-49

   84 | [2m  gt2 = [0m[1mstdgo._internal.internal.reflect.Reflect[0m[2m.getUnderlying(gt2);[0m
      |         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Module stdgo._internal.internal.reflect.Reflect does not define type Reflect

[30;41m ERROR [0m stdgo/AnyInterface.hx:86: characters 9-16

   86 | [2m   case [0m[1mrefType[0m[2m(_):[0m
      |         [31m^^^^^^^[0m
      | Identifier 'refType' is not part of stdgo._internal.internal.reflect.GoType

[30;41m ERROR [0m stdgo/AnyInterface.hx:86: characters 9-19

   86 | [2m   case [0m[1mrefType(_)[0m[2m:[0m
      |         [31m^^^^^^^^^^[0m
      | Unrecognized pattern: refType(_)

[30;41m ERROR [0m stdgo/_internal/testing/fstest/Fstest.hx:2: character 9

    2 | [2mprivate [0m[1m[0m[2mvar __go2hxdoc__package : Bool;[0m
      |         [31m^[0m
      | stdgo._internal.testing.fstest._Fstest.Fstest_Fields_ is not ready to be accessed, separate your type declarations in several files

[30;41m ERROR [0m stdgo/_internal/testing/fstest/Fstest.hx:2: character 9

    2 | [2mprivate [0m[1m[0m[2mvar __go2hxdoc__package : Bool;[0m
      |         [31m^[0m
      | stdgo._internal.testing.fstest._Fstest.Fstest_Fields_ is not ready to be accessed, separate your type declarations in several files

[30;41m ERROR [0m stdgo/_internal/testing/fstest/Fstest.hx:38: characters 13-26

   38 | [2m        if ([0m[1mmapFS != null[0m[2m) this.mapFS = mapFS;[0m
      |             [31m^^^^^^^^^^^^^[0m
      | Cannot compare Void

[30;41m ERROR [0m stdgo/_internal/testing/fstest/Fstest.hx:2: character 9

    2 | [2mprivate [0m[1m[0m[2mvar __go2hxdoc__package : Bool;[0m
      |         [31m^[0m
      | stdgo._internal.testing.fstest._Fstest.Fstest_Fields_ is not ready to be accessed, separate your type declarations in several files

[30;41m ERROR [0m stdgo/_internal/testing/fstest/Fstest.hx:2: character 9

    2 | [2mprivate [0m[1m[0m[2mvar __go2hxdoc__package : Bool;[0m
      |         [31m^[0m
      | stdgo._internal.testing.fstest._Fstest.Fstest_Fields_ is not ready to be accessed, separate your type declarations in several files

[30;41m ERROR [0m stdgo/_internal/testing/fstest/Fstest.hx:2: character 9

    2 | [2mprivate [0m[1m[0m[2mvar __go2hxdoc__package : Bool;[0m
      |         [31m^[0m
      | stdgo._internal.testing.fstest._Fstest.Fstest_Fields_ is not ready to be accessed, separate your type declarations in several files

[30;41m ERROR [0m stdgo/_internal/testing/fstest/Fstest.hx:2: character 9

    2 | [2mprivate [0m[1m[0m[2mvar __go2hxdoc__package : Bool;[0m
      |         [31m^[0m
      | stdgo._internal.testing.fstest._Fstest.Fstest_Fields_ is not ready to be accessed, separate your type declarations in several files

[30;41m ERROR [0m stdgo/_internal/testing/fstest/Fstest.hx:2: character 9

    2 | [2mprivate [0m[1m[0m[2mvar __go2hxdoc__package : Bool;[0m
      |         [31m^[0m
      | stdgo._internal.testing.fstest._Fstest.Fstest_Fields_ is not ready to be accessed, separate your type declarations in several files

[30;41m ERROR [0m stdgo/GoString.hx:283: characters 15-59

  283 | [2m  final tmp = [0m[1mstdgo._internal.unicode.utf8.Utf8_decodeRune[0m[2m.decodeRune(bytes);[0m
      |               [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.unicode.utf8.Utf8_decodeRune

[30;41m ERROR [0m stdgo/GoString.hx:312: characters 15-59

  312 | [2m  final tmp = [0m[1mstdgo._internal.unicode.utf8.Utf8_decodeRune[0m[2m.decodeRune(bytes);[0m
      |               [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.unicode.utf8.Utf8_decodeRune

[30;41m ERROR [0m stdgo/Error.hx:42: characters 37-41

   42 | [2m  return new AnyInterface((__type__.[0m[1mkind[0m[2m() == stdgo._internal.internal.reflect.Reflect.KindType.pointer[0m
      |                                     [31m^^^^[0m
      | stdgo._internal.internal.reflect._Type has no field kind

[30;41m ERROR [0m stdgo/Error.hx:42: characters 97-104

   42 | [2m  return new AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.[0m[1mpointer[0m[2m[0m
      |                                                                                                 [31m^^^^^^^[0m
      | Abstract<stdgo._internal.internal.reflect.KindType> has no field pointer

[30;41m ERROR [0m stdgo/Error.hx:43: characters 8-48

   43 | [2m   && ![0m[1mstdgo._internal.internal.reflect.Reflect[0m[2m.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),[0m
      |        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Module stdgo._internal.internal.reflect.Reflect does not define type Reflect

           | For function argument 'value'

[30;41m ERROR [0m stdgo/_internal/internal/reflect/Reflect.hx:930: lines 930-941

  930 | [2m[0m[1mclass _Type {[0m
    - | [2m  [...][0m
  941 | [1m}[0m[2m[0m
      |
      | stdgo._internal.internal.reflect._Type is not ready to be accessed, separate your type declarations in several files

           | For function argument '__type__'


```

