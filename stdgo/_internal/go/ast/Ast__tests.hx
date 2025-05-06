package stdgo._internal.go.ast;
var _tests : stdgo.Slice<stdgo._internal.go.ast.Ast_t__struct_2.T__struct_2> = (new stdgo.Slice<stdgo._internal.go.ast.Ast_t__struct_2.T__struct_2>(18, 18, ...[
({ _x : (null : stdgo.AnyInterface), _s : ("0  nil" : stdgo.GoString) } : stdgo._internal.go.ast.Ast_t__struct_2.T__struct_2),
({ _x : stdgo.Go.toInterface(true), _s : ("0  true" : stdgo.GoString) } : stdgo._internal.go.ast.Ast_t__struct_2.T__struct_2),
({ _x : stdgo.Go.toInterface((42 : stdgo.GoInt)), _s : ("0  42" : stdgo.GoString) } : stdgo._internal.go.ast.Ast_t__struct_2.T__struct_2),
({ _x : stdgo.Go.toInterface((3.14 : stdgo.GoFloat64)), _s : ("0  3.14" : stdgo.GoString) } : stdgo._internal.go.ast.Ast_t__struct_2.T__struct_2),
({ _x : stdgo.Go.toInterface(((1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 2.718f64))), _s : ("0  (1+2.718i)" : stdgo.GoString) } : stdgo._internal.go.ast.Ast_t__struct_2.T__struct_2),
({ _x : stdgo.Go.toInterface(("foobar" : stdgo.GoString)), _s : ("0  \"foobar\"" : stdgo.GoString) } : stdgo._internal.go.ast.Ast_t__struct_2.T__struct_2),
({ _x : stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.go.ast.Ast_expr.Expr, stdgo.GoString>();
        x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.ast.Ast_expr.Expr", [], stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.ast.Ast_expr.Expr", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }), false, { get : () -> null }));
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        {};
        cast x;
    } : stdgo.GoMap<stdgo._internal.go.ast.Ast_expr.Expr, stdgo.GoString>)), _s : ("0  map[ast.Expr]string (len = 0) {}" : stdgo.GoString) } : stdgo._internal.go.ast.Ast_t__struct_2.T__struct_2),
({ _x : stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
        x.__defaultValue__ = () -> (0 : stdgo.GoInt);
        x.set(("a" : stdgo.GoString), (1 : stdgo.GoInt));
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>)), _s : ("0  map[string]int (len = 1) {\n\t\t1  .  \"a\": 1\n\t\t2  }" : stdgo.GoString) } : stdgo._internal.go.ast.Ast_t__struct_2.T__struct_2),
({ _x : stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.GoInt))), _s : ("0  *0" : stdgo.GoString) } : stdgo._internal.go.ast.Ast_t__struct_2.T__struct_2),
({ _x : stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)), _s : ("0  [0]int {}" : stdgo.GoString) } : stdgo._internal.go.ast.Ast_t__struct_2.T__struct_2),
({ _x : stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)), _s : ("0  [3]int {\n\t\t1  .  0: 1\n\t\t2  .  1: 2\n\t\t3  .  2: 3\n\t\t4  }" : stdgo.GoString) } : stdgo._internal.go.ast.Ast_t__struct_2.T__struct_2),
({ _x : stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoInt>(1, 1, ...[(42 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)), _s : ("0  [1]int {\n\t\t1  .  0: 42\n\t\t2  }" : stdgo.GoString) } : stdgo._internal.go.ast.Ast_t__struct_2.T__struct_2),
({ _x : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)), _s : ("0  []int (len = 0) {}" : stdgo.GoString) } : stdgo._internal.go.ast.Ast_t__struct_2.T__struct_2),
({ _x : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)), _s : ("0  []int (len = 3) {\n\t\t1  .  0: 1\n\t\t2  .  1: 2\n\t\t3  .  2: 3\n\t\t4  }" : stdgo.GoString) } : stdgo._internal.go.ast.Ast_t__struct_2.T__struct_2),
({ _x : stdgo.Go.toInterface(stdgo.Go.asInterface(({  } : stdgo._internal.go.ast.Ast_t__struct_3.T__struct_3))), _s : ("0  struct {} {}" : stdgo.GoString) } : stdgo._internal.go.ast.Ast_t__struct_2.T__struct_2),
({ _x : stdgo.Go.toInterface(stdgo.Go.asInterface(({ _x : (7 : stdgo.GoInt) } : stdgo._internal.go.ast.Ast_t__struct_4.T__struct_4))), _s : ("0  struct { x int } {}" : stdgo.GoString) } : stdgo._internal.go.ast.Ast_t__struct_2.T__struct_2),
({ _x : stdgo.Go.toInterface(stdgo.Go.asInterface(({ x : (42 : stdgo.GoInt), _y : (991 : stdgo.GoInt) } : stdgo._internal.go.ast.Ast_t__struct_5.T__struct_5))), _s : ("0  struct { X int; y int } {\n\t\t1  .  X: 42\n\t\t2  }" : stdgo.GoString) } : stdgo._internal.go.ast.Ast_t__struct_2.T__struct_2),
({ _x : stdgo.Go.toInterface(stdgo.Go.asInterface(({ x : (42 : stdgo.GoInt), y : (991 : stdgo.GoInt) } : stdgo._internal.go.ast.Ast_t__struct_6.T__struct_6))), _s : ("0  struct { X int; Y int } {\n\t\t1  .  X: 42\n\t\t2  .  Y: 991\n\t\t3  }" : stdgo.GoString) } : stdgo._internal.go.ast.Ast_t__struct_2.T__struct_2)].concat([for (i in 18 ... (18 > 18 ? 18 : 18 : stdgo.GoInt).toBasic()) ({ _x : (null : stdgo.AnyInterface), _s : ("" : stdgo.GoString) } : stdgo._internal.go.ast.Ast_t__struct_2.T__struct_2)])) : stdgo.Slice<stdgo._internal.go.ast.Ast_t__struct_2.T__struct_2>);
