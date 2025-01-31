package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
function _makePatchList(_n:stdgo.GoUInt32):stdgo._internal.regexp.syntax.Syntax_T_patchList.T_patchList {
        return (new stdgo._internal.regexp.syntax.Syntax_T_patchList.T_patchList(_n, _n) : stdgo._internal.regexp.syntax.Syntax_T_patchList.T_patchList);
    }
