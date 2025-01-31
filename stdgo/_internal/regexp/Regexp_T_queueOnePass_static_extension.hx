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
@:keep @:allow(stdgo._internal.regexp.Regexp.T_queueOnePass_asInterface) class T_queueOnePass_static_extension {
    @:keep
    @:tdfield
    static public function _insertNew( _q:stdgo.Ref<stdgo._internal.regexp.Regexp_T_queueOnePass.T_queueOnePass>, _u:stdgo.GoUInt32):Void {
        @:recv var _q:stdgo.Ref<stdgo._internal.regexp.Regexp_T_queueOnePass.T_queueOnePass> = _q;
        if ((_u >= ((@:checkr _q ?? throw "null pointer dereference")._sparse.length : stdgo.GoUInt32) : Bool)) {
            return;
        };
        (@:checkr _q ?? throw "null pointer dereference")._sparse[(_u : stdgo.GoInt)] = (@:checkr _q ?? throw "null pointer dereference")._size;
        (@:checkr _q ?? throw "null pointer dereference")._dense[((@:checkr _q ?? throw "null pointer dereference")._size : stdgo.GoInt)] = _u;
        (@:checkr _q ?? throw "null pointer dereference")._size++;
    }
    @:keep
    @:tdfield
    static public function _insert( _q:stdgo.Ref<stdgo._internal.regexp.Regexp_T_queueOnePass.T_queueOnePass>, _u:stdgo.GoUInt32):Void {
        @:recv var _q:stdgo.Ref<stdgo._internal.regexp.Regexp_T_queueOnePass.T_queueOnePass> = _q;
        if (!@:check2r _q._contains(_u)) {
            @:check2r _q._insertNew(_u);
        };
    }
    @:keep
    @:tdfield
    static public function _contains( _q:stdgo.Ref<stdgo._internal.regexp.Regexp_T_queueOnePass.T_queueOnePass>, _u:stdgo.GoUInt32):Bool {
        @:recv var _q:stdgo.Ref<stdgo._internal.regexp.Regexp_T_queueOnePass.T_queueOnePass> = _q;
        if ((_u >= ((@:checkr _q ?? throw "null pointer dereference")._sparse.length : stdgo.GoUInt32) : Bool)) {
            return false;
        };
        return (((@:checkr _q ?? throw "null pointer dereference")._sparse[(_u : stdgo.GoInt)] < (@:checkr _q ?? throw "null pointer dereference")._size : Bool) && ((@:checkr _q ?? throw "null pointer dereference")._dense[((@:checkr _q ?? throw "null pointer dereference")._sparse[(_u : stdgo.GoInt)] : stdgo.GoInt)] == _u) : Bool);
    }
    @:keep
    @:tdfield
    static public function _clear( _q:stdgo.Ref<stdgo._internal.regexp.Regexp_T_queueOnePass.T_queueOnePass>):Void {
        @:recv var _q:stdgo.Ref<stdgo._internal.regexp.Regexp_T_queueOnePass.T_queueOnePass> = _q;
        (@:checkr _q ?? throw "null pointer dereference")._size = (0u32 : stdgo.GoUInt32);
        (@:checkr _q ?? throw "null pointer dereference")._nextIndex = (0u32 : stdgo.GoUInt32);
    }
    @:keep
    @:tdfield
    static public function _next( _q:stdgo.Ref<stdgo._internal.regexp.Regexp_T_queueOnePass.T_queueOnePass>):stdgo.GoUInt32 {
        @:recv var _q:stdgo.Ref<stdgo._internal.regexp.Regexp_T_queueOnePass.T_queueOnePass> = _q;
        var _n = (0 : stdgo.GoUInt32);
        _n = (@:checkr _q ?? throw "null pointer dereference")._dense[((@:checkr _q ?? throw "null pointer dereference")._nextIndex : stdgo.GoInt)];
        (@:checkr _q ?? throw "null pointer dereference")._nextIndex++;
        return _n;
    }
    @:keep
    @:tdfield
    static public function _empty( _q:stdgo.Ref<stdgo._internal.regexp.Regexp_T_queueOnePass.T_queueOnePass>):Bool {
        @:recv var _q:stdgo.Ref<stdgo._internal.regexp.Regexp_T_queueOnePass.T_queueOnePass> = _q;
        return ((@:checkr _q ?? throw "null pointer dereference")._nextIndex >= (@:checkr _q ?? throw "null pointer dereference")._size : Bool);
    }
}
