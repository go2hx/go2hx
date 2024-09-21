# Module stdgo._internal.internal.fuzz has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerServer_static_extension.hx:23: characters 9-23

  23 | [2m        [0m[1m_count.value++[0m[2m;[0m
     |         [31m^^^^^^^^^^^^^^[0m
     | stdgo.GoInt64 should be Int

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerServer_static_extension.hx:23: characters 9-23

  23 | [2m        [0m[1m_count.value++[0m[2m;[0m
     |         [31m^^^^^^^^^^^^^^[0m
     | Int should be stdgo.GoInt64

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerServer_static_extension.hx:51: characters 13-27

  51 | [2m            [0m[1m_count.value++[0m[2m;[0m
     |             [31m^^^^^^^^^^^^^^[0m
     | stdgo.GoInt64 should be Int

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerServer_static_extension.hx:51: characters 13-27

  51 | [2m            [0m[1m_count.value++[0m[2m;[0m
     |             [31m^^^^^^^^^^^^^^[0m
     | Int should be stdgo.GoInt64

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:4: characters 19-60

   4 | [2m        var _fs = [0m[1mstdgo._internal.go.token.Token_newFileSet[0m[2m.newFileSet();[0m
     |                   [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.token.Token_newFileSet

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:5: characters 23-69

   5 | [2m        var __tmp__ = [0m[1mstdgo._internal.go.parser.Parser_parseExprFrom[0m[2m.parseExprFrom(_fs, ("(test)" : stdgo.GoString), stdgo.Go.toInterface(_line), (0u32 : stdgo._internal.go.parser.Parser_Mode.Mode)), _expr:stdgo._internal.go.ast.Ast_Expr.Expr = __tmp__._0, _err:stdgo.Error = __tmp__._1;[0m
     |                       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.parser.Parser_parseExprFrom

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:5: characters 207-243

   5 | [2m        var __tmp__ = stdgo._internal.go.parser.Parser_parseExprFrom.parseExprFrom(_fs, ("(test)" : stdgo.GoString), stdgo.Go.toInterface(_line), (0u32 : stdgo._internal.go.parser.Parser_Mode.Mode)), _expr:[0m[1mstdgo._internal.go.ast.Ast_Expr.Expr[0m[2m = __tmp__._0, _err:stdgo.Error = __tmp__._1;[0m
     |                                                                                                                                                                                                               [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_Expr

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:10: characters 142-186

  10 | [2m            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_expr) : stdgo.Ref<stdgo._internal.go.ast.Ast_CallExpr.CallExpr>)) : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_CallExpr.CallExpr[0m[2m>), _1 : true };[0m
     |                                                                                                                                              [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_CallExpr

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:12: characters 38-82

  12 | [2m            { _0 : (null : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_CallExpr.CallExpr[0m[2m>), _1 : false };[0m
     |                                      [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_CallExpr

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:13: characters 28-30

  13 | [2m        }, _call = __tmp__.[0m[1m_0[0m[2m, _ok = __tmp__._1;[0m
     |                            [31m^^[0m
     | Void has no field _0

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:13: characters 46-48

  13 | [2m        }, _call = __tmp__._0, _ok = __tmp__.[0m[1m_1[0m[2m;[0m
     |                                              [31m^^[0m
     | Void has no field _1

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:9: characters 13-20

   9 | [2m        var [0m[1m__tmp__[0m[2m = try {[0m
     |             [31m^^^^^^^[0m
     | Variables of type Void are not allowed

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:20: characters 53-89

  20 | [2m        var _arg = (_call.args[(0 : stdgo.GoInt)] : [0m[1mstdgo._internal.go.ast.Ast_Expr.Expr[0m[2m);[0m
     |                                                     [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_Expr

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:23: characters 152-198

  23 | [2m                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_call.fun) : stdgo.Ref<stdgo._internal.go.ast.Ast_ArrayType.ArrayType>)) : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_ArrayType.ArrayType[0m[2m>), _1 : true };[0m
     |                                                                                                                                                        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_ArrayType

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:25: characters 42-88

  25 | [2m                { _0 : (null : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_ArrayType.ArrayType[0m[2m>), _1 : false };[0m
     |                                          [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_ArrayType

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:26: characters 37-39

  26 | [2m            }, _arrayType = __tmp__.[0m[1m_0[0m[2m, _ok = __tmp__._1;[0m
     |                                     [31m^^[0m
     | Void has no field _0

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:26: characters 55-57

  26 | [2m            }, _arrayType = __tmp__._0, _ok = __tmp__.[0m[1m_1[0m[2m;[0m
     |                                                       [31m^^[0m
     | Void has no field _1

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:22: characters 17-24

  22 | [2m            var [0m[1m__tmp__[0m[2m = try {[0m
     |                 [31m^^^^^^^[0m
     | Variables of type Void are not allowed

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:32: characters 153-191

  32 | [2m                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_arrayType.elt) : stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>)) : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_Ident.Ident[0m[2m>), _1 : true };[0m
     |                                                                                                                                                         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_Ident

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:34: characters 46-84

  34 | [2m                    { _0 : (null : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_Ident.Ident[0m[2m>), _1 : false };[0m
     |                                              [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_Ident

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:35: characters 35-37

  35 | [2m                }, _elt = __tmp__.[0m[1m_0[0m[2m, _ok = __tmp__._1;[0m
     |                                   [31m^^[0m
     | Void has no field _0

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:35: characters 53-55

  35 | [2m                }, _elt = __tmp__._0, _ok = __tmp__.[0m[1m_1[0m[2m;[0m
     |                                                     [31m^^[0m
     | Void has no field _1

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:31: characters 21-28

  31 | [2m                var [0m[1m__tmp__[0m[2m = try {[0m
     |                     [31m^^^^^^^[0m
     | Variables of type Void are not allowed

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:40: characters 149-193

  40 | [2m                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_arg) : stdgo.Ref<stdgo._internal.go.ast.Ast_BasicLit.BasicLit>)) : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_BasicLit.BasicLit[0m[2m>), _1 : true };[0m
     |                                                                                                                                                     [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_BasicLit

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:42: characters 46-90

  42 | [2m                    { _0 : (null : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_BasicLit.BasicLit[0m[2m>), _1 : false };[0m
     |                                              [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_BasicLit

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:43: characters 35-37

  43 | [2m                }, _lit = __tmp__.[0m[1m_0[0m[2m, _ok = __tmp__._1;[0m
     |                                   [31m^^[0m
     | Void has no field _0

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:43: characters 53-55

  43 | [2m                }, _lit = __tmp__._0, _ok = __tmp__.[0m[1m_1[0m[2m;[0m
     |                                                     [31m^^[0m
     | Void has no field _1

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:39: characters 21-28

  39 | [2m                var [0m[1m__tmp__[0m[2m = try {[0m
     |                     [31m^^^^^^^[0m
     | Variables of type Void are not allowed

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:44: characters 49-91

  44 | [2m                if ((!_ok || (_lit.kind != (9 : [0m[1mstdgo._internal.go.token.Token_Token.Token[0m[2m)) : Bool)) {[0m
     |                                                 [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.token.Token_Token

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:54: characters 31-69

  54 | [2m        var _idType:stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_Ident.Ident[0m[2m> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>);[0m
     |                               [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_Ident

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:57: characters 158-210

  57 | [2m                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_call.fun) : stdgo.Ref<stdgo._internal.go.ast.Ast_SelectorExpr.SelectorExpr>)) : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_SelectorExpr.SelectorExpr[0m[2m>), _1 : true };[0m
     |                                                                                                                                                              [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_SelectorExpr

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:59: characters 42-94

  59 | [2m                { _0 : (null : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_SelectorExpr.SelectorExpr[0m[2m>), _1 : false };[0m
     |                                          [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_SelectorExpr

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:60: characters 36-38

  60 | [2m            }, _selector = __tmp__.[0m[1m_0[0m[2m, _ok = __tmp__._1;[0m
     |                                    [31m^^[0m
     | Void has no field _0

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:60: characters 54-56

  60 | [2m            }, _selector = __tmp__._0, _ok = __tmp__.[0m[1m_1[0m[2m;[0m
     |                                                      [31m^^[0m
     | Void has no field _1

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:56: characters 17-24

  56 | [2m            var [0m[1m__tmp__[0m[2m = try {[0m
     |                 [31m^^^^^^^[0m
     | Variables of type Void are not allowed

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:63: characters 150-188

  63 | [2m                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_selector.x) : stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>)) : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_Ident.Ident[0m[2m>), _1 : true };[0m
     |                                                                                                                                                      [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_Ident

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:65: characters 46-84

  65 | [2m                    { _0 : (null : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_Ident.Ident[0m[2m>), _1 : false };[0m
     |                                              [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_Ident

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:66: characters 38-40

  66 | [2m                }, _xIdent = __tmp__.[0m[1m_0[0m[2m, _ok = __tmp__._1;[0m
     |                                      [31m^^[0m
     | Void has no field _0

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:66: characters 56-58

  66 | [2m                }, _xIdent = __tmp__._0, _ok = __tmp__.[0m[1m_1[0m[2m;[0m
     |                                                        [31m^^[0m
     | Void has no field _1

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:62: characters 21-28

  62 | [2m                var [0m[1m__tmp__[0m[2m = try {[0m
     |                     [31m^^^^^^^[0m
     | Variables of type Void are not allowed

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:73: characters 153-191

  73 | [2m                        _idType = (stdgo.Go.setRef(({ name : ("float64-bits" : stdgo.GoString) } : stdgo._internal.go.ast.Ast_Ident.Ident)) : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_Ident.Ident[0m[2m>);[0m
     |                                                                                                                                                         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_Ident

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:75: characters 153-191

  75 | [2m                        _idType = (stdgo.Go.setRef(({ name : ("float32-bits" : stdgo.GoString) } : stdgo._internal.go.ast.Ast_Ident.Ident)) : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_Ident.Ident[0m[2m>);[0m
     |                                                                                                                                                         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_Ident

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:83: characters 152-190

  83 | [2m                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_call.fun) : stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>)) : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_Ident.Ident[0m[2m>), _1 : true };[0m
     |                                                                                                                                                        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_Ident

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:85: characters 50-88

  85 | [2m                        { _0 : (null : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_Ident.Ident[0m[2m>), _1 : false };[0m
     |                                                  [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_Ident

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:82: characters 25-32

  82 | [2m                    var [0m[1m__tmp__[0m[2m = try {[0m
     |                         [31m^^^^^^^[0m
     | Variables of type Void are not allowed

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:87: characters 39-41

  87 | [2m                    _idType = __tmp__.[0m[1m_0[0m[2m;[0m
     |                                       [31m^^[0m
     | Void has no field _0

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:88: characters 35-37

  88 | [2m                    _ok = __tmp__.[0m[1m_1[0m[2m;[0m
     |                                   [31m^^[0m
     | Void has no field _1

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:95: characters 147-185

  95 | [2m                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_arg) : stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>)) : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_Ident.Ident[0m[2m>), _1 : true };[0m
     |                                                                                                                                                   [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_Ident

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:97: characters 50-88

  97 | [2m                        { _0 : (null : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_Ident.Ident[0m[2m>), _1 : false };[0m
     |                                                  [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_Ident

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:98: characters 38-40

  98 | [2m                    }, _id = __tmp__.[0m[1m_0[0m[2m, _ok = __tmp__._1;[0m
     |                                      [31m^^[0m
     | Void has no field _0

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:98: characters 56-58

  98 | [2m                    }, _id = __tmp__._0, _ok = __tmp__.[0m[1m_1[0m[2m;[0m
     |                                                        [31m^^[0m
     | Void has no field _1

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:94: characters 25-32

  94 | [2m                    var [0m[1m__tmp__[0m[2m = try {[0m
     |                         [31m^^^^^^^[0m
     | Variables of type Void are not allowed

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:112: characters 61-103

 112 | [2m        var __0:stdgo.GoString = ("" : stdgo.GoString), __1:[0m[1mstdgo._internal.go.token.Token_Token.Token[0m[2m = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_Token.Token);[0m
     |                                                             [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.token.Token_Token

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:116: characters 147-193

 116 | [2m                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_arg) : stdgo.Ref<stdgo._internal.go.ast.Ast_UnaryExpr.UnaryExpr>)) : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_UnaryExpr.UnaryExpr[0m[2m>), _1 : true };[0m
     |                                                                                                                                                   [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_UnaryExpr

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:118: characters 42-88

 118 | [2m                { _0 : (null : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_UnaryExpr.UnaryExpr[0m[2m>), _1 : false };[0m
     |                                          [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_UnaryExpr

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:119: characters 30-32

 119 | [2m            }, _op = __tmp__.[0m[1m_0[0m[2m, _ok = __tmp__._1;[0m
     |                              [31m^^[0m
     | Void has no field _0

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:119: characters 48-50

 119 | [2m            }, _op = __tmp__._0, _ok = __tmp__.[0m[1m_1[0m[2m;[0m
     |                                                [31m^^[0m
     | Void has no field _1

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:115: characters 17-24

 115 | [2m            var [0m[1m__tmp__[0m[2m = try {[0m
     |                 [31m^^^^^^^[0m
     | Variables of type Void are not allowed

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:123: characters 67-111

 123 | [2m                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_BasicLit.BasicLit[0m[2m>))) {[0m
     |                                                                   [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_BasicLit

     [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Context.hx:538: characters 10-39

      538 | [2m  return [0m[1mload("resolve_type", 2)(t, p)[0m[2m;[0m
          |          [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
          | Called from here

     [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/ComplexTypeTools.hx:49: characters 29-73

       49 | [2m  return c == null ? null : [0m[1mContext.resolveType(c, Context.currentPos())[0m[2m;[0m
          |                             [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
          | Called from here

     [30;41m -> [0m stdgo/Go.macro.hx:776: characters 14-41

      776 | [2m    var t2 = [0m[1mComplexTypeTools.toType(t2)[0m[2m;[0m
          |              [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
          | Called from here

     [30;41m -> [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:123: characters 25-114

      123 | [2m                    if ([0m[1mstdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_BasicLit.BasicLit>))[0m[2m) {[0m
          |                         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
          | Called from here

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:149: characters 67-111

 149 | [2m                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_BasicLit.BasicLit[0m[2m>))) {[0m
     |                                                                   [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_BasicLit

     [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Context.hx:538: characters 10-39

      538 | [2m  return [0m[1mload("resolve_type", 2)(t, p)[0m[2m;[0m
          |          [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
          | Called from here

     [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/ComplexTypeTools.hx:49: characters 29-73

       49 | [2m  return c == null ? null : [0m[1mContext.resolveType(c, Context.currentPos())[0m[2m;[0m
          |                             [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
          | Called from here

     [30;41m -> [0m stdgo/Go.macro.hx:776: characters 14-41

      776 | [2m    var t2 = [0m[1mComplexTypeTools.toType(t2)[0m[2m;[0m
          |              [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
          | Called from here

     [30;41m -> [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:149: characters 25-114

      149 | [2m                    if ([0m[1mstdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_BasicLit.BasicLit>))[0m[2m) {[0m
          |                         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
          | Called from here

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:180: characters 40-82

 180 | [2m                    if (_kind != ((9 : [0m[1mstdgo._internal.go.token.Token_Token.Token[0m[2m))) {[0m
     |                                        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.token.Token_Token

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:183: characters 21-93

 183 | [2m                    [0m[1mreturn stdgo._internal.strconv.Strconv_unquote.unquote(_val?.__copy__())[0m[2m;[0m
     |                     [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | error: stdgo.GoString should be stdgo.AnyInterface
     | have: { _0: stdgo.GoString }
     | want: { _0: stdgo.AnyInterface }

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:185: characters 40-82

 185 | [2m                    if (_kind == ((5 : [0m[1mstdgo._internal.go.token.Token_Token.Token[0m[2m))) {[0m
     |                                        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.token.Token_Token

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:195: characters 40-82

 195 | [2m                    if (_kind != ((8 : [0m[1mstdgo._internal.go.token.Token_Token.Token[0m[2m))) {[0m
     |                                        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.token.Token_Token

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:214: characters 40-82

 214 | [2m                    if (_kind != ((5 : [0m[1mstdgo._internal.go.token.Token_Token.Token[0m[2m))) {[0m
     |                                        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.token.Token_Token

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseInt.hx:19: characters 17-130

  19 | [2m                [0m[1mreturn stdgo._internal.strconv.Strconv_parseInt.parseInt(_val?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt))[0m[2m;[0m
     |                 [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | error: stdgo.GoInt64 should be stdgo.AnyInterface
     | have: { _0: stdgo.GoInt64 }
     | want: { _0: stdgo.AnyInterface }

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:219: characters 40-82

 219 | [2m                    if (_kind != ((5 : [0m[1mstdgo._internal.go.token.Token_Token.Token[0m[2m))) {[0m
     |                                        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.token.Token_Token

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseUint.hx:19: characters 17-132

  19 | [2m                [0m[1mreturn stdgo._internal.strconv.Strconv_parseUint.parseUint(_val?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt))[0m[2m;[0m
     |                 [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | error: stdgo.GoUInt64 should be stdgo.AnyInterface
     | have: { _0: stdgo.GoUInt64 }
     | want: { _0: stdgo.AnyInterface }

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:224: characters 41-83

 224 | [2m                    if (((_kind != (6 : [0m[1mstdgo._internal.go.token.Token_Token.Token[0m[2m)) && (_kind != (5 : stdgo._internal.go.token.Token_Token.Token)) : Bool)) {[0m
     |                                         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.token.Token_Token

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:230: characters 41-83

 230 | [2m                    if (((_kind != (6 : [0m[1mstdgo._internal.go.token.Token_Token.Token[0m[2m)) && (_kind != (5 : stdgo._internal.go.token.Token_Token.Token)) : Bool)) {[0m
     |                                         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.token.Token_Token

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:233: characters 21-119

 233 | [2m                    [0m[1mreturn stdgo._internal.strconv.Strconv_parseFloat.parseFloat(_val?.__copy__(), (64 : stdgo.GoInt))[0m[2m;[0m
     |                     [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | error: stdgo.GoFloat64 should be stdgo.AnyInterface
     | have: { _0: stdgo.GoFloat64 }
     | want: { _0: stdgo.AnyInterface }

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:235: characters 40-82

 235 | [2m                    if (_kind != ((5 : [0m[1mstdgo._internal.go.token.Token_Token.Token[0m[2m))) {[0m
     |                                        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.token.Token_Token

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:244: characters 41-83

 244 | [2m                    if (((_kind != (6 : [0m[1mstdgo._internal.go.token.Token_Token.Token[0m[2m)) && (_kind != (5 : stdgo._internal.go.token.Token_Token.Token)) : Bool)) {[0m
     |                                         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.token.Token_Token

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerServer_static_extension.hx:352: characters 59-67

 352 | [2m                        var __tmp__ = _ws._fuzzFn(_entry?.[0m[1m__copy__[0m[2m());[0m
     |                                                           [31m^^^^^^^^[0m
     | stdgo._internal.internal.fuzz.CorpusEntry has no field __copy__

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerServer_static_extension.hx:460: characters 65-73

 460 | [2m                                var __tmp__ = _fuzzOnce(_entry?.[0m[1m__copy__[0m[2m()), _dur:stdgo._internal.time.Time_Duration.Duration = __tmp__._0, _cov:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _errMsg:stdgo.GoString = __tmp__._2;[0m
     |                                                                 [31m^^^^^^^^[0m
     | stdgo._internal.internal.fuzz.CorpusEntry has no field __copy__

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerClient_static_extension.hx:66: characters 81-83

  66 | [2m            var __tmp__ = _wc._workerComm._memMu.__smartGet__(), _mem = __tmp__.[0m[1m_0[0m[2m, _ok = __tmp__._1;[0m
     |                                                                                 [31m^^[0m
     | { value : stdgo.Ref<stdgo._internal.internal.fuzz.T_sharedMem>, ok : Bool } has no field _0

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerClient_static_extension.hx:66: characters 99-101

  66 | [2m            var __tmp__ = _wc._workerComm._memMu.__smartGet__(), _mem = __tmp__._0, _ok = __tmp__.[0m[1m_1[0m[2m;[0m
     |                                                                                                   [31m^^[0m
     | { value : stdgo.Ref<stdgo._internal.internal.fuzz.T_sharedMem>, ok : Bool } has no field _1

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerClient_static_extension.hx:77: characters 106-114

  77 | [2m            var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__corpusEntryData._corpusEntryData(_entryIn?.[0m[1m__copy__[0m[2m()), _inp:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;[0m
     |                                                                                                          [31m^^^^^^^^[0m
     | stdgo._internal.internal.fuzz.CorpusEntry has no field __copy__

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerClient_static_extension.hx:79: characters 49-53

  79 | [2m                _wc._workerComm._memMu.__send__([0m[1m_mem[0m[2m);[0m
     |                                                 [31m^^^^[0m
     | stdgo.Ref<stdgo._internal.internal.fuzz.T_sharedMem> should be { _header : () -> Unknown<0> : { _count : stdgo.GoInt64 } }
     | stdgo._internal.internal.fuzz.T_sharedMem has no field _header
     | For function argument 'value'

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerClient_static_extension.hx:89: characters 45-49

  89 | [2m            _wc._workerComm._memMu.__send__([0m[1m_mem[0m[2m);[0m
     |                                             [31m^^^^[0m
     | stdgo.Ref<stdgo._internal.internal.fuzz.T_sharedMem> should be { _setValue : stdgo.Slice<stdgo.GoUInt8> -> Unknown<1>, _header : () -> Unknown<0> : { _count : stdgo.GoInt64 } }
     | stdgo._internal.internal.fuzz.T_sharedMem has no field _header
     | For function argument 'value'

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerClient_static_extension.hx:103: characters 32-34

 103 | [2m                _mem = __tmp__.[0m[1m_0[0m[2m;[0m
     |                                [31m^^[0m
     | { value : stdgo.Ref<stdgo._internal.internal.fuzz.T_sharedMem>, ok : Bool } has no field _0

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerClient_static_extension.hx:104: characters 31-33

 104 | [2m                _ok = __tmp__.[0m[1m_1[0m[2m;[0m
     |                               [31m^^[0m
     | { value : stdgo.Ref<stdgo._internal.internal.fuzz.T_sharedMem>, ok : Bool } has no field _1

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerClient_static_extension.hx:119: characters 57-61

 119 | [2m                        _wc._workerComm._memMu.__send__([0m[1m_mem[0m[2m);[0m
     |                                                         [31m^^^^[0m
     | stdgo.Ref<stdgo._internal.internal.fuzz.T_sharedMem> should be { _setValue : stdgo.Slice<stdgo.GoUInt8> -> Unknown<1>, _header : () -> Unknown<0> : { _count : stdgo.GoInt64 } }
     | stdgo._internal.internal.fuzz.T_sharedMem has no field _header
     | For function argument 'value'

          | For function argument 'x'

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerClient_static_extension.hx:185: characters 236-244

 185 | [2m                final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_T_fuzzResponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } = { _0 : _entryOut?.[0m[1m__copy__[0m[2m(), _1 : _resp?.__copy__(), _2 : false, _3 : _callErr };[0m
     |                                                                                                                                                                                                                                            [31m^^^^^^^^[0m
     | stdgo._internal.internal.fuzz.CorpusEntry has no field __copy__

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerClient_static_extension.hx:223: characters 81-83

 223 | [2m            var __tmp__ = _wc._workerComm._memMu.__smartGet__(), _mem = __tmp__.[0m[1m_0[0m[2m, _ok = __tmp__._1;[0m
     |                                                                                 [31m^^[0m
     | { value : stdgo.Ref<stdgo._internal.internal.fuzz.T_sharedMem>, ok : Bool } has no field _0

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerClient_static_extension.hx:223: characters 99-101

 223 | [2m            var __tmp__ = _wc._workerComm._memMu.__smartGet__(), _mem = __tmp__._0, _ok = __tmp__.[0m[1m_1[0m[2m;[0m
     |                                                                                                   [31m^^[0m
     | { value : stdgo.Ref<stdgo._internal.internal.fuzz.T_sharedMem>, ok : Bool } has no field _1

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerClient_static_extension.hx:263: characters 106-114

 263 | [2m            var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__corpusEntryData._corpusEntryData(_entryIn?.[0m[1m__copy__[0m[2m()), _inp:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;[0m
     |                                                                                                          [31m^^^^^^^^[0m
     | stdgo._internal.internal.fuzz.CorpusEntry has no field __copy__

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerClient_static_extension.hx:274: characters 35-43

 274 | [2m            _entryOut = _entryIn?.[0m[1m__copy__[0m[2m();[0m
     |                                   [31m^^^^^^^^[0m
     | stdgo._internal.internal.fuzz.CorpusEntry has no field __copy__

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerClient_static_extension.hx:299: characters 36-38

 299 | [2m                    _mem = __tmp__.[0m[1m_0[0m[2m;[0m
     |                                    [31m^^[0m
     | { value : stdgo.Ref<stdgo._internal.internal.fuzz.T_sharedMem>, ok : Bool } has no field _0

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerClient_static_extension.hx:300: characters 35-37

 300 | [2m                    _ok = __tmp__.[0m[1m_1[0m[2m;[0m
     |                                   [31m^^[0m
     | { value : stdgo.Ref<stdgo._internal.internal.fuzz.T_sharedMem>, ok : Bool } has no field _1

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerClient_static_extension.hx:315: characters 240-248

 315 | [2m                            final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse; var _2 : stdgo.Error; } = { _0 : _entryIn?.[0m[1m__copy__[0m[2m(), _1 : (new stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse() : stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse), _2 : _retErr };[0m
     |                                                                                                                                                                                                                                                [31m^^^^^^^^[0m
     | stdgo._internal.internal.fuzz.CorpusEntry has no field __copy__

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerClient_static_extension.hx:369: characters 229-237

 369 | [2m                final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse; var _2 : stdgo.Error; } = { _0 : _entryOut?.[0m[1m__copy__[0m[2m(), _1 : _resp?.__copy__(), _2 : _retErr };[0m
     |                                                                                                                                                                                                                                     [31m^^^^^^^^[0m
     | stdgo._internal.internal.fuzz.CorpusEntry has no field __copy__

[30;41m ERROR [0m [31m(macro) [0mstdgo/_internal/internal/fuzz/Fuzz_T_worker_static_extension.hx:250: characters 69-77

 250 | [2m            var __tmp__ = _w._client._minimize(_ctx, _input._entry?.[0m[1m__copy__[0m[2m(), _args?.__copy__()), _entry:stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry = __tmp__._0, _resp:stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse = __tmp__._1, _err:stdgo.Error = __tmp__._2;[0m
     |                                                                     [31m^^^^^^^^[0m
     | stdgo._internal.internal.fuzz.CorpusEntry has no field __copy__

          | For function argument '_entryIn'


```

