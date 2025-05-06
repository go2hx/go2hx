package stdgo._internal.go.build.constraint;
function _parsePlusBuildExpr(_text:stdgo.GoString):stdgo._internal.go.build.constraint.Constraint_expr.Expr {
        var _x:stdgo._internal.go.build.constraint.Constraint_expr.Expr = (null : stdgo._internal.go.build.constraint.Constraint_expr.Expr);
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L393"
        for (__0 => _clause in stdgo._internal.strings.Strings_fields.fields(_text?.__copy__())) {
            var _y:stdgo._internal.go.build.constraint.Constraint_expr.Expr = (null : stdgo._internal.go.build.constraint.Constraint_expr.Expr);
            //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L395"
            for (__1 => _lit in stdgo._internal.strings.Strings_split.split(_clause?.__copy__(), ("," : stdgo.GoString))) {
                var _z:stdgo._internal.go.build.constraint.Constraint_expr.Expr = (null : stdgo._internal.go.build.constraint.Constraint_expr.Expr);
                var _neg:Bool = false;
                //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L398"
                if ((stdgo._internal.strings.Strings_hasprefix.hasPrefix(_lit?.__copy__(), ("!!" : stdgo.GoString)) || (_lit == ("!" : stdgo.GoString)) : Bool)) {
                    _z = stdgo._internal.go.build.constraint.Constraint__tag._tag(("ignore" : stdgo.GoString));
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L401"
                    if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_lit?.__copy__(), ("!" : stdgo.GoString))) {
                        _neg = true;
                        _lit = (_lit.__slice__(((("!" : stdgo.GoString) : stdgo.GoString).length)) : stdgo.GoString)?.__copy__();
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L405"
                    if (stdgo._internal.go.build.constraint.Constraint__isvalidtag._isValidTag(_lit?.__copy__())) {
                        _z = stdgo._internal.go.build.constraint.Constraint__tag._tag(_lit?.__copy__());
                    } else {
                        _z = stdgo._internal.go.build.constraint.Constraint__tag._tag(("ignore" : stdgo.GoString));
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L410"
                    if (_neg) {
                        _z = stdgo._internal.go.build.constraint.Constraint__not._not(_z);
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L414"
                if (_y == null) {
                    _y = _z;
                } else {
                    _y = stdgo._internal.go.build.constraint.Constraint__and._and(_y, _z);
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L420"
            if (_x == null) {
                _x = _y;
            } else {
                _x = stdgo._internal.go.build.constraint.Constraint__or._or(_x, _y);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L426"
        if (_x == null) {
            _x = stdgo._internal.go.build.constraint.Constraint__tag._tag(("ignore" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L429"
        return _x;
    }
