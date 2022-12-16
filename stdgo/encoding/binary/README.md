# Module stdgo.encoding.binary has compilation errors, please do not use:
```
stdgo/Go.hx:864: characters 19-45 : stdgo.reflect.Value should be stdgo.GoArray<Dynamic>
stdgo/Go.hx:864: characters 19-45 : ... For function argument 'len'
stdgo/Go.hx:864: characters 19-45 : ... For function argument 'results'
stdgo/Go.hx:864: characters 19-45 : ... For function argument 'type'
stdgo/Go.hx:864: characters 19-45 : ... For function argument 'methods'
stdgo/Go.hx:864: characters 19-45 : ... For function argument '__type__'
stdgo/Go.hx:864: characters 19-45 : ... For function argument 'args'
stdgo/encoding/binary/Binary.hx:1207: characters 78-118 : Expected Expr but got {pos: #pos(stdgo/encoding/binary/Binary.hx:1207: characters 78-118), expr: ENew({name: StdGoTypes, params: [], sub: AnyInterface, pack: [stdgo]},[{pos: #pos(stdgo/encoding/binary/Binary.hx:1207: characters 93-117), expr: EParenthesis({pos: <...>, expr: <...>})},{pos: #pos(stdgo/Go.hx:502: characters 58-103), expr: ENew({name: <...>, params: <...>, sub: <...>, pack: <...>},[<...>])}])} (see dump/decoding_error.txt for details)
stdgo/encoding/binary/Binary.hx:1207: characters 78-118 : ... For function argument '_data'
stdgo/encoding/binary/Binary.hx:1214: characters 77-121 : Expected Expr but got {pos: #pos(stdgo/encoding/binary/Binary.hx:1214: characters 77-121), expr: ENew({name: StdGoTypes, params: [], sub: AnyInterface, pack: [stdgo]},[{pos: #pos(stdgo/encoding/binary/Binary.hx:1214: characters 92-120), expr: EParenthesis({pos: <...>, expr: <...>})},{pos: #pos(stdgo/Go.hx:502: characters 58-103), expr: ENew({name: <...>, params: <...>, sub: <...>, pack: <...>},[<...>])}])} (see dump/decoding_error.txt for details)
stdgo/encoding/binary/Binary.hx:1214: characters 77-121 : ... For function argument '_data'
stdgo/encoding/binary/Binary.hx:1221: characters 73-91 : Expected Expr but got {pos: #pos(stdgo/encoding/binary/Binary.hx:1221: characters 73-91), expr: ENew({name: StdGoTypes, params: [], sub: AnyInterface, pack: [stdgo]},[{pos: #pos(stdgo/encoding/binary/Binary.hx:1221: characters 88-90), expr: EConst(CIdent(<...>))},{pos: #pos(stdgo/Go.hx:502: characters 58-103), expr: ENew({name: <...>, params: <...>, sub: <...>, pack: <...>},[<...>])}])} (see dump/decoding_error.txt for details)
stdgo/encoding/binary/Binary.hx:1221: characters 73-91 : ... For function argument 'args'
stdgo/encoding/binary/Binary.hx:1224: characters 78-122 : Expected Expr but got {pos: #pos(stdgo/encoding/binary/Binary.hx:1224: characters 78-122), expr: ENew({name: StdGoTypes, params: [], sub: AnyInterface, pack: [stdgo]},[{pos: #pos(stdgo/encoding/binary/Binary.hx:1224: characters 93-121), expr: EParenthesis({pos: <...>, expr: <...>})},{pos: #pos(stdgo/Go.hx:502: characters 58-103), expr: ENew({name: <...>, params: <...>, sub: <...>, pack: <...>},[<...>])}])} (see dump/decoding_error.txt for details)
stdgo/encoding/binary/Binary.hx:1224: characters 78-122 : ... For function argument '_data'
stdgo/encoding/binary/Binary.hx:1231: characters 77-117 : Expected Expr but got {pos: #pos(stdgo/encoding/binary/Binary.hx:1231: characters 77-117), expr: ENew({name: StdGoTypes, params: [], sub: AnyInterface, pack: [stdgo]},[{pos: #pos(stdgo/encoding/binary/Binary.hx:1231: characters 92-116), expr: EParenthesis({pos: <...>, expr: <...>})},{pos: #pos(stdgo/Go.hx:502: characters 58-103), expr: ENew({name: <...>, params: <...>, sub: <...>, pack: <...>},[<...>])}])} (see dump/decoding_error.txt for details)
stdgo/encoding/binary/Binary.hx:1231: characters 77-117 : ... For function argument '_data'
stdgo/encoding/binary/Binary.hx:1237: characters 35-54 : Expected Expr but got {pos: #pos(stdgo/encoding/binary/Binary.hx:1237: characters 35-54), expr: ENew({name: StdGoTypes, params: [], sub: AnyInterface, pack: [stdgo]},[{pos: #pos(stdgo/encoding/binary/Binary.hx:1237: characters 50-53), expr: EConst(CIdent(<...>))},{pos: #pos(stdgo/Go.hx:502: characters 58-103), expr: ENew({name: <...>, params: <...>, sub: <...>, pack: <...>},[<...>])}])} (see dump/decoding_error.txt for details)
stdgo/encoding/binary/Binary.hx:1237: characters 35-54 : ... For function argument 'args'
stdgo/encoding/binary_test/Binary_test.hx:41: characters 76-133 : Uncaught exception Type not found 'T_littleEndian_asInterface'
/home/runner/haxe/versions/477663e/std/haxe/macro/Context.hx:292: characters 10-35 : Called from here
stdgo/Go.hx:371: characters 15-56 : Called from here
stdgo/encoding/binary_test/Binary_test.hx:41: characters 76-133 : Called from here
For function argument '_order'
stdgo/encoding/binary_test/Binary_test.hx:53: characters 77-134 : Uncaught exception Type not found 'T_littleEndian_asInterface'
/home/runner/haxe/versions/477663e/std/haxe/macro/Context.hx:292: characters 10-35 : Called from here
stdgo/Go.hx:371: characters 15-56 : Called from here
stdgo/encoding/binary_test/Binary_test.hx:53: characters 77-134 : Called from here
For function argument '_order'
stdgo/encoding/binary_test/Binary_test.hx:66: characters 75-132 : Uncaught exception Type not found 'T_littleEndian_asInterface'
/home/runner/haxe/versions/477663e/std/haxe/macro/Context.hx:292: characters 10-35 : Called from here
stdgo/Go.hx:371: characters 15-56 : Called from here
stdgo/encoding/binary_test/Binary_test.hx:66: characters 75-132 : Called from here
For function argument '_order'
stdgo/encoding/binary_test/Binary_test.hx:85: characters 74-131 : Uncaught exception Type not found 'T_littleEndian_asInterface'
/home/runner/haxe/versions/477663e/std/haxe/macro/Context.hx:292: characters 10-35 : Called from here
stdgo/Go.hx:371: characters 15-56 : Called from here
stdgo/encoding/binary_test/Binary_test.hx:85: characters 74-131 : Called from here
For function argument '_order'

```

