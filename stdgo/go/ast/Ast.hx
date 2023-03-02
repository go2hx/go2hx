package stdgo.go.ast;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
/**
    // Package ast declares the types used to represent syntax trees for Go
    // packages.
**/
private var __go2hxdoc__package : Bool;
/**
    // separator is an empty //-style comment that is interspersed between
    // different comment groups when they are concatenated into a single group
    
    
**/
private var _separator = (Go.setRef((new Comment((0 : stdgo.go.token.Token.Pos), ("//" : GoString)) : Comment)) : Ref<Comment>);
/**
    
    
    
**/
private var _indent = ((".  " : GoString) : Slice<GoByte>);
/**
    
    
    
**/
private var _objKindStrings = {
        var s:GoArray<GoString> = new GoArray<GoString>(...[for (i in 0 ... 7) ""]);
        s[0] = ("bad" : GoString);
        s[1] = ("package" : GoString);
        s[2] = ("const" : GoString);
        s[3] = ("type" : GoString);
        s[4] = ("var" : GoString);
        s[5] = ("func" : GoString);
        s[6] = ("label" : GoString);
        s;
    };
/**
    
    
    
**/
private var _comments = (new Slice<T__struct_0>(
0,
0,
({ _list : (new Slice<GoString>(0, 0, ("//" : GoString)) : Slice<GoString>), _text : Go.str() } : T__struct_0),
({ _list : (new Slice<GoString>(0, 0, ("//   " : GoString)) : Slice<GoString>), _text : Go.str() } : T__struct_0),
({ _list : (new Slice<GoString>(0, 0, ("//" : GoString), ("//" : GoString), ("//   " : GoString)) : Slice<GoString>), _text : Go.str() } : T__struct_0),
({ _list : (new Slice<GoString>(0, 0, ("// foo   " : GoString)) : Slice<GoString>), _text : ("foo\n" : GoString) } : T__struct_0),
({ _list : (new Slice<GoString>(0, 0, ("//" : GoString), ("//" : GoString), ("// foo" : GoString)) : Slice<GoString>), _text : ("foo\n" : GoString) } : T__struct_0),
({ _list : (new Slice<GoString>(0, 0, ("// foo  bar  " : GoString)) : Slice<GoString>), _text : ("foo  bar\n" : GoString) } : T__struct_0),
({ _list : (new Slice<GoString>(0, 0, ("// foo" : GoString), ("// bar" : GoString)) : Slice<GoString>), _text : ("foo\nbar\n" : GoString) } : T__struct_0),
({ _list : (new Slice<GoString>(0, 0, ("// foo" : GoString), ("//" : GoString), ("//" : GoString), ("//" : GoString), ("// bar" : GoString)) : Slice<GoString>), _text : ("foo\n\nbar\n" : GoString) } : T__struct_0),
({ _list : (new Slice<GoString>(0, 0, ("// foo" : GoString), ("/* bar */" : GoString)) : Slice<GoString>), _text : ("foo\n bar\n" : GoString) } : T__struct_0),
({ _list : (new Slice<GoString>(0, 0, ("//" : GoString), ("//" : GoString), ("//" : GoString), ("// foo" : GoString), ("//" : GoString), ("//" : GoString), ("//" : GoString)) : Slice<GoString>), _text : ("foo\n" : GoString) } : T__struct_0),
({ _list : (new Slice<GoString>(0, 0, ("/**/" : GoString)) : Slice<GoString>), _text : Go.str() } : T__struct_0),
({ _list : (new Slice<GoString>(0, 0, ("/*   */" : GoString)) : Slice<GoString>), _text : Go.str() } : T__struct_0),
({ _list : (new Slice<GoString>(0, 0, ("/**/" : GoString), ("/**/" : GoString), ("/*   */" : GoString)) : Slice<GoString>), _text : Go.str() } : T__struct_0),
({ _list : (new Slice<GoString>(0, 0, ("/* Foo   */" : GoString)) : Slice<GoString>), _text : (" Foo\n" : GoString) } : T__struct_0),
({ _list : (new Slice<GoString>(0, 0, ("/* Foo  Bar  */" : GoString)) : Slice<GoString>), _text : (" Foo  Bar\n" : GoString) } : T__struct_0),
({ _list : (new Slice<GoString>(0, 0, ("/* Foo*/" : GoString), ("/* Bar*/" : GoString)) : Slice<GoString>), _text : (" Foo\n Bar\n" : GoString) } : T__struct_0),
({ _list : (new Slice<GoString>(0, 0, ("/* Foo*/" : GoString), ("/**/" : GoString), ("/**/" : GoString), ("/**/" : GoString), ("// Bar" : GoString)) : Slice<GoString>), _text : (" Foo\n\nBar\n" : GoString) } : T__struct_0),
({ _list : (new Slice<GoString>(0, 0, ("/* Foo*/" : GoString), ("/*\n*/" : GoString), ("//" : GoString), ("/*\n*/" : GoString), ("// Bar" : GoString)) : Slice<GoString>), _text : (" Foo\n\nBar\n" : GoString) } : T__struct_0),
({ _list : (new Slice<GoString>(0, 0, ("/* Foo*/" : GoString), ("// Bar" : GoString)) : Slice<GoString>), _text : (" Foo\nBar\n" : GoString) } : T__struct_0),
({ _list : (new Slice<GoString>(0, 0, ("/* Foo\n Bar*/" : GoString)) : Slice<GoString>), _text : (" Foo\n Bar\n" : GoString) } : T__struct_0),
({ _list : (new Slice<GoString>(0, 0, ("// foo" : GoString), ("//go:noinline" : GoString), ("// bar" : GoString), ("//:baz" : GoString)) : Slice<GoString>), _text : ("foo\nbar\n:baz\n" : GoString) } : T__struct_0),
({ _list : (new Slice<GoString>(0, 0, ("// foo" : GoString), ("//lint123:ignore" : GoString), ("// bar" : GoString)) : Slice<GoString>), _text : ("foo\nbar\n" : GoString) } : T__struct_0)) : Slice<T__struct_0>);
/**
    
    
    
**/
private var _isDirectiveTests = (new Slice<T__struct_1>(
0,
0,
({ _in : ("abc" : GoString), _ok : false } : T__struct_1),
({ _in : ("go:inline" : GoString), _ok : true } : T__struct_1),
({ _in : ("Go:inline" : GoString), _ok : false } : T__struct_1),
({ _in : ("go:Inline" : GoString), _ok : false } : T__struct_1),
({ _in : (":inline" : GoString), _ok : false } : T__struct_1),
({ _in : ("lint:ignore" : GoString), _ok : true } : T__struct_1),
({ _in : ("lint:1234" : GoString), _ok : true } : T__struct_1),
({ _in : ("1234:lint" : GoString), _ok : true } : T__struct_1),
({ _in : ("go: inline" : GoString), _ok : false } : T__struct_1),
({ _in : ("go:" : GoString), _ok : false } : T__struct_1),
({ _in : ("go:*" : GoString), _ok : false } : T__struct_1),
({ _in : ("go:x*" : GoString), _ok : true } : T__struct_1),
({ _in : ("export foo" : GoString), _ok : true } : T__struct_1),
({ _in : ("extern foo" : GoString), _ok : true } : T__struct_1),
({ _in : ("expert foo" : GoString), _ok : false } : T__struct_1)) : Slice<T__struct_1>);
/**
    
    
    
**/
private var _tests = (new Slice<T__struct_2>(
0,
0,
({ _x : (null : AnyInterface), _s : ("0  nil" : GoString) } : T__struct_2),
({ _x : Go.toInterface(true), _s : ("0  true" : GoString) } : T__struct_2),
({ _x : Go.toInterface((42 : GoInt)), _s : ("0  42" : GoString) } : T__struct_2),
({ _x : Go.toInterface((3.14 : GoFloat64)), _s : ("0  3.14" : GoString) } : T__struct_2),
({ _x : Go.toInterface(((1 : GoFloat64) + new GoComplex128(0, 2.718))), _s : ("0  (1+2.718i)" : GoString) } : T__struct_2),
({ _x : Go.toInterface(("foobar" : GoString)), _s : ("0  \"foobar\"" : GoString) } : T__struct_2),
({ _x : Go.toInterface(({
        final x = new stdgo.GoMap.GoObjectMap<Expr, GoString>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("Expr", [], stdgo.internal.reflect.Reflect.GoType.named("Expr", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }), false, { get : () -> null }) }, { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) })));
        @:privateAccess x._keys = [];
        @:privateAccess x._values = [];
        x;
    } : stdgo.GoMap<Expr, GoString>)), _s : ("0  map[ast.Expr]string (len = 0) {}" : GoString) } : T__struct_2),
({ _x : Go.toInterface(({
        final x = new stdgo.GoMap.GoObjectMap<GoString, GoInt>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int_kind) })));
        @:privateAccess x._keys = [("a" : GoString)];
        @:privateAccess x._values = [(1 : GoInt)];
        x;
    } : stdgo.GoMap<GoString, GoInt>)), _s : ("0  map[string]int (len = 1) {\n\t\t1  .  \"a\": 1\n\t\t2  }" : GoString) } : T__struct_2),
({ _x : Go.toInterface(Go.pointer((0 : GoInt))), _s : ("0  *0" : GoString) } : T__struct_2),
({ _x : Go.toInterface((new GoArray<GoInt>() : GoArray<GoInt>)), _s : ("0  [0]int {}" : GoString) } : T__struct_2),
({ _x : Go.toInterface((new GoArray<GoInt>((1 : GoInt), (2 : GoInt), (3 : GoInt)) : GoArray<GoInt>)), _s : ("0  [3]int {\n\t\t1  .  0: 1\n\t\t2  .  1: 2\n\t\t3  .  2: 3\n\t\t4  }" : GoString) } : T__struct_2),
({ _x : Go.toInterface((new GoArray<GoInt>((42 : GoInt)) : GoArray<GoInt>)), _s : ("0  [1]int {\n\t\t1  .  0: 42\n\t\t2  }" : GoString) } : T__struct_2),
({ _x : Go.toInterface((new Slice<GoInt>(0, 0) : Slice<GoInt>)), _s : ("0  []int (len = 0) {}" : GoString) } : T__struct_2),
({ _x : Go.toInterface((new Slice<GoInt>(0, 0, (1 : GoInt), (2 : GoInt), (3 : GoInt)) : Slice<GoInt>)), _s : ("0  []int (len = 3) {\n\t\t1  .  0: 1\n\t\t2  .  1: 2\n\t\t3  .  2: 3\n\t\t4  }" : GoString) } : T__struct_2),
({ _x : Go.toInterface(Go.asInterface(({  } : T__struct_3))), _s : ("0  struct {} {}" : GoString) } : T__struct_2),
({ _x : Go.toInterface(Go.asInterface(({ _x : (7 : GoInt) } : T__struct_4))), _s : ("0  struct { x int } {}" : GoString) } : T__struct_2),
({ _x : Go.toInterface(Go.asInterface(({ x : (42 : GoInt), _y : (991 : GoInt) } : T__struct_5))), _s : ("0  struct { X int; y int } {\n\t\t1  .  X: 42\n\t\t2  }" : GoString) } : T__struct_2),
({ _x : Go.toInterface(Go.asInterface(({ x : (42 : GoInt), y : (991 : GoInt) } : T__struct_6))), _s : ("0  struct { X int; Y int } {\n\t\t1  .  X: 42\n\t\t2  .  Y: 991\n\t\t3  }" : GoString) } : T__struct_2)) : Slice<T__struct_2>);
/**
    
    
    
**/
final send : ChanDir = (2 : ChanDir);
/**
    
    
    
**/
final recv = (2 : ChanDir);
/**
    // If set, duplicate function declarations are excluded.
    
    
**/
final filterFuncDuplicates : MergeMode = (("4" : GoUInt) : MergeMode);
/**
    // If set, comments that are not associated with a specific
    // AST node (as Doc or Comment) are excluded.
    
    
**/
final filterUnassociatedComments = (("4" : GoUInt) : MergeMode);
/**
    // If set, duplicate import declarations are excluded.
    
    
**/
final filterImportDuplicates = (("4" : GoUInt) : MergeMode);
/**
    // The list of possible Object kinds.
    
    // for error handling
**/
final bad : ObjKind = (6 : ObjKind);
/**
    // The list of possible Object kinds.
    
    // package
**/
final pkg = (6 : ObjKind);
/**
    // The list of possible Object kinds.
    
    // constant
**/
final con = (6 : ObjKind);
/**
    // The list of possible Object kinds.
    
    // type
**/
final typ = (6 : ObjKind);
/**
    // The list of possible Object kinds.
    
    // variable
**/
final var_ = (6 : ObjKind);
/**
    // The list of possible Object kinds.
    
    // function or method
**/
final fun = (6 : ObjKind);
/**
    // The list of possible Object kinds.
    
    // label
**/
final lbl = (6 : ObjKind);
/**
    // All node types implement the Node interface.
    
    
**/
typedef Node = StructType & {
    /**
        
        
        // position of first character belonging to the node
    **/
    public dynamic function pos():stdgo.go.token.Token.Pos;
    /**
        
        
        // position of first character immediately after the node
    **/
    public dynamic function end():stdgo.go.token.Token.Pos;
};
/**
    // All expression nodes implement the Expr interface.
    
    
**/
typedef Expr = StructType & {
    > Node,
    /**
        
        
        
    **/
    public dynamic function _exprNode():Void;
};
/**
    // All statement nodes implement the Stmt interface.
    
    
**/
typedef Stmt = StructType & {
    > Node,
    /**
        
        
        
    **/
    public dynamic function _stmtNode():Void;
};
/**
    // All declaration nodes implement the Decl interface.
    
    
**/
typedef Decl = StructType & {
    > Node,
    /**
        
        
        
    **/
    public dynamic function _declNode():Void;
};
/**
    // A Spec node represents a single (non-parenthesized) import,
    // constant, type, or variable declaration.
    
    
**/
typedef Spec = StructType & {
    > Node,
    /**
        
        
        
    **/
    public dynamic function _specNode():Void;
};
/**
    // A Visitor's Visit method is invoked for each node encountered by Walk.
    // If the result visitor w is not nil, Walk visits each of the children
    // of node with the visitor w, followed by a call of w.Visit(nil).
    
    
**/
typedef Visitor = StructType & {
    /**
        
        
        
    **/
    public dynamic function visit(_node:Node):Visitor;
};
/**
    // A Comment node represents a single //-style or /|*-style comment.
    //
    // The Text field contains the comment text without carriage returns (\r) that
    // may have been present in the source. Because a comment's end position is
    // computed using len(Text), the position reported by End() does not match the
    // true source end position for comments containing carriage returns.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.Comment_static_extension) class Comment {
    public var slash : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var text : GoString = "";
    public function new(?slash:stdgo.go.token.Token.Pos, ?text:GoString) {
        if (slash != null) this.slash = slash;
        if (text != null) this.text = text;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Comment(slash, text);
    }
}
/**
    // A CommentGroup represents a sequence of comments
    // with no other tokens and no empty lines between.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.CommentGroup_static_extension) class CommentGroup {
    public var list : Slice<Ref<Comment>> = (null : Slice<Ref<Comment>>);
    public function new(?list:Slice<Ref<Comment>>) {
        if (list != null) this.list = list;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new CommentGroup(list);
    }
}
/**
    // A Field represents a Field declaration list in a struct type,
    // a method list in an interface type, or a parameter/result declaration
    // in a signature.
    // Field.Names is nil for unnamed parameters (parameter lists which only contain types)
    // and embedded struct fields. In the latter case, the field name is the type name.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.Field_static_extension) class Field {
    public var doc : Ref<CommentGroup> = (null : Ref<CommentGroup>);
    public var names : Slice<Ref<Ident>> = (null : Slice<Ref<Ident>>);
    public var type : Expr = (null : Expr);
    public var tag : Ref<BasicLit> = (null : Ref<BasicLit>);
    public var comment : Ref<CommentGroup> = (null : Ref<CommentGroup>);
    public function new(?doc:Ref<CommentGroup>, ?names:Slice<Ref<Ident>>, ?type:Expr, ?tag:Ref<BasicLit>, ?comment:Ref<CommentGroup>) {
        if (doc != null) this.doc = doc;
        if (names != null) this.names = names;
        if (type != null) this.type = type;
        if (tag != null) this.tag = tag;
        if (comment != null) this.comment = comment;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Field(doc, names, type, tag, comment);
    }
}
/**
    // A FieldList represents a list of Fields, enclosed by parentheses,
    // curly braces, or square brackets.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.FieldList_static_extension) class FieldList {
    public var opening : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var list : Slice<Ref<Field>> = (null : Slice<Ref<Field>>);
    public var closing : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public function new(?opening:stdgo.go.token.Token.Pos, ?list:Slice<Ref<Field>>, ?closing:stdgo.go.token.Token.Pos) {
        if (opening != null) this.opening = opening;
        if (list != null) this.list = list;
        if (closing != null) this.closing = closing;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new FieldList(opening, list, closing);
    }
}
/**
    // An expression is represented by a tree consisting of one
    // or more of the following concrete expression nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.BadExpr_static_extension) class BadExpr {
    public var from : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var to : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public function new(?from:stdgo.go.token.Token.Pos, ?to:stdgo.go.token.Token.Pos) {
        if (from != null) this.from = from;
        if (to != null) this.to = to;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new BadExpr(from, to);
    }
}
/**
    // An expression is represented by a tree consisting of one
    // or more of the following concrete expression nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.Ident_static_extension) class Ident {
    public var namePos : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var name : GoString = "";
    public var obj : Ref<Object> = (null : Ref<Object>);
    public function new(?namePos:stdgo.go.token.Token.Pos, ?name:GoString, ?obj:Ref<Object>) {
        if (namePos != null) this.namePos = namePos;
        if (name != null) this.name = name;
        if (obj != null) this.obj = obj;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Ident(namePos, name, obj);
    }
}
/**
    // An expression is represented by a tree consisting of one
    // or more of the following concrete expression nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.Ellipsis_static_extension) class Ellipsis {
    public var ellipsis : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var elt : Expr = (null : Expr);
    public function new(?ellipsis:stdgo.go.token.Token.Pos, ?elt:Expr) {
        if (ellipsis != null) this.ellipsis = ellipsis;
        if (elt != null) this.elt = elt;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Ellipsis(ellipsis, elt);
    }
}
/**
    // An expression is represented by a tree consisting of one
    // or more of the following concrete expression nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.BasicLit_static_extension) class BasicLit {
    public var valuePos : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var kind : stdgo.go.token.Token.Token = ((0 : GoInt) : stdgo.go.token.Token.Token);
    public var value : GoString = "";
    public function new(?valuePos:stdgo.go.token.Token.Pos, ?kind:stdgo.go.token.Token.Token, ?value:GoString) {
        if (valuePos != null) this.valuePos = valuePos;
        if (kind != null) this.kind = kind;
        if (value != null) this.value = value;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new BasicLit(valuePos, kind, value);
    }
}
/**
    // An expression is represented by a tree consisting of one
    // or more of the following concrete expression nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.FuncLit_static_extension) class FuncLit {
    public var type : Ref<FuncType> = (null : Ref<FuncType>);
    public var body : Ref<BlockStmt> = (null : Ref<BlockStmt>);
    public function new(?type:Ref<FuncType>, ?body:Ref<BlockStmt>) {
        if (type != null) this.type = type;
        if (body != null) this.body = body;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new FuncLit(type, body);
    }
}
/**
    // An expression is represented by a tree consisting of one
    // or more of the following concrete expression nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.CompositeLit_static_extension) class CompositeLit {
    public var type : Expr = (null : Expr);
    public var lbrace : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var elts : Slice<Expr> = (null : Slice<Expr>);
    public var rbrace : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var incomplete : Bool = false;
    public function new(?type:Expr, ?lbrace:stdgo.go.token.Token.Pos, ?elts:Slice<Expr>, ?rbrace:stdgo.go.token.Token.Pos, ?incomplete:Bool) {
        if (type != null) this.type = type;
        if (lbrace != null) this.lbrace = lbrace;
        if (elts != null) this.elts = elts;
        if (rbrace != null) this.rbrace = rbrace;
        if (incomplete != null) this.incomplete = incomplete;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new CompositeLit(type, lbrace, elts, rbrace, incomplete);
    }
}
/**
    // An expression is represented by a tree consisting of one
    // or more of the following concrete expression nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.ParenExpr_static_extension) class ParenExpr {
    public var lparen : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var x : Expr = (null : Expr);
    public var rparen : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public function new(?lparen:stdgo.go.token.Token.Pos, ?x:Expr, ?rparen:stdgo.go.token.Token.Pos) {
        if (lparen != null) this.lparen = lparen;
        if (x != null) this.x = x;
        if (rparen != null) this.rparen = rparen;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new ParenExpr(lparen, x, rparen);
    }
}
/**
    // An expression is represented by a tree consisting of one
    // or more of the following concrete expression nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.SelectorExpr_static_extension) class SelectorExpr {
    public var x : Expr = (null : Expr);
    public var sel : Ref<Ident> = (null : Ref<Ident>);
    public function new(?x:Expr, ?sel:Ref<Ident>) {
        if (x != null) this.x = x;
        if (sel != null) this.sel = sel;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new SelectorExpr(x, sel);
    }
}
/**
    // An expression is represented by a tree consisting of one
    // or more of the following concrete expression nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.IndexExpr_static_extension) class IndexExpr {
    public var x : Expr = (null : Expr);
    public var lbrack : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var index : Expr = (null : Expr);
    public var rbrack : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public function new(?x:Expr, ?lbrack:stdgo.go.token.Token.Pos, ?index:Expr, ?rbrack:stdgo.go.token.Token.Pos) {
        if (x != null) this.x = x;
        if (lbrack != null) this.lbrack = lbrack;
        if (index != null) this.index = index;
        if (rbrack != null) this.rbrack = rbrack;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new IndexExpr(x, lbrack, index, rbrack);
    }
}
/**
    // An expression is represented by a tree consisting of one
    // or more of the following concrete expression nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.IndexListExpr_static_extension) class IndexListExpr {
    public var x : Expr = (null : Expr);
    public var lbrack : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var indices : Slice<Expr> = (null : Slice<Expr>);
    public var rbrack : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public function new(?x:Expr, ?lbrack:stdgo.go.token.Token.Pos, ?indices:Slice<Expr>, ?rbrack:stdgo.go.token.Token.Pos) {
        if (x != null) this.x = x;
        if (lbrack != null) this.lbrack = lbrack;
        if (indices != null) this.indices = indices;
        if (rbrack != null) this.rbrack = rbrack;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new IndexListExpr(x, lbrack, indices, rbrack);
    }
}
/**
    // An expression is represented by a tree consisting of one
    // or more of the following concrete expression nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.SliceExpr_static_extension) class SliceExpr {
    public var x : Expr = (null : Expr);
    public var lbrack : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var low : Expr = (null : Expr);
    public var high : Expr = (null : Expr);
    public var max : Expr = (null : Expr);
    public var slice3 : Bool = false;
    public var rbrack : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public function new(?x:Expr, ?lbrack:stdgo.go.token.Token.Pos, ?low:Expr, ?high:Expr, ?max:Expr, ?slice3:Bool, ?rbrack:stdgo.go.token.Token.Pos) {
        if (x != null) this.x = x;
        if (lbrack != null) this.lbrack = lbrack;
        if (low != null) this.low = low;
        if (high != null) this.high = high;
        if (max != null) this.max = max;
        if (slice3 != null) this.slice3 = slice3;
        if (rbrack != null) this.rbrack = rbrack;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new SliceExpr(x, lbrack, low, high, max, slice3, rbrack);
    }
}
/**
    // An expression is represented by a tree consisting of one
    // or more of the following concrete expression nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.TypeAssertExpr_static_extension) class TypeAssertExpr {
    public var x : Expr = (null : Expr);
    public var lparen : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var type : Expr = (null : Expr);
    public var rparen : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public function new(?x:Expr, ?lparen:stdgo.go.token.Token.Pos, ?type:Expr, ?rparen:stdgo.go.token.Token.Pos) {
        if (x != null) this.x = x;
        if (lparen != null) this.lparen = lparen;
        if (type != null) this.type = type;
        if (rparen != null) this.rparen = rparen;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new TypeAssertExpr(x, lparen, type, rparen);
    }
}
/**
    // An expression is represented by a tree consisting of one
    // or more of the following concrete expression nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.CallExpr_static_extension) class CallExpr {
    public var fun : Expr = (null : Expr);
    public var lparen : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var args : Slice<Expr> = (null : Slice<Expr>);
    public var ellipsis : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var rparen : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public function new(?fun:Expr, ?lparen:stdgo.go.token.Token.Pos, ?args:Slice<Expr>, ?ellipsis:stdgo.go.token.Token.Pos, ?rparen:stdgo.go.token.Token.Pos) {
        if (fun != null) this.fun = fun;
        if (lparen != null) this.lparen = lparen;
        if (args != null) this.args = args;
        if (ellipsis != null) this.ellipsis = ellipsis;
        if (rparen != null) this.rparen = rparen;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new CallExpr(fun, lparen, args, ellipsis, rparen);
    }
}
/**
    // An expression is represented by a tree consisting of one
    // or more of the following concrete expression nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.StarExpr_static_extension) class StarExpr {
    public var star : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var x : Expr = (null : Expr);
    public function new(?star:stdgo.go.token.Token.Pos, ?x:Expr) {
        if (star != null) this.star = star;
        if (x != null) this.x = x;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new StarExpr(star, x);
    }
}
/**
    // An expression is represented by a tree consisting of one
    // or more of the following concrete expression nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.UnaryExpr_static_extension) class UnaryExpr {
    public var opPos : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var op : stdgo.go.token.Token.Token = ((0 : GoInt) : stdgo.go.token.Token.Token);
    public var x : Expr = (null : Expr);
    public function new(?opPos:stdgo.go.token.Token.Pos, ?op:stdgo.go.token.Token.Token, ?x:Expr) {
        if (opPos != null) this.opPos = opPos;
        if (op != null) this.op = op;
        if (x != null) this.x = x;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new UnaryExpr(opPos, op, x);
    }
}
/**
    // An expression is represented by a tree consisting of one
    // or more of the following concrete expression nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.BinaryExpr_static_extension) class BinaryExpr {
    public var x : Expr = (null : Expr);
    public var opPos : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var op : stdgo.go.token.Token.Token = ((0 : GoInt) : stdgo.go.token.Token.Token);
    public var y : Expr = (null : Expr);
    public function new(?x:Expr, ?opPos:stdgo.go.token.Token.Pos, ?op:stdgo.go.token.Token.Token, ?y:Expr) {
        if (x != null) this.x = x;
        if (opPos != null) this.opPos = opPos;
        if (op != null) this.op = op;
        if (y != null) this.y = y;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new BinaryExpr(x, opPos, op, y);
    }
}
/**
    // An expression is represented by a tree consisting of one
    // or more of the following concrete expression nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.KeyValueExpr_static_extension) class KeyValueExpr {
    public var key : Expr = (null : Expr);
    public var colon : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var value : Expr = (null : Expr);
    public function new(?key:Expr, ?colon:stdgo.go.token.Token.Pos, ?value:Expr) {
        if (key != null) this.key = key;
        if (colon != null) this.colon = colon;
        if (value != null) this.value = value;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new KeyValueExpr(key, colon, value);
    }
}
/**
    // A type is represented by a tree consisting of one
    // or more of the following type-specific expression
    // nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.ArrayType_static_extension) class ArrayType {
    public var lbrack : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var len : Expr = (null : Expr);
    public var elt : Expr = (null : Expr);
    public function new(?lbrack:stdgo.go.token.Token.Pos, ?len:Expr, ?elt:Expr) {
        if (lbrack != null) this.lbrack = lbrack;
        if (len != null) this.len = len;
        if (elt != null) this.elt = elt;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new ArrayType(lbrack, len, elt);
    }
}
/**
    // A type is represented by a tree consisting of one
    // or more of the following type-specific expression
    // nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.StructType_static_extension) class StructType {
    public var struct_ : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var fields : Ref<FieldList> = (null : Ref<FieldList>);
    public var incomplete : Bool = false;
    public function new(?struct_:stdgo.go.token.Token.Pos, ?fields:Ref<FieldList>, ?incomplete:Bool) {
        if (struct_ != null) this.struct_ = struct_;
        if (fields != null) this.fields = fields;
        if (incomplete != null) this.incomplete = incomplete;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new StructType(struct_, fields, incomplete);
    }
}
/**
    // A type is represented by a tree consisting of one
    // or more of the following type-specific expression
    // nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.FuncType_static_extension) class FuncType {
    public var func : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var typeParams : Ref<FieldList> = (null : Ref<FieldList>);
    public var params : Ref<FieldList> = (null : Ref<FieldList>);
    public var results : Ref<FieldList> = (null : Ref<FieldList>);
    public function new(?func:stdgo.go.token.Token.Pos, ?typeParams:Ref<FieldList>, ?params:Ref<FieldList>, ?results:Ref<FieldList>) {
        if (func != null) this.func = func;
        if (typeParams != null) this.typeParams = typeParams;
        if (params != null) this.params = params;
        if (results != null) this.results = results;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new FuncType(func, typeParams, params, results);
    }
}
/**
    // A type is represented by a tree consisting of one
    // or more of the following type-specific expression
    // nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.InterfaceType_static_extension) class InterfaceType {
    public var interface_ : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var methods : Ref<FieldList> = (null : Ref<FieldList>);
    public var incomplete : Bool = false;
    public function new(?interface_:stdgo.go.token.Token.Pos, ?methods:Ref<FieldList>, ?incomplete:Bool) {
        if (interface_ != null) this.interface_ = interface_;
        if (methods != null) this.methods = methods;
        if (incomplete != null) this.incomplete = incomplete;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new InterfaceType(interface_, methods, incomplete);
    }
}
/**
    // A type is represented by a tree consisting of one
    // or more of the following type-specific expression
    // nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.MapType_static_extension) class MapType {
    public var map : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var key : Expr = (null : Expr);
    public var value : Expr = (null : Expr);
    public function new(?map:stdgo.go.token.Token.Pos, ?key:Expr, ?value:Expr) {
        if (map != null) this.map = map;
        if (key != null) this.key = key;
        if (value != null) this.value = value;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new MapType(map, key, value);
    }
}
/**
    // A type is represented by a tree consisting of one
    // or more of the following type-specific expression
    // nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.ChanType_static_extension) class ChanType {
    public var begin : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var arrow : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var dir : ChanDir = ((0 : GoInt) : ChanDir);
    public var value : Expr = (null : Expr);
    public function new(?begin:stdgo.go.token.Token.Pos, ?arrow:stdgo.go.token.Token.Pos, ?dir:ChanDir, ?value:Expr) {
        if (begin != null) this.begin = begin;
        if (arrow != null) this.arrow = arrow;
        if (dir != null) this.dir = dir;
        if (value != null) this.value = value;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new ChanType(begin, arrow, dir, value);
    }
}
/**
    // A statement is represented by a tree consisting of one
    // or more of the following concrete statement nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.BadStmt_static_extension) class BadStmt {
    public var from : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var to : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public function new(?from:stdgo.go.token.Token.Pos, ?to:stdgo.go.token.Token.Pos) {
        if (from != null) this.from = from;
        if (to != null) this.to = to;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new BadStmt(from, to);
    }
}
/**
    // A statement is represented by a tree consisting of one
    // or more of the following concrete statement nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.DeclStmt_static_extension) class DeclStmt {
    public var decl : Decl = (null : Decl);
    public function new(?decl:Decl) {
        if (decl != null) this.decl = decl;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new DeclStmt(decl);
    }
}
/**
    // A statement is represented by a tree consisting of one
    // or more of the following concrete statement nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.EmptyStmt_static_extension) class EmptyStmt {
    public var semicolon : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var implicit : Bool = false;
    public function new(?semicolon:stdgo.go.token.Token.Pos, ?implicit:Bool) {
        if (semicolon != null) this.semicolon = semicolon;
        if (implicit != null) this.implicit = implicit;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new EmptyStmt(semicolon, implicit);
    }
}
/**
    // A statement is represented by a tree consisting of one
    // or more of the following concrete statement nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.LabeledStmt_static_extension) class LabeledStmt {
    public var label : Ref<Ident> = (null : Ref<Ident>);
    public var colon : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var stmt : Stmt = (null : Stmt);
    public function new(?label:Ref<Ident>, ?colon:stdgo.go.token.Token.Pos, ?stmt:Stmt) {
        if (label != null) this.label = label;
        if (colon != null) this.colon = colon;
        if (stmt != null) this.stmt = stmt;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new LabeledStmt(label, colon, stmt);
    }
}
/**
    // A statement is represented by a tree consisting of one
    // or more of the following concrete statement nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.ExprStmt_static_extension) class ExprStmt {
    public var x : Expr = (null : Expr);
    public function new(?x:Expr) {
        if (x != null) this.x = x;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new ExprStmt(x);
    }
}
/**
    // A statement is represented by a tree consisting of one
    // or more of the following concrete statement nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.SendStmt_static_extension) class SendStmt {
    public var chan : Expr = (null : Expr);
    public var arrow : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var value : Expr = (null : Expr);
    public function new(?chan:Expr, ?arrow:stdgo.go.token.Token.Pos, ?value:Expr) {
        if (chan != null) this.chan = chan;
        if (arrow != null) this.arrow = arrow;
        if (value != null) this.value = value;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new SendStmt(chan, arrow, value);
    }
}
/**
    // A statement is represented by a tree consisting of one
    // or more of the following concrete statement nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.IncDecStmt_static_extension) class IncDecStmt {
    public var x : Expr = (null : Expr);
    public var tokPos : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var tok : stdgo.go.token.Token.Token = ((0 : GoInt) : stdgo.go.token.Token.Token);
    public function new(?x:Expr, ?tokPos:stdgo.go.token.Token.Pos, ?tok:stdgo.go.token.Token.Token) {
        if (x != null) this.x = x;
        if (tokPos != null) this.tokPos = tokPos;
        if (tok != null) this.tok = tok;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new IncDecStmt(x, tokPos, tok);
    }
}
/**
    // A statement is represented by a tree consisting of one
    // or more of the following concrete statement nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.AssignStmt_static_extension) class AssignStmt {
    public var lhs : Slice<Expr> = (null : Slice<Expr>);
    public var tokPos : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var tok : stdgo.go.token.Token.Token = ((0 : GoInt) : stdgo.go.token.Token.Token);
    public var rhs : Slice<Expr> = (null : Slice<Expr>);
    public function new(?lhs:Slice<Expr>, ?tokPos:stdgo.go.token.Token.Pos, ?tok:stdgo.go.token.Token.Token, ?rhs:Slice<Expr>) {
        if (lhs != null) this.lhs = lhs;
        if (tokPos != null) this.tokPos = tokPos;
        if (tok != null) this.tok = tok;
        if (rhs != null) this.rhs = rhs;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new AssignStmt(lhs, tokPos, tok, rhs);
    }
}
/**
    // A statement is represented by a tree consisting of one
    // or more of the following concrete statement nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.GoStmt_static_extension) class GoStmt {
    public var go : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var call : Ref<CallExpr> = (null : Ref<CallExpr>);
    public function new(?go:stdgo.go.token.Token.Pos, ?call:Ref<CallExpr>) {
        if (go != null) this.go = go;
        if (call != null) this.call = call;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new GoStmt(go, call);
    }
}
/**
    // A statement is represented by a tree consisting of one
    // or more of the following concrete statement nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.DeferStmt_static_extension) class DeferStmt {
    public var defer : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var call : Ref<CallExpr> = (null : Ref<CallExpr>);
    public function new(?defer:stdgo.go.token.Token.Pos, ?call:Ref<CallExpr>) {
        if (defer != null) this.defer = defer;
        if (call != null) this.call = call;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new DeferStmt(defer, call);
    }
}
/**
    // A statement is represented by a tree consisting of one
    // or more of the following concrete statement nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.ReturnStmt_static_extension) class ReturnStmt {
    public var return_ : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var results : Slice<Expr> = (null : Slice<Expr>);
    public function new(?return_:stdgo.go.token.Token.Pos, ?results:Slice<Expr>) {
        if (return_ != null) this.return_ = return_;
        if (results != null) this.results = results;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new ReturnStmt(return_, results);
    }
}
/**
    // A statement is represented by a tree consisting of one
    // or more of the following concrete statement nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.BranchStmt_static_extension) class BranchStmt {
    public var tokPos : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var tok : stdgo.go.token.Token.Token = ((0 : GoInt) : stdgo.go.token.Token.Token);
    public var label : Ref<Ident> = (null : Ref<Ident>);
    public function new(?tokPos:stdgo.go.token.Token.Pos, ?tok:stdgo.go.token.Token.Token, ?label:Ref<Ident>) {
        if (tokPos != null) this.tokPos = tokPos;
        if (tok != null) this.tok = tok;
        if (label != null) this.label = label;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new BranchStmt(tokPos, tok, label);
    }
}
/**
    // A statement is represented by a tree consisting of one
    // or more of the following concrete statement nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.BlockStmt_static_extension) class BlockStmt {
    public var lbrace : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var list : Slice<Stmt> = (null : Slice<Stmt>);
    public var rbrace : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public function new(?lbrace:stdgo.go.token.Token.Pos, ?list:Slice<Stmt>, ?rbrace:stdgo.go.token.Token.Pos) {
        if (lbrace != null) this.lbrace = lbrace;
        if (list != null) this.list = list;
        if (rbrace != null) this.rbrace = rbrace;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new BlockStmt(lbrace, list, rbrace);
    }
}
/**
    // A statement is represented by a tree consisting of one
    // or more of the following concrete statement nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.IfStmt_static_extension) class IfStmt {
    public var if_ : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var init : Stmt = (null : Stmt);
    public var cond : Expr = (null : Expr);
    public var body : Ref<BlockStmt> = (null : Ref<BlockStmt>);
    public var else_ : Stmt = (null : Stmt);
    public function new(?if_:stdgo.go.token.Token.Pos, ?init:Stmt, ?cond:Expr, ?body:Ref<BlockStmt>, ?else_:Stmt) {
        if (if_ != null) this.if_ = if_;
        if (init != null) this.init = init;
        if (cond != null) this.cond = cond;
        if (body != null) this.body = body;
        if (else_ != null) this.else_ = else_;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new IfStmt(if_, init, cond, body, else_);
    }
}
/**
    // A statement is represented by a tree consisting of one
    // or more of the following concrete statement nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.CaseClause_static_extension) class CaseClause {
    public var case_ : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var list : Slice<Expr> = (null : Slice<Expr>);
    public var colon : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var body : Slice<Stmt> = (null : Slice<Stmt>);
    public function new(?case_:stdgo.go.token.Token.Pos, ?list:Slice<Expr>, ?colon:stdgo.go.token.Token.Pos, ?body:Slice<Stmt>) {
        if (case_ != null) this.case_ = case_;
        if (list != null) this.list = list;
        if (colon != null) this.colon = colon;
        if (body != null) this.body = body;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new CaseClause(case_, list, colon, body);
    }
}
/**
    // A statement is represented by a tree consisting of one
    // or more of the following concrete statement nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.SwitchStmt_static_extension) class SwitchStmt {
    public var switch_ : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var init : Stmt = (null : Stmt);
    public var tag : Expr = (null : Expr);
    public var body : Ref<BlockStmt> = (null : Ref<BlockStmt>);
    public function new(?switch_:stdgo.go.token.Token.Pos, ?init:Stmt, ?tag:Expr, ?body:Ref<BlockStmt>) {
        if (switch_ != null) this.switch_ = switch_;
        if (init != null) this.init = init;
        if (tag != null) this.tag = tag;
        if (body != null) this.body = body;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new SwitchStmt(switch_, init, tag, body);
    }
}
/**
    // A statement is represented by a tree consisting of one
    // or more of the following concrete statement nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.TypeSwitchStmt_static_extension) class TypeSwitchStmt {
    public var switch_ : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var init : Stmt = (null : Stmt);
    public var assign : Stmt = (null : Stmt);
    public var body : Ref<BlockStmt> = (null : Ref<BlockStmt>);
    public function new(?switch_:stdgo.go.token.Token.Pos, ?init:Stmt, ?assign:Stmt, ?body:Ref<BlockStmt>) {
        if (switch_ != null) this.switch_ = switch_;
        if (init != null) this.init = init;
        if (assign != null) this.assign = assign;
        if (body != null) this.body = body;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new TypeSwitchStmt(switch_, init, assign, body);
    }
}
/**
    // A statement is represented by a tree consisting of one
    // or more of the following concrete statement nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.CommClause_static_extension) class CommClause {
    public var case_ : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var comm : Stmt = (null : Stmt);
    public var colon : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var body : Slice<Stmt> = (null : Slice<Stmt>);
    public function new(?case_:stdgo.go.token.Token.Pos, ?comm:Stmt, ?colon:stdgo.go.token.Token.Pos, ?body:Slice<Stmt>) {
        if (case_ != null) this.case_ = case_;
        if (comm != null) this.comm = comm;
        if (colon != null) this.colon = colon;
        if (body != null) this.body = body;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new CommClause(case_, comm, colon, body);
    }
}
/**
    // A statement is represented by a tree consisting of one
    // or more of the following concrete statement nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.SelectStmt_static_extension) class SelectStmt {
    public var select : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var body : Ref<BlockStmt> = (null : Ref<BlockStmt>);
    public function new(?select:stdgo.go.token.Token.Pos, ?body:Ref<BlockStmt>) {
        if (select != null) this.select = select;
        if (body != null) this.body = body;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new SelectStmt(select, body);
    }
}
/**
    // A statement is represented by a tree consisting of one
    // or more of the following concrete statement nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.ForStmt_static_extension) class ForStmt {
    public var for_ : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var init : Stmt = (null : Stmt);
    public var cond : Expr = (null : Expr);
    public var post : Stmt = (null : Stmt);
    public var body : Ref<BlockStmt> = (null : Ref<BlockStmt>);
    public function new(?for_:stdgo.go.token.Token.Pos, ?init:Stmt, ?cond:Expr, ?post:Stmt, ?body:Ref<BlockStmt>) {
        if (for_ != null) this.for_ = for_;
        if (init != null) this.init = init;
        if (cond != null) this.cond = cond;
        if (post != null) this.post = post;
        if (body != null) this.body = body;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new ForStmt(for_, init, cond, post, body);
    }
}
/**
    // A statement is represented by a tree consisting of one
    // or more of the following concrete statement nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.RangeStmt_static_extension) class RangeStmt {
    public var for_ : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var key : Expr = (null : Expr);
    public var value : Expr = (null : Expr);
    public var tokPos : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var tok : stdgo.go.token.Token.Token = ((0 : GoInt) : stdgo.go.token.Token.Token);
    public var range : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var x : Expr = (null : Expr);
    public var body : Ref<BlockStmt> = (null : Ref<BlockStmt>);
    public function new(?for_:stdgo.go.token.Token.Pos, ?key:Expr, ?value:Expr, ?tokPos:stdgo.go.token.Token.Pos, ?tok:stdgo.go.token.Token.Token, ?range:stdgo.go.token.Token.Pos, ?x:Expr, ?body:Ref<BlockStmt>) {
        if (for_ != null) this.for_ = for_;
        if (key != null) this.key = key;
        if (value != null) this.value = value;
        if (tokPos != null) this.tokPos = tokPos;
        if (tok != null) this.tok = tok;
        if (range != null) this.range = range;
        if (x != null) this.x = x;
        if (body != null) this.body = body;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new RangeStmt(for_, key, value, tokPos, tok, range, x, body);
    }
}
/**
    // A Spec node represents a single (non-parenthesized) import,
    // constant, type, or variable declaration.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.ImportSpec_static_extension) class ImportSpec {
    public var doc : Ref<CommentGroup> = (null : Ref<CommentGroup>);
    public var name : Ref<Ident> = (null : Ref<Ident>);
    public var path : Ref<BasicLit> = (null : Ref<BasicLit>);
    public var comment : Ref<CommentGroup> = (null : Ref<CommentGroup>);
    public var endPos : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public function new(?doc:Ref<CommentGroup>, ?name:Ref<Ident>, ?path:Ref<BasicLit>, ?comment:Ref<CommentGroup>, ?endPos:stdgo.go.token.Token.Pos) {
        if (doc != null) this.doc = doc;
        if (name != null) this.name = name;
        if (path != null) this.path = path;
        if (comment != null) this.comment = comment;
        if (endPos != null) this.endPos = endPos;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new ImportSpec(doc, name, path, comment, endPos);
    }
}
/**
    // A Spec node represents a single (non-parenthesized) import,
    // constant, type, or variable declaration.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.ValueSpec_static_extension) class ValueSpec {
    public var doc : Ref<CommentGroup> = (null : Ref<CommentGroup>);
    public var names : Slice<Ref<Ident>> = (null : Slice<Ref<Ident>>);
    public var type : Expr = (null : Expr);
    public var values : Slice<Expr> = (null : Slice<Expr>);
    public var comment : Ref<CommentGroup> = (null : Ref<CommentGroup>);
    public function new(?doc:Ref<CommentGroup>, ?names:Slice<Ref<Ident>>, ?type:Expr, ?values:Slice<Expr>, ?comment:Ref<CommentGroup>) {
        if (doc != null) this.doc = doc;
        if (names != null) this.names = names;
        if (type != null) this.type = type;
        if (values != null) this.values = values;
        if (comment != null) this.comment = comment;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new ValueSpec(doc, names, type, values, comment);
    }
}
/**
    // A Spec node represents a single (non-parenthesized) import,
    // constant, type, or variable declaration.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.TypeSpec_static_extension) class TypeSpec {
    public var doc : Ref<CommentGroup> = (null : Ref<CommentGroup>);
    public var name : Ref<Ident> = (null : Ref<Ident>);
    public var typeParams : Ref<FieldList> = (null : Ref<FieldList>);
    public var assign : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var type : Expr = (null : Expr);
    public var comment : Ref<CommentGroup> = (null : Ref<CommentGroup>);
    public function new(?doc:Ref<CommentGroup>, ?name:Ref<Ident>, ?typeParams:Ref<FieldList>, ?assign:stdgo.go.token.Token.Pos, ?type:Expr, ?comment:Ref<CommentGroup>) {
        if (doc != null) this.doc = doc;
        if (name != null) this.name = name;
        if (typeParams != null) this.typeParams = typeParams;
        if (assign != null) this.assign = assign;
        if (type != null) this.type = type;
        if (comment != null) this.comment = comment;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new TypeSpec(doc, name, typeParams, assign, type, comment);
    }
}
/**
    // A declaration is represented by one of the following declaration nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.BadDecl_static_extension) class BadDecl {
    public var from : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var to : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public function new(?from:stdgo.go.token.Token.Pos, ?to:stdgo.go.token.Token.Pos) {
        if (from != null) this.from = from;
        if (to != null) this.to = to;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new BadDecl(from, to);
    }
}
/**
    // A declaration is represented by one of the following declaration nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.GenDecl_static_extension) class GenDecl {
    public var doc : Ref<CommentGroup> = (null : Ref<CommentGroup>);
    public var tokPos : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var tok : stdgo.go.token.Token.Token = ((0 : GoInt) : stdgo.go.token.Token.Token);
    public var lparen : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var specs : Slice<Spec> = (null : Slice<Spec>);
    public var rparen : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public function new(?doc:Ref<CommentGroup>, ?tokPos:stdgo.go.token.Token.Pos, ?tok:stdgo.go.token.Token.Token, ?lparen:stdgo.go.token.Token.Pos, ?specs:Slice<Spec>, ?rparen:stdgo.go.token.Token.Pos) {
        if (doc != null) this.doc = doc;
        if (tokPos != null) this.tokPos = tokPos;
        if (tok != null) this.tok = tok;
        if (lparen != null) this.lparen = lparen;
        if (specs != null) this.specs = specs;
        if (rparen != null) this.rparen = rparen;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new GenDecl(doc, tokPos, tok, lparen, specs, rparen);
    }
}
/**
    // A declaration is represented by one of the following declaration nodes.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.FuncDecl_static_extension) class FuncDecl {
    public var doc : Ref<CommentGroup> = (null : Ref<CommentGroup>);
    public var recv : Ref<FieldList> = (null : Ref<FieldList>);
    public var name : Ref<Ident> = (null : Ref<Ident>);
    public var type : Ref<FuncType> = (null : Ref<FuncType>);
    public var body : Ref<BlockStmt> = (null : Ref<BlockStmt>);
    public function new(?doc:Ref<CommentGroup>, ?recv:Ref<FieldList>, ?name:Ref<Ident>, ?type:Ref<FuncType>, ?body:Ref<BlockStmt>) {
        if (doc != null) this.doc = doc;
        if (recv != null) this.recv = recv;
        if (name != null) this.name = name;
        if (type != null) this.type = type;
        if (body != null) this.body = body;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new FuncDecl(doc, recv, name, type, body);
    }
}
/**
    // A File node represents a Go source file.
    //
    // The Comments list contains all comments in the source file in order of
    // appearance, including the comments that are pointed to from other nodes
    // via Doc and Comment fields.
    //
    // For correct printing of source code containing comments (using packages
    // go/format and go/printer), special care must be taken to update comments
    // when a File's syntax tree is modified: For printing, comments are interspersed
    // between tokens based on their position. If syntax tree nodes are
    // removed or moved, relevant comments in their vicinity must also be removed
    // (from the File.Comments list) or moved accordingly (by updating their
    // positions). A CommentMap may be used to facilitate some of these operations.
    //
    // Whether and how a comment is associated with a node depends on the
    // interpretation of the syntax tree by the manipulating program: Except for Doc
    // and Comment comments directly associated with nodes, the remaining comments
    // are "free-floating" (see also issues #18593, #20744).
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.File_static_extension) class File {
    public var doc : Ref<CommentGroup> = (null : Ref<CommentGroup>);
    public var package_ : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var name : Ref<Ident> = (null : Ref<Ident>);
    public var decls : Slice<Decl> = (null : Slice<Decl>);
    public var fileStart : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var fileEnd : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var scope : Ref<Scope> = (null : Ref<Scope>);
    public var imports : Slice<Ref<ImportSpec>> = (null : Slice<Ref<ImportSpec>>);
    public var unresolved : Slice<Ref<Ident>> = (null : Slice<Ref<Ident>>);
    public var comments : Slice<Ref<CommentGroup>> = (null : Slice<Ref<CommentGroup>>);
    public function new(?doc:Ref<CommentGroup>, ?package_:stdgo.go.token.Token.Pos, ?name:Ref<Ident>, ?decls:Slice<Decl>, ?fileStart:stdgo.go.token.Token.Pos, ?fileEnd:stdgo.go.token.Token.Pos, ?scope:Ref<Scope>, ?imports:Slice<Ref<ImportSpec>>, ?unresolved:Slice<Ref<Ident>>, ?comments:Slice<Ref<CommentGroup>>) {
        if (doc != null) this.doc = doc;
        if (package_ != null) this.package_ = package_;
        if (name != null) this.name = name;
        if (decls != null) this.decls = decls;
        if (fileStart != null) this.fileStart = fileStart;
        if (fileEnd != null) this.fileEnd = fileEnd;
        if (scope != null) this.scope = scope;
        if (imports != null) this.imports = imports;
        if (unresolved != null) this.unresolved = unresolved;
        if (comments != null) this.comments = comments;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new File(doc, package_, name, decls, fileStart, fileEnd, scope, imports, unresolved, comments);
    }
}
/**
    // A Package node represents a set of source files
    // collectively building a Go package.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.Package_static_extension) class Package {
    public var name : GoString = "";
    public var scope : Ref<Scope> = (null : Ref<Scope>);
    public var imports : GoMap<GoString, Ref<Object>> = (null : GoMap<GoString, Ref<Object>>);
    public var files : GoMap<GoString, Ref<File>> = (null : GoMap<GoString, Ref<File>>);
    public function new(?name:GoString, ?scope:Ref<Scope>, ?imports:GoMap<GoString, Ref<Object>>, ?files:GoMap<GoString, Ref<File>>) {
        if (name != null) this.name = name;
        if (scope != null) this.scope = scope;
        if (imports != null) this.imports = imports;
        if (files != null) this.files = files;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Package(name, scope, imports, files);
    }
}
/**
    // A commentListReader helps iterating through a list of comment groups.
    
    
**/
@:structInit @:private @:using(stdgo.go.ast.Ast.T_commentListReader_static_extension) class T_commentListReader {
    public var _fset : Ref<stdgo.go.token.Token.FileSet> = (null : Ref<stdgo.go.token.Token.FileSet>);
    public var _list : Slice<Ref<CommentGroup>> = (null : Slice<Ref<CommentGroup>>);
    public var _index : GoInt = 0;
    public var _comment : Ref<CommentGroup> = (null : Ref<CommentGroup>);
    public var _pos : stdgo.go.token.Token.Position = ({} : stdgo.go.token.Token.Position);
    public var _end : stdgo.go.token.Token.Position = ({} : stdgo.go.token.Token.Position);
    public function new(?_fset:Ref<stdgo.go.token.Token.FileSet>, ?_list:Slice<Ref<CommentGroup>>, ?_index:GoInt, ?_comment:Ref<CommentGroup>, ?_pos:stdgo.go.token.Token.Position, ?_end:stdgo.go.token.Token.Position) {
        if (_fset != null) this._fset = _fset;
        if (_list != null) this._list = _list;
        if (_index != null) this._index = _index;
        if (_comment != null) this._comment = _comment;
        if (_pos != null) this._pos = _pos;
        if (_end != null) this._end = _end;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_commentListReader(_fset, _list, _index, _comment, _pos, _end);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_posSpan {
    public var start : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public var end : stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
    public function new(?start:stdgo.go.token.Token.Pos, ?end:stdgo.go.token.Token.Pos) {
        if (start != null) this.start = start;
        if (end != null) this.end = end;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_posSpan(start, end);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_cgPos {
    public var _left : Bool = false;
    public var _cg : Ref<CommentGroup> = (null : Ref<CommentGroup>);
    public function new(?_left:Bool, ?_cg:Ref<CommentGroup>) {
        if (_left != null) this._left = _left;
        if (_cg != null) this._cg = _cg;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_cgPos(_left, _cg);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.go.ast.Ast.T_printer_static_extension) class T_printer {
    public var _output : stdgo.io.Io.Writer = (null : stdgo.io.Io.Writer);
    public var _fset : Ref<stdgo.go.token.Token.FileSet> = (null : Ref<stdgo.go.token.Token.FileSet>);
    public var _filter : FieldFilter = (null : FieldFilter);
    public var _ptrmap : GoMap<AnyInterface, GoInt> = (null : GoMap<AnyInterface, GoInt>);
    public var _indent : GoInt = 0;
    public var _last : GoUInt8 = 0;
    public var _line : GoInt = 0;
    public function new(?_output:stdgo.io.Io.Writer, ?_fset:Ref<stdgo.go.token.Token.FileSet>, ?_filter:FieldFilter, ?_ptrmap:GoMap<AnyInterface, GoInt>, ?_indent:GoInt, ?_last:GoUInt8, ?_line:GoInt) {
        if (_output != null) this._output = _output;
        if (_fset != null) this._fset = _fset;
        if (_filter != null) this._filter = _filter;
        if (_ptrmap != null) this._ptrmap = _ptrmap;
        if (_indent != null) this._indent = _indent;
        if (_last != null) this._last = _last;
        if (_line != null) this._line = _line;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_printer(_output, _fset, _filter, _ptrmap, _indent, _last, _line);
    }
}
/**
    // localError wraps locally caught errors so we can distinguish
    // them from genuine panics which we don't want to return as errors.
    
    
**/
@:structInit @:private class T_localError {
    public var _err : Error = (null : Error);
    public function new(?_err:Error) {
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_localError(_err);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.go.ast.Ast.T_pkgBuilder_static_extension) class T_pkgBuilder {
    public var _fset : Ref<stdgo.go.token.Token.FileSet> = (null : Ref<stdgo.go.token.Token.FileSet>);
    public var _errors : stdgo.go.scanner.Scanner.ErrorList = new stdgo.go.scanner.Scanner.ErrorList(0, 0);
    public function new(?_fset:Ref<stdgo.go.token.Token.FileSet>, ?_errors:stdgo.go.scanner.Scanner.ErrorList) {
        if (_fset != null) this._fset = _fset;
        if (_errors != null) this._errors = _errors;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_pkgBuilder(_fset, _errors);
    }
}
/**
    // A Scope maintains the set of named language entities declared
    // in the scope and a link to the immediately surrounding (outer)
    // scope.
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.Scope_static_extension) class Scope {
    public var outer : Ref<Scope> = (null : Ref<Scope>);
    public var objects : GoMap<GoString, Ref<Object>> = (null : GoMap<GoString, Ref<Object>>);
    public function new(?outer:Ref<Scope>, ?objects:GoMap<GoString, Ref<Object>>) {
        if (outer != null) this.outer = outer;
        if (objects != null) this.objects = objects;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Scope(outer, objects);
    }
}
/**
    // An Object describes a named language entity such as a package,
    // constant, type, variable, function (incl. methods), or label.
    //
    // The Data fields contains object-specific data:
    //
    //	Kind    Data type         Data value
    //	Pkg     *Scope            package scope
    //	Con     int               iota for the respective declaration
    
    
**/
@:structInit @:using(stdgo.go.ast.Ast.Object_static_extension) class Object {
    public var kind : ObjKind = ((0 : GoInt) : ObjKind);
    public var name : GoString = "";
    public var decl : AnyInterface = (null : AnyInterface);
    public var data : AnyInterface = (null : AnyInterface);
    public var type : AnyInterface = (null : AnyInterface);
    public function new(?kind:ObjKind, ?name:GoString, ?decl:AnyInterface, ?data:AnyInterface, ?type:AnyInterface) {
        if (kind != null) this.kind = kind;
        if (name != null) this.name = name;
        if (decl != null) this.decl = decl;
        if (data != null) this.data = data;
        if (type != null) this.type = type;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Object(kind, name, decl, data, type);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.go.ast.Ast.T__struct_0_static_extension) private typedef T__struct_0 = {
    public var _list : Slice<GoString>;
    public var _text : GoString;
};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_1>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo.go.ast.Ast.T__struct_1_static_extension) private typedef T__struct_1 = {
    public var _in : GoString;
    public var _ok : Bool;
};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_2>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo.go.ast.Ast.T__struct_2_static_extension) private typedef T__struct_2 = {
    public var _x : AnyInterface;
    public var _s : GoString;
};
class T__struct_3_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_3>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.T__struct_3_asInterface) class T__struct_3_static_extension {

}
@:local @:using(stdgo.go.ast.Ast.T__struct_3_static_extension) private typedef T__struct_3 = {};
class T__struct_4_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_4>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.T__struct_4_asInterface) class T__struct_4_static_extension {

}
@:local @:using(stdgo.go.ast.Ast.T__struct_4_static_extension) private typedef T__struct_4 = {
    public var _x : GoInt;
};
class T__struct_5_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_5>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.T__struct_5_asInterface) class T__struct_5_static_extension {

}
@:local @:using(stdgo.go.ast.Ast.T__struct_5_static_extension) private typedef T__struct_5 = {
    public var x : GoInt;
    public var _y : GoInt;
};
class T__struct_6_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_6>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.T__struct_6_asInterface) class T__struct_6_static_extension {

}
@:local @:using(stdgo.go.ast.Ast.T__struct_6_static_extension) private typedef T__struct_6 = {
    public var x : GoInt;
    public var y : GoInt;
};
/**
    // The direction of a channel type is indicated by a bit
    // mask including one or both of the following constants.
**/
@:named typedef ChanDir = GoInt;
@:named @:using(stdgo.go.ast.Ast.T_byPos_static_extension) private typedef T_byPos = Slice<Ref<CommentGroup>>;
/**
    // A CommentMap maps an AST node to a list of comment groups
    // associated with it. See NewCommentMap for a description of
    // the association.
**/
@:named @:using(stdgo.go.ast.Ast.CommentMap_static_extension) typedef CommentMap = GoMap<Node, Slice<Ref<CommentGroup>>>;
@:named @:using(stdgo.go.ast.Ast.T_byInterval_static_extension) private typedef T_byInterval = Slice<Node>;
/**
    // A nodeStack keeps track of nested nodes.
    // A node lower on the stack lexically contains the nodes higher on the stack.
**/
@:named @:using(stdgo.go.ast.Ast.T_nodeStack_static_extension) private typedef T_nodeStack = Slice<Node>;
@:named typedef Filter = GoString -> Bool;
/**
    // The MergeMode flags control the behavior of MergePackageFiles.
**/
@:named typedef MergeMode = GoUInt;
/**
    // A FieldFilter may be provided to Fprint to control the output.
**/
@:named typedef FieldFilter = (GoString, stdgo.reflect.Reflect.Value) -> Bool;
/**
    // An Importer resolves import paths to package Objects.
    // The imports map records the packages already imported,
    // indexed by package id (canonical import path).
    // An Importer must determine the canonical import path and
    // check the map to see if it is already present in the imports map.
    // If so, the Importer can return the map entry. Otherwise, the
    // Importer should load the package data for the given path into
    // a new *Object (pkg), record pkg in the imports map, and then
    // return pkg.
**/
@:named typedef Importer = (GoMap<GoString, Ref<Object>>, GoString) -> { var _0 : Ref<Object>; var _1 : Error; };
/**
    // ObjKind describes what an object represents.
**/
@:named @:using(stdgo.go.ast.Ast.ObjKind_static_extension) typedef ObjKind = GoInt;
@:named @:using(stdgo.go.ast.Ast.T_inspector_static_extension) private typedef T_inspector = Node -> Bool;
private function _isWhitespace(_ch:GoByte):Bool {
        return (((_ch == (32 : GoUInt8)) || (_ch == (9 : GoUInt8))) || (_ch == (10 : GoUInt8))) || (_ch == (13 : GoUInt8));
    }
private function _stripTrailingWhitespace(_s:GoString):GoString {
        var _i:GoInt = (_s.length);
        while ((_i > (0 : GoInt)) && _isWhitespace(_s[(_i - (1 : GoInt) : GoInt)])) {
            _i--;
        };
        return (_s.__slice__((0 : GoInt), _i) : GoString);
    }
/**
    // isDirective reports whether c is a comment directive.
    // This code is also in go/printer.
**/
private function _isDirective(_c:GoString):Bool {
        if ((stdgo.strings.Strings.hasPrefix(_c, ("line " : GoString)) || stdgo.strings.Strings.hasPrefix(_c, ("extern " : GoString))) || stdgo.strings.Strings.hasPrefix(_c, ("export " : GoString))) {
            return true;
        };
        var _colon:GoInt = stdgo.strings.Strings.index(_c, (":" : GoString));
        if ((_colon <= (0 : GoInt)) || ((_colon + (1 : GoInt)) >= _c.length)) {
            return false;
        };
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i <= (_colon + (1 : GoInt)), _i++, {
                if (_i == (_colon)) {
                    continue;
                };
                var _b:GoUInt8 = _c[(_i : GoInt)];
                if (!((((97 : GoUInt8) <= _b) && (_b <= (122 : GoUInt8))) || (((48 : GoUInt8) <= _b) && (_b <= (57 : GoUInt8))))) {
                    return false;
                };
            });
        };
        return true;
    }
/**
    // NewIdent creates a new Ident without position.
    // Useful for ASTs generated by code other than the Go parser.
**/
function newIdent(_name:GoString):Ref<Ident> {
        return (Go.setRef((new Ident((0 : stdgo.go.token.Token.Pos), _name, null) : Ident)) : Ref<Ident>);
    }
/**
    // IsExported reports whether name starts with an upper-case letter.
**/
function isExported(_name:GoString):Bool {
        return stdgo.go.token.Token.isExported(_name);
    }
function testCommentText(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_i => _c in _comments) {
            var _list = new Slice<Ref<Comment>>((_c._list.length : GoInt).toBasic(), 0, ...[for (i in 0 ... (_c._list.length : GoInt).toBasic()) (null : Ref<Comment>)]);
            for (_i => _s in _c._list) {
                _list[(_i : GoInt)] = (Go.setRef(({ text : _s } : Comment)) : Ref<Comment>);
            };
            var _text:GoString = (Go.setRef((new CommentGroup(_list) : CommentGroup)) : Ref<CommentGroup>).text();
            if (_text != (_c._text)) {
                _t.errorf(("case %d: got %q; expected %q" : GoString), Go.toInterface(_i), Go.toInterface(_text), Go.toInterface(_c._text));
            };
        };
    }
function testIsDirective(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tt in _isDirectiveTests) {
            {
                var _ok:Bool = _isDirective(_tt._in);
                if (_ok != (_tt._ok)) {
                    _t.errorf(("isDirective(%q) = %v, want %v" : GoString), Go.toInterface(_tt._in), Go.toInterface(_ok), Go.toInterface(_tt._ok));
                };
            };
        };
    }
/**
    // sortComments sorts the list of comment groups in source order.
**/
private function _sortComments(_list:Slice<Ref<CommentGroup>>):Void {
        {
            var _orderedList:T_byPos = (_list : T_byPos);
            if (!stdgo.sort.Sort.isSorted(Go.asInterface(_orderedList))) {
                stdgo.sort.Sort.sort(Go.asInterface(_orderedList));
            };
        };
    }
/**
    // nodeList returns the list of nodes of the AST n in source order.
**/
private function _nodeList(_n:Node):Slice<Node> {
        var _list:Slice<Node> = (null : Slice<Node>);
        inspect(_n, function(_n:Node):Bool {
            {
                final __type__ = _n;
                if (__type__ == null || Go.typeEquals((__type__ : Ref<CommentGroup>)) || Go.typeEquals((__type__ : Ref<Comment>))) {
                    return false;
                };
            };
            _list = _list.__appendref__(_n);
            return true;
        });
        return _list;
    }
/**
    // NewCommentMap creates a new comment map by associating comment groups
    // of the comments list with the nodes of the AST specified by node.
    //
    // A comment group g is associated with a node n if:
    //
    //   - g starts on the same line as n ends
    //   - g starts on the line immediately following n, and there is
    //     at least one empty line after g and before the next node
    //   - g starts before n and is not associated to the node before n
    //     via the previous rules
    //
    // NewCommentMap tries to associate a comment group to the "largest"
    // node possible: For instance, if the comment is a line comment
    // trailing an assignment, the comment is associated with the entire
    // assignment rather than just the last operand in the assignment.
**/
function newCommentMap(_fset:Ref<stdgo.go.token.Token.FileSet>, _node:Node, _comments:Slice<Ref<CommentGroup>>):CommentMap {
        if ((_comments.length) == ((0 : GoInt))) {
            return null;
        };
        var _cmap:CommentMap = (new GoObjectMap<Node, Slice<Ref<CommentGroup>>>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("CommentMap", [], stdgo.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("Node", [], stdgo.internal.reflect.Reflect.GoType.named("Node", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }), false, { get : () -> null }) }, { get : () -> stdgo.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("CommentGroup", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "list", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("Comment", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "slash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.token.Token.Pos", [], stdgo.internal.reflect.Reflect.GoType.basic(int_kind), false, { get : () -> null }) }, optional : false }, { name : "text", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }]), false, { get : () -> null }) }) }) }, optional : false }]), false, { get : () -> null }) }) }) }), false, { get : () -> null }))) : CommentMap);
        var _tmp = new Slice<Ref<CommentGroup>>((_comments.length : GoInt).toBasic(), 0, ...[for (i in 0 ... (_comments.length : GoInt).toBasic()) (null : Ref<CommentGroup>)]);
        Go.copySlice(_tmp, _comments);
        _sortComments(_tmp);
        var _r:T_commentListReader = ({ _fset : _fset, _list : _tmp } : T_commentListReader);
        _r._next();
        var _nodes = _nodeList(_node);
        _nodes = _nodes.__appendref__((null : Node));
        var _0:Node = (null : Node), _1:stdgo.go.token.Token.Position = ({} : stdgo.go.token.Token.Position), _2:Node = (null : Node), _3:stdgo.go.token.Token.Position = ({} : stdgo.go.token.Token.Position), _4:T_nodeStack = new T_nodeStack(0, 0), _stack:T_nodeStack = _4, _pgend:stdgo.go.token.Token.Position = _3, _pg:Node = _2, _pend:stdgo.go.token.Token.Position = _1, _p:Node = _0;
        for (_0 => _q in _nodes) {
            var _qpos:stdgo.go.token.Token.Position = ({} : stdgo.go.token.Token.Position);
            if (_q != null) {
                _qpos = _fset.position(_q.pos()).__copy__();
            } else {
                {};
                _qpos.offset = (1073741824 : GoInt);
                _qpos.line = (1073741824 : GoInt);
            };
            while (_r._end.offset <= _qpos.offset) {
                {
                    var _top:Node = _stack._pop(_r._comment.pos());
                    if (_top != null) {
                        _pg = _top;
                        _pgend = _fset.position(_pg.end()).__copy__();
                    };
                };
                var _assoc:Node = (null : Node);
                if ((_pg != null) && ((_pgend.line == _r._pos.line) || (((_pgend.line + (1 : GoInt)) == _r._pos.line) && ((_r._end.line + (1 : GoInt)) < _qpos.line)))) {
                    _assoc = _pg;
                } else if ((_p != null) && (((_pend.line == _r._pos.line) || (((_pend.line + (1 : GoInt)) == _r._pos.line) && ((_r._end.line + (1 : GoInt)) < _qpos.line))) || (_q == null))) {
                    _assoc = _p;
                } else {
                    if (_q == null) {
                        throw Go.toInterface(("internal error: no comments should be associated with sentinel" : GoString));
                    };
                    _assoc = _q;
                };
                _cmap._addComment(_assoc, _r._comment);
                if (_r._eol()) {
                    return _cmap;
                };
                _r._next();
            };
            _p = _q;
            _pend = _fset.position(_p.end()).__copy__();
            {
                final __type__ = _q;
                if (Go.typeEquals((__type__ : Ref<File>)) || Go.typeEquals((__type__ : Ref<Field>)) || Go.typeEquals((__type__ : Decl)) || Go.typeEquals((__type__ : Spec)) || Go.typeEquals((__type__ : Stmt))) {
                    _stack._push(_q);
                };
            };
        };
        return _cmap;
    }
private function _summary(_list:Slice<Ref<CommentGroup>>):GoString {
        return stdgo.internal.Macro.controlFlow({
            {};
            var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
            @:label("loop") for (_0 => _group in _list) {
                for (_1 => _comment in _group.list) {
                    if (_buf.len() >= (40 : GoInt)) {
                        @:jump("loop") break;
                    };
                    _buf.writeString(_comment.text);
                };
            };
            if (_buf.len() > (40 : GoInt)) {
                _buf.truncate((37 : GoInt));
                _buf.writeString(("..." : GoString));
            };
            var _bytes = _buf.bytes();
            for (_i => _b in _bytes) {
                {
                    final __value__ = _b;
                    if (__value__ == ((9 : GoUInt8)) || __value__ == ((10 : GoUInt8)) || __value__ == ((13 : GoUInt8))) {
                        _bytes[(_i : GoInt)] = (32 : GoUInt8);
                    };
                };
            };
            return (_bytes : GoString);
        });
    }
/**
    // exportFilter is a special filter function to extract exported nodes.
**/
private function _exportFilter(_name:GoString):Bool {
        return isExported(_name);
    }
/**
    // FileExports trims the AST for a Go source file in place such that
    // only exported nodes remain: all top-level identifiers which are not exported
    // and their associated information (such as type, initial value, or function
    // body) are removed. Non-exported fields and methods of exported types are
    // stripped. The File.Comments list is not changed.
    //
    // FileExports reports whether there are exported declarations.
**/
function fileExports(_src:Ref<File>):Bool {
        return _filterFile(_src, _exportFilter, true);
    }
/**
    // PackageExports trims the AST for a Go package in place such that
    // only exported nodes remain. The pkg.Files list is not changed, so that
    // file names and top-level package comments don't get lost.
    //
    // PackageExports reports whether there are exported declarations;
    // it returns false otherwise.
**/
function packageExports(_pkg:Ref<Package>):Bool {
        return _filterPackage(_pkg, _exportFilter, true);
    }
private function _filterIdentList(_list:Slice<Ref<Ident>>, _f:Filter):Slice<Ref<Ident>> {
        var _j:GoInt = (0 : GoInt);
        for (_0 => _x in _list) {
            if (_f(_x.name)) {
                _list[(_j : GoInt)] = _x;
                _j++;
            };
        };
        return (_list.__slice__((0 : GoInt), _j) : Slice<Ref<Ident>>);
    }
/**
    // fieldName assumes that x is the type of an anonymous field and
    // returns the corresponding field name. If x is not an acceptable
    // anonymous field, the result is nil.
**/
private function _fieldName(_x:Expr):Ref<Ident> {
        {
            final __type__ = _x;
            if (Go.typeEquals((__type__ : Ref<Ident>))) {
                var _t:Ref<Ident> = __type__ == null ? (null : Ref<Ident>) : __type__.__underlying__() == null ? (null : Ref<Ident>) : __type__ == null ? (null : Ref<Ident>) : __type__.__underlying__().value;
                return _t;
            } else if (Go.typeEquals((__type__ : Ref<SelectorExpr>))) {
                var _t:Ref<SelectorExpr> = __type__ == null ? (null : Ref<SelectorExpr>) : __type__.__underlying__() == null ? (null : Ref<SelectorExpr>) : __type__ == null ? (null : Ref<SelectorExpr>) : __type__.__underlying__().value;
                {
                    var __tmp__ = try {
                        { value : (Go.typeAssert((Go.toInterface(_t.x) : Ref<Ident>)) : Ref<Ident>), ok : true };
                    } catch(_) {
                        { value : (null : Ref<Ident>), ok : false };
                    }, _0 = __tmp__.value, _ok = __tmp__.ok;
                    if (_ok) {
                        return _t.sel;
                    };
                };
            } else if (Go.typeEquals((__type__ : Ref<StarExpr>))) {
                var _t:Ref<StarExpr> = __type__ == null ? (null : Ref<StarExpr>) : __type__.__underlying__() == null ? (null : Ref<StarExpr>) : __type__ == null ? (null : Ref<StarExpr>) : __type__.__underlying__().value;
                return _fieldName(_t.x);
            };
        };
        return null;
    }
private function _filterFieldList(_fields:Ref<FieldList>, _filter:Filter, _export:Bool):Bool {
        var _removedFields:Bool = false;
        if (_fields == null || (_fields : Dynamic).__nil__) {
            return false;
        };
        var _list = _fields.list;
        var _j:GoInt = (0 : GoInt);
        for (_0 => _f in _list) {
            var _keepField:Bool = false;
            if ((_f.names.length) == ((0 : GoInt))) {
                var _name = _fieldName(_f.type);
                _keepField = ((_name != null) && ((_name : Dynamic).__nil__ == null || !(_name : Dynamic).__nil__)) && _filter(_name.name);
            } else {
                var _n:GoInt = (_f.names.length);
                _f.names = _filterIdentList(_f.names, _filter);
                if ((_f.names.length) < _n) {
                    _removedFields = true;
                };
                _keepField = (_f.names.length) > (0 : GoInt);
            };
            if (_keepField) {
                if (_export) {
                    _filterType(_f.type, _filter, _export);
                };
                _list[(_j : GoInt)] = _f;
                _j++;
            };
        };
        if (_j < (_list.length)) {
            _removedFields = true;
        };
        _fields.list = (_list.__slice__((0 : GoInt), _j) : Slice<Ref<Field>>);
        return _removedFields;
    }
private function _filterCompositeLit(_lit:Ref<CompositeLit>, _filter:Filter, _export:Bool):Void {
        var _n:GoInt = (_lit.elts.length);
        _lit.elts = _filterExprList(_lit.elts, _filter, _export);
        if ((_lit.elts.length) < _n) {
            _lit.incomplete = true;
        };
    }
private function _filterExprList(_list:Slice<Expr>, _filter:Filter, _export:Bool):Slice<Expr> {
        var _j:GoInt = (0 : GoInt);
        for (_0 => _exp in _list) {
            {
                final __type__ = _exp;
                if (Go.typeEquals((__type__ : Ref<CompositeLit>))) {
                    var _x:Ref<CompositeLit> = __type__ == null ? (null : Ref<CompositeLit>) : __type__.__underlying__() == null ? (null : Ref<CompositeLit>) : __type__ == null ? (null : Ref<CompositeLit>) : __type__.__underlying__().value;
                    _filterCompositeLit(_x, _filter, _export);
                } else if (Go.typeEquals((__type__ : Ref<KeyValueExpr>))) {
                    var _x:Ref<KeyValueExpr> = __type__ == null ? (null : Ref<KeyValueExpr>) : __type__.__underlying__() == null ? (null : Ref<KeyValueExpr>) : __type__ == null ? (null : Ref<KeyValueExpr>) : __type__.__underlying__().value;
                    {
                        var __tmp__ = try {
                            { value : (Go.typeAssert((Go.toInterface(_x.key) : Ref<Ident>)) : Ref<Ident>), ok : true };
                        } catch(_) {
                            { value : (null : Ref<Ident>), ok : false };
                        }, _x = __tmp__.value, _ok = __tmp__.ok;
                        if (_ok && !_filter(_x.name)) {
                            continue;
                        };
                    };
                    {
                        var __tmp__ = try {
                            { value : (Go.typeAssert((Go.toInterface(_x.value) : Ref<CompositeLit>)) : Ref<CompositeLit>), ok : true };
                        } catch(_) {
                            { value : (null : Ref<CompositeLit>), ok : false };
                        }, _x = __tmp__.value, _ok = __tmp__.ok;
                        if (_ok) {
                            _filterCompositeLit(_x, _filter, _export);
                        };
                    };
                };
            };
            _list[(_j : GoInt)] = _exp;
            _j++;
        };
        return (_list.__slice__((0 : GoInt), _j) : Slice<Expr>);
    }
private function _filterParamList(_fields:Ref<FieldList>, _filter:Filter, _export:Bool):Bool {
        if (_fields == null || (_fields : Dynamic).__nil__) {
            return false;
        };
        var _b:Bool = false;
        for (_0 => _f in _fields.list) {
            if (_filterType(_f.type, _filter, _export)) {
                _b = true;
            };
        };
        return _b;
    }
private function _filterType(_typ:Expr, _f:Filter, _export:Bool):Bool {
        {
            final __type__ = _typ;
            if (Go.typeEquals((__type__ : Ref<Ident>))) {
                var _t:Ref<Ident> = __type__ == null ? (null : Ref<Ident>) : __type__.__underlying__() == null ? (null : Ref<Ident>) : __type__ == null ? (null : Ref<Ident>) : __type__.__underlying__().value;
                return _f(_t.name);
            } else if (Go.typeEquals((__type__ : Ref<ParenExpr>))) {
                var _t:Ref<ParenExpr> = __type__ == null ? (null : Ref<ParenExpr>) : __type__.__underlying__() == null ? (null : Ref<ParenExpr>) : __type__ == null ? (null : Ref<ParenExpr>) : __type__.__underlying__().value;
                return _filterType(_t.x, _f, _export);
            } else if (Go.typeEquals((__type__ : Ref<ArrayType>))) {
                var _t:Ref<ArrayType> = __type__ == null ? (null : Ref<ArrayType>) : __type__.__underlying__() == null ? (null : Ref<ArrayType>) : __type__ == null ? (null : Ref<ArrayType>) : __type__.__underlying__().value;
                return _filterType(_t.elt, _f, _export);
            } else if (Go.typeEquals((__type__ : Ref<StructType>))) {
                var _t:Ref<StructType> = __type__ == null ? (null : Ref<StructType>) : __type__.__underlying__() == null ? (null : Ref<StructType>) : __type__ == null ? (null : Ref<StructType>) : __type__.__underlying__().value;
                if (_filterFieldList(_t.fields, _f, _export)) {
                    _t.incomplete = true;
                };
                return (_t.fields.list.length) > (0 : GoInt);
            } else if (Go.typeEquals((__type__ : Ref<FuncType>))) {
                var _t:Ref<FuncType> = __type__ == null ? (null : Ref<FuncType>) : __type__.__underlying__() == null ? (null : Ref<FuncType>) : __type__ == null ? (null : Ref<FuncType>) : __type__.__underlying__().value;
                var _b1:Bool = _filterParamList(_t.params, _f, _export);
                var _b2:Bool = _filterParamList(_t.results, _f, _export);
                return _b1 || _b2;
            } else if (Go.typeEquals((__type__ : Ref<InterfaceType>))) {
                var _t:Ref<InterfaceType> = __type__ == null ? (null : Ref<InterfaceType>) : __type__.__underlying__() == null ? (null : Ref<InterfaceType>) : __type__ == null ? (null : Ref<InterfaceType>) : __type__.__underlying__().value;
                if (_filterFieldList(_t.methods, _f, _export)) {
                    _t.incomplete = true;
                };
                return (_t.methods.list.length) > (0 : GoInt);
            } else if (Go.typeEquals((__type__ : Ref<MapType>))) {
                var _t:Ref<MapType> = __type__ == null ? (null : Ref<MapType>) : __type__.__underlying__() == null ? (null : Ref<MapType>) : __type__ == null ? (null : Ref<MapType>) : __type__.__underlying__().value;
                var _b1:Bool = _filterType(_t.key, _f, _export);
                var _b2:Bool = _filterType(_t.value, _f, _export);
                return _b1 || _b2;
            } else if (Go.typeEquals((__type__ : Ref<ChanType>))) {
                var _t:Ref<ChanType> = __type__ == null ? (null : Ref<ChanType>) : __type__.__underlying__() == null ? (null : Ref<ChanType>) : __type__ == null ? (null : Ref<ChanType>) : __type__.__underlying__().value;
                return _filterType(_t.value, _f, _export);
            };
        };
        return false;
    }
private function _filterSpec(_spec:Spec, _f:Filter, _export:Bool):Bool {
        {
            final __type__ = _spec;
            if (Go.typeEquals((__type__ : Ref<ValueSpec>))) {
                var _s:Ref<ValueSpec> = __type__ == null ? (null : Ref<ValueSpec>) : __type__.__underlying__() == null ? (null : Ref<ValueSpec>) : __type__ == null ? (null : Ref<ValueSpec>) : __type__.__underlying__().value;
                _s.names = _filterIdentList(_s.names, _f);
                _s.values = _filterExprList(_s.values, _f, _export);
                if ((_s.names.length) > (0 : GoInt)) {
                    if (_export) {
                        _filterType(_s.type, _f, _export);
                    };
                    return true;
                };
            } else if (Go.typeEquals((__type__ : Ref<TypeSpec>))) {
                var _s:Ref<TypeSpec> = __type__ == null ? (null : Ref<TypeSpec>) : __type__.__underlying__() == null ? (null : Ref<TypeSpec>) : __type__ == null ? (null : Ref<TypeSpec>) : __type__.__underlying__().value;
                if (_f(_s.name.name)) {
                    if (_export) {
                        _filterType(_s.type, _f, _export);
                    };
                    return true;
                };
                if (!_export) {
                    return _filterType(_s.type, _f, _export);
                };
            };
        };
        return false;
    }
private function _filterSpecList(_list:Slice<Spec>, _f:Filter, _export:Bool):Slice<Spec> {
        var _j:GoInt = (0 : GoInt);
        for (_0 => _s in _list) {
            if (_filterSpec(_s, _f, _export)) {
                _list[(_j : GoInt)] = _s;
                _j++;
            };
        };
        return (_list.__slice__((0 : GoInt), _j) : Slice<Spec>);
    }
/**
    // FilterDecl trims the AST for a Go declaration in place by removing
    // all names (including struct field and interface method names, but
    // not from parameter lists) that don't pass through the filter f.
    //
    // FilterDecl reports whether there are any declared names left after
    // filtering.
**/
function filterDecl(_decl:Decl, _f:Filter):Bool {
        return _filterDecl(_decl, _f, false);
    }
private function _filterDecl(_decl:Decl, _f:Filter, _export:Bool):Bool {
        {
            final __type__ = _decl;
            if (Go.typeEquals((__type__ : Ref<GenDecl>))) {
                var _d:Ref<GenDecl> = __type__ == null ? (null : Ref<GenDecl>) : __type__.__underlying__() == null ? (null : Ref<GenDecl>) : __type__ == null ? (null : Ref<GenDecl>) : __type__.__underlying__().value;
                _d.specs = _filterSpecList(_d.specs, _f, _export);
                return (_d.specs.length) > (0 : GoInt);
            } else if (Go.typeEquals((__type__ : Ref<FuncDecl>))) {
                var _d:Ref<FuncDecl> = __type__ == null ? (null : Ref<FuncDecl>) : __type__.__underlying__() == null ? (null : Ref<FuncDecl>) : __type__ == null ? (null : Ref<FuncDecl>) : __type__.__underlying__().value;
                return _f(_d.name.name);
            };
        };
        return false;
    }
/**
    // FilterFile trims the AST for a Go file in place by removing all
    // names from top-level declarations (including struct field and
    // interface method names, but not from parameter lists) that don't
    // pass through the filter f. If the declaration is empty afterwards,
    // the declaration is removed from the AST. Import declarations are
    // always removed. The File.Comments list is not changed.
    //
    // FilterFile reports whether there are any top-level declarations
    // left after filtering.
**/
function filterFile(_src:Ref<File>, _f:Filter):Bool {
        return _filterFile(_src, _f, false);
    }
private function _filterFile(_src:Ref<File>, _f:Filter, _export:Bool):Bool {
        var _j:GoInt = (0 : GoInt);
        for (_0 => _d in _src.decls) {
            if (_filterDecl(_d, _f, _export)) {
                _src.decls[(_j : GoInt)] = _d;
                _j++;
            };
        };
        _src.decls = (_src.decls.__slice__((0 : GoInt), _j) : Slice<Decl>);
        return _j > (0 : GoInt);
    }
/**
    // FilterPackage trims the AST for a Go package in place by removing
    // all names from top-level declarations (including struct field and
    // interface method names, but not from parameter lists) that don't
    // pass through the filter f. If the declaration is empty afterwards,
    // the declaration is removed from the AST. The pkg.Files list is not
    // changed, so that file names and top-level package comments don't get
    // lost.
    //
    // FilterPackage reports whether there are any top-level declarations
    // left after filtering.
**/
function filterPackage(_pkg:Ref<Package>, _f:Filter):Bool {
        return _filterPackage(_pkg, _f, false);
    }
private function _filterPackage(_pkg:Ref<Package>, _f:Filter, _export:Bool):Bool {
        var _hasDecls:Bool = false;
        for (_0 => _src in _pkg.files) {
            if (_filterFile(_src, _f, _export)) {
                _hasDecls = true;
            };
        };
        return _hasDecls;
    }
/**
    // nameOf returns the function (foo) or method name (foo.bar) for
    // the given function declaration. If the AST is incorrect for the
    // receiver, it assumes a function instead.
**/
private function _nameOf(_f:Ref<FuncDecl>):GoString {
        {
            var _r = _f.recv;
            if (((_r != null) && ((_r : Dynamic).__nil__ == null || !(_r : Dynamic).__nil__)) && (_r.list.length == (1 : GoInt))) {
                var _t:Expr = _r.list[(0 : GoInt)].type;
                {
                    var __tmp__ = try {
                        { value : (Go.typeAssert((Go.toInterface(_t) : Ref<StarExpr>)) : Ref<StarExpr>), ok : true };
                    } catch(_) {
                        { value : (null : Ref<StarExpr>), ok : false };
                    }, _p = __tmp__.value, _0 = __tmp__.ok;
                    if (_p != null && ((_p : Dynamic).__nil__ == null || !(_p : Dynamic).__nil__)) {
                        _t = _p.x;
                    };
                };
                {
                    var __tmp__ = try {
                        { value : (Go.typeAssert((Go.toInterface(_t) : Ref<Ident>)) : Ref<Ident>), ok : true };
                    } catch(_) {
                        { value : (null : Ref<Ident>), ok : false };
                    }, _p = __tmp__.value, _1 = __tmp__.ok;
                    if (_p != null && ((_p : Dynamic).__nil__ == null || !(_p : Dynamic).__nil__)) {
                        return (_p.name + ("." : GoString)) + _f.name.name;
                    };
                };
            };
        };
        return _f.name.name;
    }
/**
    // MergePackageFiles creates a file AST by merging the ASTs of the
    // files belonging to a package. The mode flags control merging behavior.
**/
function mergePackageFiles(_pkg:Ref<Package>, _mode:MergeMode):Ref<File> {
        var _ndocs:GoInt = (0 : GoInt);
        var _ncomments:GoInt = (0 : GoInt);
        var _ndecls:GoInt = (0 : GoInt);
        var _filenames = new Slice<GoString>((_pkg.files.length : GoInt).toBasic(), 0, ...[for (i in 0 ... (_pkg.files.length : GoInt).toBasic()) ("" : GoString)]);
        var _0:stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos), _1:stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos), _maxPos:stdgo.go.token.Token.Pos = _1, _minPos:stdgo.go.token.Token.Pos = _0;
        var _i:GoInt = (0 : GoInt);
        for (_filename => _f in _pkg.files) {
            _filenames[(_i : GoInt)] = _filename;
            _i++;
            if (_f.doc != null && ((_f.doc : Dynamic).__nil__ == null || !(_f.doc : Dynamic).__nil__)) {
                _ndocs = _ndocs + (_f.doc.list.length + (1 : GoInt));
            };
            _ncomments = _ncomments + ((_f.comments.length));
            _ndecls = _ndecls + ((_f.decls.length));
            if ((_i == (0 : GoInt)) || (_f.fileStart < _minPos)) {
                _minPos = _f.fileStart;
            };
            if ((_i == (0 : GoInt)) || (_f.fileEnd > _maxPos)) {
                _maxPos = _f.fileEnd;
            };
        };
        stdgo.sort.Sort.strings(_filenames);
        var _doc:Ref<CommentGroup> = (null : Ref<CommentGroup>);
        var _pos:stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
        if (_ndocs > (0 : GoInt)) {
            var _list = new Slice<Ref<Comment>>((_ndocs - (1 : GoInt) : GoInt).toBasic(), 0, ...[for (i in 0 ... (_ndocs - (1 : GoInt) : GoInt).toBasic()) (null : Ref<Comment>)]);
            var _i:GoInt = (0 : GoInt);
            for (_0 => _filename in _filenames) {
                var _f = _pkg.files[_filename];
                if (_f.doc != null && ((_f.doc : Dynamic).__nil__ == null || !(_f.doc : Dynamic).__nil__)) {
                    if (_i > (0 : GoInt)) {
                        _list[(_i : GoInt)] = _separator;
                        _i++;
                    };
                    for (_1 => _c in _f.doc.list) {
                        _list[(_i : GoInt)] = _c;
                        _i++;
                    };
                    if (_f.package_ > _pos) {
                        _pos = _f.package_;
                    };
                };
            };
            _doc = (Go.setRef((new CommentGroup(_list) : CommentGroup)) : Ref<CommentGroup>);
        };
        var _decls:Slice<Decl> = (null : Slice<Decl>);
        if (_ndecls > (0 : GoInt)) {
            _decls = new Slice<Decl>((_ndecls : GoInt).toBasic(), 0, ...[for (i in 0 ... (_ndecls : GoInt).toBasic()) (null : Decl)]);
            var _funcs = (new GoObjectMap<GoString, GoInt>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int_kind) }))) : GoMap<GoString, GoInt>);
            var _i:GoInt = (0 : GoInt);
            var _n:GoInt = (0 : GoInt);
            for (_2 => _filename in _filenames) {
                var _f = _pkg.files[_filename];
                for (_3 => _d in _f.decls) {
                    if (_mode & (("1" : GoUInt) : MergeMode) != ((("0" : GoUInt) : MergeMode))) {
                        {
                            var __tmp__ = try {
                                { value : (Go.typeAssert((Go.toInterface(_d) : Ref<FuncDecl>)) : Ref<FuncDecl>), ok : true };
                            } catch(_) {
                                { value : (null : Ref<FuncDecl>), ok : false };
                            }, _f = __tmp__.value, _isFun = __tmp__.ok;
                            if (_isFun) {
                                var _name:GoString = _nameOf(_f);
                                {
                                    var __tmp__ = (_funcs != null && _funcs.__exists__(_name) ? { value : _funcs[_name], ok : true } : { value : (0 : GoInt), ok : false }), _j:GoInt = __tmp__.value, _exists:Bool = __tmp__.ok;
                                    if (_exists) {
                                        if ((_decls[(_j : GoInt)] != null) && ((Go.typeAssert((Go.toInterface(_decls[(_j : GoInt)]) : Ref<FuncDecl>)) : Ref<FuncDecl>).doc == null) || ((Go.typeAssert((Go.toInterface(_decls[(_j : GoInt)]) : Ref<FuncDecl>)) : Ref<FuncDecl>).doc : Dynamic).__nil__) {
                                            _decls[(_j : GoInt)] = (null : Decl);
                                        } else {
                                            _d = (null : Decl);
                                        };
                                        _n++;
                                    } else {
                                        _funcs[_name] = _i;
                                    };
                                };
                            };
                        };
                    };
                    _decls[(_i : GoInt)] = _d;
                    _i++;
                };
            };
            if (_n > (0 : GoInt)) {
                _i = (0 : GoInt);
                for (_4 => _d in _decls) {
                    if (_d != null) {
                        _decls[(_i : GoInt)] = _d;
                        _i++;
                    };
                };
                _decls = (_decls.__slice__((0 : GoInt), _i) : Slice<Decl>);
            };
        };
        var _imports:Slice<Ref<ImportSpec>> = (null : Slice<Ref<ImportSpec>>);
        if (_mode & (("4" : GoUInt) : MergeMode) != ((("0" : GoUInt) : MergeMode))) {
            var _seen = (new GoObjectMap<GoString, Bool>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(bool_kind) }))) : GoMap<GoString, Bool>);
            for (_5 => _filename in _filenames) {
                var _f = _pkg.files[_filename];
                for (_6 => _imp in _f.imports) {
                    {
                        var _path:GoString = _imp.path.value;
                        if (!_seen[_path]) {
                            _imports = _imports.__appendref__(_imp);
                            _seen[_path] = true;
                        };
                    };
                };
            };
        } else {
            for (_7 => _filename in _filenames) {
                var _f = _pkg.files[_filename];
                _imports = _imports.__appendref__(..._f.imports.__toArray__());
            };
        };
        var _comments:Slice<Ref<CommentGroup>> = (null : Slice<Ref<CommentGroup>>);
        if (_mode & (("2" : GoUInt) : MergeMode) == ((("0" : GoUInt) : MergeMode))) {
            _comments = new Slice<Ref<CommentGroup>>((_ncomments : GoInt).toBasic(), 0, ...[for (i in 0 ... (_ncomments : GoInt).toBasic()) (null : Ref<CommentGroup>)]);
            var _i:GoInt = (0 : GoInt);
            for (_8 => _filename in _filenames) {
                var _f = _pkg.files[_filename];
                _i = _i + (Go.copySlice((_comments.__slice__(_i) : Slice<Ref<CommentGroup>>), _f.comments));
            };
        };
        return (Go.setRef((new File(_doc, _pos, newIdent(_pkg.name), _decls, _minPos, _maxPos, _pkg.scope, _imports, (null : Slice<Ref<Ident>>), _comments) : File)) : Ref<File>);
    }
/**
    // SortImports sorts runs of consecutive import lines in import blocks in f.
    // It also removes duplicate imports when it is possible to do so without data loss.
**/
function sortImports(_fset:Ref<stdgo.go.token.Token.FileSet>, _f:Ref<File>):Void {
        for (_0 => _d in _f.decls) {
            var __tmp__ = try {
                { value : (Go.typeAssert((Go.toInterface(_d) : Ref<GenDecl>)) : Ref<GenDecl>), ok : true };
            } catch(_) {
                { value : (null : Ref<GenDecl>), ok : false };
            }, _d = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok || (_d.tok != (75 : stdgo.go.token.Token.Token))) {
                break;
            };
            if (!_d.lparen.isValid()) {
                continue;
            };
            var _i:GoInt = (0 : GoInt);
            var _specs = (_d.specs.__slice__(0, (0 : GoInt)) : Slice<Spec>);
            for (_j => _s in _d.specs) {
                if ((_j > _i) && (_lineAt(_fset, _s.pos()) > ((1 : GoInt) + _lineAt(_fset, _d.specs[(_j - (1 : GoInt) : GoInt)].end())))) {
                    _specs = _specs.__appendref__(..._sortSpecs(_fset, _f, (_d.specs.__slice__(_i, _j) : Slice<Spec>)).__toArray__());
                    _i = _j;
                };
            };
            _specs = _specs.__appendref__(..._sortSpecs(_fset, _f, (_d.specs.__slice__(_i) : Slice<Spec>)).__toArray__());
            _d.specs = _specs;
            if ((_d.specs.length) > (0 : GoInt)) {
                var _lastSpec:Spec = _d.specs[((_d.specs.length) - (1 : GoInt) : GoInt)];
                var _lastLine:GoInt = _lineAt(_fset, _lastSpec.pos());
                var _rParenLine:GoInt = _lineAt(_fset, _d.rparen);
                while (_rParenLine > (_lastLine + (1 : GoInt))) {
                    _rParenLine--;
                    _fset.file(_d.rparen).mergeLine(_rParenLine);
                };
            };
        };
    }
private function _lineAt(_fset:Ref<stdgo.go.token.Token.FileSet>, _pos:stdgo.go.token.Token.Pos):GoInt {
        return _fset.positionFor(_pos, false).line;
    }
private function _importPath(_s:Spec):GoString {
        var __tmp__ = stdgo.strconv.Strconv.unquote((Go.typeAssert((Go.toInterface(_s) : Ref<ImportSpec>)) : Ref<ImportSpec>).path.value), _t:GoString = __tmp__._0, _err:Error = __tmp__._1;
        if (_err == null) {
            return _t;
        };
        return Go.str();
    }
private function _importName(_s:Spec):GoString {
        var _n = (Go.typeAssert((Go.toInterface(_s) : Ref<ImportSpec>)) : Ref<ImportSpec>).name;
        if (_n == null || (_n : Dynamic).__nil__) {
            return Go.str();
        };
        return _n.name;
    }
private function _importComment(_s:Spec):GoString {
        var _c = (Go.typeAssert((Go.toInterface(_s) : Ref<ImportSpec>)) : Ref<ImportSpec>).comment;
        if (_c == null || (_c : Dynamic).__nil__) {
            return Go.str();
        };
        return _c.text();
    }
/**
    // collapse indicates whether prev may be removed, leaving only next.
**/
private function _collapse(_prev:Spec, _next:Spec):Bool {
        if ((_importPath(_next) != _importPath(_prev)) || (_importName(_next) != _importName(_prev))) {
            return false;
        };
        return (Go.typeAssert((Go.toInterface(_prev) : Ref<ImportSpec>)) : Ref<ImportSpec>).comment == null || ((Go.typeAssert((Go.toInterface(_prev) : Ref<ImportSpec>)) : Ref<ImportSpec>).comment : Dynamic).__nil__;
    }
private function _sortSpecs(_fset:Ref<stdgo.go.token.Token.FileSet>, _f:Ref<File>, _specs:Slice<Spec>):Slice<Spec> {
        if ((_specs.length) <= (1 : GoInt)) {
            return _specs;
        };
        var _pos = new Slice<T_posSpan>((_specs.length : GoInt).toBasic(), 0, ...[for (i in 0 ... (_specs.length : GoInt).toBasic()) ({} : T_posSpan)]);
        for (_i => _s in _specs) {
            _pos[(_i : GoInt)] = (new T_posSpan(_s.pos(), _s.end()) : T_posSpan);
        };
        var _begSpecs:stdgo.go.token.Token.Pos = _pos[(0 : GoInt)].start;
        var _endSpecs:stdgo.go.token.Token.Pos = _pos[((_pos.length) - (1 : GoInt) : GoInt)].end;
        var _beg:stdgo.go.token.Token.Pos = _fset.file(_begSpecs).lineStart(_lineAt(_fset, _begSpecs));
        var _endLine:GoInt = _lineAt(_fset, _endSpecs);
        var _endFile = _fset.file(_endSpecs);
        var _end:stdgo.go.token.Token.Pos = ((0 : GoInt) : stdgo.go.token.Token.Pos);
        if (_endLine == (_endFile.lineCount())) {
            _end = _endSpecs;
        } else {
            _end = _endFile.lineStart(_endLine + (1 : GoInt));
        };
        var _first:GoInt = (_f.comments.length);
        var _last:GoInt = (-1 : GoInt);
        for (_i => _g in _f.comments) {
            if (_g.end() >= _end) {
                break;
            };
            if (_beg <= _g.pos()) {
                if (_i < _first) {
                    _first = _i;
                };
                if (_i > _last) {
                    _last = _i;
                };
            };
        };
        var _comments:Slice<Ref<CommentGroup>> = (null : Slice<Ref<CommentGroup>>);
        if (_last >= (0 : GoInt)) {
            _comments = (_f.comments.__slice__(_first, _last + (1 : GoInt)) : Slice<Ref<CommentGroup>>);
        };
        var _importComments = ({
            final x = new stdgo.GoMap.GoObjectMap<Ref<ImportSpec>, Slice<T_cgPos>>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("ImportSpec", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "doc", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("CommentGroup", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "list", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("Comment", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "slash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.token.Token.Pos", [], stdgo.internal.reflect.Reflect.GoType.basic(int_kind), false, { get : () -> null }) }, optional : false }, { name : "text", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }]), false, { get : () -> null }) }) }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "name", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("Ident", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "namePos", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.token.Token.Pos", [], stdgo.internal.reflect.Reflect.GoType.basic(int_kind), false, { get : () -> null }) }, optional : false }, { name : "name", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "obj", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("Object", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "kind", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("ObjKind", [], stdgo.internal.reflect.Reflect.GoType.basic(int_kind), false, { get : () -> null }) }, optional : false }, { name : "name", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "decl", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.interfaceType(true, []) }, optional : false }, { name : "data", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.interfaceType(true, []) }, optional : false }, { name : "type", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.interfaceType(true, []) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "path", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("BasicLit", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "valuePos", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.token.Token.Pos", [], stdgo.internal.reflect.Reflect.GoType.basic(int_kind), false, { get : () -> null }) }, optional : false }, { name : "kind", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.token.Token.Token", [], stdgo.internal.reflect.Reflect.GoType.basic(int_kind), false, { get : () -> null }) }, optional : false }, { name : "value", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "comment", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("CommentGroup", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "list", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("Comment", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "slash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.token.Token.Pos", [], stdgo.internal.reflect.Reflect.GoType.basic(int_kind), false, { get : () -> null }) }, optional : false }, { name : "text", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }]), false, { get : () -> null }) }) }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "endPos", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.token.Token.Pos", [], stdgo.internal.reflect.Reflect.GoType.basic(int_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, { get : () -> stdgo.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("T_cgPos", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "_left", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_cg", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("CommentGroup", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "list", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("Comment", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "slash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.token.Token.Pos", [], stdgo.internal.reflect.Reflect.GoType.basic(int_kind), false, { get : () -> null }) }, optional : false }, { name : "text", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }]), false, { get : () -> null }) }) }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }) })));
            @:privateAccess x._keys = [];
            @:privateAccess x._values = [];
            x;
        } : stdgo.GoMap<Ref<ImportSpec>, Slice<T_cgPos>>);
        var _specIndex:GoInt = (0 : GoInt);
        for (_0 => _g in _comments) {
            while (((_specIndex + (1 : GoInt)) < _specs.length) && (_pos[(_specIndex + (1 : GoInt) : GoInt)].start <= _g.pos())) {
                _specIndex++;
            };
            var _left:Bool = false;
            if ((_specIndex == (0 : GoInt)) && (_pos[(_specIndex : GoInt)].start > _g.pos())) {
                _left = true;
            } else if (((_specIndex + (1 : GoInt)) < _specs.length) && ((_lineAt(_fset, _pos[(_specIndex : GoInt)].start) + (1 : GoInt)) == _lineAt(_fset, _g.pos()))) {
                _specIndex++;
                _left = true;
            };
            var _s = (Go.typeAssert((Go.toInterface(_specs[(_specIndex : GoInt)]) : Ref<ImportSpec>)) : Ref<ImportSpec>);
            _importComments[_s] = _importComments[_s].__appendref__(({ _left : _left, _cg : _g } : T_cgPos));
        };
        stdgo.sort.Sort.slice(Go.toInterface(_specs), function(_i:GoInt, _j:GoInt):Bool {
            var _ipath:GoString = _importPath(_specs[(_i : GoInt)]);
            var _jpath:GoString = _importPath(_specs[(_j : GoInt)]);
            if (_ipath != (_jpath)) {
                return _ipath < _jpath;
            };
            var _iname:GoString = _importName(_specs[(_i : GoInt)]);
            var _jname:GoString = _importName(_specs[(_j : GoInt)]);
            if (_iname != (_jname)) {
                return _iname < _jname;
            };
            return _importComment(_specs[(_i : GoInt)]) < _importComment(_specs[(_j : GoInt)]);
        });
        var _deduped = (_specs.__slice__(0, (0 : GoInt)) : Slice<Spec>);
        for (_i => _s in _specs) {
            if ((_i == (_specs.length - (1 : GoInt))) || !_collapse(_s, _specs[(_i + (1 : GoInt) : GoInt)])) {
                _deduped = _deduped.__appendref__(_s);
            } else {
                var _p:stdgo.go.token.Token.Pos = _s.pos();
                _fset.file(_p).mergeLine(_lineAt(_fset, _p));
            };
        };
        _specs = _deduped;
        for (_i => _s in _specs) {
            var _s = (Go.typeAssert((Go.toInterface(_s) : Ref<ImportSpec>)) : Ref<ImportSpec>);
            if (_s.name != null && ((_s.name : Dynamic).__nil__ == null || !(_s.name : Dynamic).__nil__)) {
                _s.name.namePos = _pos[(_i : GoInt)].start;
            };
            _s.path.valuePos = _pos[(_i : GoInt)].start;
            _s.endPos = _pos[(_i : GoInt)].end;
            for (_1 => _g in _importComments[_s]) {
                for (_2 => _c in _g._cg.list) {
                    if (_g._left) {
                        _c.slash = _pos[(_i : GoInt)].start - (1 : stdgo.go.token.Token.Pos);
                    } else {
                        _c.slash = _pos[(_i : GoInt)].end;
                    };
                };
            };
        };
        stdgo.sort.Sort.slice(Go.toInterface(_comments), function(_i:GoInt, _j:GoInt):Bool {
            return _comments[(_i : GoInt)].pos() < _comments[(_j : GoInt)].pos();
        });
        return _specs;
    }
/**
    // NotNilFilter returns true for field values that are not nil;
    // it returns false otherwise.
**/
function notNilFilter(_0:GoString, _v:stdgo.reflect.Reflect.Value):Bool {
        {
            final __value__ = _v.kind();
            if (__value__ == ((("18" : GoUInt) : stdgo.reflect.Reflect.Kind)) || __value__ == ((("19" : GoUInt) : stdgo.reflect.Reflect.Kind)) || __value__ == ((("20" : GoUInt) : stdgo.reflect.Reflect.Kind)) || __value__ == ((("21" : GoUInt) : stdgo.reflect.Reflect.Kind)) || __value__ == ((("22" : GoUInt) : stdgo.reflect.Reflect.Kind)) || __value__ == ((("23" : GoUInt) : stdgo.reflect.Reflect.Kind))) {
                return !_v.isNil();
            };
        };
        return true;
    }
/**
    // Fprint prints the (sub-)tree starting at AST node x to w.
    // If fset != nil, position information is interpreted relative
    // to that file set. Otherwise positions are printed as integer
    // values (file set specific offsets).
    //
    // A non-nil FieldFilter f may be provided to control the output:
    // struct fields for which f(fieldname, fieldvalue) is true are
    // printed; all others are filtered from the output. Unexported
    // struct fields are never printed.
**/
function fprint(_w:stdgo.io.Io.Writer, _fset:Ref<stdgo.go.token.Token.FileSet>, _x:AnyInterface, _f:FieldFilter):Error {
        return _fprint(_w, _fset, _x, _f);
    }
private function _fprint(_w:stdgo.io.Io.Writer, _fset:Ref<stdgo.go.token.Token.FileSet>, _x:AnyInterface, _f:FieldFilter):Error {
        var __deferstack__:Array<Void -> Void> = [];
        var _err:Error = (null : Error);
        try {
            var _p:T_printer = ({ _output : _w, _fset : _fset, _filter : _f, _ptrmap : (new GoObjectMap<AnyInterface, GoInt>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo.internal.reflect.Reflect.GoType.interfaceType(true, []) }, { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int_kind) }))) : GoMap<AnyInterface, GoInt>), _last : (10 : GoUInt8) } : T_printer);
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _e:AnyInterface = ({
                            final r = Go.recover_exception;
                            Go.recover_exception = null;
                            r;
                        });
                        if (_e != null) {
                            _err = (Go.typeAssert((_e : T_localError)) : T_localError)._err;
                        };
                    };
                };
                a();
            });
            if (_x == null) {
                _p._printf(("nil\n" : GoString));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return _err;
                };
            };
            _p._print(stdgo.reflect.Reflect.valueOf(_x).__copy__());
            _p._printf(("\n" : GoString));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _err;
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return _err;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return _err;
        };
    }
/**
    // Print prints x to standard output, skipping nil fields.
    // Print(fset, x) is the same as Fprint(os.Stdout, fset, x, NotNilFilter).
**/
function print(_fset:Ref<stdgo.go.token.Token.FileSet>, _x:AnyInterface):Error {
        return fprint(Go.asInterface(stdgo.os.Os.stdout), _fset, _x, notNilFilter);
    }
/**
    // Split s into lines, trim whitespace from all lines, and return
    // the concatenated non-empty lines.
**/
private function _trim(_s:GoString):GoString {
        var _lines = stdgo.strings.Strings.split(_s, ("\n" : GoString));
        var _i:GoInt = (0 : GoInt);
        for (_0 => _line in _lines) {
            _line = stdgo.strings.Strings.trimSpace(_line);
            if (_line != (Go.str())) {
                _lines[(_i : GoInt)] = _line;
                _i++;
            };
        };
        return stdgo.strings.Strings.join((_lines.__slice__((0 : GoInt), _i) : Slice<GoString>), ("\n" : GoString));
    }
function testPrint(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _buf:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
        for (_0 => _test in _tests) {
            _buf.reset();
            {
                var _err:Error = fprint(Go.asInterface((Go.setRef(_buf) : Ref<stdgo.strings.Strings.Builder>)), null, _test._x, null);
                if (_err != null) {
                    _t.errorf(("Fprint failed: %s" : GoString), Go.toInterface(_err));
                };
            };
            {
                var _0:GoString = _trim((_buf.string() : GoString)), _1:GoString = _trim(_test._s), _ts:GoString = _1, _s:GoString = _0;
                if (_s != (_ts)) {
                    _t.errorf(("got:\n%s\nexpected:\n%s\n" : GoString), Go.toInterface(_s), Go.toInterface(_ts));
                };
            };
        };
    }
private function _resolve(_scope:Ref<Scope>, _ident:Ref<Ident>):Bool {
        Go.cfor(_scope != null && ((_scope : Dynamic).__nil__ == null || !(_scope : Dynamic).__nil__), _scope = _scope.outer, {
            {
                var _obj = _scope.lookup(_ident.name);
                if (_obj != null && ((_obj : Dynamic).__nil__ == null || !(_obj : Dynamic).__nil__)) {
                    _ident.obj = _obj;
                    return true;
                };
            };
        });
        return false;
    }
/**
    // NewPackage creates a new Package node from a set of File nodes. It resolves
    // unresolved identifiers across files and updates each file's Unresolved list
    // accordingly. If a non-nil importer and universe scope are provided, they are
    // used to resolve identifiers not declared in any of the package files. Any
    // remaining unresolved identifiers are reported as undeclared. If the files
    // belong to different packages, one package name is selected and files with
    // different package names are reported and then ignored.
    // The result is a package node and a scanner.ErrorList if there were errors.
**/
function newPackage(_fset:Ref<stdgo.go.token.Token.FileSet>, _files:GoMap<GoString, Ref<File>>, _importer:Importer, _universe:Ref<Scope>):{ var _0 : Ref<Package>; var _1 : Error; } {
        var _p:T_pkgBuilder = ({} : T_pkgBuilder);
        _p._fset = _fset;
        var _pkgName:GoString = Go.str();
        var _pkgScope = newScope(_universe);
        for (_8 => _file in _files) {
            {
                var _name:GoString = _file.name.name;
                if (_pkgName == (Go.str())) {
                    _pkgName = _name;
                } else if (_name != (_pkgName)) {
                    _p._errorf(_file.package_, ("package %s; expected %s" : GoString), Go.toInterface(_name), Go.toInterface(_pkgName));
                    continue;
                };
            };
            for (_9 => _obj in _file.scope.objects) {
                _p._declare(_pkgScope, null, _obj);
            };
        };
        var _imports = (new GoObjectMap<GoString, Ref<Object>>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("Object", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "kind", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("ObjKind", [], stdgo.internal.reflect.Reflect.GoType.basic(int_kind), false, { get : () -> null }) }, optional : false }, { name : "name", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "decl", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.interfaceType(true, []) }, optional : false }, { name : "data", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.interfaceType(true, []) }, optional : false }, { name : "type", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.interfaceType(true, []) }, optional : false }]), false, { get : () -> null }) }) }))) : GoMap<GoString, Ref<Object>>);
        for (_10 => _file in _files) {
            if (_file.name.name != (_pkgName)) {
                continue;
            };
            var _importErrors:Bool = false;
            var _fileScope = newScope(_pkgScope);
            for (_11 => _spec in _file.imports) {
                if (_importer == null) {
                    _importErrors = true;
                    continue;
                };
                var __tmp__ = stdgo.strconv.Strconv.unquote(_spec.path.value), _path:GoString = __tmp__._0, _12:Error = __tmp__._1;
                var __tmp__ = _importer(_imports, _path), _pkg:Ref<Object> = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    _p._errorf(_spec.path.pos(), ("could not import %s (%s)" : GoString), Go.toInterface(_path), Go.toInterface(_err));
                    _importErrors = true;
                    continue;
                };
                var _name:GoString = _pkg.name;
                if (_spec.name != null && ((_spec.name : Dynamic).__nil__ == null || !(_spec.name : Dynamic).__nil__)) {
                    _name = _spec.name.name;
                };
                if (_name == (("." : GoString))) {
                    for (_13 => _obj in (Go.typeAssert((_pkg.data : Ref<Scope>)) : Ref<Scope>).objects) {
                        _p._declare(_fileScope, _pkgScope, _obj);
                    };
                } else if (_name != (("_" : GoString))) {
                    var _obj = newObj((1 : ObjKind), _name);
                    _obj.decl = Go.toInterface(Go.asInterface(_spec));
                    _obj.data = _pkg.data;
                    _p._declare(_fileScope, _pkgScope, _obj);
                };
            };
            if (_importErrors) {
                _pkgScope.outer = null;
            };
            var _i:GoInt = (0 : GoInt);
            for (_14 => _ident in _file.unresolved) {
                if (!_resolve(_fileScope, _ident)) {
                    _p._errorf(_ident.pos(), ("undeclared name: %s" : GoString), Go.toInterface(_ident.name));
                    _file.unresolved[(_i : GoInt)] = _ident;
                    _i++;
                };
            };
            _file.unresolved = (_file.unresolved.__slice__((0 : GoInt), _i) : Slice<Ref<Ident>>);
            _pkgScope.outer = _universe;
        };
        _p._errors.sort();
        return { _0 : (Go.setRef((new Package(_pkgName, _pkgScope, _imports, _files) : Package)) : Ref<Package>), _1 : _p._errors.err() };
    }
/**
    // NewScope creates a new scope nested in the outer scope.
**/
function newScope(_outer:Ref<Scope>):Ref<Scope> {
        {};
        return (Go.setRef((new Scope(_outer, (new GoObjectMap<GoString, Ref<Object>>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("Object", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "kind", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("ObjKind", [], stdgo.internal.reflect.Reflect.GoType.basic(int_kind), false, { get : () -> null }) }, optional : false }, { name : "name", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "decl", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.interfaceType(true, []) }, optional : false }, { name : "data", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.interfaceType(true, []) }, optional : false }, { name : "type", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.interfaceType(true, []) }, optional : false }]), false, { get : () -> null }) }) }))) : GoMap<GoString, Ref<Object>>)) : Scope)) : Ref<Scope>);
    }
/**
    // NewObj creates a new object of a given kind and name.
**/
function newObj(_kind:ObjKind, _name:GoString):Ref<Object> {
        return (Go.setRef(({ kind : _kind, name : _name } : Object)) : Ref<Object>);
    }
private function _walkIdentList(_v:Visitor, _list:Slice<Ref<Ident>>):Void {
        for (_0 => _x in _list) {
            walk(_v, Go.asInterface(_x));
        };
    }
private function _walkExprList(_v:Visitor, _list:Slice<Expr>):Void {
        for (_0 => _x in _list) {
            walk(_v, _x);
        };
    }
private function _walkStmtList(_v:Visitor, _list:Slice<Stmt>):Void {
        for (_0 => _x in _list) {
            walk(_v, _x);
        };
    }
private function _walkDeclList(_v:Visitor, _list:Slice<Decl>):Void {
        for (_0 => _x in _list) {
            walk(_v, _x);
        };
    }
/**
    // Walk traverses an AST in depth-first order: It starts by calling
    // v.Visit(node); node must not be nil. If the visitor w returned by
    // v.Visit(node) is not nil, Walk is invoked recursively with visitor
    // w for each of the non-nil children of node, followed by a call of
    // w.Visit(nil).
**/
function walk(_v:Visitor, _node:Node):Void {
        {
            _v = _v.visit(_node);
            if (_v == null) {
                return;
            };
        };
        {
            final __type__ = _node;
            if (Go.typeEquals((__type__ : Ref<Comment>))) {
                var _n:Ref<Comment> = __type__ == null ? (null : Ref<Comment>) : __type__.__underlying__() == null ? (null : Ref<Comment>) : __type__ == null ? (null : Ref<Comment>) : __type__.__underlying__().value;
            } else if (Go.typeEquals((__type__ : Ref<CommentGroup>))) {
                var _n:Ref<CommentGroup> = __type__ == null ? (null : Ref<CommentGroup>) : __type__.__underlying__() == null ? (null : Ref<CommentGroup>) : __type__ == null ? (null : Ref<CommentGroup>) : __type__.__underlying__().value;
                for (_0 => _c in _n.list) {
                    walk(_v, Go.asInterface(_c));
                };
            } else if (Go.typeEquals((__type__ : Ref<Field>))) {
                var _n:Ref<Field> = __type__ == null ? (null : Ref<Field>) : __type__.__underlying__() == null ? (null : Ref<Field>) : __type__ == null ? (null : Ref<Field>) : __type__.__underlying__().value;
                if (_n.doc != null && ((_n.doc : Dynamic).__nil__ == null || !(_n.doc : Dynamic).__nil__)) {
                    walk(_v, Go.asInterface(_n.doc));
                };
                _walkIdentList(_v, _n.names);
                if (_n.type != null) {
                    walk(_v, _n.type);
                };
                if (_n.tag != null && ((_n.tag : Dynamic).__nil__ == null || !(_n.tag : Dynamic).__nil__)) {
                    walk(_v, Go.asInterface(_n.tag));
                };
                if (_n.comment != null && ((_n.comment : Dynamic).__nil__ == null || !(_n.comment : Dynamic).__nil__)) {
                    walk(_v, Go.asInterface(_n.comment));
                };
            } else if (Go.typeEquals((__type__ : Ref<FieldList>))) {
                var _n:Ref<FieldList> = __type__ == null ? (null : Ref<FieldList>) : __type__.__underlying__() == null ? (null : Ref<FieldList>) : __type__ == null ? (null : Ref<FieldList>) : __type__.__underlying__().value;
                for (_1 => _f in _n.list) {
                    walk(_v, Go.asInterface(_f));
                };
            } else if (Go.typeEquals((__type__ : Ref<BadExpr>)) || Go.typeEquals((__type__ : Ref<Ident>)) || Go.typeEquals((__type__ : Ref<BasicLit>))) {
                var _n:Node = __type__ == null ? (null : Node) : cast __type__;
            } else if (Go.typeEquals((__type__ : Ref<Ellipsis>))) {
                var _n:Ref<Ellipsis> = __type__ == null ? (null : Ref<Ellipsis>) : __type__.__underlying__() == null ? (null : Ref<Ellipsis>) : __type__ == null ? (null : Ref<Ellipsis>) : __type__.__underlying__().value;
                if (_n.elt != null) {
                    walk(_v, _n.elt);
                };
            } else if (Go.typeEquals((__type__ : Ref<FuncLit>))) {
                var _n:Ref<FuncLit> = __type__ == null ? (null : Ref<FuncLit>) : __type__.__underlying__() == null ? (null : Ref<FuncLit>) : __type__ == null ? (null : Ref<FuncLit>) : __type__.__underlying__().value;
                walk(_v, Go.asInterface(_n.type));
                walk(_v, Go.asInterface(_n.body));
            } else if (Go.typeEquals((__type__ : Ref<CompositeLit>))) {
                var _n:Ref<CompositeLit> = __type__ == null ? (null : Ref<CompositeLit>) : __type__.__underlying__() == null ? (null : Ref<CompositeLit>) : __type__ == null ? (null : Ref<CompositeLit>) : __type__.__underlying__().value;
                if (_n.type != null) {
                    walk(_v, _n.type);
                };
                _walkExprList(_v, _n.elts);
            } else if (Go.typeEquals((__type__ : Ref<ParenExpr>))) {
                var _n:Ref<ParenExpr> = __type__ == null ? (null : Ref<ParenExpr>) : __type__.__underlying__() == null ? (null : Ref<ParenExpr>) : __type__ == null ? (null : Ref<ParenExpr>) : __type__.__underlying__().value;
                walk(_v, _n.x);
            } else if (Go.typeEquals((__type__ : Ref<SelectorExpr>))) {
                var _n:Ref<SelectorExpr> = __type__ == null ? (null : Ref<SelectorExpr>) : __type__.__underlying__() == null ? (null : Ref<SelectorExpr>) : __type__ == null ? (null : Ref<SelectorExpr>) : __type__.__underlying__().value;
                walk(_v, _n.x);
                walk(_v, Go.asInterface(_n.sel));
            } else if (Go.typeEquals((__type__ : Ref<IndexExpr>))) {
                var _n:Ref<IndexExpr> = __type__ == null ? (null : Ref<IndexExpr>) : __type__.__underlying__() == null ? (null : Ref<IndexExpr>) : __type__ == null ? (null : Ref<IndexExpr>) : __type__.__underlying__().value;
                walk(_v, _n.x);
                walk(_v, _n.index);
            } else if (Go.typeEquals((__type__ : Ref<IndexListExpr>))) {
                var _n:Ref<IndexListExpr> = __type__ == null ? (null : Ref<IndexListExpr>) : __type__.__underlying__() == null ? (null : Ref<IndexListExpr>) : __type__ == null ? (null : Ref<IndexListExpr>) : __type__.__underlying__().value;
                walk(_v, _n.x);
                for (_2 => _index in _n.indices) {
                    walk(_v, _index);
                };
            } else if (Go.typeEquals((__type__ : Ref<SliceExpr>))) {
                var _n:Ref<SliceExpr> = __type__ == null ? (null : Ref<SliceExpr>) : __type__.__underlying__() == null ? (null : Ref<SliceExpr>) : __type__ == null ? (null : Ref<SliceExpr>) : __type__.__underlying__().value;
                walk(_v, _n.x);
                if (_n.low != null) {
                    walk(_v, _n.low);
                };
                if (_n.high != null) {
                    walk(_v, _n.high);
                };
                if (_n.max != null) {
                    walk(_v, _n.max);
                };
            } else if (Go.typeEquals((__type__ : Ref<TypeAssertExpr>))) {
                var _n:Ref<TypeAssertExpr> = __type__ == null ? (null : Ref<TypeAssertExpr>) : __type__.__underlying__() == null ? (null : Ref<TypeAssertExpr>) : __type__ == null ? (null : Ref<TypeAssertExpr>) : __type__.__underlying__().value;
                walk(_v, _n.x);
                if (_n.type != null) {
                    walk(_v, _n.type);
                };
            } else if (Go.typeEquals((__type__ : Ref<CallExpr>))) {
                var _n:Ref<CallExpr> = __type__ == null ? (null : Ref<CallExpr>) : __type__.__underlying__() == null ? (null : Ref<CallExpr>) : __type__ == null ? (null : Ref<CallExpr>) : __type__.__underlying__().value;
                walk(_v, _n.fun);
                _walkExprList(_v, _n.args);
            } else if (Go.typeEquals((__type__ : Ref<StarExpr>))) {
                var _n:Ref<StarExpr> = __type__ == null ? (null : Ref<StarExpr>) : __type__.__underlying__() == null ? (null : Ref<StarExpr>) : __type__ == null ? (null : Ref<StarExpr>) : __type__.__underlying__().value;
                walk(_v, _n.x);
            } else if (Go.typeEquals((__type__ : Ref<UnaryExpr>))) {
                var _n:Ref<UnaryExpr> = __type__ == null ? (null : Ref<UnaryExpr>) : __type__.__underlying__() == null ? (null : Ref<UnaryExpr>) : __type__ == null ? (null : Ref<UnaryExpr>) : __type__.__underlying__().value;
                walk(_v, _n.x);
            } else if (Go.typeEquals((__type__ : Ref<BinaryExpr>))) {
                var _n:Ref<BinaryExpr> = __type__ == null ? (null : Ref<BinaryExpr>) : __type__.__underlying__() == null ? (null : Ref<BinaryExpr>) : __type__ == null ? (null : Ref<BinaryExpr>) : __type__.__underlying__().value;
                walk(_v, _n.x);
                walk(_v, _n.y);
            } else if (Go.typeEquals((__type__ : Ref<KeyValueExpr>))) {
                var _n:Ref<KeyValueExpr> = __type__ == null ? (null : Ref<KeyValueExpr>) : __type__.__underlying__() == null ? (null : Ref<KeyValueExpr>) : __type__ == null ? (null : Ref<KeyValueExpr>) : __type__.__underlying__().value;
                walk(_v, _n.key);
                walk(_v, _n.value);
            } else if (Go.typeEquals((__type__ : Ref<ArrayType>))) {
                var _n:Ref<ArrayType> = __type__ == null ? (null : Ref<ArrayType>) : __type__.__underlying__() == null ? (null : Ref<ArrayType>) : __type__ == null ? (null : Ref<ArrayType>) : __type__.__underlying__().value;
                if (_n.len != null) {
                    walk(_v, _n.len);
                };
                walk(_v, _n.elt);
            } else if (Go.typeEquals((__type__ : Ref<StructType>))) {
                var _n:Ref<StructType> = __type__ == null ? (null : Ref<StructType>) : __type__.__underlying__() == null ? (null : Ref<StructType>) : __type__ == null ? (null : Ref<StructType>) : __type__.__underlying__().value;
                walk(_v, Go.asInterface(_n.fields));
            } else if (Go.typeEquals((__type__ : Ref<FuncType>))) {
                var _n:Ref<FuncType> = __type__ == null ? (null : Ref<FuncType>) : __type__.__underlying__() == null ? (null : Ref<FuncType>) : __type__ == null ? (null : Ref<FuncType>) : __type__.__underlying__().value;
                if (_n.typeParams != null && ((_n.typeParams : Dynamic).__nil__ == null || !(_n.typeParams : Dynamic).__nil__)) {
                    walk(_v, Go.asInterface(_n.typeParams));
                };
                if (_n.params != null && ((_n.params : Dynamic).__nil__ == null || !(_n.params : Dynamic).__nil__)) {
                    walk(_v, Go.asInterface(_n.params));
                };
                if (_n.results != null && ((_n.results : Dynamic).__nil__ == null || !(_n.results : Dynamic).__nil__)) {
                    walk(_v, Go.asInterface(_n.results));
                };
            } else if (Go.typeEquals((__type__ : Ref<InterfaceType>))) {
                var _n:Ref<InterfaceType> = __type__ == null ? (null : Ref<InterfaceType>) : __type__.__underlying__() == null ? (null : Ref<InterfaceType>) : __type__ == null ? (null : Ref<InterfaceType>) : __type__.__underlying__().value;
                walk(_v, Go.asInterface(_n.methods));
            } else if (Go.typeEquals((__type__ : Ref<MapType>))) {
                var _n:Ref<MapType> = __type__ == null ? (null : Ref<MapType>) : __type__.__underlying__() == null ? (null : Ref<MapType>) : __type__ == null ? (null : Ref<MapType>) : __type__.__underlying__().value;
                walk(_v, _n.key);
                walk(_v, _n.value);
            } else if (Go.typeEquals((__type__ : Ref<ChanType>))) {
                var _n:Ref<ChanType> = __type__ == null ? (null : Ref<ChanType>) : __type__.__underlying__() == null ? (null : Ref<ChanType>) : __type__ == null ? (null : Ref<ChanType>) : __type__.__underlying__().value;
                walk(_v, _n.value);
            } else if (Go.typeEquals((__type__ : Ref<BadStmt>))) {
                var _n:Ref<BadStmt> = __type__ == null ? (null : Ref<BadStmt>) : __type__.__underlying__() == null ? (null : Ref<BadStmt>) : __type__ == null ? (null : Ref<BadStmt>) : __type__.__underlying__().value;
            } else if (Go.typeEquals((__type__ : Ref<DeclStmt>))) {
                var _n:Ref<DeclStmt> = __type__ == null ? (null : Ref<DeclStmt>) : __type__.__underlying__() == null ? (null : Ref<DeclStmt>) : __type__ == null ? (null : Ref<DeclStmt>) : __type__.__underlying__().value;
                walk(_v, _n.decl);
            } else if (Go.typeEquals((__type__ : Ref<EmptyStmt>))) {
                var _n:Ref<EmptyStmt> = __type__ == null ? (null : Ref<EmptyStmt>) : __type__.__underlying__() == null ? (null : Ref<EmptyStmt>) : __type__ == null ? (null : Ref<EmptyStmt>) : __type__.__underlying__().value;
            } else if (Go.typeEquals((__type__ : Ref<LabeledStmt>))) {
                var _n:Ref<LabeledStmt> = __type__ == null ? (null : Ref<LabeledStmt>) : __type__.__underlying__() == null ? (null : Ref<LabeledStmt>) : __type__ == null ? (null : Ref<LabeledStmt>) : __type__.__underlying__().value;
                walk(_v, Go.asInterface(_n.label));
                walk(_v, _n.stmt);
            } else if (Go.typeEquals((__type__ : Ref<ExprStmt>))) {
                var _n:Ref<ExprStmt> = __type__ == null ? (null : Ref<ExprStmt>) : __type__.__underlying__() == null ? (null : Ref<ExprStmt>) : __type__ == null ? (null : Ref<ExprStmt>) : __type__.__underlying__().value;
                walk(_v, _n.x);
            } else if (Go.typeEquals((__type__ : Ref<SendStmt>))) {
                var _n:Ref<SendStmt> = __type__ == null ? (null : Ref<SendStmt>) : __type__.__underlying__() == null ? (null : Ref<SendStmt>) : __type__ == null ? (null : Ref<SendStmt>) : __type__.__underlying__().value;
                walk(_v, _n.chan);
                walk(_v, _n.value);
            } else if (Go.typeEquals((__type__ : Ref<IncDecStmt>))) {
                var _n:Ref<IncDecStmt> = __type__ == null ? (null : Ref<IncDecStmt>) : __type__.__underlying__() == null ? (null : Ref<IncDecStmt>) : __type__ == null ? (null : Ref<IncDecStmt>) : __type__.__underlying__().value;
                walk(_v, _n.x);
            } else if (Go.typeEquals((__type__ : Ref<AssignStmt>))) {
                var _n:Ref<AssignStmt> = __type__ == null ? (null : Ref<AssignStmt>) : __type__.__underlying__() == null ? (null : Ref<AssignStmt>) : __type__ == null ? (null : Ref<AssignStmt>) : __type__.__underlying__().value;
                _walkExprList(_v, _n.lhs);
                _walkExprList(_v, _n.rhs);
            } else if (Go.typeEquals((__type__ : Ref<GoStmt>))) {
                var _n:Ref<GoStmt> = __type__ == null ? (null : Ref<GoStmt>) : __type__.__underlying__() == null ? (null : Ref<GoStmt>) : __type__ == null ? (null : Ref<GoStmt>) : __type__.__underlying__().value;
                walk(_v, Go.asInterface(_n.call));
            } else if (Go.typeEquals((__type__ : Ref<DeferStmt>))) {
                var _n:Ref<DeferStmt> = __type__ == null ? (null : Ref<DeferStmt>) : __type__.__underlying__() == null ? (null : Ref<DeferStmt>) : __type__ == null ? (null : Ref<DeferStmt>) : __type__.__underlying__().value;
                walk(_v, Go.asInterface(_n.call));
            } else if (Go.typeEquals((__type__ : Ref<ReturnStmt>))) {
                var _n:Ref<ReturnStmt> = __type__ == null ? (null : Ref<ReturnStmt>) : __type__.__underlying__() == null ? (null : Ref<ReturnStmt>) : __type__ == null ? (null : Ref<ReturnStmt>) : __type__.__underlying__().value;
                _walkExprList(_v, _n.results);
            } else if (Go.typeEquals((__type__ : Ref<BranchStmt>))) {
                var _n:Ref<BranchStmt> = __type__ == null ? (null : Ref<BranchStmt>) : __type__.__underlying__() == null ? (null : Ref<BranchStmt>) : __type__ == null ? (null : Ref<BranchStmt>) : __type__.__underlying__().value;
                if (_n.label != null && ((_n.label : Dynamic).__nil__ == null || !(_n.label : Dynamic).__nil__)) {
                    walk(_v, Go.asInterface(_n.label));
                };
            } else if (Go.typeEquals((__type__ : Ref<BlockStmt>))) {
                var _n:Ref<BlockStmt> = __type__ == null ? (null : Ref<BlockStmt>) : __type__.__underlying__() == null ? (null : Ref<BlockStmt>) : __type__ == null ? (null : Ref<BlockStmt>) : __type__.__underlying__().value;
                _walkStmtList(_v, _n.list);
            } else if (Go.typeEquals((__type__ : Ref<IfStmt>))) {
                var _n:Ref<IfStmt> = __type__ == null ? (null : Ref<IfStmt>) : __type__.__underlying__() == null ? (null : Ref<IfStmt>) : __type__ == null ? (null : Ref<IfStmt>) : __type__.__underlying__().value;
                if (_n.init != null) {
                    walk(_v, _n.init);
                };
                walk(_v, _n.cond);
                walk(_v, Go.asInterface(_n.body));
                if (_n.else_ != null) {
                    walk(_v, _n.else_);
                };
            } else if (Go.typeEquals((__type__ : Ref<CaseClause>))) {
                var _n:Ref<CaseClause> = __type__ == null ? (null : Ref<CaseClause>) : __type__.__underlying__() == null ? (null : Ref<CaseClause>) : __type__ == null ? (null : Ref<CaseClause>) : __type__.__underlying__().value;
                _walkExprList(_v, _n.list);
                _walkStmtList(_v, _n.body);
            } else if (Go.typeEquals((__type__ : Ref<SwitchStmt>))) {
                var _n:Ref<SwitchStmt> = __type__ == null ? (null : Ref<SwitchStmt>) : __type__.__underlying__() == null ? (null : Ref<SwitchStmt>) : __type__ == null ? (null : Ref<SwitchStmt>) : __type__.__underlying__().value;
                if (_n.init != null) {
                    walk(_v, _n.init);
                };
                if (_n.tag != null) {
                    walk(_v, _n.tag);
                };
                walk(_v, Go.asInterface(_n.body));
            } else if (Go.typeEquals((__type__ : Ref<TypeSwitchStmt>))) {
                var _n:Ref<TypeSwitchStmt> = __type__ == null ? (null : Ref<TypeSwitchStmt>) : __type__.__underlying__() == null ? (null : Ref<TypeSwitchStmt>) : __type__ == null ? (null : Ref<TypeSwitchStmt>) : __type__.__underlying__().value;
                if (_n.init != null) {
                    walk(_v, _n.init);
                };
                walk(_v, _n.assign);
                walk(_v, Go.asInterface(_n.body));
            } else if (Go.typeEquals((__type__ : Ref<CommClause>))) {
                var _n:Ref<CommClause> = __type__ == null ? (null : Ref<CommClause>) : __type__.__underlying__() == null ? (null : Ref<CommClause>) : __type__ == null ? (null : Ref<CommClause>) : __type__.__underlying__().value;
                if (_n.comm != null) {
                    walk(_v, _n.comm);
                };
                _walkStmtList(_v, _n.body);
            } else if (Go.typeEquals((__type__ : Ref<SelectStmt>))) {
                var _n:Ref<SelectStmt> = __type__ == null ? (null : Ref<SelectStmt>) : __type__.__underlying__() == null ? (null : Ref<SelectStmt>) : __type__ == null ? (null : Ref<SelectStmt>) : __type__.__underlying__().value;
                walk(_v, Go.asInterface(_n.body));
            } else if (Go.typeEquals((__type__ : Ref<ForStmt>))) {
                var _n:Ref<ForStmt> = __type__ == null ? (null : Ref<ForStmt>) : __type__.__underlying__() == null ? (null : Ref<ForStmt>) : __type__ == null ? (null : Ref<ForStmt>) : __type__.__underlying__().value;
                if (_n.init != null) {
                    walk(_v, _n.init);
                };
                if (_n.cond != null) {
                    walk(_v, _n.cond);
                };
                if (_n.post != null) {
                    walk(_v, _n.post);
                };
                walk(_v, Go.asInterface(_n.body));
            } else if (Go.typeEquals((__type__ : Ref<RangeStmt>))) {
                var _n:Ref<RangeStmt> = __type__ == null ? (null : Ref<RangeStmt>) : __type__.__underlying__() == null ? (null : Ref<RangeStmt>) : __type__ == null ? (null : Ref<RangeStmt>) : __type__.__underlying__().value;
                if (_n.key != null) {
                    walk(_v, _n.key);
                };
                if (_n.value != null) {
                    walk(_v, _n.value);
                };
                walk(_v, _n.x);
                walk(_v, Go.asInterface(_n.body));
            } else if (Go.typeEquals((__type__ : Ref<ImportSpec>))) {
                var _n:Ref<ImportSpec> = __type__ == null ? (null : Ref<ImportSpec>) : __type__.__underlying__() == null ? (null : Ref<ImportSpec>) : __type__ == null ? (null : Ref<ImportSpec>) : __type__.__underlying__().value;
                if (_n.doc != null && ((_n.doc : Dynamic).__nil__ == null || !(_n.doc : Dynamic).__nil__)) {
                    walk(_v, Go.asInterface(_n.doc));
                };
                if (_n.name != null && ((_n.name : Dynamic).__nil__ == null || !(_n.name : Dynamic).__nil__)) {
                    walk(_v, Go.asInterface(_n.name));
                };
                walk(_v, Go.asInterface(_n.path));
                if (_n.comment != null && ((_n.comment : Dynamic).__nil__ == null || !(_n.comment : Dynamic).__nil__)) {
                    walk(_v, Go.asInterface(_n.comment));
                };
            } else if (Go.typeEquals((__type__ : Ref<ValueSpec>))) {
                var _n:Ref<ValueSpec> = __type__ == null ? (null : Ref<ValueSpec>) : __type__.__underlying__() == null ? (null : Ref<ValueSpec>) : __type__ == null ? (null : Ref<ValueSpec>) : __type__.__underlying__().value;
                if (_n.doc != null && ((_n.doc : Dynamic).__nil__ == null || !(_n.doc : Dynamic).__nil__)) {
                    walk(_v, Go.asInterface(_n.doc));
                };
                _walkIdentList(_v, _n.names);
                if (_n.type != null) {
                    walk(_v, _n.type);
                };
                _walkExprList(_v, _n.values);
                if (_n.comment != null && ((_n.comment : Dynamic).__nil__ == null || !(_n.comment : Dynamic).__nil__)) {
                    walk(_v, Go.asInterface(_n.comment));
                };
            } else if (Go.typeEquals((__type__ : Ref<TypeSpec>))) {
                var _n:Ref<TypeSpec> = __type__ == null ? (null : Ref<TypeSpec>) : __type__.__underlying__() == null ? (null : Ref<TypeSpec>) : __type__ == null ? (null : Ref<TypeSpec>) : __type__.__underlying__().value;
                if (_n.doc != null && ((_n.doc : Dynamic).__nil__ == null || !(_n.doc : Dynamic).__nil__)) {
                    walk(_v, Go.asInterface(_n.doc));
                };
                walk(_v, Go.asInterface(_n.name));
                if (_n.typeParams != null && ((_n.typeParams : Dynamic).__nil__ == null || !(_n.typeParams : Dynamic).__nil__)) {
                    walk(_v, Go.asInterface(_n.typeParams));
                };
                walk(_v, _n.type);
                if (_n.comment != null && ((_n.comment : Dynamic).__nil__ == null || !(_n.comment : Dynamic).__nil__)) {
                    walk(_v, Go.asInterface(_n.comment));
                };
            } else if (Go.typeEquals((__type__ : Ref<BadDecl>))) {
                var _n:Ref<BadDecl> = __type__ == null ? (null : Ref<BadDecl>) : __type__.__underlying__() == null ? (null : Ref<BadDecl>) : __type__ == null ? (null : Ref<BadDecl>) : __type__.__underlying__().value;
            } else if (Go.typeEquals((__type__ : Ref<GenDecl>))) {
                var _n:Ref<GenDecl> = __type__ == null ? (null : Ref<GenDecl>) : __type__.__underlying__() == null ? (null : Ref<GenDecl>) : __type__ == null ? (null : Ref<GenDecl>) : __type__.__underlying__().value;
                if (_n.doc != null && ((_n.doc : Dynamic).__nil__ == null || !(_n.doc : Dynamic).__nil__)) {
                    walk(_v, Go.asInterface(_n.doc));
                };
                for (_3 => _s in _n.specs) {
                    walk(_v, _s);
                };
            } else if (Go.typeEquals((__type__ : Ref<FuncDecl>))) {
                var _n:Ref<FuncDecl> = __type__ == null ? (null : Ref<FuncDecl>) : __type__.__underlying__() == null ? (null : Ref<FuncDecl>) : __type__ == null ? (null : Ref<FuncDecl>) : __type__.__underlying__().value;
                if (_n.doc != null && ((_n.doc : Dynamic).__nil__ == null || !(_n.doc : Dynamic).__nil__)) {
                    walk(_v, Go.asInterface(_n.doc));
                };
                if (_n.recv != null && ((_n.recv : Dynamic).__nil__ == null || !(_n.recv : Dynamic).__nil__)) {
                    walk(_v, Go.asInterface(_n.recv));
                };
                walk(_v, Go.asInterface(_n.name));
                walk(_v, Go.asInterface(_n.type));
                if (_n.body != null && ((_n.body : Dynamic).__nil__ == null || !(_n.body : Dynamic).__nil__)) {
                    walk(_v, Go.asInterface(_n.body));
                };
            } else if (Go.typeEquals((__type__ : Ref<File>))) {
                var _n:Ref<File> = __type__ == null ? (null : Ref<File>) : __type__.__underlying__() == null ? (null : Ref<File>) : __type__ == null ? (null : Ref<File>) : __type__.__underlying__().value;
                if (_n.doc != null && ((_n.doc : Dynamic).__nil__ == null || !(_n.doc : Dynamic).__nil__)) {
                    walk(_v, Go.asInterface(_n.doc));
                };
                walk(_v, Go.asInterface(_n.name));
                _walkDeclList(_v, _n.decls);
            } else if (Go.typeEquals((__type__ : Ref<Package>))) {
                var _n:Ref<Package> = __type__ == null ? (null : Ref<Package>) : __type__.__underlying__() == null ? (null : Ref<Package>) : __type__ == null ? (null : Ref<Package>) : __type__.__underlying__().value;
                for (_4 => _f in _n.files) {
                    walk(_v, Go.asInterface(_f));
                };
            } else {
                var _n:Node = __type__ == null ? (null : Node) : cast __type__;
                throw Go.toInterface(stdgo.fmt.Fmt.sprintf(("ast.Walk: unexpected node type %T" : GoString), Go.toInterface(_n)));
            };
        };
        _v.visit((null : Node));
    }
/**
    // Inspect traverses an AST in depth-first order: It starts by calling
    // f(node); node must not be nil. If f returns true, Inspect invokes f
    // recursively for each of the non-nil children of node, followed by a
    // call of f(nil).
**/
function inspect(_node:Node, _f:Node -> Bool):Void {
        walk(Go.asInterface((_f : T_inspector)), _node);
    }
class Comment_asInterface {
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Comment>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.Comment_asInterface) class Comment_static_extension {
    @:keep
    static public function end( _c:Ref<Comment>):stdgo.go.token.Token.Pos {
        return ((_c.slash : GoInt) + (_c.text.length) : stdgo.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _c:Ref<Comment>):stdgo.go.token.Token.Pos {
        return _c.slash;
    }
}
class CommentGroup_asInterface {
    /**
        // Text returns the text of the comment.
        // Comment markers (//, /|*, and *|/), the first space of a line comment, and
        // leading and trailing empty lines are removed.
        // Comment directives like "//line" and "//go:noinline" are also removed.
        // Multiple empty lines are reduced to one, and trailing space on lines is trimmed.
        // Unless the result is empty, it is newline-terminated.
    **/
    @:keep
    public dynamic function text():GoString return __self__.value.text();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<CommentGroup>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.CommentGroup_asInterface) class CommentGroup_static_extension {
    /**
        // Text returns the text of the comment.
        // Comment markers (//, /|*, and *|/), the first space of a line comment, and
        // leading and trailing empty lines are removed.
        // Comment directives like "//line" and "//go:noinline" are also removed.
        // Multiple empty lines are reduced to one, and trailing space on lines is trimmed.
        // Unless the result is empty, it is newline-terminated.
    **/
    @:keep
    static public function text( _g:Ref<CommentGroup>):GoString {
        if (_g == null || (_g : Dynamic).__nil__) {
            return Go.str();
        };
        var _comments = new Slice<GoString>((_g.list.length : GoInt).toBasic(), 0, ...[for (i in 0 ... (_g.list.length : GoInt).toBasic()) ("" : GoString)]);
        for (_i => _c in _g.list) {
            _comments[(_i : GoInt)] = _c.text;
        };
        var _lines = new Slice<GoString>((0 : GoInt).toBasic(), (10 : GoInt), ...[for (i in 0 ... (0 : GoInt).toBasic()) ("" : GoString)]);
        for (_0 => _c in _comments) {
            {
                var __continue__ = false;
                var __switchIndex__ = -1;
                while (true) {
                    {
                        final __value__ = _c[(1 : GoInt)];
                        if (__value__ == ((47 : GoUInt8))) {
                            _c = (_c.__slice__((2 : GoInt)) : GoString);
                            if ((_c.length) == ((0 : GoInt))) {
                                break;
                            };
                            if (_c[(0 : GoInt)] == ((32 : GoUInt8))) {
                                _c = (_c.__slice__((1 : GoInt)) : GoString);
                                break;
                            };
                            if (_isDirective(_c)) {
                                {
                                    __continue__ = true;
                                    break;
                                };
                            };
                            break;
                        } else if (__value__ == ((42 : GoUInt8))) {
                            _c = (_c.__slice__((2 : GoInt), (_c.length) - (2 : GoInt)) : GoString);
                            break;
                        };
                    };
                    break;
                };
                if (__continue__) continue;
            };
            var _cl = stdgo.strings.Strings.split(_c, ("\n" : GoString));
            for (_1 => _l in _cl) {
                _lines = _lines.__appendref__(_stripTrailingWhitespace(_l));
            };
        };
        var _n:GoInt = (0 : GoInt);
        for (_2 => _line in _lines) {
            if ((_line != Go.str()) || ((_n > (0 : GoInt)) && (_lines[(_n - (1 : GoInt) : GoInt)] != Go.str()))) {
                _lines[(_n : GoInt)] = _line;
                _n++;
            };
        };
        _lines = (_lines.__slice__((0 : GoInt), _n) : Slice<GoString>);
        if ((_n > (0 : GoInt)) && (_lines[(_n - (1 : GoInt) : GoInt)] != Go.str())) {
            _lines = _lines.__appendref__(Go.str());
        };
        return stdgo.strings.Strings.join(_lines, ("\n" : GoString));
    }
    @:keep
    static public function end( _g:Ref<CommentGroup>):stdgo.go.token.Token.Pos {
        return _g.list[((_g.list.length) - (1 : GoInt) : GoInt)].end();
    }
    @:keep
    static public function pos( _g:Ref<CommentGroup>):stdgo.go.token.Token.Pos {
        return _g.list[(0 : GoInt)].pos();
    }
}
class Field_asInterface {
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Field>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.Field_asInterface) class Field_static_extension {
    @:keep
    static public function end( _f:Ref<Field>):stdgo.go.token.Token.Pos {
        if (_f.tag != null && ((_f.tag : Dynamic).__nil__ == null || !(_f.tag : Dynamic).__nil__)) {
            return _f.tag.end();
        };
        if (_f.type != null) {
            return _f.type.end();
        };
        if ((_f.names.length) > (0 : GoInt)) {
            return _f.names[((_f.names.length) - (1 : GoInt) : GoInt)].end();
        };
        return (0 : stdgo.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _f:Ref<Field>):stdgo.go.token.Token.Pos {
        if ((_f.names.length) > (0 : GoInt)) {
            return _f.names[(0 : GoInt)].pos();
        };
        if (_f.type != null) {
            return _f.type.pos();
        };
        return (0 : stdgo.go.token.Token.Pos);
    }
}
class FieldList_asInterface {
    /**
        // NumFields returns the number of parameters or struct fields represented by a FieldList.
    **/
    @:keep
    public dynamic function numFields():GoInt return __self__.value.numFields();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<FieldList>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.FieldList_asInterface) class FieldList_static_extension {
    /**
        // NumFields returns the number of parameters or struct fields represented by a FieldList.
    **/
    @:keep
    static public function numFields( _f:Ref<FieldList>):GoInt {
        var _n:GoInt = (0 : GoInt);
        if (_f != null && ((_f : Dynamic).__nil__ == null || !(_f : Dynamic).__nil__)) {
            for (_0 => _g in _f.list) {
                var _m:GoInt = (_g.names.length);
                if (_m == ((0 : GoInt))) {
                    _m = (1 : GoInt);
                };
                _n = _n + (_m);
            };
        };
        return _n;
    }
    @:keep
    static public function end( _f:Ref<FieldList>):stdgo.go.token.Token.Pos {
        if (_f.closing.isValid()) {
            return _f.closing + (1 : stdgo.go.token.Token.Pos);
        };
        {
            var _n:GoInt = (_f.list.length);
            if (_n > (0 : GoInt)) {
                return _f.list[(_n - (1 : GoInt) : GoInt)].end();
            };
        };
        return (0 : stdgo.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _f:Ref<FieldList>):stdgo.go.token.Token.Pos {
        if (_f.opening.isValid()) {
            return _f.opening;
        };
        if ((_f.list.length) > (0 : GoInt)) {
            return _f.list[(0 : GoInt)].pos();
        };
        return (0 : stdgo.go.token.Token.Pos);
    }
}
class BadExpr_asInterface {
    /**
        // exprNode() ensures that only expression/type nodes can be
        // assigned to an Expr.
    **/
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<BadExpr>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.BadExpr_asInterface) class BadExpr_static_extension {
    /**
        // exprNode() ensures that only expression/type nodes can be
        // assigned to an Expr.
    **/
    @:keep
    static public function _exprNode( _:Ref<BadExpr>):Void {}
    @:keep
    static public function end( _x:Ref<BadExpr>):stdgo.go.token.Token.Pos {
        return _x.to;
    }
    @:keep
    static public function pos( _x:Ref<BadExpr>):stdgo.go.token.Token.Pos {
        return _x.from;
    }
}
class Ident_asInterface {
    @:keep
    public dynamic function string():GoString return __self__.value.string();
    /**
        // IsExported reports whether id starts with an upper-case letter.
    **/
    @:keep
    public dynamic function isExported():Bool return __self__.value.isExported();
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Ident>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.Ident_asInterface) class Ident_static_extension {
    @:keep
    static public function string( _id:Ref<Ident>):GoString {
        if (_id != null && ((_id : Dynamic).__nil__ == null || !(_id : Dynamic).__nil__)) {
            return _id.name;
        };
        return ("<nil>" : GoString);
    }
    /**
        // IsExported reports whether id starts with an upper-case letter.
    **/
    @:keep
    static public function isExported( _id:Ref<Ident>):Bool {
        return stdgo.go.token.Token.isExported(_id.name);
    }
    @:keep
    static public function _exprNode( _:Ref<Ident>):Void {}
    @:keep
    static public function end( _x:Ref<Ident>):stdgo.go.token.Token.Pos {
        return ((_x.namePos : GoInt) + (_x.name.length) : stdgo.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _x:Ref<Ident>):stdgo.go.token.Token.Pos {
        return _x.namePos;
    }
}
class Ellipsis_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Ellipsis>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.Ellipsis_asInterface) class Ellipsis_static_extension {
    @:keep
    static public function _exprNode( _:Ref<Ellipsis>):Void {}
    @:keep
    static public function end( _x:Ref<Ellipsis>):stdgo.go.token.Token.Pos {
        if (_x.elt != null) {
            return _x.elt.end();
        };
        return _x.ellipsis + (3 : stdgo.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _x:Ref<Ellipsis>):stdgo.go.token.Token.Pos {
        return _x.ellipsis;
    }
}
class BasicLit_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<BasicLit>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.BasicLit_asInterface) class BasicLit_static_extension {
    @:keep
    static public function _exprNode( _:Ref<BasicLit>):Void {}
    @:keep
    static public function end( _x:Ref<BasicLit>):stdgo.go.token.Token.Pos {
        return ((_x.valuePos : GoInt) + (_x.value.length) : stdgo.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _x:Ref<BasicLit>):stdgo.go.token.Token.Pos {
        return _x.valuePos;
    }
}
class FuncLit_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<FuncLit>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.FuncLit_asInterface) class FuncLit_static_extension {
    @:keep
    static public function _exprNode( _:Ref<FuncLit>):Void {}
    @:keep
    static public function end( _x:Ref<FuncLit>):stdgo.go.token.Token.Pos {
        return _x.body.end();
    }
    @:keep
    static public function pos( _x:Ref<FuncLit>):stdgo.go.token.Token.Pos {
        return _x.type.pos();
    }
}
class CompositeLit_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<CompositeLit>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.CompositeLit_asInterface) class CompositeLit_static_extension {
    @:keep
    static public function _exprNode( _:Ref<CompositeLit>):Void {}
    @:keep
    static public function end( _x:Ref<CompositeLit>):stdgo.go.token.Token.Pos {
        return _x.rbrace + (1 : stdgo.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _x:Ref<CompositeLit>):stdgo.go.token.Token.Pos {
        if (_x.type != null) {
            return _x.type.pos();
        };
        return _x.lbrace;
    }
}
class ParenExpr_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<ParenExpr>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.ParenExpr_asInterface) class ParenExpr_static_extension {
    @:keep
    static public function _exprNode( _:Ref<ParenExpr>):Void {}
    @:keep
    static public function end( _x:Ref<ParenExpr>):stdgo.go.token.Token.Pos {
        return _x.rparen + (1 : stdgo.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _x:Ref<ParenExpr>):stdgo.go.token.Token.Pos {
        return _x.lparen;
    }
}
class SelectorExpr_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<SelectorExpr>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.SelectorExpr_asInterface) class SelectorExpr_static_extension {
    @:keep
    static public function _exprNode( _:Ref<SelectorExpr>):Void {}
    @:keep
    static public function end( _x:Ref<SelectorExpr>):stdgo.go.token.Token.Pos {
        return _x.sel.end();
    }
    @:keep
    static public function pos( _x:Ref<SelectorExpr>):stdgo.go.token.Token.Pos {
        return _x.x.pos();
    }
}
class IndexExpr_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<IndexExpr>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.IndexExpr_asInterface) class IndexExpr_static_extension {
    @:keep
    static public function _exprNode( _:Ref<IndexExpr>):Void {}
    @:keep
    static public function end( _x:Ref<IndexExpr>):stdgo.go.token.Token.Pos {
        return _x.rbrack + (1 : stdgo.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _x:Ref<IndexExpr>):stdgo.go.token.Token.Pos {
        return _x.x.pos();
    }
}
class IndexListExpr_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<IndexListExpr>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.IndexListExpr_asInterface) class IndexListExpr_static_extension {
    @:keep
    static public function _exprNode( _:Ref<IndexListExpr>):Void {}
    @:keep
    static public function end( _x:Ref<IndexListExpr>):stdgo.go.token.Token.Pos {
        return _x.rbrack + (1 : stdgo.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _x:Ref<IndexListExpr>):stdgo.go.token.Token.Pos {
        return _x.x.pos();
    }
}
class SliceExpr_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<SliceExpr>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.SliceExpr_asInterface) class SliceExpr_static_extension {
    @:keep
    static public function _exprNode( _:Ref<SliceExpr>):Void {}
    @:keep
    static public function end( _x:Ref<SliceExpr>):stdgo.go.token.Token.Pos {
        return _x.rbrack + (1 : stdgo.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _x:Ref<SliceExpr>):stdgo.go.token.Token.Pos {
        return _x.x.pos();
    }
}
class TypeAssertExpr_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<TypeAssertExpr>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.TypeAssertExpr_asInterface) class TypeAssertExpr_static_extension {
    @:keep
    static public function _exprNode( _:Ref<TypeAssertExpr>):Void {}
    @:keep
    static public function end( _x:Ref<TypeAssertExpr>):stdgo.go.token.Token.Pos {
        return _x.rparen + (1 : stdgo.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _x:Ref<TypeAssertExpr>):stdgo.go.token.Token.Pos {
        return _x.x.pos();
    }
}
class CallExpr_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<CallExpr>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.CallExpr_asInterface) class CallExpr_static_extension {
    @:keep
    static public function _exprNode( _:Ref<CallExpr>):Void {}
    @:keep
    static public function end( _x:Ref<CallExpr>):stdgo.go.token.Token.Pos {
        return _x.rparen + (1 : stdgo.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _x:Ref<CallExpr>):stdgo.go.token.Token.Pos {
        return _x.fun.pos();
    }
}
class StarExpr_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<StarExpr>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.StarExpr_asInterface) class StarExpr_static_extension {
    @:keep
    static public function _exprNode( _:Ref<StarExpr>):Void {}
    @:keep
    static public function end( _x:Ref<StarExpr>):stdgo.go.token.Token.Pos {
        return _x.x.end();
    }
    @:keep
    static public function pos( _x:Ref<StarExpr>):stdgo.go.token.Token.Pos {
        return _x.star;
    }
}
class UnaryExpr_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<UnaryExpr>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.UnaryExpr_asInterface) class UnaryExpr_static_extension {
    @:keep
    static public function _exprNode( _:Ref<UnaryExpr>):Void {}
    @:keep
    static public function end( _x:Ref<UnaryExpr>):stdgo.go.token.Token.Pos {
        return _x.x.end();
    }
    @:keep
    static public function pos( _x:Ref<UnaryExpr>):stdgo.go.token.Token.Pos {
        return _x.opPos;
    }
}
class BinaryExpr_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<BinaryExpr>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.BinaryExpr_asInterface) class BinaryExpr_static_extension {
    @:keep
    static public function _exprNode( _:Ref<BinaryExpr>):Void {}
    @:keep
    static public function end( _x:Ref<BinaryExpr>):stdgo.go.token.Token.Pos {
        return _x.y.end();
    }
    @:keep
    static public function pos( _x:Ref<BinaryExpr>):stdgo.go.token.Token.Pos {
        return _x.x.pos();
    }
}
class KeyValueExpr_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<KeyValueExpr>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.KeyValueExpr_asInterface) class KeyValueExpr_static_extension {
    @:keep
    static public function _exprNode( _:Ref<KeyValueExpr>):Void {}
    @:keep
    static public function end( _x:Ref<KeyValueExpr>):stdgo.go.token.Token.Pos {
        return _x.value.end();
    }
    @:keep
    static public function pos( _x:Ref<KeyValueExpr>):stdgo.go.token.Token.Pos {
        return _x.key.pos();
    }
}
class ArrayType_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<ArrayType>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.ArrayType_asInterface) class ArrayType_static_extension {
    @:keep
    static public function _exprNode( _:Ref<ArrayType>):Void {}
    @:keep
    static public function end( _x:Ref<ArrayType>):stdgo.go.token.Token.Pos {
        return _x.elt.end();
    }
    @:keep
    static public function pos( _x:Ref<ArrayType>):stdgo.go.token.Token.Pos {
        return _x.lbrack;
    }
}
class StructType_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<StructType>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.StructType_asInterface) class StructType_static_extension {
    @:keep
    static public function _exprNode( _:Ref<StructType>):Void {}
    @:keep
    static public function end( _x:Ref<StructType>):stdgo.go.token.Token.Pos {
        return _x.fields.end();
    }
    @:keep
    static public function pos( _x:Ref<StructType>):stdgo.go.token.Token.Pos {
        return _x.struct_;
    }
}
class FuncType_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<FuncType>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.FuncType_asInterface) class FuncType_static_extension {
    @:keep
    static public function _exprNode( _:Ref<FuncType>):Void {}
    @:keep
    static public function end( _x:Ref<FuncType>):stdgo.go.token.Token.Pos {
        if (_x.results != null && ((_x.results : Dynamic).__nil__ == null || !(_x.results : Dynamic).__nil__)) {
            return _x.results.end();
        };
        return _x.params.end();
    }
    @:keep
    static public function pos( _x:Ref<FuncType>):stdgo.go.token.Token.Pos {
        if (_x.func.isValid() || ((_x.params == null) || (_x.params : Dynamic).__nil__)) {
            return _x.func;
        };
        return _x.params.pos();
    }
}
class InterfaceType_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<InterfaceType>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.InterfaceType_asInterface) class InterfaceType_static_extension {
    @:keep
    static public function _exprNode( _:Ref<InterfaceType>):Void {}
    @:keep
    static public function end( _x:Ref<InterfaceType>):stdgo.go.token.Token.Pos {
        return _x.methods.end();
    }
    @:keep
    static public function pos( _x:Ref<InterfaceType>):stdgo.go.token.Token.Pos {
        return _x.interface_;
    }
}
class MapType_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<MapType>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.MapType_asInterface) class MapType_static_extension {
    @:keep
    static public function _exprNode( _:Ref<MapType>):Void {}
    @:keep
    static public function end( _x:Ref<MapType>):stdgo.go.token.Token.Pos {
        return _x.value.end();
    }
    @:keep
    static public function pos( _x:Ref<MapType>):stdgo.go.token.Token.Pos {
        return _x.map;
    }
}
class ChanType_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<ChanType>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.ChanType_asInterface) class ChanType_static_extension {
    @:keep
    static public function _exprNode( _:Ref<ChanType>):Void {}
    @:keep
    static public function end( _x:Ref<ChanType>):stdgo.go.token.Token.Pos {
        return _x.value.end();
    }
    @:keep
    static public function pos( _x:Ref<ChanType>):stdgo.go.token.Token.Pos {
        return _x.begin;
    }
}
class BadStmt_asInterface {
    /**
        // stmtNode() ensures that only statement nodes can be
        // assigned to a Stmt.
    **/
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<BadStmt>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.BadStmt_asInterface) class BadStmt_static_extension {
    /**
        // stmtNode() ensures that only statement nodes can be
        // assigned to a Stmt.
    **/
    @:keep
    static public function _stmtNode( _:Ref<BadStmt>):Void {}
    @:keep
    static public function end( _s:Ref<BadStmt>):stdgo.go.token.Token.Pos {
        return _s.to;
    }
    @:keep
    static public function pos( _s:Ref<BadStmt>):stdgo.go.token.Token.Pos {
        return _s.from;
    }
}
class DeclStmt_asInterface {
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<DeclStmt>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.DeclStmt_asInterface) class DeclStmt_static_extension {
    @:keep
    static public function _stmtNode( _:Ref<DeclStmt>):Void {}
    @:keep
    static public function end( _s:Ref<DeclStmt>):stdgo.go.token.Token.Pos {
        return _s.decl.end();
    }
    @:keep
    static public function pos( _s:Ref<DeclStmt>):stdgo.go.token.Token.Pos {
        return _s.decl.pos();
    }
}
class EmptyStmt_asInterface {
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<EmptyStmt>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.EmptyStmt_asInterface) class EmptyStmt_static_extension {
    @:keep
    static public function _stmtNode( _:Ref<EmptyStmt>):Void {}
    @:keep
    static public function end( _s:Ref<EmptyStmt>):stdgo.go.token.Token.Pos {
        if (_s.implicit) {
            return _s.semicolon;
        };
        return _s.semicolon + (1 : stdgo.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _s:Ref<EmptyStmt>):stdgo.go.token.Token.Pos {
        return _s.semicolon;
    }
}
class LabeledStmt_asInterface {
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<LabeledStmt>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.LabeledStmt_asInterface) class LabeledStmt_static_extension {
    @:keep
    static public function _stmtNode( _:Ref<LabeledStmt>):Void {}
    @:keep
    static public function end( _s:Ref<LabeledStmt>):stdgo.go.token.Token.Pos {
        return _s.stmt.end();
    }
    @:keep
    static public function pos( _s:Ref<LabeledStmt>):stdgo.go.token.Token.Pos {
        return _s.label.pos();
    }
}
class ExprStmt_asInterface {
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<ExprStmt>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.ExprStmt_asInterface) class ExprStmt_static_extension {
    @:keep
    static public function _stmtNode( _:Ref<ExprStmt>):Void {}
    @:keep
    static public function end( _s:Ref<ExprStmt>):stdgo.go.token.Token.Pos {
        return _s.x.end();
    }
    @:keep
    static public function pos( _s:Ref<ExprStmt>):stdgo.go.token.Token.Pos {
        return _s.x.pos();
    }
}
class SendStmt_asInterface {
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<SendStmt>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.SendStmt_asInterface) class SendStmt_static_extension {
    @:keep
    static public function _stmtNode( _:Ref<SendStmt>):Void {}
    @:keep
    static public function end( _s:Ref<SendStmt>):stdgo.go.token.Token.Pos {
        return _s.value.end();
    }
    @:keep
    static public function pos( _s:Ref<SendStmt>):stdgo.go.token.Token.Pos {
        return _s.chan.pos();
    }
}
class IncDecStmt_asInterface {
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<IncDecStmt>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.IncDecStmt_asInterface) class IncDecStmt_static_extension {
    @:keep
    static public function _stmtNode( _:Ref<IncDecStmt>):Void {}
    @:keep
    static public function end( _s:Ref<IncDecStmt>):stdgo.go.token.Token.Pos {
        return _s.tokPos + (2 : stdgo.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _s:Ref<IncDecStmt>):stdgo.go.token.Token.Pos {
        return _s.x.pos();
    }
}
class AssignStmt_asInterface {
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<AssignStmt>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.AssignStmt_asInterface) class AssignStmt_static_extension {
    @:keep
    static public function _stmtNode( _:Ref<AssignStmt>):Void {}
    @:keep
    static public function end( _s:Ref<AssignStmt>):stdgo.go.token.Token.Pos {
        return _s.rhs[((_s.rhs.length) - (1 : GoInt) : GoInt)].end();
    }
    @:keep
    static public function pos( _s:Ref<AssignStmt>):stdgo.go.token.Token.Pos {
        return _s.lhs[(0 : GoInt)].pos();
    }
}
class GoStmt_asInterface {
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<GoStmt>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.GoStmt_asInterface) class GoStmt_static_extension {
    @:keep
    static public function _stmtNode( _:Ref<GoStmt>):Void {}
    @:keep
    static public function end( _s:Ref<GoStmt>):stdgo.go.token.Token.Pos {
        return _s.call.end();
    }
    @:keep
    static public function pos( _s:Ref<GoStmt>):stdgo.go.token.Token.Pos {
        return _s.go;
    }
}
class DeferStmt_asInterface {
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<DeferStmt>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.DeferStmt_asInterface) class DeferStmt_static_extension {
    @:keep
    static public function _stmtNode( _:Ref<DeferStmt>):Void {}
    @:keep
    static public function end( _s:Ref<DeferStmt>):stdgo.go.token.Token.Pos {
        return _s.call.end();
    }
    @:keep
    static public function pos( _s:Ref<DeferStmt>):stdgo.go.token.Token.Pos {
        return _s.defer;
    }
}
class ReturnStmt_asInterface {
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<ReturnStmt>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.ReturnStmt_asInterface) class ReturnStmt_static_extension {
    @:keep
    static public function _stmtNode( _:Ref<ReturnStmt>):Void {}
    @:keep
    static public function end( _s:Ref<ReturnStmt>):stdgo.go.token.Token.Pos {
        {
            var _n:GoInt = (_s.results.length);
            if (_n > (0 : GoInt)) {
                return _s.results[(_n - (1 : GoInt) : GoInt)].end();
            };
        };
        return _s.return_ + (6 : stdgo.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _s:Ref<ReturnStmt>):stdgo.go.token.Token.Pos {
        return _s.return_;
    }
}
class BranchStmt_asInterface {
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<BranchStmt>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.BranchStmt_asInterface) class BranchStmt_static_extension {
    @:keep
    static public function _stmtNode( _:Ref<BranchStmt>):Void {}
    @:keep
    static public function end( _s:Ref<BranchStmt>):stdgo.go.token.Token.Pos {
        if (_s.label != null && ((_s.label : Dynamic).__nil__ == null || !(_s.label : Dynamic).__nil__)) {
            return _s.label.end();
        };
        return ((_s.tokPos : GoInt) + ((_s.tok.string() : GoString).length) : stdgo.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _s:Ref<BranchStmt>):stdgo.go.token.Token.Pos {
        return _s.tokPos;
    }
}
class BlockStmt_asInterface {
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<BlockStmt>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.BlockStmt_asInterface) class BlockStmt_static_extension {
    @:keep
    static public function _stmtNode( _:Ref<BlockStmt>):Void {}
    @:keep
    static public function end( _s:Ref<BlockStmt>):stdgo.go.token.Token.Pos {
        if (_s.rbrace.isValid()) {
            return _s.rbrace + (1 : stdgo.go.token.Token.Pos);
        };
        {
            var _n:GoInt = (_s.list.length);
            if (_n > (0 : GoInt)) {
                return _s.list[(_n - (1 : GoInt) : GoInt)].end();
            };
        };
        return _s.lbrace + (1 : stdgo.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _s:Ref<BlockStmt>):stdgo.go.token.Token.Pos {
        return _s.lbrace;
    }
}
class IfStmt_asInterface {
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<IfStmt>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.IfStmt_asInterface) class IfStmt_static_extension {
    @:keep
    static public function _stmtNode( _:Ref<IfStmt>):Void {}
    @:keep
    static public function end( _s:Ref<IfStmt>):stdgo.go.token.Token.Pos {
        if (_s.else_ != null) {
            return _s.else_.end();
        };
        return _s.body.end();
    }
    @:keep
    static public function pos( _s:Ref<IfStmt>):stdgo.go.token.Token.Pos {
        return _s.if_;
    }
}
class CaseClause_asInterface {
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<CaseClause>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.CaseClause_asInterface) class CaseClause_static_extension {
    @:keep
    static public function _stmtNode( _:Ref<CaseClause>):Void {}
    @:keep
    static public function end( _s:Ref<CaseClause>):stdgo.go.token.Token.Pos {
        {
            var _n:GoInt = (_s.body.length);
            if (_n > (0 : GoInt)) {
                return _s.body[(_n - (1 : GoInt) : GoInt)].end();
            };
        };
        return _s.colon + (1 : stdgo.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _s:Ref<CaseClause>):stdgo.go.token.Token.Pos {
        return _s.case_;
    }
}
class SwitchStmt_asInterface {
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<SwitchStmt>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.SwitchStmt_asInterface) class SwitchStmt_static_extension {
    @:keep
    static public function _stmtNode( _:Ref<SwitchStmt>):Void {}
    @:keep
    static public function end( _s:Ref<SwitchStmt>):stdgo.go.token.Token.Pos {
        return _s.body.end();
    }
    @:keep
    static public function pos( _s:Ref<SwitchStmt>):stdgo.go.token.Token.Pos {
        return _s.switch_;
    }
}
class TypeSwitchStmt_asInterface {
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<TypeSwitchStmt>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.TypeSwitchStmt_asInterface) class TypeSwitchStmt_static_extension {
    @:keep
    static public function _stmtNode( _:Ref<TypeSwitchStmt>):Void {}
    @:keep
    static public function end( _s:Ref<TypeSwitchStmt>):stdgo.go.token.Token.Pos {
        return _s.body.end();
    }
    @:keep
    static public function pos( _s:Ref<TypeSwitchStmt>):stdgo.go.token.Token.Pos {
        return _s.switch_;
    }
}
class CommClause_asInterface {
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<CommClause>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.CommClause_asInterface) class CommClause_static_extension {
    @:keep
    static public function _stmtNode( _:Ref<CommClause>):Void {}
    @:keep
    static public function end( _s:Ref<CommClause>):stdgo.go.token.Token.Pos {
        {
            var _n:GoInt = (_s.body.length);
            if (_n > (0 : GoInt)) {
                return _s.body[(_n - (1 : GoInt) : GoInt)].end();
            };
        };
        return _s.colon + (1 : stdgo.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _s:Ref<CommClause>):stdgo.go.token.Token.Pos {
        return _s.case_;
    }
}
class SelectStmt_asInterface {
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<SelectStmt>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.SelectStmt_asInterface) class SelectStmt_static_extension {
    @:keep
    static public function _stmtNode( _:Ref<SelectStmt>):Void {}
    @:keep
    static public function end( _s:Ref<SelectStmt>):stdgo.go.token.Token.Pos {
        return _s.body.end();
    }
    @:keep
    static public function pos( _s:Ref<SelectStmt>):stdgo.go.token.Token.Pos {
        return _s.select;
    }
}
class ForStmt_asInterface {
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<ForStmt>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.ForStmt_asInterface) class ForStmt_static_extension {
    @:keep
    static public function _stmtNode( _:Ref<ForStmt>):Void {}
    @:keep
    static public function end( _s:Ref<ForStmt>):stdgo.go.token.Token.Pos {
        return _s.body.end();
    }
    @:keep
    static public function pos( _s:Ref<ForStmt>):stdgo.go.token.Token.Pos {
        return _s.for_;
    }
}
class RangeStmt_asInterface {
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<RangeStmt>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.RangeStmt_asInterface) class RangeStmt_static_extension {
    @:keep
    static public function _stmtNode( _:Ref<RangeStmt>):Void {}
    @:keep
    static public function end( _s:Ref<RangeStmt>):stdgo.go.token.Token.Pos {
        return _s.body.end();
    }
    @:keep
    static public function pos( _s:Ref<RangeStmt>):stdgo.go.token.Token.Pos {
        return _s.for_;
    }
}
class ImportSpec_asInterface {
    /**
        // specNode() ensures that only spec nodes can be
        // assigned to a Spec.
    **/
    @:keep
    public dynamic function _specNode():Void __self__.value._specNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<ImportSpec>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.ImportSpec_asInterface) class ImportSpec_static_extension {
    /**
        // specNode() ensures that only spec nodes can be
        // assigned to a Spec.
    **/
    @:keep
    static public function _specNode( _:Ref<ImportSpec>):Void {}
    @:keep
    static public function end( _s:Ref<ImportSpec>):stdgo.go.token.Token.Pos {
        if (_s.endPos != ((0 : stdgo.go.token.Token.Pos))) {
            return _s.endPos;
        };
        return _s.path.end();
    }
    @:keep
    static public function pos( _s:Ref<ImportSpec>):stdgo.go.token.Token.Pos {
        if (_s.name != null && ((_s.name : Dynamic).__nil__ == null || !(_s.name : Dynamic).__nil__)) {
            return _s.name.pos();
        };
        return _s.path.pos();
    }
}
class ValueSpec_asInterface {
    @:keep
    public dynamic function _specNode():Void __self__.value._specNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<ValueSpec>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.ValueSpec_asInterface) class ValueSpec_static_extension {
    @:keep
    static public function _specNode( _:Ref<ValueSpec>):Void {}
    @:keep
    static public function end( _s:Ref<ValueSpec>):stdgo.go.token.Token.Pos {
        {
            var _n:GoInt = (_s.values.length);
            if (_n > (0 : GoInt)) {
                return _s.values[(_n - (1 : GoInt) : GoInt)].end();
            };
        };
        if (_s.type != null) {
            return _s.type.end();
        };
        return _s.names[((_s.names.length) - (1 : GoInt) : GoInt)].end();
    }
    @:keep
    static public function pos( _s:Ref<ValueSpec>):stdgo.go.token.Token.Pos {
        return _s.names[(0 : GoInt)].pos();
    }
}
class TypeSpec_asInterface {
    @:keep
    public dynamic function _specNode():Void __self__.value._specNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<TypeSpec>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.TypeSpec_asInterface) class TypeSpec_static_extension {
    @:keep
    static public function _specNode( _:Ref<TypeSpec>):Void {}
    @:keep
    static public function end( _s:Ref<TypeSpec>):stdgo.go.token.Token.Pos {
        return _s.type.end();
    }
    @:keep
    static public function pos( _s:Ref<TypeSpec>):stdgo.go.token.Token.Pos {
        return _s.name.pos();
    }
}
class BadDecl_asInterface {
    /**
        // declNode() ensures that only declaration nodes can be
        // assigned to a Decl.
    **/
    @:keep
    public dynamic function _declNode():Void __self__.value._declNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<BadDecl>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.BadDecl_asInterface) class BadDecl_static_extension {
    /**
        // declNode() ensures that only declaration nodes can be
        // assigned to a Decl.
    **/
    @:keep
    static public function _declNode( _:Ref<BadDecl>):Void {}
    @:keep
    static public function end( _d:Ref<BadDecl>):stdgo.go.token.Token.Pos {
        return _d.to;
    }
    @:keep
    static public function pos( _d:Ref<BadDecl>):stdgo.go.token.Token.Pos {
        return _d.from;
    }
}
class GenDecl_asInterface {
    @:keep
    public dynamic function _declNode():Void __self__.value._declNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<GenDecl>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.GenDecl_asInterface) class GenDecl_static_extension {
    @:keep
    static public function _declNode( _:Ref<GenDecl>):Void {}
    @:keep
    static public function end( _d:Ref<GenDecl>):stdgo.go.token.Token.Pos {
        if (_d.rparen.isValid()) {
            return _d.rparen + (1 : stdgo.go.token.Token.Pos);
        };
        return _d.specs[(0 : GoInt)].end();
    }
    @:keep
    static public function pos( _d:Ref<GenDecl>):stdgo.go.token.Token.Pos {
        return _d.tokPos;
    }
}
class FuncDecl_asInterface {
    @:keep
    public dynamic function _declNode():Void __self__.value._declNode();
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<FuncDecl>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.FuncDecl_asInterface) class FuncDecl_static_extension {
    @:keep
    static public function _declNode( _:Ref<FuncDecl>):Void {}
    @:keep
    static public function end( _d:Ref<FuncDecl>):stdgo.go.token.Token.Pos {
        if (_d.body != null && ((_d.body : Dynamic).__nil__ == null || !(_d.body : Dynamic).__nil__)) {
            return _d.body.end();
        };
        return _d.type.end();
    }
    @:keep
    static public function pos( _d:Ref<FuncDecl>):stdgo.go.token.Token.Pos {
        return _d.type.pos();
    }
}
class File_asInterface {
    /**
        // End returns the end of the last declaration in the file.
        // (Use FileEnd for the end of the entire file.)
    **/
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    /**
        // Pos returns the position of the package declaration.
        // (Use FileStart for the start of the entire file.)
    **/
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<File>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.File_asInterface) class File_static_extension {
    /**
        // End returns the end of the last declaration in the file.
        // (Use FileEnd for the end of the entire file.)
    **/
    @:keep
    static public function end( _f:Ref<File>):stdgo.go.token.Token.Pos {
        {
            var _n:GoInt = (_f.decls.length);
            if (_n > (0 : GoInt)) {
                return _f.decls[(_n - (1 : GoInt) : GoInt)].end();
            };
        };
        return _f.name.end();
    }
    /**
        // Pos returns the position of the package declaration.
        // (Use FileStart for the start of the entire file.)
    **/
    @:keep
    static public function pos( _f:Ref<File>):stdgo.go.token.Token.Pos {
        return _f.package_;
    }
}
class Package_asInterface {
    @:keep
    public dynamic function end():stdgo.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Package>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.Package_asInterface) class Package_static_extension {
    @:keep
    static public function end( _p:Ref<Package>):stdgo.go.token.Token.Pos {
        return (0 : stdgo.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _p:Ref<Package>):stdgo.go.token.Token.Pos {
        return (0 : stdgo.go.token.Token.Pos);
    }
}
class T_commentListReader_asInterface {
    @:keep
    public dynamic function _next():Void __self__.value._next();
    @:keep
    public dynamic function _eol():Bool return __self__.value._eol();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_commentListReader>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.T_commentListReader_asInterface) class T_commentListReader_static_extension {
    @:keep
    static public function _next( _r:Ref<T_commentListReader>):Void {
        if (!_r._eol()) {
            _r._comment = _r._list[(_r._index : GoInt)];
            _r._pos = _r._fset.position(_r._comment.pos()).__copy__();
            _r._end = _r._fset.position(_r._comment.end()).__copy__();
            _r._index++;
        };
    }
    @:keep
    static public function _eol( _r:Ref<T_commentListReader>):Bool {
        return _r._index >= (_r._list.length);
    }
}
class T_printer_asInterface {
    @:keep
    public dynamic function _print(_x:stdgo.reflect.Reflect.Value):Void __self__.value._print(_x);
    /**
        // printf is a convenience wrapper that takes care of print errors.
    **/
    @:keep
    public dynamic function _printf(_format:GoString, _args:haxe.Rest<AnyInterface>):Void __self__.value._printf(_format, ..._args);
    @:keep
    public dynamic function write(_data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.write(_data);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_printer>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.T_printer_asInterface) class T_printer_static_extension {
    @:keep
    static public function _print( _p:Ref<T_printer>, _x:stdgo.reflect.Reflect.Value):Void {
        if (!notNilFilter(Go.str(), _x.__copy__())) {
            _p._printf(("nil" : GoString));
            return;
        };
        {
            final __value__ = _x.kind();
            if (__value__ == ((("20" : GoUInt) : stdgo.reflect.Reflect.Kind))) {
                _p._print(_x.elem().__copy__());
            } else if (__value__ == ((("21" : GoUInt) : stdgo.reflect.Reflect.Kind))) {
                _p._printf(("%s (len = %d) {" : GoString), Go.toInterface(_x.type()), Go.toInterface(_x.len()));
                if (_x.len() > (0 : GoInt)) {
                    _p._indent++;
                    _p._printf(("\n" : GoString));
                    for (_8 => _key in _x.mapKeys()) {
                        _p._print(_key.__copy__());
                        _p._printf((": " : GoString));
                        _p._print(_x.mapIndex(_key.__copy__()).__copy__());
                        _p._printf(("\n" : GoString));
                    };
                    _p._indent--;
                };
                _p._printf(("}" : GoString));
            } else if (__value__ == ((("22" : GoUInt) : stdgo.reflect.Reflect.Kind))) {
                _p._printf(("*" : GoString));
                var _ptr:AnyInterface = _x.interface_();
                {
                    var __tmp__ = (_p._ptrmap != null && _p._ptrmap.__exists__(_ptr) ? { value : _p._ptrmap[_ptr], ok : true } : { value : (0 : GoInt), ok : false }), _line:GoInt = __tmp__.value, _exists:Bool = __tmp__.ok;
                    if (_exists) {
                        _p._printf(("(obj @ %d)" : GoString), Go.toInterface(_line));
                    } else {
                        _p._ptrmap[_ptr] = _p._line;
                        _p._print(_x.elem().__copy__());
                    };
                };
            } else if (__value__ == ((("17" : GoUInt) : stdgo.reflect.Reflect.Kind))) {
                _p._printf(("%s {" : GoString), Go.toInterface(_x.type()));
                if (_x.len() > (0 : GoInt)) {
                    _p._indent++;
                    _p._printf(("\n" : GoString));
                    {
                        var _0:GoInt = (0 : GoInt), _1:GoInt = _x.len(), _n:GoInt = _1, _i:GoInt = _0;
                        Go.cfor(_i < _n, _i++, {
                            _p._printf(("%d: " : GoString), Go.toInterface(_i));
                            _p._print(_x.index(_i).__copy__());
                            _p._printf(("\n" : GoString));
                        });
                    };
                    _p._indent--;
                };
                _p._printf(("}" : GoString));
            } else if (__value__ == ((("23" : GoUInt) : stdgo.reflect.Reflect.Kind))) {
                {
                    var __tmp__ = try {
                        { value : (Go.typeAssert((_x.interface_() : Slice<GoByte>)) : Slice<GoByte>), ok : true };
                    } catch(_) {
                        { value : (null : Slice<GoUInt8>), ok : false };
                    }, _s = __tmp__.value, _ok = __tmp__.ok;
                    if (_ok) {
                        _p._printf(("%#q" : GoString), Go.toInterface(_s));
                        return;
                    };
                };
                _p._printf(("%s (len = %d) {" : GoString), Go.toInterface(_x.type()), Go.toInterface(_x.len()));
                if (_x.len() > (0 : GoInt)) {
                    _p._indent++;
                    _p._printf(("\n" : GoString));
                    {
                        var _0:GoInt = (0 : GoInt), _1:GoInt = _x.len(), _n:GoInt = _1, _i:GoInt = _0;
                        Go.cfor(_i < _n, _i++, {
                            _p._printf(("%d: " : GoString), Go.toInterface(_i));
                            _p._print(_x.index(_i).__copy__());
                            _p._printf(("\n" : GoString));
                        });
                    };
                    _p._indent--;
                };
                _p._printf(("}" : GoString));
            } else if (__value__ == ((("25" : GoUInt) : stdgo.reflect.Reflect.Kind))) {
                var _t:stdgo.reflect.Reflect.Type = _x.type();
                _p._printf(("%s {" : GoString), Go.toInterface(_t));
                _p._indent++;
                var _first:Bool = true;
                {
                    var _0:GoInt = (0 : GoInt), _1:GoInt = _t.numField(), _n:GoInt = _1, _i:GoInt = _0;
                    Go.cfor(_i < _n, _i++, {
                        {
                            var _name:GoString = _t.field(_i).name;
                            if (isExported(_name)) {
                                var _value:stdgo.reflect.Reflect.Value = _x.field(_i).__copy__();
                                if ((_p._filter == null) || _p._filter(_name, _value.__copy__())) {
                                    if (_first) {
                                        _p._printf(("\n" : GoString));
                                        _first = false;
                                    };
                                    _p._printf(("%s: " : GoString), Go.toInterface(_name));
                                    _p._print(_value.__copy__());
                                    _p._printf(("\n" : GoString));
                                };
                            };
                        };
                    });
                };
                _p._indent--;
                _p._printf(("}" : GoString));
            } else {
                var _v:AnyInterface = _x.interface_();
                {
                    final __type__ = _v;
                    if (Go.typeEquals((__type__ : GoString))) {
                        var _v:GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
                        _p._printf(("%q" : GoString), Go.toInterface(_v));
                        return;
                    } else if (Go.typeEquals((__type__ : stdgo.go.token.Token.Pos))) {
                        var _v:stdgo.go.token.Token.Pos = __type__ == null ? ((0 : GoInt) : stdgo.go.token.Token.Pos) : __type__.__underlying__() == null ? ((0 : GoInt) : stdgo.go.token.Token.Pos) : __type__ == null ? ((0 : GoInt) : stdgo.go.token.Token.Pos) : __type__.__underlying__().value;
                        if (_p._fset != null && ((_p._fset : Dynamic).__nil__ == null || !(_p._fset : Dynamic).__nil__)) {
                            _p._printf(("%s" : GoString), Go.toInterface(Go.asInterface(_p._fset.position(_v))));
                            return;
                        };
                    };
                };
                _p._printf(("%v" : GoString), _v);
            };
        };
    }
    /**
        // printf is a convenience wrapper that takes care of print errors.
    **/
    @:keep
    static public function _printf( _p:Ref<T_printer>, _format:GoString, _args:haxe.Rest<AnyInterface>):Void {
        var _args = new Slice<AnyInterface>(0, 0, ..._args);
        {
            var __tmp__ = stdgo.fmt.Fmt.fprintf(Go.asInterface(_p), _format, ..._args.__toArray__()), _0:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                throw Go.toInterface((new T_localError(_err) : T_localError));
            };
        };
    }
    @:keep
    static public function write( _p:Ref<T_printer>, _data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
        var _m:GoInt = (0 : GoInt);
        for (_i => _b in _data) {
            if (_b == ((10 : GoUInt8))) {
                {
                    var __tmp__ = _p._output.write((_data.__slice__(_n, _i + (1 : GoInt)) : Slice<GoUInt8>));
                    _m = __tmp__._0;
                    _err = __tmp__._1;
                };
                _n = _n + (_m);
                if (_err != null) {
                    return { _0 : _n, _1 : _err };
                };
                _p._line++;
            } else if (_p._last == ((10 : GoUInt8))) {
                {
                    var __tmp__ = stdgo.fmt.Fmt.fprintf(_p._output, ("%6d  " : GoString), Go.toInterface(_p._line));
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : _n, _1 : _err };
                };
                {
                    var _j:GoInt = _p._indent;
                    Go.cfor(_j > (0 : GoInt), _j--, {
                        {
                            var __tmp__ = _p._output.write(_indent);
                            _err = __tmp__._1;
                        };
                        if (_err != null) {
                            return { _0 : _n, _1 : _err };
                        };
                    });
                };
            };
            _p._last = _b;
        };
        if ((_data.length) > _n) {
            {
                var __tmp__ = _p._output.write((_data.__slice__(_n) : Slice<GoUInt8>));
                _m = __tmp__._0;
                _err = __tmp__._1;
            };
            _n = _n + (_m);
        };
        return { _0 : _n, _1 : _err };
    }
}
class T_pkgBuilder_asInterface {
    @:keep
    public dynamic function _declare(_scope:Ref<Scope>, _altScope:Ref<Scope>, _obj:Ref<Object>):Void __self__.value._declare(_scope, _altScope, _obj);
    @:keep
    public dynamic function _errorf(_pos:stdgo.go.token.Token.Pos, _format:GoString, _args:haxe.Rest<AnyInterface>):Void __self__.value._errorf(_pos, _format, ..._args);
    @:keep
    public dynamic function _error(_pos:stdgo.go.token.Token.Pos, _msg:GoString):Void __self__.value._error(_pos, _msg);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_pkgBuilder>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.T_pkgBuilder_asInterface) class T_pkgBuilder_static_extension {
    @:keep
    static public function _declare( _p:Ref<T_pkgBuilder>, _scope:Ref<Scope>, _altScope:Ref<Scope>, _obj:Ref<Object>):Void {
        var _alt = _scope.insert(_obj);
        if ((_alt == null) || (_alt : Dynamic).__nil__ && ((_altScope != null) && ((_altScope : Dynamic).__nil__ == null || !(_altScope : Dynamic).__nil__))) {
            _alt = _altScope.lookup(_obj.name);
        };
        if (_alt != null && ((_alt : Dynamic).__nil__ == null || !(_alt : Dynamic).__nil__)) {
            var _prevDecl:GoString = Go.str();
            {
                var _pos:stdgo.go.token.Token.Pos = _alt.pos();
                if (_pos.isValid()) {
                    _prevDecl = stdgo.fmt.Fmt.sprintf(("\n\tprevious declaration at %s" : GoString), Go.toInterface(Go.asInterface(_p._fset.position(_pos))));
                };
            };
            _p._error(_obj.pos(), stdgo.fmt.Fmt.sprintf(("%s redeclared in this block%s" : GoString), Go.toInterface(_obj.name), Go.toInterface(_prevDecl)));
        };
    }
    @:keep
    static public function _errorf( _p:Ref<T_pkgBuilder>, _pos:stdgo.go.token.Token.Pos, _format:GoString, _args:haxe.Rest<AnyInterface>):Void {
        var _args = new Slice<AnyInterface>(0, 0, ..._args);
        _p._error(_pos, stdgo.fmt.Fmt.sprintf(_format, ..._args.__toArray__()));
    }
    @:keep
    static public function _error( _p:Ref<T_pkgBuilder>, _pos:stdgo.go.token.Token.Pos, _msg:GoString):Void {
        _p._errors.add(_p._fset.position(_pos).__copy__(), _msg);
    }
}
class Scope_asInterface {
    /**
        // Debugging support
    **/
    @:keep
    public dynamic function string():GoString return __self__.value.string();
    /**
        // Insert attempts to insert a named object obj into the scope s.
        // If the scope already contains an object alt with the same name,
        // Insert leaves the scope unchanged and returns alt. Otherwise
        // it inserts obj and returns nil.
    **/
    @:keep
    public dynamic function insert(_obj:Ref<Object>):Ref<Object> return __self__.value.insert(_obj);
    /**
        // Lookup returns the object with the given name if it is
        // found in scope s, otherwise it returns nil. Outer scopes
        // are ignored.
    **/
    @:keep
    public dynamic function lookup(_name:GoString):Ref<Object> return __self__.value.lookup(_name);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Scope>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.Scope_asInterface) class Scope_static_extension {
    /**
        // Debugging support
    **/
    @:keep
    static public function string( _s:Ref<Scope>):GoString {
        var _buf:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
        stdgo.fmt.Fmt.fprintf(Go.asInterface((Go.setRef(_buf) : Ref<stdgo.strings.Strings.Builder>)), ("scope %p {" : GoString), Go.toInterface(Go.asInterface(_s)));
        if (((_s != null) && ((_s : Dynamic).__nil__ == null || !(_s : Dynamic).__nil__)) && (_s.objects.length > (0 : GoInt))) {
            stdgo.fmt.Fmt.fprintln(Go.asInterface((Go.setRef(_buf) : Ref<stdgo.strings.Strings.Builder>)));
            for (_0 => _obj in _s.objects) {
                stdgo.fmt.Fmt.fprintf(Go.asInterface((Go.setRef(_buf) : Ref<stdgo.strings.Strings.Builder>)), ("\t%s %s\n" : GoString), Go.toInterface(Go.asInterface(_obj.kind)), Go.toInterface(_obj.name));
            };
        };
        stdgo.fmt.Fmt.fprintf(Go.asInterface((Go.setRef(_buf) : Ref<stdgo.strings.Strings.Builder>)), ("}\n" : GoString));
        return (_buf.string() : GoString);
    }
    /**
        // Insert attempts to insert a named object obj into the scope s.
        // If the scope already contains an object alt with the same name,
        // Insert leaves the scope unchanged and returns alt. Otherwise
        // it inserts obj and returns nil.
    **/
    @:keep
    static public function insert( _s:Ref<Scope>, _obj:Ref<Object>):Ref<Object> {
        var _alt:Ref<Object> = (null : Ref<Object>);
        {
            _alt = _s.objects[_obj.name];
            if (_alt == null || (_alt : Dynamic).__nil__) {
                _s.objects[_obj.name] = _obj;
            };
        };
        return _alt;
    }
    /**
        // Lookup returns the object with the given name if it is
        // found in scope s, otherwise it returns nil. Outer scopes
        // are ignored.
    **/
    @:keep
    static public function lookup( _s:Ref<Scope>, _name:GoString):Ref<Object> {
        return _s.objects[_name];
    }
}
class Object_asInterface {
    /**
        // Pos computes the source position of the declaration of an object name.
        // The result may be an invalid position if it cannot be computed
        // (obj.Decl may be nil or not correct).
    **/
    @:keep
    public dynamic function pos():stdgo.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Object>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.Object_asInterface) class Object_static_extension {
    /**
        // Pos computes the source position of the declaration of an object name.
        // The result may be an invalid position if it cannot be computed
        // (obj.Decl may be nil or not correct).
    **/
    @:keep
    static public function pos( _obj:Ref<Object>):stdgo.go.token.Token.Pos {
        var _name:GoString = _obj.name;
        {
            final __type__ = _obj.decl;
            if (Go.typeEquals((__type__ : Ref<Field>))) {
                var _d:Ref<Field> = __type__ == null ? (null : Ref<Field>) : __type__.__underlying__() == null ? (null : Ref<Field>) : __type__ == null ? (null : Ref<Field>) : __type__.__underlying__().value;
                for (_0 => _n in _d.names) {
                    if (_n.name == (_name)) {
                        return _n.pos();
                    };
                };
            } else if (Go.typeEquals((__type__ : Ref<ImportSpec>))) {
                var _d:Ref<ImportSpec> = __type__ == null ? (null : Ref<ImportSpec>) : __type__.__underlying__() == null ? (null : Ref<ImportSpec>) : __type__ == null ? (null : Ref<ImportSpec>) : __type__.__underlying__().value;
                if (((_d.name != null) && ((_d.name : Dynamic).__nil__ == null || !(_d.name : Dynamic).__nil__)) && (_d.name.name == _name)) {
                    return _d.name.pos();
                };
                return _d.path.pos();
            } else if (Go.typeEquals((__type__ : Ref<ValueSpec>))) {
                var _d:Ref<ValueSpec> = __type__ == null ? (null : Ref<ValueSpec>) : __type__.__underlying__() == null ? (null : Ref<ValueSpec>) : __type__ == null ? (null : Ref<ValueSpec>) : __type__.__underlying__().value;
                for (_1 => _n in _d.names) {
                    if (_n.name == (_name)) {
                        return _n.pos();
                    };
                };
            } else if (Go.typeEquals((__type__ : Ref<TypeSpec>))) {
                var _d:Ref<TypeSpec> = __type__ == null ? (null : Ref<TypeSpec>) : __type__.__underlying__() == null ? (null : Ref<TypeSpec>) : __type__ == null ? (null : Ref<TypeSpec>) : __type__.__underlying__().value;
                if (_d.name.name == (_name)) {
                    return _d.name.pos();
                };
            } else if (Go.typeEquals((__type__ : Ref<FuncDecl>))) {
                var _d:Ref<FuncDecl> = __type__ == null ? (null : Ref<FuncDecl>) : __type__.__underlying__() == null ? (null : Ref<FuncDecl>) : __type__ == null ? (null : Ref<FuncDecl>) : __type__.__underlying__().value;
                if (_d.name.name == (_name)) {
                    return _d.name.pos();
                };
            } else if (Go.typeEquals((__type__ : Ref<LabeledStmt>))) {
                var _d:Ref<LabeledStmt> = __type__ == null ? (null : Ref<LabeledStmt>) : __type__.__underlying__() == null ? (null : Ref<LabeledStmt>) : __type__ == null ? (null : Ref<LabeledStmt>) : __type__.__underlying__().value;
                if (_d.label.name == (_name)) {
                    return _d.label.pos();
                };
            } else if (Go.typeEquals((__type__ : Ref<AssignStmt>))) {
                var _d:Ref<AssignStmt> = __type__ == null ? (null : Ref<AssignStmt>) : __type__.__underlying__() == null ? (null : Ref<AssignStmt>) : __type__ == null ? (null : Ref<AssignStmt>) : __type__.__underlying__().value;
                for (_2 => _x in _d.lhs) {
                    {
                        var __tmp__ = try {
                            { value : (Go.typeAssert((Go.toInterface(_x) : Ref<Ident>)) : Ref<Ident>), ok : true };
                        } catch(_) {
                            { value : (null : Ref<Ident>), ok : false };
                        }, _ident = __tmp__.value, _isIdent = __tmp__.ok;
                        if (_isIdent && (_ident.name == _name)) {
                            return _ident.pos();
                        };
                    };
                };
            } else if (Go.typeEquals((__type__ : Ref<Scope>))) {
                var _d:Ref<Scope> = __type__ == null ? (null : Ref<Scope>) : __type__.__underlying__() == null ? (null : Ref<Scope>) : __type__ == null ? (null : Ref<Scope>) : __type__.__underlying__().value;
            };
        };
        return (0 : stdgo.go.token.Token.Pos);
    }
}
class T_byPos_asInterface {
    @:keep
    public dynamic function swap(_i:GoInt, _j:GoInt):Void __self__.value.swap(_i, _j);
    @:keep
    public dynamic function less(_i:GoInt, _j:GoInt):Bool return __self__.value.less(_i, _j);
    @:keep
    public dynamic function len():GoInt return __self__.value.len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_byPos>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.T_byPos_asInterface) class T_byPos_static_extension {
    @:keep
    static public function swap( _a:T_byPos, _i:GoInt, _j:GoInt):Void {
        {
            final __tmp__0 = _a[(_j : GoInt)];
            final __tmp__1 = _a[(_i : GoInt)];
            _a[(_i : GoInt)] = __tmp__0;
            _a[(_j : GoInt)] = __tmp__1;
        };
    }
    @:keep
    static public function less( _a:T_byPos, _i:GoInt, _j:GoInt):Bool {
        return _a[(_i : GoInt)].pos() < _a[(_j : GoInt)].pos();
    }
    @:keep
    static public function len( _a:T_byPos):GoInt {
        return (_a.length);
    }
}
class CommentMap_asInterface {
    @:keep
    public dynamic function string():GoString return __self__.value.string();
    /**
        // Comments returns the list of comment groups in the comment map.
        // The result is sorted in source order.
    **/
    @:keep
    public dynamic function comments():Slice<Ref<CommentGroup>> return __self__.value.comments();
    /**
        // Filter returns a new comment map consisting of only those
        // entries of cmap for which a corresponding node exists in
        // the AST specified by node.
    **/
    @:keep
    public dynamic function filter(_node:Node):CommentMap return __self__.value.filter(_node);
    /**
        // Update replaces an old node in the comment map with the new node
        // and returns the new node. Comments that were associated with the
        // old node are associated with the new node.
    **/
    @:keep
    public dynamic function update(_old:Node, _new:Node):Node return __self__.value.update(_old, _new);
    @:keep
    public dynamic function _addComment(_n:Node, _c:Ref<CommentGroup>):Void __self__.value._addComment(_n, _c);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<CommentMap>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.CommentMap_asInterface) class CommentMap_static_extension {
    @:keep
    static public function string( _cmap:CommentMap):GoString {
        var _nodes:Slice<Node> = (null : Slice<Node>);
        for (_node => _ in _cmap) {
            _nodes = _nodes.__appendref__(_node);
        };
        stdgo.sort.Sort.sort(Go.asInterface((_nodes : T_byInterval)));
        var _buf:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
        stdgo.fmt.Fmt.fprintln(Go.asInterface((Go.setRef(_buf) : Ref<stdgo.strings.Strings.Builder>)), Go.toInterface(("CommentMap {" : GoString)));
        for (_0 => _node in _nodes) {
            var _comment = _cmap[_node];
            var _s:GoString = ("" : GoString);
            {
                var __tmp__ = try {
                    { value : (Go.typeAssert((Go.toInterface(_node) : Ref<Ident>)) : Ref<Ident>), ok : true };
                } catch(_) {
                    { value : (null : Ref<Ident>), ok : false };
                }, _ident = __tmp__.value, _ok = __tmp__.ok;
                if (_ok) {
                    _s = _ident.name;
                } else {
                    _s = stdgo.fmt.Fmt.sprintf(("%T" : GoString), Go.toInterface(_node));
                };
            };
            stdgo.fmt.Fmt.fprintf(Go.asInterface((Go.setRef(_buf) : Ref<stdgo.strings.Strings.Builder>)), ("\t%p  %20s:  %s\n" : GoString), Go.toInterface(_node), Go.toInterface(_s), Go.toInterface(_summary(_comment)));
        };
        stdgo.fmt.Fmt.fprintln(Go.asInterface((Go.setRef(_buf) : Ref<stdgo.strings.Strings.Builder>)), Go.toInterface(("}" : GoString)));
        return (_buf.string() : GoString);
    }
    /**
        // Comments returns the list of comment groups in the comment map.
        // The result is sorted in source order.
    **/
    @:keep
    static public function comments( _cmap:CommentMap):Slice<Ref<CommentGroup>> {
        var _list = new Slice<Ref<CommentGroup>>((0 : GoInt).toBasic(), (_cmap.length), ...[for (i in 0 ... (0 : GoInt).toBasic()) (null : Ref<CommentGroup>)]);
        for (_0 => _e in _cmap) {
            _list = _list.__appendref__(..._e.__toArray__());
        };
        _sortComments(_list);
        return _list;
    }
    /**
        // Filter returns a new comment map consisting of only those
        // entries of cmap for which a corresponding node exists in
        // the AST specified by node.
    **/
    @:keep
    static public function filter( _cmap:CommentMap, _node:Node):CommentMap {
        var _umap:CommentMap = (new GoObjectMap<Node, Slice<Ref<CommentGroup>>>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("CommentMap", [], stdgo.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("Node", [], stdgo.internal.reflect.Reflect.GoType.named("Node", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }), false, { get : () -> null }) }, { get : () -> stdgo.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("CommentGroup", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "list", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("Comment", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "slash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.token.Token.Pos", [], stdgo.internal.reflect.Reflect.GoType.basic(int_kind), false, { get : () -> null }) }, optional : false }, { name : "text", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }]), false, { get : () -> null }) }) }) }, optional : false }]), false, { get : () -> null }) }) }) }), false, { get : () -> null }))) : CommentMap);
        inspect(_node, function(_n:Node):Bool {
            {
                var _g = _cmap[_n];
                if ((_g.length) > (0 : GoInt)) {
                    _umap[_n] = _g;
                };
            };
            return true;
        });
        return _umap;
    }
    /**
        // Update replaces an old node in the comment map with the new node
        // and returns the new node. Comments that were associated with the
        // old node are associated with the new node.
    **/
    @:keep
    static public function update( _cmap:CommentMap, _old:Node, _new:Node):Node {
        {
            var _list = _cmap[_old];
            if ((_list.length) > (0 : GoInt)) {
                if (_cmap != null) _cmap.__remove__(_old);
                _cmap[_new] = _cmap[_new].__appendref__(..._list.__toArray__());
            };
        };
        return _new;
    }
    @:keep
    static public function _addComment( _cmap:CommentMap, _n:Node, _c:Ref<CommentGroup>):Void {
        var _list = _cmap[_n];
        if ((_list.length) == ((0 : GoInt))) {
            _list = (new Slice<Ref<CommentGroup>>(0, 0, _c) : Slice<Ref<CommentGroup>>);
        } else {
            _list = _list.__appendref__(_c);
        };
        _cmap[_n] = _list;
    }
}
class T_byInterval_asInterface {
    @:keep
    public dynamic function swap(_i:GoInt, _j:GoInt):Void __self__.value.swap(_i, _j);
    @:keep
    public dynamic function less(_i:GoInt, _j:GoInt):Bool return __self__.value.less(_i, _j);
    @:keep
    public dynamic function len():GoInt return __self__.value.len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_byInterval>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.T_byInterval_asInterface) class T_byInterval_static_extension {
    @:keep
    static public function swap( _a:T_byInterval, _i:GoInt, _j:GoInt):Void {
        {
            final __tmp__0 = _a[(_j : GoInt)];
            final __tmp__1 = _a[(_i : GoInt)];
            _a[(_i : GoInt)] = __tmp__0;
            _a[(_j : GoInt)] = __tmp__1;
        };
    }
    @:keep
    static public function less( _a:T_byInterval, _i:GoInt, _j:GoInt):Bool {
        var _0:stdgo.go.token.Token.Pos = _a[(_i : GoInt)].pos(), _1:stdgo.go.token.Token.Pos = _a[(_j : GoInt)].pos(), _pj:stdgo.go.token.Token.Pos = _1, _pi:stdgo.go.token.Token.Pos = _0;
        return (_pi < _pj) || ((_pi == _pj) && (_a[(_i : GoInt)].end() > _a[(_j : GoInt)].end()));
    }
    @:keep
    static public function len( _a:T_byInterval):GoInt {
        return (_a.length);
    }
}
class T_nodeStack_asInterface {
    /**
        // pop pops all nodes that appear lexically before pos
        // (i.e., whose lexical extent has ended before or at pos).
        // It returns the last node popped.
    **/
    @:keep
    public dynamic function _pop(_pos:stdgo.go.token.Token.Pos):Node return __self__.value._pop(_pos);
    /**
        // push pops all nodes that appear lexically before n
        // and then pushes n on the stack.
    **/
    @:keep
    public dynamic function _push(_n:Node):Void __self__.value._push(_n);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_nodeStack>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.T_nodeStack_asInterface) class T_nodeStack_static_extension {
    /**
        // pop pops all nodes that appear lexically before pos
        // (i.e., whose lexical extent has ended before or at pos).
        // It returns the last node popped.
    **/
    @:keep
    static public function _pop( _s:Ref<T_nodeStack>, _pos:stdgo.go.token.Token.Pos):Node {
        var _top:Node = (null : Node);
        var _i:GoInt = ((_s : T_nodeStack).length);
        while ((_i > (0 : GoInt)) && (((_s : T_nodeStack))[(_i - (1 : GoInt) : GoInt)].end() <= _pos)) {
            _top = ((_s : T_nodeStack))[(_i - (1 : GoInt) : GoInt)];
            _i--;
        };
        _s.__setData__((((_s : T_nodeStack)).__slice__((0 : GoInt), _i) : T_nodeStack));
        return _top;
    }
    /**
        // push pops all nodes that appear lexically before n
        // and then pushes n on the stack.
    **/
    @:keep
    static public function _push( _s:Ref<T_nodeStack>, _n:Node):Void {
        _s._pop(_n.pos());
        _s.__setData__((((_s : T_nodeStack)).__append__(_n)));
    }
}
class ObjKind_asInterface {
    @:keep
    public dynamic function string():GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<ObjKind>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.ObjKind_asInterface) class ObjKind_static_extension {
    @:keep
    static public function string( _kind:ObjKind):GoString {
        return _objKindStrings[(_kind : GoInt)];
    }
}
class T_inspector_asInterface {
    @:keep
    public dynamic function visit(_node:Node):Visitor return __self__.value.visit(_node);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_inspector>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.ast.Ast.T_inspector_asInterface) class T_inspector_static_extension {
    @:keep
    static public function visit( _f:T_inspector, _node:Node):Visitor {
        if (_f(_node)) {
            return Go.asInterface(_f);
        };
        return (null : Visitor);
    }
}
