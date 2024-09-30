# Module stdgo._internal.internal.fuzz has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerServer_static_extension.hx:22: characters 9-23

  22 | [2m        [0m[1m_count.value++[0m[2m;[0m
     |         [31m^^^^^^^^^^^^^^[0m
     | stdgo.GoInt64 should be Int

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerServer_static_extension.hx:22: characters 9-23

  22 | [2m        [0m[1m_count.value++[0m[2m;[0m
     |         [31m^^^^^^^^^^^^^^[0m
     | Int should be stdgo.GoInt64

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerServer_static_extension.hx:50: characters 13-27

  50 | [2m            [0m[1m_count.value++[0m[2m;[0m
     |             [31m^^^^^^^^^^^^^^[0m
     | stdgo.GoInt64 should be Int

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerServer_static_extension.hx:50: characters 13-27

  50 | [2m            [0m[1m_count.value++[0m[2m;[0m
     |             [31m^^^^^^^^^^^^^^[0m
     | Int should be stdgo.GoInt64

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:3: characters 19-60

   3 | [2m        var _fs = [0m[1mstdgo._internal.go.token.Token_newFileSet[0m[2m.newFileSet();[0m
     |                   [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.token.Token_newFileSet

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:4: characters 23-69

   4 | [2m        var __tmp__ = [0m[1mstdgo._internal.go.parser.Parser_parseExprFrom[0m[2m.parseExprFrom(_fs, ("(test)" : stdgo.GoString), stdgo.Go.toInterface(_line), (0u32 : stdgo._internal.go.parser.Parser_Mode.Mode)), _expr:stdgo._internal.go.ast.Ast_Expr.Expr = __tmp__._0, _err:stdgo.Error = __tmp__._1;[0m
     |                       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.parser.Parser_parseExprFrom

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:4: characters 207-243

   4 | [2m        var __tmp__ = stdgo._internal.go.parser.Parser_parseExprFrom.parseExprFrom(_fs, ("(test)" : stdgo.GoString), stdgo.Go.toInterface(_line), (0u32 : stdgo._internal.go.parser.Parser_Mode.Mode)), _expr:[0m[1mstdgo._internal.go.ast.Ast_Expr.Expr[0m[2m = __tmp__._0, _err:stdgo.Error = __tmp__._1;[0m
     |                                                                                                                                                                                                               [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_Expr

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:9: characters 142-186

   9 | [2m            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_expr) : stdgo.Ref<stdgo._internal.go.ast.Ast_CallExpr.CallExpr>)) : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_CallExpr.CallExpr[0m[2m>), _1 : true };[0m
     |                                                                                                                                              [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_CallExpr

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:11: characters 38-82

  11 | [2m            { _0 : (null : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_CallExpr.CallExpr[0m[2m>), _1 : false };[0m
     |                                      [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_CallExpr

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:12: characters 28-30

  12 | [2m        }, _call = __tmp__.[0m[1m_0[0m[2m, _ok = __tmp__._1;[0m
     |                            [31m^^[0m
     | Void has no field _0

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:12: characters 46-48

  12 | [2m        }, _call = __tmp__._0, _ok = __tmp__.[0m[1m_1[0m[2m;[0m
     |                                              [31m^^[0m
     | Void has no field _1

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:8: characters 13-20

   8 | [2m        var [0m[1m__tmp__[0m[2m = try {[0m
     |             [31m^^^^^^^[0m
     | Variables of type Void are not allowed

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:19: characters 53-89

  19 | [2m        var _arg = (_call.args[(0 : stdgo.GoInt)] : [0m[1mstdgo._internal.go.ast.Ast_Expr.Expr[0m[2m);[0m
     |                                                     [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_Expr

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:22: characters 152-198

  22 | [2m                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_call.fun) : stdgo.Ref<stdgo._internal.go.ast.Ast_ArrayType.ArrayType>)) : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_ArrayType.ArrayType[0m[2m>), _1 : true };[0m
     |                                                                                                                                                        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_ArrayType

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:24: characters 42-88

  24 | [2m                { _0 : (null : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_ArrayType.ArrayType[0m[2m>), _1 : false };[0m
     |                                          [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_ArrayType

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:25: characters 37-39

  25 | [2m            }, _arrayType = __tmp__.[0m[1m_0[0m[2m, _ok = __tmp__._1;[0m
     |                                     [31m^^[0m
     | Void has no field _0

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:25: characters 55-57

  25 | [2m            }, _arrayType = __tmp__._0, _ok = __tmp__.[0m[1m_1[0m[2m;[0m
     |                                                       [31m^^[0m
     | Void has no field _1

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:21: characters 17-24

  21 | [2m            var [0m[1m__tmp__[0m[2m = try {[0m
     |                 [31m^^^^^^^[0m
     | Variables of type Void are not allowed

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:31: characters 153-191

  31 | [2m                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_arrayType.elt) : stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>)) : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_Ident.Ident[0m[2m>), _1 : true };[0m
     |                                                                                                                                                         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_Ident

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:33: characters 46-84

  33 | [2m                    { _0 : (null : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_Ident.Ident[0m[2m>), _1 : false };[0m
     |                                              [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_Ident

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:34: characters 35-37

  34 | [2m                }, _elt = __tmp__.[0m[1m_0[0m[2m, _ok = __tmp__._1;[0m
     |                                   [31m^^[0m
     | Void has no field _0

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:34: characters 53-55

  34 | [2m                }, _elt = __tmp__._0, _ok = __tmp__.[0m[1m_1[0m[2m;[0m
     |                                                     [31m^^[0m
     | Void has no field _1

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:30: characters 21-28

  30 | [2m                var [0m[1m__tmp__[0m[2m = try {[0m
     |                     [31m^^^^^^^[0m
     | Variables of type Void are not allowed

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:39: characters 149-193

  39 | [2m                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_arg) : stdgo.Ref<stdgo._internal.go.ast.Ast_BasicLit.BasicLit>)) : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_BasicLit.BasicLit[0m[2m>), _1 : true };[0m
     |                                                                                                                                                     [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_BasicLit

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:41: characters 46-90

  41 | [2m                    { _0 : (null : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_BasicLit.BasicLit[0m[2m>), _1 : false };[0m
     |                                              [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_BasicLit

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:42: characters 35-37

  42 | [2m                }, _lit = __tmp__.[0m[1m_0[0m[2m, _ok = __tmp__._1;[0m
     |                                   [31m^^[0m
     | Void has no field _0

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:42: characters 53-55

  42 | [2m                }, _lit = __tmp__._0, _ok = __tmp__.[0m[1m_1[0m[2m;[0m
     |                                                     [31m^^[0m
     | Void has no field _1

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:38: characters 21-28

  38 | [2m                var [0m[1m__tmp__[0m[2m = try {[0m
     |                     [31m^^^^^^^[0m
     | Variables of type Void are not allowed

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:43: characters 49-91

  43 | [2m                if ((!_ok || (_lit.kind != (9 : [0m[1mstdgo._internal.go.token.Token_Token.Token[0m[2m)) : Bool)) {[0m
     |                                                 [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.token.Token_Token

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:53: characters 31-69

  53 | [2m        var _idType:stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_Ident.Ident[0m[2m> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>);[0m
     |                               [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_Ident

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:56: characters 158-210

  56 | [2m                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_call.fun) : stdgo.Ref<stdgo._internal.go.ast.Ast_SelectorExpr.SelectorExpr>)) : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_SelectorExpr.SelectorExpr[0m[2m>), _1 : true };[0m
     |                                                                                                                                                              [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_SelectorExpr

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:58: characters 42-94

  58 | [2m                { _0 : (null : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_SelectorExpr.SelectorExpr[0m[2m>), _1 : false };[0m
     |                                          [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_SelectorExpr

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:59: characters 36-38

  59 | [2m            }, _selector = __tmp__.[0m[1m_0[0m[2m, _ok = __tmp__._1;[0m
     |                                    [31m^^[0m
     | Void has no field _0

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:59: characters 54-56

  59 | [2m            }, _selector = __tmp__._0, _ok = __tmp__.[0m[1m_1[0m[2m;[0m
     |                                                      [31m^^[0m
     | Void has no field _1

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:55: characters 17-24

  55 | [2m            var [0m[1m__tmp__[0m[2m = try {[0m
     |                 [31m^^^^^^^[0m
     | Variables of type Void are not allowed

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:62: characters 150-188

  62 | [2m                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_selector.x) : stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>)) : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_Ident.Ident[0m[2m>), _1 : true };[0m
     |                                                                                                                                                      [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_Ident

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:64: characters 46-84

  64 | [2m                    { _0 : (null : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_Ident.Ident[0m[2m>), _1 : false };[0m
     |                                              [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_Ident

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:65: characters 38-40

  65 | [2m                }, _xIdent = __tmp__.[0m[1m_0[0m[2m, _ok = __tmp__._1;[0m
     |                                      [31m^^[0m
     | Void has no field _0

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:65: characters 56-58

  65 | [2m                }, _xIdent = __tmp__._0, _ok = __tmp__.[0m[1m_1[0m[2m;[0m
     |                                                        [31m^^[0m
     | Void has no field _1

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:61: characters 21-28

  61 | [2m                var [0m[1m__tmp__[0m[2m = try {[0m
     |                     [31m^^^^^^^[0m
     | Variables of type Void are not allowed

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:72: characters 153-191

  72 | [2m                        _idType = (stdgo.Go.setRef(({ name : ("float64-bits" : stdgo.GoString) } : stdgo._internal.go.ast.Ast_Ident.Ident)) : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_Ident.Ident[0m[2m>);[0m
     |                                                                                                                                                         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_Ident

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:74: characters 153-191

  74 | [2m                        _idType = (stdgo.Go.setRef(({ name : ("float32-bits" : stdgo.GoString) } : stdgo._internal.go.ast.Ast_Ident.Ident)) : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_Ident.Ident[0m[2m>);[0m
     |                                                                                                                                                         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_Ident

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:82: characters 152-190

  82 | [2m                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_call.fun) : stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>)) : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_Ident.Ident[0m[2m>), _1 : true };[0m
     |                                                                                                                                                        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_Ident

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:84: characters 50-88

  84 | [2m                        { _0 : (null : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_Ident.Ident[0m[2m>), _1 : false };[0m
     |                                                  [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_Ident

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:81: characters 25-32

  81 | [2m                    var [0m[1m__tmp__[0m[2m = try {[0m
     |                         [31m^^^^^^^[0m
     | Variables of type Void are not allowed

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:86: characters 39-41

  86 | [2m                    _idType = __tmp__.[0m[1m_0[0m[2m;[0m
     |                                       [31m^^[0m
     | Void has no field _0

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:87: characters 35-37

  87 | [2m                    _ok = __tmp__.[0m[1m_1[0m[2m;[0m
     |                                   [31m^^[0m
     | Void has no field _1

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:94: characters 147-185

  94 | [2m                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_arg) : stdgo.Ref<stdgo._internal.go.ast.Ast_Ident.Ident>)) : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_Ident.Ident[0m[2m>), _1 : true };[0m
     |                                                                                                                                                   [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_Ident

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:96: characters 50-88

  96 | [2m                        { _0 : (null : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_Ident.Ident[0m[2m>), _1 : false };[0m
     |                                                  [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_Ident

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:97: characters 38-40

  97 | [2m                    }, _id = __tmp__.[0m[1m_0[0m[2m, _ok = __tmp__._1;[0m
     |                                      [31m^^[0m
     | Void has no field _0

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:97: characters 56-58

  97 | [2m                    }, _id = __tmp__._0, _ok = __tmp__.[0m[1m_1[0m[2m;[0m
     |                                                        [31m^^[0m
     | Void has no field _1

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:93: characters 25-32

  93 | [2m                    var [0m[1m__tmp__[0m[2m = try {[0m
     |                         [31m^^^^^^^[0m
     | Variables of type Void are not allowed

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:111: characters 61-103

 111 | [2m        var __0:stdgo.GoString = ("" : stdgo.GoString), __1:[0m[1mstdgo._internal.go.token.Token_Token.Token[0m[2m = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_Token.Token);[0m
     |                                                             [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.token.Token_Token

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:115: characters 147-193

 115 | [2m                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_arg) : stdgo.Ref<stdgo._internal.go.ast.Ast_UnaryExpr.UnaryExpr>)) : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_UnaryExpr.UnaryExpr[0m[2m>), _1 : true };[0m
     |                                                                                                                                                   [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_UnaryExpr

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:117: characters 42-88

 117 | [2m                { _0 : (null : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_UnaryExpr.UnaryExpr[0m[2m>), _1 : false };[0m
     |                                          [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.ast.Ast_UnaryExpr

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:118: characters 30-32

 118 | [2m            }, _op = __tmp__.[0m[1m_0[0m[2m, _ok = __tmp__._1;[0m
     |                              [31m^^[0m
     | Void has no field _0

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:118: characters 48-50

 118 | [2m            }, _op = __tmp__._0, _ok = __tmp__.[0m[1m_1[0m[2m;[0m
     |                                                [31m^^[0m
     | Void has no field _1

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:114: characters 17-24

 114 | [2m            var [0m[1m__tmp__[0m[2m = try {[0m
     |                 [31m^^^^^^^[0m
     | Variables of type Void are not allowed

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:122: characters 67-111

 122 | [2m                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_BasicLit.BasicLit[0m[2m>))) {[0m
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

     [30;41m -> [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:122: characters 25-114

      122 | [2m                    if ([0m[1mstdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_BasicLit.BasicLit>))[0m[2m) {[0m
          |                         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
          | Called from here

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:148: characters 67-111

 148 | [2m                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<[0m[1mstdgo._internal.go.ast.Ast_BasicLit.BasicLit[0m[2m>))) {[0m
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

     [30;41m -> [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:148: characters 25-114

      148 | [2m                    if ([0m[1mstdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_BasicLit.BasicLit>))[0m[2m) {[0m
          |                         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
          | Called from here

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:179: characters 40-82

 179 | [2m                    if (_kind != ((9 : [0m[1mstdgo._internal.go.token.Token_Token.Token[0m[2m))) {[0m
     |                                        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.token.Token_Token

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:182: characters 21-93

 182 | [2m                    [0m[1mreturn stdgo._internal.strconv.Strconv_unquote.unquote(_val?.__copy__())[0m[2m;[0m
     |                     [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | error: stdgo.GoString should be stdgo.AnyInterface
     | have: { _0: stdgo.GoString }
     | want: { _0: stdgo.AnyInterface }

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:184: characters 40-82

 184 | [2m                    if (_kind == ((5 : [0m[1mstdgo._internal.go.token.Token_Token.Token[0m[2m))) {[0m
     |                                        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.token.Token_Token

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:194: characters 40-82

 194 | [2m                    if (_kind != ((8 : [0m[1mstdgo._internal.go.token.Token_Token.Token[0m[2m))) {[0m
     |                                        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.token.Token_Token

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:213: characters 40-82

 213 | [2m                    if (_kind != ((5 : [0m[1mstdgo._internal.go.token.Token_Token.Token[0m[2m))) {[0m
     |                                        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.token.Token_Token

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseInt.hx:18: characters 17-130

  18 | [2m                [0m[1mreturn stdgo._internal.strconv.Strconv_parseInt.parseInt(_val?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt))[0m[2m;[0m
     |                 [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | error: stdgo.GoInt64 should be stdgo.AnyInterface
     | have: { _0: stdgo.GoInt64 }
     | want: { _0: stdgo.AnyInterface }

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:218: characters 40-82

 218 | [2m                    if (_kind != ((5 : [0m[1mstdgo._internal.go.token.Token_Token.Token[0m[2m))) {[0m
     |                                        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.token.Token_Token

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseUint.hx:18: characters 17-132

  18 | [2m                [0m[1mreturn stdgo._internal.strconv.Strconv_parseUint.parseUint(_val?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt))[0m[2m;[0m
     |                 [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | error: stdgo.GoUInt64 should be stdgo.AnyInterface
     | have: { _0: stdgo.GoUInt64 }
     | want: { _0: stdgo.AnyInterface }

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:223: characters 41-83

 223 | [2m                    if (((_kind != (6 : [0m[1mstdgo._internal.go.token.Token_Token.Token[0m[2m)) && (_kind != (5 : stdgo._internal.go.token.Token_Token.Token)) : Bool)) {[0m
     |                                         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.token.Token_Token

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:229: characters 41-83

 229 | [2m                    if (((_kind != (6 : [0m[1mstdgo._internal.go.token.Token_Token.Token[0m[2m)) && (_kind != (5 : stdgo._internal.go.token.Token_Token.Token)) : Bool)) {[0m
     |                                         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.token.Token_Token

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:232: characters 21-119

 232 | [2m                    [0m[1mreturn stdgo._internal.strconv.Strconv_parseFloat.parseFloat(_val?.__copy__(), (64 : stdgo.GoInt))[0m[2m;[0m
     |                     [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | error: stdgo.GoFloat64 should be stdgo.AnyInterface
     | have: { _0: stdgo.GoFloat64 }
     | want: { _0: stdgo.AnyInterface }

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:234: characters 40-82

 234 | [2m                    if (_kind != ((5 : [0m[1mstdgo._internal.go.token.Token_Token.Token[0m[2m))) {[0m
     |                                        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.token.Token_Token

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz__parseCorpusValue.hx:243: characters 41-83

 243 | [2m                    if (((_kind != (6 : [0m[1mstdgo._internal.go.token.Token_Token.Token[0m[2m)) && (_kind != (5 : stdgo._internal.go.token.Token_Token.Token)) : Bool)) {[0m
     |                                         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.token.Token_Token

[30;41m ERROR [0m stdgo/_internal/crypto/internal/boring/Boring_unreachable.hx:3: characters 9-64

   3 | [2m        [0m[1m_internal.crypto.internal.boring.sig.Sig_standardCrypto[0m[2m.standardCrypto();[0m
     |         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.crypto.internal.boring.sig.Sig_standardCrypto

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerServer_static_extension.hx:351: characters 59-67

 351 | [2m                        var __tmp__ = _ws._fuzzFn(_entry?.[0m[1m__copy__[0m[2m());[0m
     |                                                           [31m^^^^^^^^[0m
     | stdgo._internal.internal.fuzz.CorpusEntry has no field __copy__

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerServer_static_extension.hx:459: characters 65-73

 459 | [2m                                var __tmp__ = _fuzzOnce(_entry?.[0m[1m__copy__[0m[2m()), _dur:stdgo._internal.time.Time_Duration.Duration = __tmp__._0, _cov:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _errMsg:stdgo.GoString = __tmp__._2;[0m
     |                                                                 [31m^^^^^^^^[0m
     | stdgo._internal.internal.fuzz.CorpusEntry has no field __copy__

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerClient_static_extension.hx:65: characters 81-83

  65 | [2m            var __tmp__ = _wc._workerComm._memMu.__smartGet__(), _mem = __tmp__.[0m[1m_0[0m[2m, _ok = __tmp__._1;[0m
     |                                                                                 [31m^^[0m
     | { value : stdgo.Ref<stdgo._internal.internal.fuzz.T_sharedMem>, ok : Bool } has no field _0

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerClient_static_extension.hx:65: characters 99-101

  65 | [2m            var __tmp__ = _wc._workerComm._memMu.__smartGet__(), _mem = __tmp__._0, _ok = __tmp__.[0m[1m_1[0m[2m;[0m
     |                                                                                                   [31m^^[0m
     | { value : stdgo.Ref<stdgo._internal.internal.fuzz.T_sharedMem>, ok : Bool } has no field _1

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerClient_static_extension.hx:76: characters 106-114

  76 | [2m            var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__corpusEntryData._corpusEntryData(_entryIn?.[0m[1m__copy__[0m[2m()), _inp:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;[0m
     |                                                                                                          [31m^^^^^^^^[0m
     | stdgo._internal.internal.fuzz.CorpusEntry has no field __copy__

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerClient_static_extension.hx:78: characters 49-53

  78 | [2m                _wc._workerComm._memMu.__send__([0m[1m_mem[0m[2m);[0m
     |                                                 [31m^^^^[0m
     | stdgo.Ref<stdgo._internal.internal.fuzz.T_sharedMem> should be { _header : () -> Unknown<0> : { _count : stdgo.GoInt64 } }
     | stdgo._internal.internal.fuzz.T_sharedMem has no field _header
     | For function argument 'value'

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerClient_static_extension.hx:88: characters 45-49

  88 | [2m            _wc._workerComm._memMu.__send__([0m[1m_mem[0m[2m);[0m
     |                                             [31m^^^^[0m
     | stdgo.Ref<stdgo._internal.internal.fuzz.T_sharedMem> should be { _setValue : stdgo.Slice<stdgo.GoUInt8> -> Unknown<1>, _header : () -> Unknown<0> : { _count : stdgo.GoInt64 } }
     | stdgo._internal.internal.fuzz.T_sharedMem has no field _header
     | For function argument 'value'

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerClient_static_extension.hx:102: characters 32-34

 102 | [2m                _mem = __tmp__.[0m[1m_0[0m[2m;[0m
     |                                [31m^^[0m
     | { value : stdgo.Ref<stdgo._internal.internal.fuzz.T_sharedMem>, ok : Bool } has no field _0

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerClient_static_extension.hx:103: characters 31-33

 103 | [2m                _ok = __tmp__.[0m[1m_1[0m[2m;[0m
     |                               [31m^^[0m
     | { value : stdgo.Ref<stdgo._internal.internal.fuzz.T_sharedMem>, ok : Bool } has no field _1

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerClient_static_extension.hx:118: characters 57-61

 118 | [2m                        _wc._workerComm._memMu.__send__([0m[1m_mem[0m[2m);[0m
     |                                                         [31m^^^^[0m
     | stdgo.Ref<stdgo._internal.internal.fuzz.T_sharedMem> should be { _setValue : stdgo.Slice<stdgo.GoUInt8> -> Unknown<1>, _header : () -> Unknown<0> : { _count : stdgo.GoInt64 } }
     | stdgo._internal.internal.fuzz.T_sharedMem has no field _header
     | For function argument 'value'

          | For function argument 'x'

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerClient_static_extension.hx:184: characters 236-244

 184 | [2m                final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_T_fuzzResponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } = { _0 : _entryOut?.[0m[1m__copy__[0m[2m(), _1 : _resp?.__copy__(), _2 : false, _3 : _callErr };[0m
     |                                                                                                                                                                                                                                            [31m^^^^^^^^[0m
     | stdgo._internal.internal.fuzz.CorpusEntry has no field __copy__

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerClient_static_extension.hx:222: characters 81-83

 222 | [2m            var __tmp__ = _wc._workerComm._memMu.__smartGet__(), _mem = __tmp__.[0m[1m_0[0m[2m, _ok = __tmp__._1;[0m
     |                                                                                 [31m^^[0m
     | { value : stdgo.Ref<stdgo._internal.internal.fuzz.T_sharedMem>, ok : Bool } has no field _0

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerClient_static_extension.hx:222: characters 99-101

 222 | [2m            var __tmp__ = _wc._workerComm._memMu.__smartGet__(), _mem = __tmp__._0, _ok = __tmp__.[0m[1m_1[0m[2m;[0m
     |                                                                                                   [31m^^[0m
     | { value : stdgo.Ref<stdgo._internal.internal.fuzz.T_sharedMem>, ok : Bool } has no field _1

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerClient_static_extension.hx:262: characters 106-114

 262 | [2m            var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__corpusEntryData._corpusEntryData(_entryIn?.[0m[1m__copy__[0m[2m()), _inp:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;[0m
     |                                                                                                          [31m^^^^^^^^[0m
     | stdgo._internal.internal.fuzz.CorpusEntry has no field __copy__

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerClient_static_extension.hx:273: characters 35-43

 273 | [2m            _entryOut = _entryIn?.[0m[1m__copy__[0m[2m();[0m
     |                                   [31m^^^^^^^^[0m
     | stdgo._internal.internal.fuzz.CorpusEntry has no field __copy__

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerClient_static_extension.hx:298: characters 36-38

 298 | [2m                    _mem = __tmp__.[0m[1m_0[0m[2m;[0m
     |                                    [31m^^[0m
     | { value : stdgo.Ref<stdgo._internal.internal.fuzz.T_sharedMem>, ok : Bool } has no field _0

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerClient_static_extension.hx:299: characters 35-37

 299 | [2m                    _ok = __tmp__.[0m[1m_1[0m[2m;[0m
     |                                   [31m^^[0m
     | { value : stdgo.Ref<stdgo._internal.internal.fuzz.T_sharedMem>, ok : Bool } has no field _1

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerClient_static_extension.hx:314: characters 240-248

 314 | [2m                            final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse; var _2 : stdgo.Error; } = { _0 : _entryIn?.[0m[1m__copy__[0m[2m(), _1 : (new stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse() : stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse), _2 : _retErr };[0m
     |                                                                                                                                                                                                                                                [31m^^^^^^^^[0m
     | stdgo._internal.internal.fuzz.CorpusEntry has no field __copy__

[30;41m ERROR [0m stdgo/_internal/internal/fuzz/Fuzz_T_workerClient_static_extension.hx:368: characters 229-237

 368 | [2m                final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse; var _2 : stdgo.Error; } = { _0 : _entryOut?.[0m[1m__copy__[0m[2m(), _1 : _resp?.__copy__(), _2 : _retErr };[0m
     |                                                                                                                                                                                                                                     [31m^^^^^^^^[0m
     | stdgo._internal.internal.fuzz.CorpusEntry has no field __copy__

[30;41m ERROR [0m [31m(macro) [0mstdgo/_internal/internal/fuzz/Fuzz_T_worker_static_extension.hx:249: characters 69-77

 249 | [2m            var __tmp__ = _w._client._minimize(_ctx, _input._entry?.[0m[1m__copy__[0m[2m(), _args?.__copy__()), _entry:stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry = __tmp__._0, _resp:stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse = __tmp__._1, _err:stdgo.Error = __tmp__._2;[0m
     |                                                                     [31m^^^^^^^^[0m
     | stdgo._internal.internal.fuzz.CorpusEntry has no field __copy__

          | For function argument '_entryIn'


```

