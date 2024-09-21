package _internal.internal.types.errors_test;
import stdgo._internal.go.types.Types;
function testErrorCodeStyle(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _forbiddenInIdent = (new stdgo.Slice<stdgo.GoString>(22, 22, ...[
("illegal" : stdgo.GoString),
("argument" : stdgo.GoString),
("assertion" : stdgo.GoString),
("assignment" : stdgo.GoString),
("boolean" : stdgo.GoString),
("channel" : stdgo.GoString),
("condition" : stdgo.GoString),
("declaration" : stdgo.GoString),
("expression" : stdgo.GoString),
("function" : stdgo.GoString),
("initial" : stdgo.GoString),
("integer" : stdgo.GoString),
("interface" : stdgo.GoString),
("iterat" : stdgo.GoString),
("literal" : stdgo.GoString),
("operation" : stdgo.GoString),
("package" : stdgo.GoString),
("pointer" : stdgo.GoString),
("receiver" : stdgo.GoString),
("signature" : stdgo.GoString),
("statement" : stdgo.GoString),
("variable" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _forbiddenInComment = (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("lhs" : stdgo.GoString), ("rhs" : stdgo.GoString), ("builtin" : stdgo.GoString), ("ellipsis" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _nameHist = ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
        var _longestName = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
        var _maxValue = (0 : stdgo.GoInt);
        _internal.internal.types.errors_test.Errors_test__walkCodes._walkCodes(_t, function(_name:stdgo.GoString, _value:stdgo.GoInt, _spec:stdgo.Ref<stdgo._internal.go.ast.Ast_ValueSpec.ValueSpec>):Void {
            if (_name == (("_" : stdgo.GoString))) {
                return;
            };
            (_nameHist[(_name.length)] != null ? _nameHist[(_name.length)]++ : (0 : stdgo.GoInt));
            if ((_value > _maxValue : Bool)) {
                _maxValue = _value;
            };
            if (((_name.length) > (_longestName.length) : Bool)) {
                _longestName = _name?.__copy__();
            };
            if (!stdgo._internal.go.token.Token_isExported.isExported(_name?.__copy__())) {
                _t.errorf(("%q is not exported" : stdgo.GoString), stdgo.Go.toInterface(_name));
            };
            var _lower = (stdgo._internal.strings.Strings_toLower.toLower(_name?.__copy__())?.__copy__() : stdgo.GoString);
            for (__0 => _bad in _forbiddenInIdent) {
                if (stdgo._internal.strings.Strings_contains.contains(_lower?.__copy__(), _bad?.__copy__())) {
                    _t.errorf(("%q contains forbidden word %q" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_bad));
                };
            };
            var _doc = (_spec.doc.text()?.__copy__() : stdgo.GoString);
            if (_doc == (stdgo.Go.str())) {
                _t.errorf(("%q is undocumented" : stdgo.GoString), stdgo.Go.toInterface(_name));
            } else if (!stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_doc?.__copy__(), _name?.__copy__())) {
                _t.errorf(("doc for %q does not start with the error code name" : stdgo.GoString), stdgo.Go.toInterface(_name));
            };
            var _lowerComment = (stdgo._internal.strings.Strings_toLower.toLower(stdgo._internal.strings.Strings_trimPrefix.trimPrefix(_doc?.__copy__(), _name?.__copy__())?.__copy__())?.__copy__() : stdgo.GoString);
            for (__1 => _bad in _forbiddenInComment) {
                if (stdgo._internal.strings.Strings_contains.contains(_lowerComment?.__copy__(), _bad?.__copy__())) {
                    _t.errorf(("doc for %q contains forbidden word %q" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_bad));
                };
            };
        });
        if (stdgo._internal.testing.Testing_verbose.verbose()) {
            var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt);
var _totCount = __1, _totChars = __0;
            for (_chars => _count in _nameHist) {
                _totChars = (_totChars + ((_chars * _count : stdgo.GoInt)) : stdgo.GoInt);
                _totCount = (_totCount + (_count) : stdgo.GoInt);
            };
            var _avg = ((_totChars : stdgo.GoFloat64) / (_totCount : stdgo.GoFloat64) : stdgo.GoFloat64);
            stdgo._internal.fmt.Fmt_println.println();
            stdgo._internal.fmt.Fmt_printf.printf(("%d error codes\n" : stdgo.GoString), stdgo.Go.toInterface(_totCount));
            stdgo._internal.fmt.Fmt_printf.printf(("average length: %.2f chars\n" : stdgo.GoString), stdgo.Go.toInterface(_avg));
            stdgo._internal.fmt.Fmt_printf.printf(("max length: %d (%s)\n" : stdgo.GoString), stdgo.Go.toInterface((_longestName.length)), stdgo.Go.toInterface(_longestName));
        };
    }
