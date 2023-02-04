package stdgo.go.internal.typeparams;

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
	// Package typeparams provides functions to work with type parameter data
	// stored in the AST, while these AST changes are guarded by a build
	// constraint.
**/
private var __go2hxdoc__package:Bool;

/**
	// Disallow eliding 'interface' in constraint type sets.// 'Hidden' parser modes to control the parsing of type-parameter related
	// features.
**/
final disallowTypeSets:GoUInt64 = ("536870912" : GoUInt64);

/**
	// Disallow type parameters entirely.// 'Hidden' parser modes to control the parsing of type-parameter related
	// features.
**/
final disallowParsing:GoUInt64 = ("1073741824" : GoUInt64);

/**
	// IndexExpr wraps an ast.IndexExpr or ast.IndexListExpr.
	//
	// Orig holds the original ast.Expr from which this IndexExpr was derived.
**/
@:structInit @:using(go.internal.typeparams.Typeparams.IndexExpr_static_extension) class IndexExpr {
	public var orig:stdgo.go.ast.Ast.Expr = (null : stdgo.go.ast.Ast.Expr);
	@:embedded
	public var indexListExpr:Ref<stdgo.go.ast.Ast.IndexListExpr> = (null : Ref<stdgo.go.ast.Ast.IndexListExpr>);

	public function new(?orig:stdgo.go.ast.Ast.Expr, ?indexListExpr:Ref<stdgo.go.ast.Ast.IndexListExpr>) {
		if (orig != null)
			this.orig = orig;
		if (indexListExpr != null)
			this.indexListExpr = indexListExpr;
	}

	public function __underlying__()
		return Go.toInterface(this);

	@:embedded
	public function end():stdgo.go.token.Token.Pos
		return indexListExpr.end();

	@:embedded
	public function pos():stdgo.go.token.Token.Pos
		return indexListExpr.pos();

	@:embedded
	public function _exprNode()
		indexListExpr._exprNode();

	public function __copy__() {
		return new IndexExpr(orig, indexListExpr);
	}
}

function packIndexExpr(_x:stdgo.go.ast.Ast.Expr, _lbrack:stdgo.go.token.Token.Pos, _exprs:Slice<stdgo.go.ast.Ast.Expr>,
		_rbrack:stdgo.go.token.Token.Pos):stdgo.go.ast.Ast.Expr {
	if ((_exprs.length) == ((0 : GoInt))) {
		throw Go.toInterface(("internal error: PackIndexExpr with empty expr slice" : GoString));
	} else if ((_exprs.length) == ((1 : GoInt))) {
		return Go.asInterface((({
			x: _x,
			lbrack: _lbrack,
			index: _exprs[(0 : GoInt)],
			rbrack: _rbrack
		} : stdgo.go.ast.Ast.IndexExpr) : Ref<stdgo.go.ast.Ast.IndexExpr>));
	} else {
		return Go.asInterface((({
			x: _x,
			lbrack: _lbrack,
			indices: _exprs,
			rbrack: _rbrack
		} : stdgo.go.ast.Ast.IndexListExpr) : Ref<stdgo.go.ast.Ast.IndexListExpr>));
	};
}

function unpackIndexExpr(_n:stdgo.go.ast.Ast.Node):Ref<IndexExpr> {
	{
		final __type__ = _n;
		if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.IndexExpr>))) {
			var _e:Ref<stdgo.go.ast.Ast.IndexExpr> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.IndexExpr>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.IndexExpr>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.IndexExpr>) : __type__.__underlying__()
				.value;
			return ((new IndexExpr(Go.asInterface(_e), (({
				x: _e.x,
				lbrack: _e.lbrack,
				indices: (new Slice<stdgo.go.ast.Ast.Expr>(0, 0, _e.index) : Slice<stdgo.go.ast.Ast.Expr>),
				rbrack: _e.rbrack
			} : stdgo.go.ast.Ast.IndexListExpr) : Ref<stdgo.go.ast.Ast.IndexListExpr>)) : IndexExpr) : Ref<IndexExpr>);
		} else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.IndexListExpr>))) {
			var _e:Ref<stdgo.go.ast.Ast.IndexListExpr> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.IndexListExpr>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.IndexListExpr>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.IndexListExpr>) : __type__.__underlying__()
				.value;
			return ((new IndexExpr(Go.asInterface(_e), _e) : IndexExpr) : Ref<IndexExpr>);
		};
	};
	return null;
}

class IndexExpr_asInterface {
	@:embedded
	public function _exprNode():Void
		__self__.value._exprNode();

	@:embedded
	public function pos():stdgo.go.token.Token.Pos
		return __self__.value.pos();

	@:embedded
	public function end():stdgo.go.token.Token.Pos
		return __self__.value.end();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<IndexExpr>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(go.internal.typeparams.Typeparams.IndexExpr_asInterface) class IndexExpr_static_extension {
	@:embedded
	public static function _exprNode(__self__:IndexExpr)
		__self__._exprNode();

	@:embedded
	public static function pos(__self__:IndexExpr):stdgo.go.token.Token.Pos
		return __self__.pos();

	@:embedded
	public static function end(__self__:IndexExpr):stdgo.go.token.Token.Pos
		return __self__.end();
}
