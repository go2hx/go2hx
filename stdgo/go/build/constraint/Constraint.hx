package stdgo.go.build.constraint;
typedef Expr = stdgo._internal.go.build.constraint.Constraint_expr.Expr;
typedef TagExpr = stdgo._internal.go.build.constraint.Constraint_tagexpr.TagExpr;
typedef NotExpr = stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr;
typedef AndExpr = stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr;
typedef OrExpr = stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr;
typedef SyntaxError = stdgo._internal.go.build.constraint.Constraint_syntaxerror.SyntaxError;
typedef TagExprPointer = stdgo._internal.go.build.constraint.Constraint_tagexprpointer.TagExprPointer;
typedef NotExprPointer = stdgo._internal.go.build.constraint.Constraint_notexprpointer.NotExprPointer;
typedef AndExprPointer = stdgo._internal.go.build.constraint.Constraint_andexprpointer.AndExprPointer;
typedef OrExprPointer = stdgo._internal.go.build.constraint.Constraint_orexprpointer.OrExprPointer;
typedef SyntaxErrorPointer = stdgo._internal.go.build.constraint.Constraint_syntaxerrorpointer.SyntaxErrorPointer;
/**
    * Package constraint implements parsing and evaluation of build constraint lines.
    * See https://golang.org/cmd/go/#hdr-Build_constraints for documentation about build constraints themselves.
    * 
    * This package parses both the original “// +build” syntax and the “//go:build” syntax that was added in Go 1.17.
    * See https://golang.org/design/draft-gobuild for details about the “//go:build” syntax.
**/
class Constraint {
    /**
        * Parse parses a single build constraint line of the form “//go:build ...” or “// +build ...”
        * and returns the corresponding boolean expression.
    **/
    static public inline function parse(_line:stdgo.GoString):{ var _0 : stdgo._internal.go.build.constraint.Constraint_expr.Expr; var _1 : stdgo.Error; } return stdgo._internal.go.build.constraint.Constraint_parse.parse(_line);
    /**
        * IsGoBuild reports whether the line of text is a “//go:build” constraint.
        * It only checks the prefix of the text, not that the expression itself parses.
    **/
    static public inline function isGoBuild(_line:stdgo.GoString):Bool return stdgo._internal.go.build.constraint.Constraint_isgobuild.isGoBuild(_line);
    /**
        * IsPlusBuild reports whether the line of text is a “// +build” constraint.
        * It only checks the prefix of the text, not that the expression itself parses.
    **/
    static public inline function isPlusBuild(_line:stdgo.GoString):Bool return stdgo._internal.go.build.constraint.Constraint_isplusbuild.isPlusBuild(_line);
    /**
        * PlusBuildLines returns a sequence of “// +build” lines that evaluate to the build expression x.
        * If the expression is too complex to convert directly to “// +build” lines, PlusBuildLines returns an error.
    **/
    static public inline function plusBuildLines(_x:Expr):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return stdgo._internal.go.build.constraint.Constraint_plusbuildlines.plusBuildLines(_x);
    /**
        * GoVersion returns the minimum Go version implied by a given build expression.
        * If the expression can be satisfied without any Go version tags, GoVersion returns an empty string.
        * 
        * For example:
        * 
        * 	GoVersion(linux && go1.22) = "go1.22"
        * 	GoVersion((linux && go1.22) || (windows && go1.20)) = "go1.20" => go1.20
        * 	GoVersion(linux) = ""
        * 	GoVersion(linux || (windows && go1.22)) = ""
        * 	GoVersion(!go1.22) = ""
        * 
        * GoVersion assumes that any tag or negated tag may independently be true,
        * so that its analysis can be purely structural, without SAT solving.
        * “Impossible” subexpressions may therefore affect the result.
        * 
        * For example:
        * 
        * 	GoVersion((linux && !linux && go1.20) || go1.21) = "go1.20"
    **/
    static public inline function goVersion(_x:Expr):stdgo.GoString return stdgo._internal.go.build.constraint.Constraint_goversion.goVersion(_x);
}
