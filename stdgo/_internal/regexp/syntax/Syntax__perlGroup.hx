package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
var _perlGroup : stdgo.GoMap<stdgo.GoString, stdgo._internal.regexp.syntax.Syntax_T_charGroup.T_charGroup> = ({
        final x = new stdgo.GoMap.GoStringMap<stdgo._internal.regexp.syntax.Syntax_T_charGroup.T_charGroup>();
        x.__defaultValue__ = () -> ({} : stdgo._internal.regexp.syntax.Syntax_T_charGroup.T_charGroup);
        x.set(("\\d" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax_T_charGroup.T_charGroup((1 : stdgo.GoInt), stdgo._internal.regexp.syntax.Syntax__code1._code1) : stdgo._internal.regexp.syntax.Syntax_T_charGroup.T_charGroup));
x.set(("\\D" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax_T_charGroup.T_charGroup((-1 : stdgo.GoInt), stdgo._internal.regexp.syntax.Syntax__code1._code1) : stdgo._internal.regexp.syntax.Syntax_T_charGroup.T_charGroup));
x.set(("\\s" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax_T_charGroup.T_charGroup((1 : stdgo.GoInt), stdgo._internal.regexp.syntax.Syntax__code2._code2) : stdgo._internal.regexp.syntax.Syntax_T_charGroup.T_charGroup));
x.set(("\\S" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax_T_charGroup.T_charGroup((-1 : stdgo.GoInt), stdgo._internal.regexp.syntax.Syntax__code2._code2) : stdgo._internal.regexp.syntax.Syntax_T_charGroup.T_charGroup));
x.set(("\\w" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax_T_charGroup.T_charGroup((1 : stdgo.GoInt), stdgo._internal.regexp.syntax.Syntax__code3._code3) : stdgo._internal.regexp.syntax.Syntax_T_charGroup.T_charGroup));
x.set(("\\W" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax_T_charGroup.T_charGroup((-1 : stdgo.GoInt), stdgo._internal.regexp.syntax.Syntax__code3._code3) : stdgo._internal.regexp.syntax.Syntax_T_charGroup.T_charGroup));
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo._internal.regexp.syntax.Syntax_T_charGroup.T_charGroup>);
