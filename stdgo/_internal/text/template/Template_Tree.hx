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
@:structInit @:using(stdgo._internal.text.template.Template_Tree_static_extension.Tree_static_extension) class Tree {
    public var val : stdgo.GoInt = 0;
    public var left : stdgo.Ref<stdgo._internal.text.template.Template_Tree.Tree> = (null : stdgo.Ref<stdgo._internal.text.template.Template_Tree.Tree>);
    public var right : stdgo.Ref<stdgo._internal.text.template.Template_Tree.Tree> = (null : stdgo.Ref<stdgo._internal.text.template.Template_Tree.Tree>);
    public function new(?val:stdgo.GoInt, ?left:stdgo.Ref<stdgo._internal.text.template.Template_Tree.Tree>, ?right:stdgo.Ref<stdgo._internal.text.template.Template_Tree.Tree>) {
        if (val != null) this.val = val;
        if (left != null) this.left = left;
        if (right != null) this.right = right;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Tree(val, left, right);
    }
}
