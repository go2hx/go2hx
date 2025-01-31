package stdgo._internal.text.template.parse;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
function parse(_name:stdgo.GoString, _text:stdgo.GoString, _leftDelim:stdgo.GoString, _rightDelim:stdgo.GoString, _funcs:haxe.Rest<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>):{ var _0 : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>>; var _1 : stdgo.Error; } {
        var _funcs = new stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>(_funcs.length, 0, ..._funcs);
        var _treeSet = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>>);
        var _t = stdgo._internal.text.template.parse.Parse_new_.new_(_name?.__copy__());
        (@:checkr _t ?? throw "null pointer dereference")._text = _text?.__copy__();
        var __tmp__ = @:check2r _t.parse(_text?.__copy__(), _leftDelim?.__copy__(), _rightDelim?.__copy__(), _treeSet, ...(_funcs : Array<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>)), __0:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : _treeSet, _1 : _err };
    }
