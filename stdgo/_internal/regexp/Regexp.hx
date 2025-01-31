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
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.regexp.Regexp__noRune._noRune, __tmp__1 = stdgo._internal.regexp.Regexp__noNext._noNext, __tmp__2 = stdgo._internal.regexp.Regexp__anyRuneNotNL._anyRuneNotNL, __tmp__3 = stdgo._internal.regexp.Regexp__anyRune._anyRune, __tmp__4 = stdgo._internal.regexp.Regexp__matchSize._matchSize, __tmp__5 = stdgo._internal.regexp.Regexp__goodRe._goodRe, __tmp__6 = stdgo._internal.regexp.Regexp__badRe._badRe, __tmp__7 = stdgo._internal.regexp.Regexp__replaceTests._replaceTests, __tmp__8 = stdgo._internal.regexp.Regexp__replaceLiteralTests._replaceLiteralTests, __tmp__9 = stdgo._internal.regexp.Regexp__replaceFuncTests._replaceFuncTests, __tmp__10 = stdgo._internal.regexp.Regexp__metaTests._metaTests, __tmp__11 = stdgo._internal.regexp.Regexp__literalPrefixTests._literalPrefixTests, __tmp__12 = stdgo._internal.regexp.Regexp__emptySubexpIndices._emptySubexpIndices, __tmp__13 = stdgo._internal.regexp.Regexp__subexpCases._subexpCases, __tmp__14 = stdgo._internal.regexp.Regexp__splitTests._splitTests, __tmp__15 = stdgo._internal.regexp.Regexp__compileBenchData._compileBenchData, __tmp__16 = stdgo._internal.regexp.Regexp__minInputLenTests._minInputLenTests, __tmp__17 = stdgo._internal.regexp.Regexp__run._run, __tmp__18 = stdgo._internal.regexp.Regexp__match._match, __tmp__19 = stdgo._internal.regexp.Regexp__notab._notab, __tmp__20 = stdgo._internal.regexp.Regexp__benchData._benchData, __tmp__21 = stdgo._internal.regexp.Regexp__benchSizes._benchSizes, __tmp__22 = stdgo._internal.regexp.Regexp__findTests._findTests, __tmp__23 = stdgo._internal.regexp.Regexp__runeMergeTests._runeMergeTests, __tmp__24 = stdgo._internal.regexp.Regexp__onePassTests._onePassTests, __tmp__25 = stdgo._internal.regexp.Regexp__onePassTests1._onePassTests1;
            for (__0 => _b in (("\\.+*?()|[]{}^$" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) {
                stdgo._internal.regexp.Regexp__specialBytes._specialBytes[((_b % (16 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)] = (stdgo._internal.regexp.Regexp__specialBytes._specialBytes[((_b % (16 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)] | (((1 : stdgo.GoUInt8) << ((_b / (16 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt8)) : stdgo.GoUInt8);
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
