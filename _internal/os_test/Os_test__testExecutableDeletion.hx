package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
final _testExecutableDeletion : stdgo.GoString = ("package main\n\nimport (\n\t\"fmt\"\n\t\"os\"\n)\n\nfunc main() {\n\tbefore, err := os.Executable()\n\tif err != nil {\n\t\tfmt.Fprintf(os.Stderr, \"failed to read executable name before deletion: %v\\n\", err)\n\t\tos.Exit(1)\n\t}\n\n\terr = os.Remove(before)\n\tif err != nil {\n\t\tfmt.Fprintf(os.Stderr, \"failed to remove executable: %v\\n\", err)\n\t\tos.Exit(1)\n\t}\n\n\tafter, err := os.Executable()\n\tif err != nil {\n\t\tfmt.Fprintf(os.Stderr, \"failed to read executable name after deletion: %v\\n\", err)\n\t\tos.Exit(1)\n\t}\n\n\tif before != after {\n\t\tfmt.Fprintf(os.Stderr, \"before and after do not match: %v != %v\\n\", before, after)\n\t\tos.Exit(1)\n\t}\n}\n" : stdgo.GoString);
