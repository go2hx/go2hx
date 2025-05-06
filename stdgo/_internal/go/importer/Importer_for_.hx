package stdgo._internal.go.importer;
function for_(_compiler:stdgo.GoString, _lookup:stdgo._internal.go.importer.Importer_lookup.Lookup):stdgo._internal.go.types.Types_importer.Importer {
        //"file:///home/runner/.go/go1.21.3/src/go/importer/importer.go#L77"
        return stdgo._internal.go.importer.Importer_forcompiler.forCompiler(stdgo._internal.go.token.Token_newfileset.newFileSet(), _compiler?.__copy__(), _lookup);
    }
