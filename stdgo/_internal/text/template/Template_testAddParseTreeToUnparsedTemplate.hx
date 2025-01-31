package stdgo._internal.text.template;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.errors.Errors;
import stdgo._internal.flag.Flag;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.testing.Testing;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.net.url.Url;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.path.Path;
import stdgo._internal.internal.fmtsort.Fmtsort;
function testAddParseTreeToUnparsedTemplate(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _master = ("{{define \"master\"}}{{end}}" : stdgo.GoString);
        var _tmpl = stdgo._internal.text.template.Template_new_.new_(("master" : stdgo.GoString));
        var __tmp__ = stdgo._internal.text.template.Template__parse._parse.parse(("master" : stdgo.GoString), _master?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), (null : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>)), _tree:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatalf(("unexpected parse err: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _masterTree = (_tree[("master" : stdgo.GoString)] ?? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>));
        @:check2r _tmpl.addParseTree(("master" : stdgo.GoString), _masterTree);
    }
