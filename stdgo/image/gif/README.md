# Module stdgo.image.gif has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/image/gif/Gif_T_decoder_static_extension.hx:64: characters 181-261

 64 | [2m                    _m.palette = ((new stdgo._internal.image.color.Color_Palette.Palette(0, 0) : stdgo._internal.image.color.Color_Palette.Palette).__append__(stdgo.Go.asInterface([0m[1m...(_d._globalColorTable : Array<stdgo._internal.image.color.Color_Color.Color>)[0m[2m)));[0m
    |                                                                                                                                                                                     [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Spread unary operator is only allowed for unpacking the last argument in a call with rest arguments

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

    [30;41m -> [0m stdgo/_internal/image/gif/Gif_T_decoder_static_extension.hx:64: characters 160-262

      64 | [2m                    _m.palette = ((new stdgo._internal.image.color.Color_Palette.Palette(0, 0) : stdgo._internal.image.color.Color_Palette.Palette).__append__([0m[1mstdgo.Go.asInterface(...(_d._globalColorTable : Array<stdgo._internal.image.color.Color_Color.Color>))[0m[2m));[0m
         |                                                                                                                                                                [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

         | For function argument 'args'

[30;41m ERROR [0m stdgo/_internal/image/gif/Gif_encode.hx:37: characters 57-64

 37 | [2m                                    _pm.set(_x, _y, _cp.[0m[1mconvert[0m[2m(_m.at(_x, _y)));[0m
    |                                                         [31m^^^^^^^[0m
    | stdgo.Slice<stdgo._internal.image.color.Color> has no field convert


```
