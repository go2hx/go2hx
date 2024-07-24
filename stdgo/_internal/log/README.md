# Module stdgo._internal.log has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/log_test/Log_test.hx:4: characters 212-216

  4 | [2m        var __0:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer), __1:stdgo.Ref<stdgo._internal.log.Log.Logger> = stdgo._internal.log.Log.new_(stdgo.Go.asInterface((stdgo.Go.setRef([0m[1m_buf[0m[2m) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), ("logger: " : stdgo.GoString), (16 : stdgo.GoInt)), _logger:stdgo.Ref<stdgo._internal.log.Log.Logger> = __1, _buf:stdgo._internal.bytes.Bytes.Buffer = __0;[0m
    |                                                                                                                                                                                                                    [31m^^^^[0m
    | Unknown identifier : _buf

       4 | [2m        var __0:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer), __1:stdgo.Ref<stdgo._internal.log.Log.Logger> = stdgo._internal.log.Log.new_([0m[1mstdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>))[0m[2m, ("logger: " : stdgo.GoString), (16 : stdgo.GoInt)), _logger:stdgo.Ref<stdgo._internal.log.Log.Logger> = __1, _buf:stdgo._internal.bytes.Bytes.Buffer = __0;[0m
         |                                                                                                                                                                              [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

    [30;41m -> [0m stdgo/Go.macro.hx:305: lines 305-310

     305 | [2m  final selfType = [0m[1mContext.typeof(switch expr.expr {[0m
       - | [2m    [...][0m
     310 | [1m  })[0m[2m;[0m
         |
         | Called from here

    [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Context.hx:504: characters 10-30

     504 | [2m  return [0m[1mload("typeof", 1)(e)[0m[2m;[0m
         |          [31m^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

    [30;41m -> [0m stdgo/_internal/log_test/Log_test.hx:4: characters 196-217

       4 | [2m        var __0:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer), __1:stdgo.Ref<stdgo._internal.log.Log.Logger> = stdgo._internal.log.Log.new_(stdgo.Go.asInterface(([0m[1mstdgo.Go.setRef(_buf)[0m[2m : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), ("logger: " : stdgo.GoString), (16 : stdgo.GoInt)), _logger:stdgo.Ref<stdgo._internal.log.Log.Logger> = __1, _buf:stdgo._internal.bytes.Bytes.Buffer = __0;[0m
         |                                                                                                                                                                                                    [31m^^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

    [30;41m -> [0m stdgo/Go.macro.hx:470: characters 11-31

     470 | [2m  var t = [0m[1mContext.typeof(expr)[0m[2m;[0m
         |           [31m^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

    [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Context.hx:504: characters 10-30

     504 | [2m  return [0m[1mload("typeof", 1)(e)[0m[2m;[0m
         |          [31m^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

         | For function argument '_out'

[30;41m ERROR [0m stdgo/_internal/log_test/Log_test.hx:9: characters 212-216

  9 | [2m        var __0:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer), __1:stdgo.Ref<stdgo._internal.log.Log.Logger> = stdgo._internal.log.Log.new_(stdgo.Go.asInterface((stdgo.Go.setRef([0m[1m_buf[0m[2m) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), ("INFO: " : stdgo.GoString), (16 : stdgo.GoInt)), __2:stdgo.GoString -> Void = function(_info:stdgo.GoString):Void {[0m
    |                                                                                                                                                                                                                    [31m^^^^[0m
    | Unknown identifier : _buf

       9 | [2m        var __0:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer), __1:stdgo.Ref<stdgo._internal.log.Log.Logger> = stdgo._internal.log.Log.new_([0m[1mstdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>))[0m[2m, ("INFO: " : stdgo.GoString), (16 : stdgo.GoInt)), __2:stdgo.GoString -> Void = function(_info:stdgo.GoString):Void {[0m
         |                                                                                                                                                                              [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

    [30;41m -> [0m stdgo/Go.macro.hx:305: lines 305-310

     305 | [2m  final selfType = [0m[1mContext.typeof(switch expr.expr {[0m
       - | [2m    [...][0m
     310 | [1m  })[0m[2m;[0m
         |
         | Called from here

    [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Context.hx:504: characters 10-30

     504 | [2m  return [0m[1mload("typeof", 1)(e)[0m[2m;[0m
         |          [31m^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

    [30;41m -> [0m stdgo/_internal/log_test/Log_test.hx:9: characters 196-217

       9 | [2m        var __0:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer), __1:stdgo.Ref<stdgo._internal.log.Log.Logger> = stdgo._internal.log.Log.new_(stdgo.Go.asInterface(([0m[1mstdgo.Go.setRef(_buf)[0m[2m : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), ("INFO: " : stdgo.GoString), (16 : stdgo.GoInt)), __2:stdgo.GoString -> Void = function(_info:stdgo.GoString):Void {[0m
         |                                                                                                                                                                                                    [31m^^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

    [30;41m -> [0m stdgo/Go.macro.hx:470: characters 11-31

     470 | [2m  var t = [0m[1mContext.typeof(expr)[0m[2m;[0m
         |           [31m^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

    [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Context.hx:504: characters 10-30

     504 | [2m  return [0m[1mload("typeof", 1)(e)[0m[2m;[0m
         |          [31m^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

         | For function argument '_out'

[30;41m ERROR [0m stdgo/_internal/log_test/Log_test.hx:10: characters 13-20

 10 | [2m            [0m[1m_logger[0m[2m.output((2 : stdgo.GoInt), _info?.__copy__());[0m
    |             [31m^^^^^^^[0m
    | Unknown identifier : _logger


```

