package stdgo._internal.go.build.constraint;
function plusBuildLines(_x:stdgo._internal.go.build.constraint.Constraint_expr.Expr):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        _x = stdgo._internal.go.build.constraint.Constraint__pushnot._pushNot(_x, false);
        var _split:stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr>>> = (null : stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr>>>);
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L459"
        for (__0 => _or in stdgo._internal.go.build.constraint.Constraint__appendsplitand._appendSplitAnd((null : stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr>), _x)) {
            var _ands:stdgo.Slice<stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr>> = (null : stdgo.Slice<stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr>>);
            //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L461"
            for (__1 => _and in stdgo._internal.go.build.constraint.Constraint__appendsplitor._appendSplitOr((null : stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr>), _or)) {
                var _lits:stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr> = (null : stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr>);
                //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L463"
                for (__2 => _lit in stdgo._internal.go.build.constraint.Constraint__appendsplitand._appendSplitAnd((null : stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr>), _and)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L464"
                    {
                        final __type__ = _lit;
                        if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_tagexpr.TagExpr>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr>))) {
                            _lits = (_lits.__append__(_lit) : stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr>);
                        } else {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L468"
                            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : stdgo._internal.go.build.constraint.Constraint__errcomplex._errComplex };
                        };
                    };
                };
                _ands = (_ands.__append__(_lits) : stdgo.Slice<stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr>>);
            };
            _split = (_split.__append__(_ands) : stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr>>>);
        };
        var _maxOr = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L480"
        for (__1 => _or in _split) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L481"
            if ((_maxOr < (_or.length) : Bool)) {
                _maxOr = (_or.length);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L485"
        if (_maxOr == ((1 : stdgo.GoInt))) {
            var _lits:stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr> = (null : stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr>);
            //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L487"
            for (__2 => _or in _split) {
                _lits = (_lits.__append__(...(_or[(0 : stdgo.GoInt)] : Array<stdgo._internal.go.build.constraint.Constraint_expr.Expr>)) : stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr>);
            };
            _split = (new stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr>>>(1, 1, ...[(new stdgo.Slice<stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr>>(1, 1, ...[_lits]) : stdgo.Slice<stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr>>)]) : stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo._internal.go.build.constraint.Constraint_expr.Expr>>>);
        };
        var _lines:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L495"
        for (__2 => _or in _split) {
            var _line = (("// +build" : stdgo.GoString) : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L497"
            for (__3 => _and in _or) {
                var _clause = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L499"
                for (_i => _lit in _and) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L500"
                    if ((_i > (0 : stdgo.GoInt) : Bool)) {
                        _clause = (_clause + (("," : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    };
                    _clause = (_clause + ((_lit.string() : stdgo.GoString))?.__copy__() : stdgo.GoString);
                };
                _line = (_line + (((" " : stdgo.GoString) + _clause?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
            _lines = (_lines.__append__(_line?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L510"
        return { _0 : _lines, _1 : (null : stdgo.Error) };
    }
