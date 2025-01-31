package stdgo._internal.regexp;
import stdgo._internal.strings.Strings;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.testing.Testing;
import stdgo._internal.os.Os;
import stdgo._internal.compress.bzip2.Bzip2;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.Io;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
function _newBitState():stdgo.Ref<stdgo._internal.regexp.Regexp_T_bitState.T_bitState> {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((@:check2 stdgo._internal.regexp.Regexp__bitStatePool._bitStatePool.get() : stdgo.Ref<stdgo._internal.regexp.Regexp_T_bitState.T_bitState>)) : stdgo.Ref<stdgo._internal.regexp.Regexp_T_bitState.T_bitState>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.regexp.Regexp_T_bitState.T_bitState>), _1 : false };
        }, _b = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _b = (stdgo.Go.setRef(({} : stdgo._internal.regexp.Regexp_T_bitState.T_bitState)) : stdgo.Ref<stdgo._internal.regexp.Regexp_T_bitState.T_bitState>);
        };
        return _b;
    }
