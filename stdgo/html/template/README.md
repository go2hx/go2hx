# Module stdgo.html.template has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/text/template/Template_Template_static_extension.hx:11: characters 102-147

 11 | [2m            if (((_old != null && ((_old : Dynamic).__nil__ == null || !(_old : Dynamic).__nil__) && [0m[1mstdgo._internal.text.template.Template__parse[0m[2m._parse.isEmptyTree(stdgo.Go.asInterface(_tree.root)) : Bool) && ((_old.tree != null) && ((_old.tree : Dynamic).__nil__ == null || !(_old.tree : Dynamic).__nil__)) : Bool)) {[0m
    |                                                                                                      [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Type not found : stdgo._internal.text.template.Template__parse

[30;41m ERROR [0m [31m(macro) [0mstdgo/_internal/text/template/Template_Template_static_extension.hx:23: characters 23-68

 23 | [2m        var __tmp__ = [0m[1mstdgo._internal.text.template.Template__parse[0m[2m._parse.parse(_t._name?.__copy__(), _text?.__copy__(), _t._leftDelim?.__copy__(), _t._rightDelim?.__copy__(), _t._common._parseFuncs, stdgo._internal.text.template.Template__builtins._builtins()), _trees:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;[0m
    |                       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Type not found : stdgo._internal.text.template.Template__parse


```

