# Module stdgo.compress.bzip2 has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/internal/reflect/Reflect.hx:7: characters 33-76

   7 | [2m@:follow private typedef Type = [0m[1mstdgo._internal.reflect.Reflect_Type_.Type_[0m[2m;[0m
     |                                 [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.reflect.Reflect_Type_

[30;41m ERROR [0m [31m(macro) [0mstdgo/_internal/internal/reflect/Reflect.hx:930: lines 930-941

 930 | [2m[0m[1mclass _Type {[0m
   - | [2m  [...][0m
 941 | [1m}[0m[2m[0m
     |
     | stdgo._internal.internal.reflect._Type is not ready to be accessed, separate your type declarations in several files

          | For function argument 'type'

     [30;41m -> [0m stdgo/_internal/compress/bzip2/Bzip2.hx:528: characters 17-43

      528 | [2m            if ([0m[1mstdgo.Go.toInterface(_err)[0m[2m == (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {[0m
          |                 [31m^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
          | Called from macro here


```

