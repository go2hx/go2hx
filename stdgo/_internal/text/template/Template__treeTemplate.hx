package stdgo._internal.text.template;
final _treeTemplate : stdgo.GoString = ("\n\t(- define \"tree\" -)\n\t[\n\t\t(- .Val -)\n\t\t(- with .Left -)\n\t\t\t(template \"tree\" . -)\n\t\t(- end -)\n\t\t(- with .Right -)\n\t\t\t(- template \"tree\" . -)\n\t\t(- end -)\n\t]\n\t(- end -)\n" : stdgo.GoString);
