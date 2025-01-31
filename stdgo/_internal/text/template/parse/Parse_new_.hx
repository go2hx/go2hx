package stdgo._internal.text.template.parse;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
function new_(_name:stdgo.GoString, _funcs:haxe.Rest<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> {
        var _funcs = new stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>(_funcs.length, 0, ..._funcs);
        return (stdgo.Go.setRef(({ name : _name?.__copy__(), _funcs : _funcs } : stdgo._internal.text.template.parse.Parse_Tree.Tree)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
    }
